package until

import (
	"encoding/json"
	"encoding/xml"
	"errors"
	"fmt"
	"io"
	"iptv-api/dao"
	"iptv-api/dto"
	"iptv-api/models"
	"log"
	"os"
	"path/filepath"
	"regexp"
	"slices"
	"sort"
	"strconv"
	"strings"
	"time"
)

func ConvertCntvToXml(cntv dto.CntvJsonChannel, eName string) dto.XmlTV {
	tv := dto.XmlTV{
		GeneratorName: "清和IPTV管理系统",
		GeneratorURL:  "https://www.qingh.xyz",
	}

	// 添加频道
	tv.Channels = append(tv.Channels, dto.XmlChannel{
		ID: eName,
		DisplayName: []dto.DisplayName{
			{Lang: "zh",
				Value: eName,
			},
		},
	})

	// 添加节目表
	for _, p := range cntv.Program {
		// 统一走 FormatEPGTime：秒级 + 明确时区（UTC）。
		start := FormatEPGTime(time.Unix(p.StartTime, 0))
		stop := FormatEPGTime(time.Unix(p.EndTime, 0))

		tv.Programmes = append(tv.Programmes, dto.Programme{
			Start:   start,
			Stop:    stop,
			Channel: eName,
			Title: dto.Title{
				Lang:  "zh",
				Value: p.Title,
			},
			Desc: dto.Desc{
				Lang:  "zh",
				Value: p.Title,
			},
		})
	}

	return tv
}

// EpgXmlCacheKey 是"某个 EPG 源抓回来的整份 XML"的缓存键。
func EpgXmlCacheKey(name string) string {
	return "epgXmlFrom_" + strings.TrimSpace(name)
}

func GetEpgListXml(name, url string) dto.XmlTV {
	epgUrl := url
	cacheKey := EpgXmlCacheKey(name)
	var xmlTV dto.XmlTV
	var xmlByte []byte
	readCacheOk := false
	if dao.Cache.Exists(cacheKey) {
		tmpByte, err := dao.Cache.Get(cacheKey)
		if err == nil {
			xmlByte = tmpByte
			readCacheOk = true
		}
	}

	if !readCacheOk {
		xmlByte = []byte(GetUrlData(epgUrl))
		if dao.Cache.Set(cacheKey, xmlByte) != nil {
			dao.Cache.Delete(cacheKey)
		}
	}
	xml.Unmarshal(xmlByte, &xmlTV)

	// 抓回来的时间就地归一化：各源精度/时区都不一样（见 until/epgTime.go），
	if fixed, bad := NormalizeXmlTV(&xmlTV); fixed > 0 || len(bad) > 0 {
		log.Printf("EPG源 %s 时间归一化：改写 %d 条，丢弃 %d 条无法解析", name, fixed, len(bad))
	}
	return xmlTV
}

func GetEpgCntv(name string) (dto.CntvJsonChannel, error) {

	var cntvJson dto.CntvData

	if name == "" {
		return dto.CntvJsonChannel{}, errors.New("id is empty")
	}
	name = strings.ToLower(name)

	// 与 service/epgService.go 共用同一个键函数。
	cacheKey := dao.CNTVCacheKey(name)

	epgUrl := "https://api.cntv.cn/epg/epginfo?c=" + name + "&serviceId=channel&d="

	readCacheOk := false
	if dao.Cache.Exists(cacheKey) {
		// 必须取址：cntvJson 之前是按值传进去的，json.Unmarshal 直接报
		// "non-pointer" 然后被 err == nil 吞掉 —— 缓存从未生效。
		if err := dao.Cache.GetJSON(cacheKey, &cntvJson); err == nil {
			readCacheOk = true
		}
	}

	if !readCacheOk {
		jsonStr := GetUrlData(epgUrl)
		err := json.Unmarshal([]byte(jsonStr), &cntvJson)
		if err != nil {
			return dto.CntvJsonChannel{}, err
		}
		if dao.Cache.SetJSON(cacheKey, cntvJson) != nil {
			dao.Cache.Delete(cacheKey)
		}
	}
	return cntvJson[name], nil
}

func UpdataEpgList() bool {
	var epgLists []models.IptvEpgList
	dao.DB.Model(&models.IptvEpgList{}).Find(&epgLists)

	// 逐个源记录结果。
	var failed []string

	for _, list := range epgLists {
		log.Println("更新EPG源: ", list.Name)
		cacheKey := EpgXmlCacheKey(list.Name)
		dao.Cache.Delete(cacheKey)
		xmlStr := GetUrlData(strings.TrimSpace(list.Url), list.UA)
		if xmlStr == "" {
			failed = append(failed, list.Name+"(抓取为空)")
			continue
		}

		xmlByte := []byte(xmlStr)
		if dao.Cache.Set(cacheKey, xmlByte) != nil {
			dao.Cache.Delete(cacheKey)
		}
		var xmlTV dto.XmlTV
		if xml.Unmarshal(xmlByte, &xmlTV) != nil {
			failed = append(failed, list.Name+"(XML 解析失败)")
			continue
		}
		var epgs []models.IptvEpg
		// 1️⃣ 匹配数字台，如 CCTV1、CCTV-5+、CCTV13 等
		reNum := regexp.MustCompile(`(?i)CCTV-?(\d+\+?)$`)

		// 2️⃣ 匹配字母台，如 CCTV4EUO、CCTV4AME、CCTVF、CCTVE 等
		reAlpha := regexp.MustCompile(`(?i)CCTV(\d*[A-Z]+)`)
		for _, channel := range xmlTV.Channels {
			remarks := channel.DisplayName[0].Value
			upper := strings.ToUpper(remarks)
			if strings.Contains(upper, "CCTV") {
				switch {
				case reNum.MatchString(upper):
					match := reNum.FindStringSubmatch(upper)
					num := match[1]
					remarks = fmt.Sprintf("CCTV%s|CCTV-%s|CCTV%s 4K|CCTV-%s 4K|CCTV%s HD|CCTV-%s HD", num, num, num, num, num, num)

				case reAlpha.MatchString(upper):
					match := reAlpha.FindStringSubmatch(upper)
					suffix := match[1]
					remarks = fmt.Sprintf("CCTV%s|CCTV-%s", suffix, suffix)
				}
			} else {
				remarks = fmt.Sprintf("%s|%s 4K|%s HD", remarks, remarks, remarks)
			}
			epgs = append(epgs, models.IptvEpg{
				Name:    channel.DisplayName[0].Value,
				Status:  true,
				Remarks: remarks,
			})
		}

		if len(epgs) == 0 {
			failed = append(failed, list.Name+"(XML 里没有频道)")
			continue
		}

		dao.DB.Model(&models.IptvEpgList{}).Where("id = ?", list.ID).Updates(&models.IptvEpgList{Status: true, LastTime: time.Now().Unix()})
		log.Println("开始同步EPG")
		reload, _ := SyncEpgs(list.ID, epgs, false) // 同步
		if reload {
			// 本函数外层是"所有 EPG 源"的循环，每个源都起一个 goroutine 去全表重绑
			// 等于自己跟自己抢写锁 → 交给合并调度器，整轮只跑一遍。
			RequestChannelRefresh()
		} else {
			go CleanMealsEpgCacheAll()
		}
	}

	if len(failed) > 0 {
		log.Printf("EPG列表更新完成：%d 个源失败 -> %s", len(failed), strings.Join(failed, ", "))
		return false
	}
	log.Printf("EPG列表更新完成：%d 个源全部成功", len(epgLists))
	return true
}

func UpdataEpgListOne(list models.IptvEpgList, newAdd bool) (bool, error) {
	log.Println("更新EPG源: ", list.Name)
	cacheKey := EpgXmlCacheKey(list.Name)
	dao.Cache.Delete(cacheKey)
	xmlStr := GetUrlData(strings.TrimSpace(list.Url), list.UA)
	if xmlStr != "" {
		xmlByte := []byte(xmlStr)
		if dao.Cache.Set(cacheKey, xmlByte) != nil {
			dao.Cache.Delete(cacheKey)
		}
		var xmlTV dto.XmlTV
		if xml.Unmarshal(xmlByte, &xmlTV) != nil {
			return false, errors.New("xml解析失败")
		}
		var epgs []models.IptvEpg
		// 1️⃣ 匹配数字台，如 CCTV1、CCTV-5+、CCTV13 等
		reNum := regexp.MustCompile(`(?i)CCTV-?(\d+\+?)$`)

		// 2️⃣ 匹配字母台，如 CCTV4EUO、CCTV4AME、CCTVF、CCTVE 等
		reAlpha := regexp.MustCompile(`(?i)CCTV(\d*[A-Z]+)`)
		for _, channel := range xmlTV.Channels {
			remarks := channel.DisplayName[0].Value
			if remarks == "" {
				continue
			}
			upper := strings.ToUpper(remarks)
			if strings.Contains(upper, "CCTV") {
				switch {
				case reNum.MatchString(upper):
					match := reNum.FindStringSubmatch(upper)
					num := match[1]
					remarks = fmt.Sprintf("CCTV%s|CCTV-%s|CCTV%s 4K|CCTV-%s 4K|CCTV%s HD|CCTV-%s HD", num, num, num, num, num, num)

				case reAlpha.MatchString(upper):
					match := reAlpha.FindStringSubmatch(upper)
					suffix := match[1]
					remarks = fmt.Sprintf("CCTV%s|CCTV-%s", suffix, suffix)
				}
			} else {
				remarks = fmt.Sprintf("%s|%s 4K|%s HD", remarks, remarks, remarks)
			}

			epgs = append(epgs, models.IptvEpg{
				Name:    channel.DisplayName[0].Value,
				Status:  true,
				Remarks: remarks,
			})
		}
		if len(epgs) > 0 {
			dao.DB.Model(&models.IptvEpgList{}).Where("id = ?", list.ID).Updates(&models.IptvEpgList{Status: true, LastTime: time.Now().Unix()})
			// dao.DB.Model(&models.IptvEpg{}).Where("name like ?", list.Remarks+"-%").Delete(&models.IptvEpg{})
			// dao.DB.Model(&models.IptvEpg{}).Create(&epgs)

			log.Println("开始同步EPG")
			reload, _ := SyncEpgs(list.ID, epgs, newAdd) // 同步
			if reload {
				// 与 UpdataEpgList 同一个出口：合并调度器会顺带失效聚合缓存。
				RequestChannelRefresh()
			} else {
				go CleanMealsEpgCacheAll()
			}

			log.Println("EPG更新完成")
			return true, nil
		}
		return false, errors.New("未找到epg数据")
	}
	return false, errors.New("URL错误:" + list.Url)
}

// 频道 → EPG 绑定

// bindIndex 是"频道名 -> 目标 EPG"的查找表。
type bindIndex struct {
	claims map[int64]map[int64]struct{} // epgID -> 该 EPG 认领的 caID 集合（cas）
	manual map[string][]int64           // 归一化频道名 -> epgID（来自 Content）
	exact  map[string][]int64           // 归一化 EPG 名 -> epgID
	alias  map[string][]int64           // 归一化别名   -> epgID（来自 Remarks）
}

// buildBindIndex 一次性建好索引。
func buildBindIndex(epgs []models.IptvEpg) *bindIndex {
	bi := &bindIndex{
		claims: make(map[int64]map[int64]struct{}, len(epgs)),
		manual: make(map[string][]int64),
		exact:  make(map[string][]int64),
		alias:  make(map[string][]int64),
	}

	for _, epg := range epgs {
		cats := make(map[int64]struct{}, 4)
		for _, s := range strings.Split(epg.Cas, ",") {
			if n, err := strconv.ParseInt(strings.TrimSpace(s), 10, 64); err == nil {
				cats[n] = struct{}{}
			}
		}
		bi.claims[epg.ID] = cats

		put := func(bucket map[string][]int64, name string) {
			k := NormalizeChannelKey(name)
			if k == "" {
				return
			}
			for _, id := range bucket[k] {
				if id == epg.ID {
					return
				}
			}
			bucket[k] = append(bucket[k], epg.ID)
		}

		put(bi.exact, epg.Name)
		for _, a := range strings.Split(epg.Remarks, "|") {
			put(bi.alias, a)
		}
		// Content 里既有管理端手动勾选的，也有历史识别结果，
		// 一律按"显式绑定"对待 —— 它必须压过自动别名匹配。
		for _, n := range strings.Split(epg.Content, ",") {
			put(bi.manual, n)
		}
	}

	// 桶内候选按 EPG ID 升序。
	for _, bucket := range []map[string][]int64{bi.manual, bi.exact, bi.alias} {
		for k := range bucket {
			ids := bucket[k]
			sort.Slice(ids, func(i, j int) bool { return ids[i] < ids[j] })
		}
	}

	return bi
}

// resolve 返回频道 channelName 在分类 caID 下应当绑定的 EPG ID；0 表示判不出。
func (bi *bindIndex) resolve(caID int64, channelName string) int64 {
	key := NormalizeChannelKey(channelName)
	if key == "" {
		return 0
	}
	for _, bucket := range []map[string][]int64{bi.manual, bi.exact, bi.alias} {
		for _, epgID := range bucket[key] {
			if _, ok := bi.claims[epgID][caID]; ok {
				return epgID
			}
		}
	}
	return 0
}

// bindNameBatch 是 `name IN (...)` 的分块大小。
const bindNameBatch = 400

// BindChannel 重算「频道 -> EPG」绑定。
func BindChannel() bool {
	var epgList []models.IptvEpg
	if err := dao.DB.Model(&models.IptvEpg{}).Where("status = 1").Order("id asc").Find(&epgList).Error; err != nil {
		log.Println("绑定EPG失败：查询EPG出错:", err)
		return false
	}
	if len(epgList) == 0 {
		return true
	}
	bi := buildBindIndex(epgList)

	// 一次把"可绑定"的频道取全：非自动分类 + 启用中 + status = 1。
	type chRow struct {
		CategoryID int64  `gorm:"column:category_id"`
		Name       string `gorm:"column:name"`
		EpgID      int64  `gorm:"column:epg_id"`
	}
	var rows []chRow
	if err := dao.DB.Table(models.IptvChannel{}.TableName()+" AS c").
		Select("c.category_id AS category_id, c.name AS name, c.epg_id AS epg_id").
		Joins("INNER JOIN "+models.IptvCategory{}.TableName()+" AS ca ON c.category_id = ca.id").
		Where("c.status = 1 AND ca.enable = 1 AND ca.type NOT LIKE ?", "auto%").
		Group("c.category_id, c.name, c.epg_id").
		Find(&rows).Error; err != nil {
		log.Println("绑定EPG失败：查询频道出错:", err)
		return false
	}

	// 按 (分类, 目标EPG) 归并待改写项。
	pending := make(map[[2]int64][]string)
	seen := make(map[[2]int64]map[string]struct{})
	for _, r := range rows {
		desired := bi.resolve(r.CategoryID, r.Name)
		if desired == 0 || desired == r.EpgID {
			continue
		}
		key := [2]int64{r.CategoryID, desired}
		if seen[key] == nil {
			seen[key] = make(map[string]struct{}, 8)
		}
		if _, dup := seen[key][r.Name]; dup {
			continue
		}
		seen[key][r.Name] = struct{}{}
		pending[key] = append(pending[key], r.Name)
	}

	// 排序只是为了让日志和 SQL 的执行顺序可复现（map 遍历顺序是随机的）。
	keys := make([][2]int64, 0, len(pending))
	for k := range pending {
		keys = append(keys, k)
	}
	sort.Slice(keys, func(i, j int) bool {
		if keys[i][0] != keys[j][0] {
			return keys[i][0] < keys[j][0]
		}
		return keys[i][1] < keys[j][1]
	})

	var updated int64
	touched := make([]int64, 0, len(keys))
	var lastCa int64 = -1
	for _, k := range keys {
		// 按 (分类, 目标EPG) 一条 UPDATE 覆盖它名下所有要改的频道名。
		names := pending[k]
		for i := 0; i < len(names); i += bindNameBatch {
			end := i + bindNameBatch
			if end > len(names) {
				end = len(names)
			}
			// e_id <> ? 让"已经绑对的行"不被无谓改写（也不刷新它的更新时间）。
			res := dao.DB.Model(&models.IptvChannel{}).
				Where("category_id = ? AND name IN ? AND status = 1 AND epg_id <> ?", k[0], names[i:end], k[1]).
				Update("epg_id", k[1])
			if res.Error != nil {
				log.Printf("⚠️ 绑定失败（分类 %d -> EPG %d，第 %d~%d 个名字）: %v", k[0], k[1], i, end-1, res.Error)
				break
			}
			if res.RowsAffected == 0 {
				continue
			}
			updated += res.RowsAffected
			if k[0] != lastCa {
				touched = append(touched, k[0])
				lastCa = k[0]
			}
		}
	}
	if updated > 0 {
		log.Printf("EPG 绑定完成：更新 %d 条频道绑定", updated)
	}

	if len(touched) > 0 {
		go checkCaIdsInMeals(touched)
		cfg := dao.GetConfig()
		if cfg.Epg.Fuzz == 1 && dao.Lic.Type != 0 {
			dao.WS.SendWS(dao.Request{Action: "checkChEpg"})
			CleanMealsEpgCacheAll()
		}
	}
	return true
}

func checkCaIdsInMeals(ids []int64) {
	var rebuild = false
	for _, id := range ids {
		var count int64
		err := dao.DB.Model(&models.IptvMeals{}).
			Where("(content = ? OR content LIKE ? OR content LIKE ? OR content LIKE ?) AND status = 1",
				id,                          // 单独一个值
				fmt.Sprintf("%d,%%", id),    // 开头
				fmt.Sprintf("%%,%d,%%", id), // 中间
				fmt.Sprintf("%%,%d", id),    // 结尾
			).
			Count(&count).Error
		if err != nil {
			continue
		}
		if count > 0 {
			rebuild = true
			break
		}
	}

	if rebuild {
		CleanMealsRssCacheAll()
	}
}

// splitCategoryIds 把 "1,2,3" 解析成 int64 集合。
func splitCategoryIds(s string) map[int64]struct{} {
	out := make(map[int64]struct{}, 4)
	for _, part := range strings.Split(s, ",") {
		if n, err := strconv.ParseInt(strings.TrimSpace(part), 10, 64); err == nil {
			out[n] = struct{}{}
		}
	}
	return out
}

// sharesCategory 判断两组分类是否有交集。
func sharesCategory(a map[int64]struct{}, b string) bool {
	for _, part := range strings.Split(b, ",") {
		if n, err := strconv.ParseInt(strings.TrimSpace(part), 10, 64); err == nil {
			if _, ok := a[n]; ok {
				return true
			}
		}
	}
	return false
}

// ReleaseNamesFromOtherEpgs 把一批频道名从"会跟它打架的其它 EPG"的 Content 里摘掉。
func ReleaseNamesFromOtherEpgs(keepEpgID int64, names []string) {
	want := make(map[string]struct{}, len(names))
	for _, n := range names {
		if k := NormalizeChannelKey(n); k != "" {
			want[k] = struct{}{}
		}
	}
	if len(want) == 0 {
		return
	}

	var keep models.IptvEpg
	if err := dao.DB.Model(&models.IptvEpg{}).Where("id = ?", keepEpgID).First(&keep).Error; err != nil {
		log.Printf("⚠️ 清理重复绑定失败：查询 EPG %d 出错: %v", keepEpgID, err)
		return
	}
	keepCats := splitCategoryIds(keep.Cas)
	if len(keepCats) == 0 {
		return
	}

	var others []models.IptvEpg
	if err := dao.DB.Model(&models.IptvEpg{}).
		Where("id <> ? AND cas <> ''", keepEpgID).
		Find(&others).Error; err != nil {
		log.Println("⚠️ 清理重复绑定失败：查询其它 EPG 出错:", err)
		return
	}

	for _, epg := range others {
		if !sharesCategory(keepCats, epg.Cas) {
			continue
		}

		kept := make([]string, 0, 8)
		removed := 0
		for _, n := range strings.Split(epg.Content, ",") {
			if k := NormalizeChannelKey(n); k != "" {
				if _, hit := want[k]; hit {
					removed++
					continue
				}
			}
			kept = append(kept, n)
		}
		if removed == 0 {
			continue
		}

		if err := dao.DB.Model(&models.IptvEpg{}).
			Where("id = ?", epg.ID).
			Update("content", strings.Join(kept, ",")).Error; err != nil {
			log.Printf("⚠️ 清理 EPG %d 的重复绑定失败: %v", epg.ID, err)
			continue
		}
		log.Printf("频道绑定改判：从 EPG %d(%s) 上摘掉 %d 个已改绑到 EPG %d 的频道名",
			epg.ID, epg.Name, removed, keepEpgID)
	}
}

// SyncEpgs 同步 IPTV EPG 数据：
func SyncEpgs(fromId int64, epgs []models.IptvEpg, newAdd bool) (bool, error) {
	// 1. 查询数据库中已有的记录
	var oldEpgs []models.IptvEpg
	if err := dao.DB.Model(&models.IptvEpg{}).Where("status = 1").Find(&oldEpgs).Error; err != nil {
		return false, err
	}

	// 2. 建立 name 映射方便比对
	oldMap := make(map[string]bool)
	newMap := make(map[string]bool)
	for _, o := range oldEpgs {
		oldMap[o.Name] = true
		for i, n := range epgs {
			if o.Name == n.Name {
				epgs[i].ID = o.ID
				epgs[i].FromList = o.FromList
				epgs[i].Content = o.Content
				epgs[i].Remarks = o.Remarks
				epgs[i].Status = o.Status
				epgs[i].Cas = o.Cas
			}
			newMap[n.Name] = true
		}
	}

	// 3. 计算需要新增与删除的数据
	var toAdd []models.IptvEpg

	for _, n := range epgs {
		if !oldMap[n.Name] || newAdd {
			toAdd = append(toAdd, n)
		}
	}

	for _, o := range oldEpgs {
		if !newMap[o.Name] {
			tmpList := strings.Split(o.FromList, ",")
			exist := false
			for i, v := range tmpList {
				if v == fmt.Sprintf("%d", fromId) {
					exist = true
					tmpList = append(tmpList[:i], tmpList[i+1:]...)
					break // 若只删除第一个匹配项
				}
			}

			if exist {
				tmpList = RemoveEmptyStrings(tmpList)
				if len(tmpList) > 0 {
					dao.DB.Model(&models.IptvEpg{}).Where("id = ?", o.ID).Update("from_list", strings.Join(tmpList, ","))
				}
			}
		}
	}
	addCount := 0
	if len(toAdd) > 0 {
		var caIDs []int64
		dao.DB.Model(&models.IptvCategory{}).
			Where("enable = 1 AND type not like ?", "auto%").
			Pluck("id", &caIDs)

		for _, toAddOne := range toAdd {
			oldList := strings.Split(toAddOne.FromList, ",")
			tmpList := append(oldList, fmt.Sprintf("%d", fromId))
			tmpList = RemoveEmptyStrings(tmpList)
			toAddOne.FromList = strings.Join(tmpList, ",")

			if EqualStringSets(oldList, tmpList) {
				continue
			}
			if toAddOne.ID == 0 {
				toAddOne.Cas = strings.Trim(strings.Join(strings.Fields(fmt.Sprint(caIDs)), ","), "[]") // 转换为字符串
			}
			addCount++
			dao.DB.Save(&toAddOne)
		}
		log.Printf("新增 %d 条 EPG 记录\n", addCount)
	}
	if addCount > 0 {
		return true, nil
	}
	return false, errors.New("无新增数据")
}

// epgCacheKey 是「套餐聚合节目单」在文件缓存里的键（同时也是文件名）。
func epgCacheKey(id int64) string {
	return "rssEpgXml_" + strconv.FormatInt(id, 10)
}

// GetEpgPath 确保套餐的聚合节目单缓存已就绪，并返回**缓存文件的绝对路径**。
func GetEpgPath(id int64) (string, bool) {
	if dao.Cache == nil {
		return "", false
	}
	path := filepath.Join(dao.Cache.Dir, epgCacheKey(id))
	if hasXMLDeclFile(path) {
		return path, true
	}
	return buildEpgCache(id)
}

// GetEpg 只保证「套餐聚合节目单缓存已就绪」，返回值没有用途。
func GetEpg(id int64) {
	_, _ = GetEpgPath(id)
}

// hasXMLDeclFile 报告 path 是否是一个已存在、且以 XML 声明开头的缓存文件。
func hasXMLDeclFile(path string) bool {
	f, err := os.Open(path)
	if err != nil {
		return false
	}
	defer f.Close()

	head := make([]byte, len(xml.Header))
	n, _ := io.ReadFull(f, head)
	return n == len(head) && string(head) == xml.Header
}

// buildEpgCache 生成套餐聚合节目单、写成带 XML 声明头的缓存文件，返回其路径。
func buildEpgCache(id int64) (string, bool) {
	var meal models.IptvMeals
	if err := dao.DB.Model(&models.IptvMeals{}).Where("id = ? and status = 1", id).First(&meal).Error; err != nil {
		return "", false
	}

	raw := strings.Split(meal.Content, ",")
	categoryIdList := make([]string, 0, len(raw))
	for _, s := range raw {
		if s != "" {
			categoryIdList = append(categoryIdList, s)
		}
	}
	if len(categoryIdList) == 0 {
		return "", false
	}

	var categoryList []models.IptvCategory
	if err := dao.DB.Model(&models.IptvCategory{}).Where("id in (?) and enable = 1", categoryIdList).Order("sort asc").Find(&categoryList).Error; err != nil {
		return "", false
	}

	var channels []models.IptvChannelShow
	for _, category := range categoryList {
		if strings.Contains(category.Type, "auto") {
			// EPG 节目单只用到频道名与 EPG 名，不关心播放地址 —— 传空 base
			// 让聚合那侧连补全地址这一步都省掉。
			channels = append(channels, GetAutoChannelList(category, false, "")...)
		} else {
			var tmpChannels []models.IptvChannelShow
			dao.DB.Model(&models.IptvChannelShow{}).Where("category_id = ? and status = 1", category.ID).Order("sort asc").Find(&tmpChannels)
			channels = append(channels, tmpChannels...)
		}
	}

	res := GetEpgXml(channels)
	CleanTV(&res)

	data, err := xml.Marshal(res)
	if err != nil {
		log.Println("epg缓存序列化失败:", err)
		return "", false
	}

	// 声明头一并写进缓存：这份文件就是"最终响应体"，直发时不再拼任何东西。
	body := make([]byte, 0, len(xml.Header)+len(data))
	body = append(body, xml.Header...)
	body = append(body, data...)

	key := epgCacheKey(id)
	if err := dao.Cache.Set(key, body); err != nil {
		log.Println("epg缓存设置失败:", err)
		dao.Cache.Delete(key)
		return "", false
	}
	return filepath.Join(dao.Cache.Dir, key), true
}

func CleanTV(tv *dto.XmlTV) {
	// ===== Channel 去重 + ID 重映射 =====
	chLen := len(tv.Channels)
	newChannels := make([]dto.XmlChannel, 0, chLen)

	seen := make(map[string]struct{}, chLen)
	idMap := make(map[string]string, chLen)

	nextID := 1
	for i := range tv.Channels {
		ch := &tv.Channels[i]
		if _, ok := seen[ch.ID]; ok {
			continue
		}
		seen[ch.ID] = struct{}{}

		newID := strconv.Itoa(nextID)
		idMap[ch.ID] = newID
		ch.ID = newID

		newChannels = append(newChannels, *ch)
		nextID++
	}
	tv.Channels = newChannels

	// ===== Programme 确定性去重 =====
	progLen := len(tv.Programmes)
	newProgrammes := make([]dto.Programme, 0, progLen)
	progIndex := make(map[string]int, progLen)

	for i := range tv.Programmes {
		p := &tv.Programmes[i]

		newCID, ok := idMap[p.Channel]
		if !ok {
			continue
		}
		p.Channel = newCID

		// 去重键用"归一化后的开始时间"。
		startKey := p.Start
		if len(startKey) >= 14 {
			startKey = startKey[:14]
		}

		key := newCID + "_" + startKey + "_" + p.Title.Value

		if idx, exists := progIndex[key]; exists {
			old := &newProgrammes[idx]
			// 同一条节目重复出现时，留信息更全的那条。
			if strings.TrimSpace(old.Stop) == "" && strings.TrimSpace(p.Stop) != "" {
				newProgrammes[idx] = *p
			}
			continue
		}

		progIndex[key] = len(newProgrammes)
		newProgrammes = append(newProgrammes, *p)
	}

	tv.Programmes = newProgrammes
}

func GetEpgXml(channelList []models.IptvChannelShow) dto.XmlTV {
	epgXml := dto.XmlTV{
		GeneratorName: "清和IPTV管理系统",
		GeneratorURL:  "https://www.qingh.xyz",
	}

	// ===== 核心缓存 =====
	epgXmlExist := make(map[string]struct{})            // channel.Name 是否已生成
	epgCache := make(map[int64]models.IptvEpg)          // IptvEpg 表缓存
	epgListCache := make(map[string]models.IptvEpgList) // IptvEpgList 表缓存
	channelIndex := make(map[string]int)                // epg.Name -> Channels index
	epgXmlCache := make(map[string]*dto.XmlTV)          // 零重复解析缓存

	for _, channel := range channelList {
		if channel.EpgID <= 0 {
			continue
		}
		if _, ok := epgXmlExist[channel.Name]; ok {
			continue
		}

		// ===== 获取 EPG =====
		epg, ok := epgCache[channel.EpgID]
		if !ok {
			var tmp models.IptvEpg
			if err := dao.DB.Where("id = ? and status = 1", channel.EpgID).First(&tmp).Error; err != nil {
				continue
			}
			epgCache[channel.EpgID] = tmp
			epg = tmp
		}

		fromList := strings.Split(epg.FromList, ",")
		if len(fromList) == 0 {
			continue
		}

		// ===== CNTV 优先 =====
		if slices.Contains(fromList, "0") {
			name := epg.Name
			if strings.EqualFold(name, "cctv5+") || strings.EqualFold(name, "cctv-5+") {
				name = "cctv5plus"
			}

			if tmpData, err := GetEpgCntv(name); err == nil {
				tmpXml := ConvertCntvToXml(tmpData, name)

				// display-name 是给人看的，跟订阅节目单一样统一大写；
				// channelID（= epg.Name / "cctv5plus"）原样保留 —— 节目条目按它挂靠。
				mergeChannel(&epgXml, channelIndex, name, upperChannelName(channel.Name))

				for _, p := range tmpXml.Programmes {
					p2 := p
					p2.Channel = name
					epgXml.Programmes = append(epgXml.Programmes, p2)
				}

				epgXmlExist[channel.Name] = struct{}{}
				continue
			}
		}

		// ===== 其他来源 =====
		for _, from := range fromList {
			if from == "" || from == "0" {
				continue
			}

			epgFrom, ok := epgListCache[from]
			if !ok {
				var tmp models.IptvEpgList
				if err := dao.DB.Where("id = ? and status = 1", from).First(&tmp).Error; err != nil {
					continue
				}
				epgListCache[from] = tmp
				epgFrom = tmp
			}

			if epgFrom.Url == "" || epgFrom.Name == "" {
				continue
			}

			tmpXml := getEpgListXmlCached(epgFrom.Name, epgFrom.Url, epgXmlCache)

			// 同上：只统一 display-name，channelID 保持 epg.Name。
			mergeChannel(&epgXml, channelIndex, epg.Name, upperChannelName(channel.Name))

			var srcID string
			for _, c := range tmpXml.Channels {
				if len(c.DisplayName) > 0 && c.DisplayName[0].Value == epg.Name {
					srcID = c.ID
					break
				}
			}

			for _, p := range tmpXml.Programmes {
				if p.Channel == srcID {
					p2 := p
					p2.Channel = epg.Name
					epgXml.Programmes = append(epgXml.Programmes, p2)
				}
			}

			epgXmlExist[channel.Name] = struct{}{}
			break
		}
	}

	// 收尾：统一次级再排序
	if fixed, bad := NormalizeXmlTV(&epgXml); fixed > 0 || len(bad) > 0 {
		log.Printf("节目单时间归一化：改写 %d 条，丢弃 %d 条无法解析的时间", fixed, len(bad))
		for _, b := range bad {
			log.Printf("  ⚠️ 时间无法解析（该条已处理）：%s", b)
		}
	}
	SortXmlTV(&epgXml)

	return epgXml
}

func mergeChannel(
	epgXml *dto.XmlTV,
	index map[string]int,
	channelID, displayName string,
) {
	if i, ok := index[channelID]; ok {
		for _, d := range epgXml.Channels[i].DisplayName {
			if d.Value == displayName {
				return
			}
		}
		epgXml.Channels[i].DisplayName = append(
			epgXml.Channels[i].DisplayName,
			dto.DisplayName{Lang: "zh", Value: displayName},
		)
		return
	}

	index[channelID] = len(epgXml.Channels)
	epgXml.Channels = append(epgXml.Channels, dto.XmlChannel{
		ID: channelID,
		DisplayName: []dto.DisplayName{
			{Lang: "zh", Value: displayName},
		},
	})
}

func getEpgListXmlCached(
	name, url string,
	cache map[string]*dto.XmlTV,
) *dto.XmlTV {

	key := name + "|" + url
	if tv, ok := cache[key]; ok {
		return tv
	}

	tv := GetEpgListXml(name, url)
	cache[key] = &tv
	return &tv
}
