package service

import (
	"errors"
	"fmt"
	"io"
	"iptv-api/crontab"
	"iptv-api/dao"
	"iptv-api/dto"
	"iptv-api/models"
	"iptv-api/until"
	"log"
	"net/http"
	"strconv"
	"strings"
	"time"

	"github.com/gin-gonic/gin"
	"gorm.io/gorm"
)

// CaGetChannels 取某个分组下的频道（频道编辑弹窗用）。
func CaGetChannels(req dto.ReqID, base string) dto.ReturnJsonDto {

	caId := req.ID
	if caId == 0 {
		return dto.ReturnJsonDto{Code: 0, Msg: "请输入频道列表id", Type: "danger"}
	}

	var categoryDb models.IptvCategory

	if err := dao.DB.Where("id = ?", caId).First(&categoryDb).Error; err != nil {
		return dto.ReturnJsonDto{Code: 0, Msg: "该分类不存在", Type: "danger"}
	}

	channels := until.CaGetChannels(categoryDb, true, base)

	return dto.ReturnJsonDto{Code: 1, Msg: "获取成功", Type: "success", Data: channels}
}

// SaveListFlag 只改频道源列表里那两个「自动更新」相关的列（更新间隔 / 自动更新开关）。
func SaveListFlag(req dto.ChannelsListFlagReq) dto.ReturnJsonDto {
	if req.ID == 0 {
		return dto.ReturnJsonDto{Code: 0, Msg: "参数错误", Type: "danger"}
	}
	if req.Interval <= 0 {
		return dto.ReturnJsonDto{Code: 0, Msg: "更新间隔必须大于 0", Type: "danger"}
	}

	var list models.IptvCategoryList
	if err := dao.DB.Model(&models.IptvCategoryList{}).Where("id = ?", req.ID).First(&list).Error; err != nil {
		return dto.ReturnJsonDto{Code: 0, Msg: "该频道源不存在", Type: "danger"}
	}

	if err := dao.DB.Model(&models.IptvCategoryList{}).Where("id = ?", req.ID).Updates(map[string]interface{}{
		"interval": req.Interval,
		"auto":     req.Auto,
	}).Error; err != nil {
		return dto.ReturnJsonDto{Code: 0, Msg: "保存失败", Type: "danger"}
	}

	return dto.ReturnJsonDto{Code: 1, Msg: "保存成功", Type: "success"}
}

// pickListInterval 决定「更新间隔」最终落库的值：表单带了（> 0）就用表单值，
func pickListInterval(fromForm, fallback int64) int64 {
	if fromForm > 0 {
		return fromForm
	}
	return fallback
}

func AddList(req dto.ChannelsListReq) dto.ReturnJsonDto {
	listName := req.Name
	url := strings.TrimSpace(req.Url)
	ua := req.UA
	clId := req.ID

	if listName == "" {
		return dto.ReturnJsonDto{Code: 0, Msg: "请输入频道列表", Type: "danger"}
	}

	if !until.IsSafe(listName) {
		return dto.ReturnJsonDto{Code: 0, Msg: "输入不合法", Type: "danger"}
	}

	iptvCategoryList := models.IptvCategoryList{Name: listName, Url: url, UA: ua}

	if clId == 0 {
		var category models.IptvCategoryList
		dao.DB.Model(&models.IptvCategoryList{}).Where("name = ?", listName).Find(&category)
		if category.Name != "" {
			return dto.ReturnJsonDto{Code: 0, Msg: "该列表名称存在", Type: "danger"}
		}
		// 新增源：给「每个源独立」的更新节奏一个确定初值（2 小时 + 自动更新开），
		iptvCategoryList.Interval = pickListInterval(req.Interval, 7200)
		iptvCategoryList.Auto = true
	} else {
		iptvCategoryList.ID = clId
		var cOld models.IptvCategoryList
		if err := dao.DB.Model(&models.IptvCategoryList{}).Where("id = ?", iptvCategoryList.ID).First(&cOld).Error; err != nil {
			return dto.ReturnJsonDto{Code: 0, Msg: "该频道列表不存在", Type: "danger"}
		}
		// 编辑走的是 Save（整行覆盖），interval / auto 的零值会被一起写下去。
		iptvCategoryList.Interval = pickListInterval(req.Interval, cOld.Interval)
		iptvCategoryList.Auto = cOld.Auto
		dao.DB.Model(&models.IptvChannel{}).Where("source_id = ?", cOld.ID).Delete(&models.IptvChannel{})
		dao.DB.Model(&models.IptvCategory{}).Where("source_id = ?", cOld.ID).Delete(&models.IptvCategory{})
	}

	if req.AutoCategory {
		iptvCategoryList.AutoCategory = true
		iptvCategoryList.AutoGroup = req.AutoGroup
		iptvCategoryList.Ku9 = req.Ku9
	}

	iptvCategoryList.AutoRename = req.AutoRename

	doRepeat := req.Dedup
	iptvCategoryList.Dedup = req.Dedup

	client := &http.Client{}
	httpReq, err := http.NewRequest("GET", url, nil)
	if err != nil {
		return dto.ReturnJsonDto{Code: 0, Msg: "获取频道列表失败-创建请求错误:" + err.Error(), Type: "danger"}
	}

	// 添加自定义 User-Agent
	httpReq.Header.Set("User-Agent", ua)

	resp, err := client.Do(httpReq)
	if err != nil {
		return dto.ReturnJsonDto{Code: 0, Msg: "获取频道列表失败-无法访问url:" + err.Error(), Type: "danger"}
	}
	defer resp.Body.Close()

	if resp.StatusCode != 200 {
		return dto.ReturnJsonDto{Code: 0, Msg: "获取频道列表失败-状态码:" + strconv.Itoa(resp.StatusCode), Type: "danger"}
	}

	body, err := io.ReadAll(resp.Body)
	if err != nil {
		return dto.ReturnJsonDto{Code: 0, Msg: "获取频道列表失败", Type: "danger"}
	}

	urlData := until.FilterEmoji(string(body))

	if until.IsM3UContent(urlData) {
		urlData = until.M3UToGenreTXT(urlData)
	}

	if !strings.Contains(urlData, "#genre#") && iptvCategoryList.AutoCategory {
		return dto.ReturnJsonDto{Code: 0, Msg: "未找到分组, 无法使用自动分组", Type: "danger"}
	}

	if iptvCategoryList.AutoCategory {
		iptvCategoryList.LatestTime = time.Now().Format("2006-01-02 15:04:05")
		if iptvCategoryList.ID != 0 {
			iptvCategoryList.Enable = true
			dao.DB.Model(&models.IptvCategoryList{}).Where("id = ?", iptvCategoryList.ID).Save(&iptvCategoryList)
		} else {
			dao.DB.Model(&models.IptvCategoryList{}).Create(&iptvCategoryList)
		}

		if iptvCategoryList.AutoGroup {
			return GenreChannels(urlData, iptvCategoryList, doRepeat, true)
		}
		return GenreChannels(urlData, iptvCategoryList, doRepeat, false)
	} else {
		iptvCategoryList.LatestTime = time.Now().Format("2006-01-02 15:04:05")
		if iptvCategoryList.ID != 0 {
			iptvCategoryList.Enable = true
			dao.DB.Model(&models.IptvCategoryList{}).Where("id = ?", iptvCategoryList.ID).Save(&iptvCategoryList)
		} else {
			dao.DB.Model(&models.IptvCategoryList{}).Create(&iptvCategoryList)
		}

		var maxSort int64
		dao.DB.Model(&models.IptvCategory{}).Select("IFNULL(MAX(sort),0)").Scan(&maxSort)

		var iptvCategory = models.IptvCategory{
			Name:       iptvCategoryList.Name,
			Enable:     true,
			Type:       "add",
			Sort:       maxSort + 1,
			SourceID:   iptvCategoryList.ID,
			UA:         iptvCategoryList.UA,
			AutoRename: iptvCategoryList.AutoRename,
		}
		dao.DB.Model(&models.IptvCategory{}).Create(&iptvCategory)
		until.SyncCaToEpg(iptvCategory.ID)
		repeat, err := until.AddChannelList(urlData, iptvCategory.ID, iptvCategoryList.ID, doRepeat)
		if err == nil {
			return dto.ReturnJsonDto{Code: 1, Msg: fmt.Sprintf("更新列表 %s 成功，重复 %d 条\n", listName, repeat), Type: "success"}
		} else {
			return dto.ReturnJsonDto{Code: 0, Msg: fmt.Sprintf("更新列表 %s 失败\n", listName), Type: "danger"}
		}
	}
}

func UpdateList(req dto.ReqID) dto.ReturnJsonDto {
	listId := req.ID
	if listId == 0 {
		return dto.ReturnJsonDto{Code: 0, Msg: "请输入频道列表", Type: "danger"}
	}

	// 原子地「检查并置位」：手动更新与后台定时更新不能同时改同一批频道。
	if !crontab.BeginUpdate() {
		return dto.ReturnJsonDto{Code: 0, Msg: "后台更新中，请稍后再试", Type: "danger"}
	}
	defer crontab.EndUpdate()

	var iptvCategoryList models.IptvCategoryList
	res := dao.DB.Model(&models.IptvCategoryList{}).Where("id = ?", listId).First(&iptvCategoryList)

	if res.RowsAffected == 0 {
		return dto.ReturnJsonDto{Code: 0, Msg: "频道列表不存在", Type: "danger"}
	}

	client := &http.Client{}
	httpReq, err := http.NewRequest("GET", iptvCategoryList.Url, nil)
	if err != nil {
		return dto.ReturnJsonDto{Code: 0, Msg: "获取频道列表失败-创建请求错误:" + err.Error(), Type: "danger"}
	}

	// 添加自定义 User-Agent
	httpReq.Header.Set("User-Agent", iptvCategoryList.UA)

	resp, err := client.Do(httpReq)
	if err != nil {
		return dto.ReturnJsonDto{Code: 0, Msg: "获取频道列表失败-无法访问url:" + err.Error(), Type: "danger"}
	}
	defer resp.Body.Close()

	if resp.StatusCode != 200 {
		return dto.ReturnJsonDto{Code: 0, Msg: "获取频道列表失败-状态码:" + strconv.Itoa(resp.StatusCode), Type: "danger"}
	}

	body, err := io.ReadAll(resp.Body)
	if err != nil {
		return dto.ReturnJsonDto{Code: 0, Msg: "获取频道列表失败", Type: "danger"}
	}

	urlData := until.FilterEmoji(string(body)) // 过滤emoji表情

	if until.IsM3UContent(urlData) {
		urlData = until.M3UToGenreTXT(urlData)
	}

	var doRepeat = false
	if iptvCategoryList.Dedup {
		doRepeat = true
	}

	updata := map[string]interface{}{
		"latest_time": time.Now().Format("2006-01-02 15:04:05"),
	}

	if iptvCategoryList.AutoCategory {
		if !strings.Contains(urlData, "#genre#") {
			updata["auto_category"] = false
			dao.DB.Model(&models.IptvCategoryList{}).Where("id = ?", listId).Updates(updata)

			var oldC models.IptvCategory
			err := dao.DB.Model(&models.IptvCategory{}).Where("source_id = ?", iptvCategoryList.ID).First(&oldC).Error
			if errors.Is(err, gorm.ErrRecordNotFound) || err != nil {
				var maxSort int64
				dao.DB.Model(&models.IptvCategory{}).Select("IFNULL(MAX(sort),0)").Scan(&maxSort)

				oldC = models.IptvCategory{
					Name:       iptvCategoryList.Name,
					Enable:     true,
					Type:       "add",
					Sort:       maxSort + 1,
					SourceID:   iptvCategoryList.ID,
					UA:         iptvCategoryList.UA,
					AutoRename: iptvCategoryList.AutoRename,
				}
				dao.DB.Model(&models.IptvCategory{}).Create(&oldC)
				until.SyncCaToEpg(oldC.ID)
			}

			repeat, err := until.AddChannelList(urlData, oldC.ID, iptvCategoryList.ID, doRepeat)
			if err == nil {
				return dto.ReturnJsonDto{Code: 1, Msg: fmt.Sprintf("更新列表 %s 成功，重复 %d 条\n", iptvCategoryList.Name, repeat), Type: "success"}
			} else {
				return dto.ReturnJsonDto{Code: 0, Msg: fmt.Sprintf("更新列表 %s 失败\n", iptvCategoryList.Name), Type: "danger"}
			}
		}
		if iptvCategoryList.AutoGroup {
			return GenreChannels(urlData, iptvCategoryList, doRepeat, true)
		}
		return GenreChannels(urlData, iptvCategoryList, doRepeat, false)
	} else {
		dao.DB.Model(&models.IptvCategoryList{}).Where("id = ?", listId).Updates(updata)
		var oldC models.IptvCategory
		err := dao.DB.Model(&models.IptvCategory{}).Where("source_id = ?", iptvCategoryList.ID).First(&oldC).Error

		if errors.Is(err, gorm.ErrRecordNotFound) || err != nil {
			var maxSort int64
			dao.DB.Model(&models.IptvCategory{}).Select("IFNULL(MAX(sort),0)").Scan(&maxSort)

			oldC = models.IptvCategory{
				Name:       iptvCategoryList.Name,
				Enable:     true,
				Type:       "add",
				Sort:       maxSort + 1,
				SourceID:   iptvCategoryList.ID,
				AutoRename: iptvCategoryList.AutoRename,
			}
			dao.DB.Model(&models.IptvCategory{}).Create(&oldC)
			until.SyncCaToEpg(oldC.ID)
		}

		repeat, err := until.AddChannelList(urlData, oldC.ID, iptvCategoryList.ID, doRepeat)
		if err == nil {
			return dto.ReturnJsonDto{Code: 1, Msg: fmt.Sprintf("更新列表 %s 成功，重复 %d 条\n", iptvCategoryList.Name, repeat), Type: "success"}
		} else {
			return dto.ReturnJsonDto{Code: 0, Msg: fmt.Sprintf("更新列表 %s 失败\n", iptvCategoryList.Name), Type: "danger"}
		}
	}
}

func DelList(req dto.ReqID) dto.ReturnJsonDto {
	listId := req.ID
	if listId == 0 {
		return dto.ReturnJsonDto{Code: 0, Msg: "请输入频道列表id", Type: "danger"}
	}
	var iptvCategoryList models.IptvCategoryList
	res := dao.DB.Model(&models.IptvCategoryList{}).Where("id = ?", listId).First(&iptvCategoryList)

	if res.RowsAffected == 0 {
		return dto.ReturnJsonDto{Code: 0, Msg: "频道列表不存在", Type: "danger"}
	}

	dao.DB.Where("id = ?", iptvCategoryList.ID).Delete(&models.IptvCategoryList{})
	var ids []int64
	dao.DB.Model(&models.IptvCategory{}).
		Where("source_id = ?", iptvCategoryList.ID).
		Pluck("id", &ids)
	for _, id := range ids {
		go until.RemoveCaFromEpg(id)
	}
	dao.DB.Where("source_id = ?", iptvCategoryList.ID).Delete(&models.IptvCategory{})
	dao.DB.Where("source_id = ?", iptvCategoryList.ID).Delete(&models.IptvChannel{})
	go until.CleanMealsCacheAllRebuild() // 删除缓存
	return dto.ReturnJsonDto{Code: 1, Msg: fmt.Sprintf("删除列表 %s 成功\n", iptvCategoryList.Name), Type: "success"}
}

func DelCa(req dto.ReqID) dto.ReturnJsonDto {
	caId := req.ID
	if caId == 0 {
		return dto.ReturnJsonDto{Code: 0, Msg: "参数错误", Type: "danger"}
	}

	var category models.IptvCategory
	if err := dao.DB.Model(&models.IptvCategory{}).Where("id = ?", caId).First(&category).Error; err != nil {
		return dto.ReturnJsonDto{Code: 0, Msg: "该频道不存在", Type: "danger"}
	}

	dao.DB.Model(&models.IptvCategory{}).Where("id = ?", category.ID).Delete(&models.IptvCategory{})
	dao.DB.Model(&models.IptvChannel{}).Where("category_id = ?", category.ID).Delete(&models.IptvChannel{})
	go until.RemoveCaFromEpg(category.ID)
	go until.CleanAutoCacheAllRebuild()
	return dto.ReturnJsonDto{Code: 1, Msg: fmt.Sprintf("删除频道 %s 成功\n", category.Name), Type: "success"}
}

// SortCategory 按提交顺序整体重写分类的 sort（第 1 个元素排最前）。
func SortCategory(req dto.ChannelsCaSortReq) dto.ReturnJsonDto {
	if len(req.IDs) == 0 {
		return dto.ReturnJsonDto{Code: 0, Msg: "参数错误", Type: "danger"}
	}

	err := dao.DB.Transaction(func(tx *gorm.DB) error {
		for i, id := range req.IDs {
			if err := tx.Model(&models.IptvCategory{}).
				Where("id = ? AND sort >= 0", id).
				Update("sort", i+1).Error; err != nil {
				return err
			}
		}
		return nil
	})
	if err != nil {
		return dto.ReturnJsonDto{Code: 0, Msg: "保存排序失败", Type: "danger"}
	}

	go until.CleanMealsRssCacheAll()
	return dto.ReturnJsonDto{Code: 1, Msg: "排序已保存", Type: "success"}
}

// SortChannels 按提交顺序整体重写**某个分组内**频道的 sort（第 1 个元素排最前）。
func SortChannels(req dto.ChannelsChSortReq) dto.ReturnJsonDto {
	if req.CaID == 0 || len(req.IDs) == 0 {
		return dto.ReturnJsonDto{Code: 0, Msg: "参数错误", Type: "danger"}
	}

	var category models.IptvCategory
	if err := dao.DB.Model(&models.IptvCategory{}).Where("id = ?", req.CaID).First(&category).Error; err != nil {
		return dto.ReturnJsonDto{Code: 0, Msg: "该分组不存在", Type: "danger"}
	}
	if strings.Contains(category.Type, "auto") {
		return dto.ReturnJsonDto{Code: 0, Msg: "聚合分组不允许调整顺序", Type: "danger"}
	}

	err := dao.DB.Transaction(func(tx *gorm.DB) error {
		for i, id := range req.IDs {
			if err := tx.Model(&models.IptvChannel{}).
				Where("id = ? AND category_id = ?", id, req.CaID).
				Update("sort", i+1).Error; err != nil {
				return err
			}
		}
		return nil
	})
	if err != nil {
		return dto.ReturnJsonDto{Code: 0, Msg: "保存排序失败", Type: "danger"}
	}

	go until.CleanMealsRssCacheAll()
	return dto.ReturnJsonDto{Code: 1, Msg: "排序已保存", Type: "success"}
}

// ImportChannels 整表保存某个分组内的频道（「频道分组 → 编辑频道」弹窗的「保存」）。
func ImportChannels(req dto.ChannelsImportReq) dto.ReturnJsonDto {
	if req.CaID == 0 {
		return dto.ReturnJsonDto{Code: 0, Msg: "参数错误", Type: "danger"}
	}

	var category models.IptvCategory
	if err := dao.DB.Model(&models.IptvCategory{}).Where("id = ?", req.CaID).First(&category).Error; err != nil {
		return dto.ReturnJsonDto{Code: 0, Msg: "该分组不存在", Type: "danger"}
	}
	if strings.Contains(category.Type, "auto") {
		return dto.ReturnJsonDto{Code: 0, Msg: "聚合分组的频道由规则生成，不能直接编辑", Type: "danger"}
	}

	// listId 传 0：这批频道不是从某个频道源同步来的，source_id 留空，
	repet, err := until.AddChannelList(req.List, req.CaID, 0, false)
	if err != nil {
		return dto.ReturnJsonDto{Code: 0, Msg: "保存失败: " + err.Error(), Type: "danger"}
	}

	go until.CleanMealsRssCacheAll()

	msg := "保存成功"
	if repet > 0 {
		msg = fmt.Sprintf("保存成功，已跳过重复 %d 条", repet)
	}
	return dto.ReturnJsonDto{Code: 1, Msg: msg, Type: "success"}
}

// SaveCategoryFlag 只改分组列表里那两个开关（中转访问 / 频道重命名）。
func SaveCategoryFlag(req dto.ChannelsCaFlagReq) dto.ReturnJsonDto {
	if req.ID == 0 {
		return dto.ReturnJsonDto{Code: 0, Msg: "参数错误", Type: "danger"}
	}

	var ca models.IptvCategory
	if err := dao.DB.Model(&models.IptvCategory{}).Where("id = ?", req.ID).First(&ca).Error; err != nil {
		return dto.ReturnJsonDto{Code: 0, Msg: "该分组不存在", Type: "danger"}
	}

	if err := dao.DB.Model(&models.IptvCategory{}).Where("id = ?", req.ID).Updates(map[string]interface{}{
		"proxy":       req.Proxy,
		"auto_rename": req.AutoRename,
	}).Error; err != nil {
		return dto.ReturnJsonDto{Code: 0, Msg: "保存失败", Type: "danger"}
	}

	dao.Cache.Delete("proxyCaCheck_" + strconv.FormatInt(req.ID, 10))
	go until.CleanAutoCacheAll()

	return dto.ReturnJsonDto{Code: 1, Msg: "操作成功", Type: "success"}
}

func SaveChannelsOne(req dto.ChannelsOneReq) dto.ReturnJsonDto {
	chId := req.ID
	chname := req.Name
	chURL := req.Url
	epgId := req.EPGID

	if chId == 0 || chname == "" || chURL == "" {
		return dto.ReturnJsonDto{Code: 0, Msg: "参数错误, 不得为空", Type: "danger"}
	}

	if !until.IsSafe(chname) || !until.IsSafe(chURL) {
		return dto.ReturnJsonDto{Code: 0, Msg: "参数错误, 存在非法字符", Type: "danger"}
	}

	var channel models.IptvChannel
	if err := dao.DB.Model(&models.IptvChannel{}).Where("id = ?", chId).First(&channel).Error; err != nil {
		return dto.ReturnJsonDto{Code: 0, Msg: "未找到对应的频道记录", Type: "danger"}
	}

	if epgId != 0 {
		var epg models.IptvEpg
		if err := dao.DB.Model(&models.IptvEpg{}).Where("id = ?", epgId).First(&epg).Error; err != nil {
			return dto.ReturnJsonDto{Code: 0, Msg: "未找到对应的 EPG 记录", Type: "danger"}
		}
		channel.EpgID = epg.ID
		// 写进 content 的必须是**改完之后**的频道名。
		tmpList := []string{chname}
		epg.Content = strings.Join(until.MergeAndUnique(strings.Split(epg.Content, ","), tmpList), ",")

		if err := dao.DB.Model(&models.IptvEpg{}).Where("id = ?", epgId).Save(&epg).Error; err != nil {
			return dto.ReturnJsonDto{Code: 0, Msg: "保存EPG失败" + err.Error(), Type: "danger"}
		}
		// 手动指定绑定同样是"独占"语义，见 until.ReleaseNamesFromOtherEpgs。
		go until.ReleaseNamesFromOtherEpgs(epgId, tmpList)
	} else {
		channel.EpgID = 0
	}

	channel.Name = chname
	channel.Url = chURL

	if err := dao.DB.Model(&models.IptvChannel{}).Where("id = ?", chId).Updates(map[string]interface{}{
		"name":   channel.Name,
		"url":    channel.Url,
		"epg_id": channel.EpgID,
	}).Error; err != nil {
		return dto.ReturnJsonDto{Code: 0, Msg: "保存频道失败" + err.Error(), Type: "danger"}
	}

	go until.CleanAutoCacheAllRebuild() // 清理缓存
	return dto.ReturnJsonDto{Code: 1, Msg: "保存成功", Type: "success"}
}

func GenreChannels(srclist string, caList models.IptvCategoryList, doRepeat, group bool) dto.ReturnJsonDto {

	data := until.ConvertDataToMap(srclist, group)
	var repeatCount int
	for genreName, genreList := range data {
		genreName = strings.TrimSpace(genreName)
		if genreName == "" {
			continue
		}

		categoryName := strings.ReplaceAll(fmt.Sprintf("%s(%s)", genreName, caList.Name), " ", "")

		var category models.IptvCategory
		dao.DB.Model(&models.IptvCategory{}).Where("name = ?", categoryName).First(&category)

		if category.ID == 0 {
			var maxSort int64
			dao.DB.Model(&models.IptvCategory{}).Select("IFNULL(MAX(sort),0)").Scan(&maxSort)
			category := models.IptvCategory{
				Name:       categoryName,
				Sort:       maxSort + 1,
				Type:       "add",
				SourceID:   caList.ID,
				UA:         caList.UA,
				AutoRename: caList.AutoRename,
			}
			if caList.Ku9 {
				category.Ku9 = genreList.Ku9
			}

			if err := dao.DB.Create(&category).Error; err != nil {
				return dto.ReturnJsonDto{Code: 0, Msg: fmt.Sprintf("新增分类 %s 失败\n", categoryName), Type: "danger"}
			}
			until.SyncCaToEpg(category.ID)
			a, err := until.AddChannelList(genreList.SrcList, category.ID, caList.ID, doRepeat)
			if err != nil {
				log.Println(fmt.Sprintf("新增分类 %s 失败\n", categoryName), err)
				continue
			}
			repeatCount += a
			continue
		}
		a, err := until.AddChannelList(genreList.SrcList, category.ID, caList.ID, doRepeat)
		if err != nil {
			log.Println(fmt.Sprintf("新增分类 %s 失败\n", categoryName), err)
			continue
		}
		repeatCount += a
	}
	if repeatCount > 0 {
		if !doRepeat {
			return dto.ReturnJsonDto{Code: 1, Msg: fmt.Sprintf("更新列表 %s 成功，重复 %d 条\n", caList.Name, repeatCount), Type: "success"}
		}
	}
	return dto.ReturnJsonDto{Code: 1, Msg: "更新列表", Type: "success"}
}

func CategoryListChangeStatus(req dto.ReqID) dto.ReturnJsonDto {
	listId := req.ID
	if listId == 0 {
		return dto.ReturnJsonDto{Code: 0, Msg: "源 id 不能为空", Type: "danger"}
	}

	var cateData models.IptvCategoryList
	if err := dao.DB.Model(&models.IptvCategoryList{}).Where("id = ?", listId).First(&cateData).Error; err != nil {
		return dto.ReturnJsonDto{Code: 0, Msg: "查询Category源失败", Type: "danger"}
	}

	if cateData.Enable {
		dao.DB.Model(&models.IptvCategoryList{}).Where("id = ?", cateData.ID).Update("enable", 0)
		dao.DB.Model(&models.IptvCategory{}).Where("source_id = ?", cateData.ID).Update("enable", 0)
	} else {
		dao.DB.Model(&models.IptvCategoryList{}).Where("id = ?", cateData.ID).Update("enable", 1)
		dao.DB.Model(&models.IptvCategory{}).Where("source_id = ?", cateData.ID).Update("enable", 1)
	}
	go until.CleanAutoCacheAllRebuild()
	return dto.ReturnJsonDto{Code: 1, Msg: "源 " + cateData.Name + "状态修改成功", Type: "success"}
}

func CategoryChangeStatus(req dto.ReqID) dto.ReturnJsonDto {
	caId := req.ID
	if caId == 0 {
		return dto.ReturnJsonDto{Code: 0, Msg: "源 id 不能为空", Type: "danger"}
	}

	var cateData models.IptvCategory
	if err := dao.DB.Model(&models.IptvCategory{}).Where("id = ?", caId).First(&cateData).Error; err != nil {
		return dto.ReturnJsonDto{Code: 0, Msg: "查询Category失败", Type: "danger"}
	}

	if cateData.Enable {
		dao.DB.Model(&models.IptvCategory{}).Where("id = ?", cateData.ID).Update("enable", 0)
		dao.DB.Model(&models.IptvChannel{}).Where("category_id = ?", cateData.ID).Update("status", 0)
	} else {
		dao.DB.Model(&models.IptvCategory{}).Where("id = ?", cateData.ID).Update("enable", 1)
		dao.DB.Model(&models.IptvChannel{}).Where("category_id = ?", cateData.ID).Update("status", 1)
	}
	go until.CleanAutoCacheAllRebuild()
	return dto.ReturnJsonDto{Code: 1, Msg: "分类 " + cateData.Name + "状态修改成功", Type: "success"}
}

func ChannelsChangeStatus(req dto.ChannelsStatusReq) dto.ReturnJsonDto {
	chId := req.ID
	if chId == 0 {
		return dto.ReturnJsonDto{Code: 0, Msg: "频道 id 不能为空", Type: "danger"}
	}

	var chData models.IptvChannel
	if err := dao.DB.Model(&models.IptvChannel{}).Where("id = ?", chId).First(&chData).Error; err != nil {
		return dto.ReturnJsonDto{Code: 0, Msg: "查询频道失败", Type: "danger"}
	}

	// 写成**目标状态**，不再是原来的"取反"：取反语义下，连点两次会产生两个
	status := int64(0)
	if req.Status {
		status = 1
	}
	if err := dao.DB.Model(&models.IptvChannel{}).Where("id = ?", chData.ID).
		Update("status", status).Error; err != nil {
		return dto.ReturnJsonDto{Code: 0, Msg: "状态修改失败", Type: "danger"}
	}

	go until.CleanAutoCacheAllRebuild()

	action := "已停用"
	if req.Status {
		action = "已启用"
	}
	return dto.ReturnJsonDto{Code: 1, Msg: "频道 " + chData.Name + " " + action, Type: "success"}
}

// DeleteChannel 删除单个频道（「频道分组 → 管理」弹窗操作列的「删除」）。
func DeleteChannel(req dto.ReqID) dto.ReturnJsonDto {
	chId := req.ID
	if chId == 0 {
		return dto.ReturnJsonDto{Code: 0, Msg: "频道 id 不能为空", Type: "danger"}
	}

	var chData models.IptvChannel
	if err := dao.DB.Model(&models.IptvChannel{}).Where("id = ?", chId).First(&chData).Error; err != nil {
		return dto.ReturnJsonDto{Code: 0, Msg: "查询频道失败", Type: "danger"}
	}

	if err := dao.DB.Delete(&models.IptvChannel{}, chId).Error; err != nil {
		return dto.ReturnJsonDto{Code: 0, Msg: "删除失败", Type: "danger"}
	}

	go until.CleanAutoCacheAllRebuild()
	go until.CleanMealsRssCacheAll()
	return dto.ReturnJsonDto{Code: 1, Msg: "频道 " + chData.Name + " 已删除", Type: "success"}
}

func UpdateListAll() dto.ReturnJsonDto {
	if crontab.IsUpdating() {
		return dto.ReturnJsonDto{Code: 0, Msg: "后台更新中", Type: "danger"}
	}

	// 这里不再手工置位：crontab.UpdateList 内部自带 BeginUpdate/EndUpdate，
	// 若在此处先占位，goroutine 进来会被自己的互斥挡住而什么都不做。
	go crontab.UpdateList() // 更新所有频道列表
	return dto.ReturnJsonDto{Code: 1, Msg: "开始后台更新", Type: "success"}
}

func UploadPayList(c *gin.Context) dto.ReturnJsonDto {
	file, err := c.FormFile("paylistfile")
	if err != nil {
		return dto.ReturnJsonDto{Code: 0, Msg: "获取文件失败:" + err.Error(), Type: "danger"}
	}

	listName := "文件导入" + time.Now().Format("20060102")

	f, err := file.Open()
	if err != nil {
		return dto.ReturnJsonDto{Code: 0, Msg: "打开文件失败: " + err.Error(), Type: "danger"}
	}
	defer f.Close()

	// 读取内容
	data, err := io.ReadAll(f)
	if err != nil {
		return dto.ReturnJsonDto{Code: 0, Msg: "读取文件失败: " + err.Error(), Type: "danger"}
	}

	// 转为字符串
	urlData := until.FilterEmoji(string(data)) // 过滤emoji表情

	if until.IsM3UContent(urlData) {
		urlData = until.M3UToGenreTXT(urlData)
	}

	if !strings.Contains(urlData, "#genre#") {
		var maxSort int64
		dao.DB.Model(&models.IptvCategory{}).Select("IFNULL(MAX(sort),0)").Scan(&maxSort)
		var new = models.IptvCategory{Name: listName, Type: "file", Sort: maxSort + 1, AutoRename: true}
		dao.DB.Model(&models.IptvCategory{}).Create(&new)
		until.SyncCaToEpg(new.ID) // 同步写入 EPG 归属：必须早于 AddChannelList 触发的重绑

		repeat, err := until.AddChannelList(urlData, new.ID, 0, false)
		if err == nil {
			return dto.ReturnJsonDto{Code: 1, Msg: fmt.Sprintf("更新列表 %s 成功，重复 %d 条\n", listName, repeat), Type: "success"}
		} else {
			return dto.ReturnJsonDto{Code: 0, Msg: fmt.Sprintf("更新列表 %s 失败\n", listName), Type: "danger"}
		}
	}
	caList := models.IptvCategoryList{ID: 0, Name: listName, UA: "", AutoRename: true}
	return GenreChannels(urlData, caList, false, true)
}

func SaveCategory(req dto.ChannelsCategoryReq) dto.ReturnJsonDto {
	caId := req.ID
	caname := req.Name
	caua := req.UA
	autoType := req.AutoType
	rulesRe := req.RulesRe
	ruleEpgs := req.RulesEpg
	ku9 := req.Ku9

	if caname == "" || !until.IsSafe(caname) {
		return dto.ReturnJsonDto{Code: 0, Msg: "参数错误或非法参数", Type: "danger"}
	}

	if caId == 0 {
		var tmpCa models.IptvCategory
		err := dao.DB.Model(&models.IptvCategory{}).Where("name = ?", caname).First(&tmpCa).Error
		if err == nil {
			// 找到记录 → 重复
			return dto.ReturnJsonDto{Code: 0, Msg: "分类名称重复", Type: "danger"}
		} else if !errors.Is(err, gorm.ErrRecordNotFound) {
			// 其他查询错误
			return dto.ReturnJsonDto{Code: 0, Msg: "查询失败：" + err.Error(), Type: "danger"}
		}

		var maxSort int64
		dao.DB.Model(&models.IptvCategory{}).Select("IFNULL(MAX(sort),0)").Scan(&maxSort)
		var new = models.IptvCategory{Name: caname, Type: "user", Sort: maxSort + 1, UA: caua, Ku9: ku9}

		if req.Proxy {
			new.Proxy = true
		}

		if autoType != "" {
			if dao.Lic.Type == 0 {
				return dto.ReturnJsonDto{Code: 0, Msg: "未授权不支持自动分类", Type: "danger"}
			}
			_, err := until.CheckEngineVer("v1.5.10")
			if err != nil {
				return dto.ReturnJsonDto{Code: 0, Msg: err.Error(), Type: "danger"}
			}
			switch autoType {
			case "auto", "autoRe":
				new.Type = "autoRe"
				new.Rules = rulesRe
			case "autoEpgs":
				new.Type = "autoEpgs"
				new.Rules = ruleEpgs
			}
			new.Proxy = true
		}

		if req.AutoRename {
			new.AutoRename = true
		}
		dao.DB.Model(&models.IptvCategory{}).Create(&new)
		if strings.Contains(new.Type, "auto") {
			go until.CleanAutoCacheAllRebuild()
		} else {
			until.SyncCaToEpg(new.ID)
		}
	} else {
		caIdInt := caId
		var ca models.IptvCategory
		if err := dao.DB.Where("id = ?", caIdInt).First(&ca).Error; err != nil || errors.Is(err, gorm.ErrRecordNotFound) {
			return dto.ReturnJsonDto{Code: 0, Msg: "分类不存在", Type: "danger"}
		}
		ca.Name = caname
		ca.UA = caua
		ca.Ku9 = ku9
		ca.Rules = ""

		if autoType != "" {
			if dao.Lic.Type == 0 {
				return dto.ReturnJsonDto{Code: 0, Msg: "未授权不支持自动分类", Type: "danger"}
			}
			_, err := until.CheckEngineVer("v1.5.10")
			if err != nil {
				return dto.ReturnJsonDto{Code: 0, Msg: err.Error(), Type: "danger"}
			}
			switch autoType {
			case "auto", "autoRe":
				ca.Type = "autoRe"
				ca.Rules = rulesRe
				dao.DB.Model(&models.IptvChannel{}).Delete(&models.IptvChannel{}, "category_id = ?", ca.ID)
			case "autoEpgs":
				ca.Type = "autoEpgs"
				ca.Rules = ruleEpgs
				dao.DB.Model(&models.IptvChannel{}).Delete(&models.IptvChannel{}, "category_id = ?", ca.ID)
			}
		}

		if req.Proxy {
			ca.Proxy = true
		} else {
			ca.Proxy = false
		}

		if req.AutoRename {
			ca.AutoRename = true
		} else {
			ca.AutoRename = false
		}
		dao.DB.Model(&models.IptvCategory{}).Where("id = ?", caIdInt).Updates(map[string]interface{}{
			"name":        ca.Name,
			"ua":          ca.UA,
			"type":        ca.Type,
			"rules":       ca.Rules,
			"proxy":       ca.Proxy,
			"auto_rename": ca.AutoRename,
			"ku9":         ca.Ku9,
		})

		proxyCaCheck := "proxyCaCheck_" + strconv.FormatInt(caIdInt, 10)
		dao.Cache.Delete(proxyCaCheck)

		if strings.Contains(ca.Type, "auto") {
			go until.RemoveCaFromEpg(caIdInt)
			go until.CleanAutoCacheAll()
		} else {
			// 普通分组也要清**聚合**缓存：聚合分组会把来源分组的 UA 带进
			// "这条链接要不要继续走中转"的判据（引擎 aggregateNeedsProxy），
			// 只清订阅缓存会让改完 UA 的聚合分组一直用旧结果 ——
			// 现象是"分组里改了 UA，聚合分组里那条链接的中转/直连还是老样子"。
			// CleanAutoCacheAll 内部已经包含 CleanMealsRssCacheAll，不必再单独调。
			go until.CleanAutoCacheAll()
		}
	}
	return dto.ReturnJsonDto{Code: 1, Msg: "操作成功", Type: "success"}
}

// TestResolutionOne 单条频道测速 + 分辨率测试。
func TestResolutionOne(req dto.ReqID) dto.ReturnJsonDto {
	chId := req.ID
	if dao.Lic.Type == 0 {
		return dto.ReturnJsonDto{Code: 0, Msg: "未授权", Type: "danger"}
	}
	if chId == 0 {
		return dto.ReturnJsonDto{Code: 0, Msg: "频道 id 不能为空", Type: "danger"}
	}

	var chData models.IptvChannel
	if err := dao.DB.Model(&models.IptvChannel{}).Where("id = ?", chId).First(&chData).Error; err != nil {
		return dto.ReturnJsonDto{Code: 0, Msg: "查询频道失败", Type: "danger"}
	}

	res, err := dao.WS.SendWS(dao.Request{Action: "testResolutionOne", Data: chData.ID})
	if err != nil {
		// 原来回的是 res.Msg —— 而 err != nil 时 res 是零值，Msg 为空，
		// 前端 displayResult 见到空 msg 就什么都不弹 → "点了没反应"。
		return dto.ReturnJsonDto{Code: 0, Msg: "引擎未连接，无法测试", Type: "danger"}
	}
	if res.Code == 1 {
		return dto.ReturnJsonDto{Code: 1, Msg: "操作成功", Type: "success", Data: res.Data}
	}
	return dto.ReturnJsonDto{Code: 0, Msg: res.Msg, Type: "danger", Data: res.Data}
}
