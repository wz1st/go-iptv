package api

import (
	"fmt"
	"iptv-api/dao"
	"iptv-api/dto"
	"iptv-api/models"
	"iptv-api/until"
	"log"
	"math"
	"strconv"
	"strings"
	"time"

	"github.com/gin-gonic/gin"
)

// 列表类页面的 JSON 数据端点。

// ---------------- 首页 /api/index/data ----------------
func IndexData(c *gin.Context) {
	username, ok := until.GetAuthName(c)
	if !ok {
		c.JSON(200, dto.NewAdminRedirectDto())
		return
	}

	var pageData = dto.AdminIndexDto{
		LoginUser: username,
		Title:     "首页",
	}

	today := time.Now().Truncate(24 * time.Hour).Unix()

	cfg := dao.GetConfig()
	query := "enable = 1 and type not like 'auto%'"
	if dao.Lic.Type != 0 && cfg.Proxy.Status == 1 {
		query = "enable = 1"
	}

	dao.DB.Model(&models.IptvUser{}).Count(&pageData.UserTotal)
	dao.DB.Model(&models.IptvUser{}).Where("last_time > ?", today).Count(&pageData.UserToday)
	dao.DB.Model(&models.IptvCategory{}).Where(query).Count(&pageData.ChannelTypeCount)
	dao.DB.Model(&models.IptvChannel{}).Where("status = 1").Count(&pageData.ChannelCount)
	dao.DB.Model(&models.IptvEpg{}).Where("status = 1").Count(&pageData.EpgCount)
	dao.DB.Model(&models.IptvMeals{}).Where("status = 1").Count(&pageData.MealsCount)

	var categoryList []models.IptvCategory
	dao.DB.Model(&models.IptvCategory{}).Where("enable = 1").Find(&categoryList)
	for i, ca := range categoryList {
		var channelType dto.ChannelType

		// 首页统计只需要条数，不需要 purl —— 传空串让 until 侧连加密都省掉
		// （每个分组几十上百条频道，这里一次首页请求就是几百次加密）。
		tmpCh := until.CaGetChannels(ca, true, "")
		channelType.ChannelCount = int64(len(tmpCh))
		channelType.Num = int64(i + 1)
		channelType.Name = ca.Name
		if ca.Type == "add" {
			channelType.ShowRawCount = true
		}
		channelType.RawCount = ca.RawCount
		pageData.ChannelTypeList = append(pageData.ChannelTypeList, channelType)
	}

	c.JSON(200, pageData)
}

// ---------------- 设备列表 /api/users/data ----------------
func UsersData(c *gin.Context) {
	username, ok := until.GetAuthName(c)
	if !ok {
		c.JSON(200, dto.NewAdminRedirectDto())
		return
	}
	var pageData = dto.AdminUserDto{
		LoginUser: username,
		Title:     "用户管理",
	}

	if !parsePaging(c, &pageData.RecCounts, &pageData.Page, &pageData.Order, &pageData.Keywords) {
		return
	}
	// order 拼进 ORDER BY，必须收敛到白名单
	pageData.Order = sanitizeOrder(pageData.Order, orderAllowedUsers)

	today := time.Now().Truncate(24 * time.Hour).Unix()
	dao.DB.Model(&models.IptvUserShow{}).Where("last_time > ?", today).Count(&pageData.UserToday)

	recStart := pageData.RecCounts * (pageData.Page - 1)
	keywords := "%" + pageData.Keywords + "%"

	dbQuery := dao.DB.Table(models.IptvUserShow{}.TableName()+" u").Select(`u.*, m.name AS meal_name`).
		Joins("LEFT JOIN iptv_meals m ON u.meal_id = m.id").Where("u.status > ?", 0)

	dbQuery = dbQuery.Where(
		"u.name LIKE ? OR u.device_id LIKE ? OR u.mac LIKE ? OR u.model LIKE ? OR u.ip LIKE ? OR u.region LIKE ? OR u.author LIKE ? OR u.marks LIKE ? OR CAST(u.status AS CHAR) LIKE ?",
		keywords, keywords, keywords, keywords, keywords, keywords, keywords, keywords, keywords,
	)

	if err := dbQuery.Count(&pageData.UserTotal).Error; err != nil {
		pageData.PageCount = 1
	} else if pageData.UserTotal == 0 {
		pageData.PageCount = 1
	} else {
		pageData.PageCount = int64(math.Ceil(float64(pageData.UserTotal) / float64(pageData.RecCounts)))
	}

	if err := dbQuery.Offset(int(recStart)).Limit(int(pageData.RecCounts)).Order("u." + pageData.Order).Find(&pageData.Users).Error; err != nil {
		log.Println("查询用户失败:", err)
	}
	pageData.Users = until.CheckUserDay(pageData.Users)

	dao.DB.Model(&models.IptvMeals{}).Find(&pageData.Meals)

	c.JSON(200, pageData)
}

// ---------------- 设备授权 /api/authors/data ----------------
func AuthorsData(c *gin.Context) {
	username, ok := until.GetAuthName(c)
	if !ok {
		c.JSON(200, dto.NewAdminRedirectDto())
		return
	}
	var pageData = dto.AdminAuthorsDto{
		LoginUser: username,
		Title:     "用户授权",
	}

	if !parsePaging(c, &pageData.RecCounts, &pageData.Page, &pageData.Order, &pageData.Keywords) {
		return
	}
	// order 拼进 ORDER BY，必须收敛到白名单
	pageData.Order = sanitizeOrder(pageData.Order, orderAllowedAuthors)

	today := time.Now().Truncate(24 * time.Hour).Unix()
	dao.DB.Model(&models.IptvUser{}).Where("status <= 0 and last_time > ?", today).Count(&pageData.NewUserToday)
	dao.DB.Model(&models.IptvUser{}).Where("status>0 and author_time > ?", today).Count(&pageData.UserTodayAuthor)

	recStart := pageData.RecCounts * (pageData.Page - 1)
	keywords := "%" + pageData.Keywords + "%"

	dbQuery := dao.DB.Model(&models.IptvUser{}).
		Select(`name,device_id,model,ip,region,last_time,expire_time,status`).
		Where("status <= ?", 0)

	dbQuery = dbQuery.Where(
		"name LIKE ? OR device_id LIKE ? OR model LIKE ? OR ip LIKE ? OR region LIKE ? OR status LIKE ?",
		keywords, keywords, keywords, keywords, keywords, keywords,
	)

	if err := dbQuery.Count(&pageData.UnauthorizedUserTotal).Error; err != nil {
		pageData.PageCount = 1
	} else if pageData.UnauthorizedUserTotal == 0 {
		pageData.PageCount = 1
	} else {
		pageData.PageCount = int64(math.Ceil(float64(pageData.UnauthorizedUserTotal) / float64(pageData.RecCounts)))
	}

	dbQuery.Offset(int(recStart)).Limit(int(pageData.RecCounts)).Order(pageData.Order).Find(&pageData.Users)
	pageData.Users = until.CheckUserDay(pageData.Users)

	dao.DB.Model(&models.IptvMeals{}).Where("status = 1").Find(&pageData.Meals)

	c.JSON(200, pageData)
}

// ---------------- 套餐管理 /api/meals/data ----------------
func MealsData(c *gin.Context) {
	username, ok := until.GetAuthName(c)
	if !ok {
		c.JSON(200, dto.NewAdminRedirectDto())
		return
	}
	var pageData = dto.AdminMealsDto{
		LoginUser: username,
		Title:     "套餐管理",
	}

	dao.DB.Model(&models.IptvMeals{}).Find(&pageData.Meals)

	cfg := dao.GetConfig()
	query := "enable = 1 and type not like 'auto%'"
	if dao.Lic.Type != 0 && cfg.Proxy.Status == 1 {
		query = "enable = 1"
	}

	var tmpCas []models.IptvCategory
	dao.DB.Model(&models.IptvCategory{}).Where(query).Find(&tmpCas)
	pageData.ChannelNum = int64(len(tmpCas))

	for i, meal := range pageData.Meals {
		caIds := strings.Split(meal.Content, ",")
		for _, v := range tmpCas {
			if until.Int64InStringSlice(v.ID, caIds) {
				pageData.Meals[i].CaName += v.Name + ","
			}
		}
		if len(pageData.Meals[i].CaName) > 0 {
			pageData.Meals[i].CaName = pageData.Meals[i].CaName[:len(pageData.Meals[i].CaName)-1]
		}
	}

	c.JSON(200, pageData)
}

// ---------------- 频道管理 /api/channels/data ----------------
func ChannelsData(c *gin.Context) {
	username, ok := until.GetAuthName(c)
	if !ok {
		c.JSON(200, dto.NewAdminRedirectDto())
		return
	}
	var pageData = dto.AdminChannelsDto{
		LoginUser: username,
		Title:     "频道列表",
	}
	pageData.Lic = dao.Lic
	pageData.ShowAuto = false
	cfg := dao.GetConfig()

	// 已授权 && 全局中转已开 —— 这一个判据同时决定两件事的显隐：
	showAdvanced := pageData.Lic.Type != 0 && cfg.Proxy.Status == 1

	query := "type not like 'auto%'"
	if showAdvanced {
		pageData.ShowAuto = true
		query = "1=1"
	}
	pageData.ShowProxy = showAdvanced

	dao.DB.Model(&models.IptvCategoryList{}).Find(&pageData.CategoryList)
	dao.DB.Model(&models.IptvCategory{}).Where(query).Order("sort ASC").Find(&pageData.Categories)
	dao.DB.Model(&models.IptvEpg{}).Where("status = 1").Find(&pageData.Epgs)

	for i, ch := range pageData.Categories {
		if len(ch.Rules) > 10 {
			pageData.Categories[i].RulesShow = ch.Rules[:10] + "..."
			continue
		}
		pageData.Categories[i].RulesShow = ch.Rules
	}

	logoList := until.GetLogos()
	for i, v := range pageData.Epgs {
		for _, logo := range logoList {
			logoName := strings.Split(logo, ".")[0]
			if strings.EqualFold(v.Name, logoName) {
				pageData.Epgs[i].Logo = "/logo/" + logo
			}
		}
	}

	c.JSON(200, pageData)
}

// ---------------- EPG 列表 /api/epgs/data ----------------
func EpgsData(c *gin.Context) {
	username, ok := until.GetAuthName(c)
	if !ok {
		c.JSON(200, dto.NewAdminRedirectDto())
		return
	}
	var pageData = dto.AdminEpgsDto{
		LoginUser: username,
		Title:     "EPG管理",
	}

	if !parsePaging(c, &pageData.RecCounts, &pageData.Page, nil, &pageData.Keywords) {
		return
	}

	recStart := pageData.RecCounts * (pageData.Page - 1)
	dbQuery := dao.DB.Model(&models.IptvEpg{})
	if pageData.Keywords != "" {
		keywords := "%" + pageData.Keywords + "%"
		dbQuery = dbQuery.Where("name like ? or remarks like ? or content like ?", keywords, keywords, keywords)
	}

	var count int64
	if err := dbQuery.Count(&count).Error; err != nil {
		pageData.PageCount = 1
	} else if count == 0 {
		pageData.PageCount = 1
	} else {
		pageData.PageCount = int64(math.Ceil(float64(count) / float64(pageData.RecCounts)))
	}

	if err := dbQuery.Offset(int(recStart)).Limit(int(pageData.RecCounts)).Find(&pageData.Epgs).Error; err != nil {
		log.Println("查询epg失败:", err)
	}

	cfg := dao.GetConfig()
	query := "enable = 1 and type not like 'auto%'"
	if dao.Lic.Type != 0 && cfg.Proxy.Status == 1 {
		query = "enable = 1"
	}

	dao.DB.Model(&models.IptvEpgList{}).Find(&pageData.EpgFromDb)
	dao.DB.Model(&models.IptvCategory{}).Where(query).Find(&pageData.CaList)

	logoList := until.GetLogos()

	for k, v := range pageData.Epgs {
		for _, logo := range logoList {
			logoName := strings.Split(logo, ".")[0]
			if strings.EqualFold(v.Name, logoName) {
				pageData.Epgs[k].Logo = "/logo/" + logo
			}
		}
		for _, a := range strings.Split(v.FromList, ",") {
			if a == "0" {
				pageData.Epgs[k].FromName += "CCTV官网,"
				continue
			}
			for _, b := range pageData.EpgFromDb {
				if a == fmt.Sprintf("%d", b.ID) {
					pageData.Epgs[k].FromName += b.Name + ","
				}
			}
		}
		pageData.Epgs[k].FromName = strings.TrimRight(pageData.Epgs[k].FromName, ",")
	}

	c.JSON(200, pageData)
}

// ---------------- EPG 来源 /api/epgFrom/data ----------------
func EpgsFromData(c *gin.Context) {
	username, ok := until.GetAuthName(c)
	if !ok {
		c.JSON(200, dto.NewAdminRedirectDto())
		return
	}
	var pageData = dto.AdminEpgsDto{
		LoginUser: username,
		Title:     "EPG源管理",
	}

	dao.DB.Model(&models.IptvEpgList{}).Find(&pageData.EpgFromDb)

	pageData.EpgFromList = make(map[string]string)
	for k, v := range pageData.EpgFromDb {
		pageData.EpgFromDb[k].LastTimeStr = time.Unix(v.LastTime, 0).Format("2006-01-02 15:04:05")
		pageData.EpgFromList[v.Name] = v.Remarks
	}

	c.JSON(200, pageData)
}

// ---------------- 系统公告 /api/client/noticeData ----------------
func NoticeData(c *gin.Context) {
	username, ok := until.GetAuthName(c)
	if !ok {
		c.JSON(200, dto.NewAdminRedirectDto())
		return
	}

	cfg := dao.GetConfig()

	pageData := dto.AdminNoticeDto{
		LoginUser: username,
		Title:     "系统公告",
		Ad:        cfg.Ad,
	}

	c.JSON(200, pageData)
}

// ---------------- 管理员设置 /api/admins/data ----------------
func AdminsData(c *gin.Context) {
	username, ok := until.GetAuthName(c)
	if !ok {
		c.JSON(200, dto.NewAdminRedirectDto())
		return
	}

	pageData := dto.AdminsDto{
		LoginUser: username,
		Title:     "管理员设置",
	}

	dao.DB.Model(&models.IptvAdmin{}).Where("id = 1").First(&pageData.Admins)

	c.JSON(200, pageData)
}

// orderAllowedUsers / orderAllowedAuthors 是列表页排序字段的白名单。
var (
	orderAllowedUsers   = []string{"id", "name", "meal_id", "device_id", "model", "ip", "region", "last_time", "expire_time", "author", "marks"}
	orderAllowedAuthors = []string{"id", "name", "device_id", "model", "ip", "region", "expire_time", "last_time"}
)

// sanitizeOrder 返回白名单内的排序列名；不在白名单的一律回退 "id"。
func sanitizeOrder(raw string, allowed []string) string {
	for _, a := range allowed {
		if raw == a {
			return a
		}
	}
	return "id"
}

// pagingReq 是列表页取数（/api/<资源>/data）的请求体。
type pagingReq struct {
	RecCounts queryValue `json:"recCounts"`
	Jumpto    queryValue `json:"jumpto"`
	Page      queryValue `json:"page"`
	Order     queryValue `json:"order"`
	Keywords  queryValue `json:"keywords"`
}

// parsePaging 抽出原各列表页里重复出现的那段分页参数解析。
func parsePaging(c *gin.Context, recCounts, page *int64, orderPtr, keywords *string) bool {
	var req pagingReq
	if !bindJSON(c, &req) {
		return false
	}

	recCountsStr := req.RecCounts.String()
	jumptoStr := req.Jumpto.String()
	pageStr := req.Page.String()

	if !until.IsSafe(recCountsStr) || !until.IsSafe(jumptoStr) || !until.IsSafe(pageStr) {
		recCountsStr = "20"
		jumptoStr = ""
		pageStr = ""
	}

	rc, err := strconv.ParseInt(recCountsStr, 10, 64)
	if err != nil {
		rc = 20
	}
	*recCounts = rc

	// jumpto 优先于 page —— 与原实现一致（跳页框覆盖普通翻页）
	if jumptoStr != "" {
		if v, err := strconv.ParseInt(jumptoStr, 10, 64); err != nil {
			*page = 1
		} else {
			*page = v
		}
	} else if pageStr != "" {
		if v, err := strconv.ParseInt(pageStr, 10, 64); err != nil {
			*page = 1
		} else {
			*page = v
		}
	} else {
		*page = 1
	}

	if orderPtr != nil {
		o := req.Order.String()
		if o == "" || !until.IsSafe(o) {
			o = "id"
		}
		*orderPtr = o
	}

	kw := req.Keywords.String()
	if !until.IsSafe(kw) {
		kw = ""
	}
	*keywords = kw
	return true
}
