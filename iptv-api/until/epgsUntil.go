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

// fetchEpgSource 是"抓取 EPG 源 XML"的注入点。
//
// 生产实现就是 GetUrlDataVia；做成变量是为了让测试能数"下载了几次" ——
// 「缓存失效时不重复下载」这条承诺只能靠计数来证。
var fetchEpgSource = func(url string) string {
	return GetUrlDataVia(url, ProxyUseEpg)
}

// fetchCntvData 是"抓取 CNTV 数据"的注入点（同上）。
var fetchCntvData = func(url string) string {
	return GetUrlDataVia(url, ProxyUseEpg)
}

func GetEpgListXml(name, url string) dto.XmlTV {
	epgUrl := url
	cacheKey := EpgSourceXmlKey(name)
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
		// 缓存没有 ⇒ 先看**暂存**（上次下载物，留在持久卷里直到下次更新）。
		// 这一步是"缓存错误回落时不重复下载"的关键：节目单是按套餐聚合的，
		// 缓存一旦失效，没有暂存就会让每个套餐各下载一次同一个源。
		if staged, ok := LoadEpgSourceStage(name, url); ok {
			xmlByte = staged
			readCacheOk = true
			// 顺手回填缓存（尽力而为，失败不影响返回）
			if dao.Cache != nil {
				if dao.Cache.Set(cacheKey, xmlByte) != nil {
					dao.Cache.Delete(cacheKey)
				}
			}
		}
	}

	if !readCacheOk {
		xmlByte = []byte(fetchEpgSource(epgUrl))
		if len(xmlByte) > 0 {
			// 下载成功 ⇒ 立刻暂存：这一份会一直留到该源下次更新为止。
			if err := StageEpgSource(name, url, xmlByte); err != nil {
				log.Println("EPG源暂存失败:", err)
			}
			if dao.Cache != nil {
				if dao.Cache.Set(cacheKey, xmlByte) != nil {
					dao.Cache.Delete(cacheKey)
				}
			}
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
	cacheKey := EpgSourceCntvKey(name)

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
		// 缓存没有 ⇒ 先看**暂存**（当天抓下来的那份，留在持久卷里）。
		// 节目单按套餐聚合，同一个频道会被多个套餐各读一次；
		// 没有暂存的话，缓存一失效就会每个套餐各下载一次同一个源。
		if staged, ok := LoadEpgCntvStage(name, "until"); ok {
			if err := json.Unmarshal(staged, &cntvJson); err == nil {
				readCacheOk = true
			}
		}
	}

	if !readCacheOk {
		jsonStr := fetchCntvData(epgUrl)
		err := json.Unmarshal([]byte(jsonStr), &cntvJson)
		if err != nil {
			return dto.CntvJsonChannel{}, err
		}
		// 抓到就暂存（当天有效），避免节目单聚合时反复下载同一个频道。
		if raw, mErr := json.Marshal(cntvJson); mErr == nil {
			if sErr := StageEpgCntv(name, "until", raw); sErr != nil {
				log.Println("CNTV暂存失败:", sErr)
			}
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
		cacheKey := EpgSourceXmlKey(list.Name)
		dao.Cache.Delete(cacheKey)
		xmlStr := GetUrlDataVia(strings.TrimSpace(list.Url), ProxyUseEpg, list.UA)
		if xmlStr == "" {
			failed = append(failed, list.Name+"(抓取为空)")
			continue
		}

		xmlByte := []byte(xmlStr)
		// 暂存这份下载物：一直留到该源下次更新为止。
		// 这样即便缓存写失败、缓存被清空，节目单生成也不会重复下载同一个源。
		if err := StageEpgSource(list.Name, list.Url, xmlByte); err != nil {
			log.Println("EPG源暂存失败:", err)
		}
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
			// 没有新增 EPG ⇒ 绑定关系不变，只有节目单内容变了：
			// 作废全部套餐的聚合节目单并重算（不跑测速）。
			go InvalidateAllMealEpgCachesAndRebuild()
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
	cacheKey := EpgSourceXmlKey(list.Name)
	dao.Cache.Delete(cacheKey)
	xmlStr := GetUrlDataVia(strings.TrimSpace(list.Url), ProxyUseEpg, list.UA)
	if xmlStr != "" {
		xmlByte := []byte(xmlStr)
		// 暂存这份下载物：一直留到该源下次更新为止。
		// 这样即便缓存写失败、缓存被清空，节目单生成也不会重复下载同一个源。
		if err := StageEpgSource(list.Name, list.Url, xmlByte); err != nil {
			log.Println("EPG源暂存失败:", err)
		}
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
				// 没有新增 EPG ⇒ 绑定关系不变，只有节目单内容变了。
				go InvalidateAllMealEpgCachesAndRebuild()
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
//
// 2026-10-29 起**不再按分组（caID）限制**：频道名命中哪条规则就绑哪个 EPG，
// 与它落在哪个分组无关。"EPG 认领哪些分组"（cas）这个概念已整体删除 ——
// api 侧不再有分组限制，引擎侧的模糊识别也不再看它。
type bindIndex struct {
	manual map[string][]int64 // 归一化频道名 -> epgID（来自 Content：手动绑定名单）
	exact  map[string][]int64 // 归一化 EPG 名 -> epgID
	alias  map[string][]int64 // 归一化别名   -> epgID（来自 Remarks：自动绑定规则）
}

// buildBindIndex 一次性建好索引。
func buildBindIndex(epgs []models.IptvEpg) *bindIndex {
	bi := &bindIndex{
		manual: make(map[string][]int64),
		exact:  make(map[string][]int64),
		alias:  make(map[string][]int64),
	}

	for _, epg := range epgs {
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
		// Content 是**用户手动指定**的频道名单 —— 它必须压过自动别名匹配。
		// 自动绑定的结果存在 BoundNames 里，不参与判定（否则规则改了也不生效）。
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

// resolve 返回频道 channelName 应当绑定的 EPG ID；0 表示判不出。
//
// 判定只看**频道名**与规则表，不看分组 —— 这就是"取消 caID 限制"的落点。
func (bi *bindIndex) resolve(channelName string) int64 {
	key := NormalizeChannelKey(channelName)
	if key == "" {
		return 0
	}
	for _, bucket := range []map[string][]int64{bi.manual, bi.exact, bi.alias} {
		for _, epgID := range bucket[key] {
			return epgID
		}
	}
	return 0
}

// EpgNameMatcher 是"频道名 -> 目标 EPG"的规则表。
//
// 一次性建好、批量判定用：手动绑定弹窗要问"这一串频道名分别归谁"，
// 逐个查库会打出成百上千条 SQL。
type EpgNameMatcher struct {
	bi *bindIndex
}

// NewEpgNameMatcher 用当前启用中的 EPG 建好规则表。
func NewEpgNameMatcher() *EpgNameMatcher {
	var epgList []models.IptvEpg
	if err := dao.DB.Model(&models.IptvEpg{}).Where("status = 1").Order("id asc").Find(&epgList).Error; err != nil {
		log.Println("建立EPG绑定规则表失败:", err)
		return &EpgNameMatcher{bi: buildBindIndex(nil)}
	}
	return &EpgNameMatcher{bi: buildBindIndex(epgList)}
}

// Resolve 返回该频道名应绑定的 EPG ID（0 = 没有任何规则命中）。
func (m *EpgNameMatcher) Resolve(channelName string) int64 {
	if m == nil || m.bi == nil {
		return 0
	}
	return m.bi.resolve(channelName)
}

// bindNameBatch 是 `name IN (...)` 的分块大小。
const bindNameBatch = 400

// BindChannel 重算「频道 -> EPG」绑定。
//
// 2026-10-29 起改成**全局按名字**重算：
//   - 遍历**全部**频道名（跨分组，不再按 caID 分桶）；
//   - 频道名命中某条规则（手动绑定名单 / EPG 名 / 自动绑定别名）即视为该绑；
//   - 已有绑定的**改**到新目标，没绑定的**补**上。
//
// 仍然排除聚合分组（type like 'auto%'）：那些分组的频道表由引擎侧
// 按 EPG 聚合反推，api 不去改它们的 epg_id。
//
// 返回值是"绑定关系发生变化的频道分组 id 列表"（去重、升序无关）。
// 调用方据此决定失效范围 —— 本函数**只重算绑定**，不再自行作废缓存：
// 以前这里会调一次 CleanMealsEpgCacheAll，而收尾调度器末尾又会调一次，
// 一次频道变动因此发出两次重建信号（见 channelRefresh.go）。
func BindChannel() []int64 {
	var epgList []models.IptvEpg
	if err := dao.DB.Model(&models.IptvEpg{}).Where("status = 1").Order("id asc").Find(&epgList).Error; err != nil {
		log.Println("绑定EPG失败：查询EPG出错:", err)
		return nil
	}
	if len(epgList) == 0 {
		return nil
	}
	bi := buildBindIndex(epgList)

	// 一次把候选频道取全：非聚合分组 + 启用中 + status = 1。
	// 这里**不再按分组分桶** —— 同一个名字在哪个分组都指向同一个 EPG。
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
		return nil
	}

	// 按 (分组, 目标EPG) 归并待改写项。
	// 名字是全局的，但 UPDATE 仍按分组下发 —— 同一分组内一次改一批。
	pending := make(map[[2]int64][]string)
	seen := make(map[[2]int64]map[string]struct{})
	// bound 收集"实际绑定到每个 EPG 的频道名"（含本来就绑对的）——
	// 回写 Content 用的是它，而不是"这次改了几条"。
	bound := make(map[int64]map[string]struct{})
	for _, r := range rows {
		desired := bi.resolve(r.Name)
		if desired == 0 {
			// 没有任何规则命中这个频道名 ⇒ 保持原样（不主动解绑）。
			// 解绑是"清空绑定"的活儿，不该在这里顺手做。
			continue
		}
		if bound[desired] == nil {
			bound[desired] = make(map[string]struct{}, 8)
		}
		bound[desired][r.Name] = struct{}{}
		if desired == r.EpgID {
			// 已经绑对了，不动它（也不刷新它的更新时间）。
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
		// 按 (分组, 目标EPG) 一条 UPDATE 覆盖它名下所有要改的频道名。
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

	// 回写 Content：让「绑定频道」那一列显示的就是**当前真正绑着的频道名**。
	//
	// Content 是全量重写，不是追加 —— 追加会让"改判"留下旧记录
	//（频道已经改绑到别的 EPG 了，老 EPG 的名单里还挂着它）。
	// 全量重写顺带保证了独占：某个名字改判给别人后，会自动从原 EPG 的名单里消失。
	//
	// 原 Content 里那些"规则命中不了"的名字（用户手动指定的）要**保留** ——
	// 它们对应的频道可能还没被导入，或者刚被删了，不能因为一次重算就丢掉。
	writeBackEpgBoundNames(epgList, bound)

	if len(touched) > 0 {
		cfg := dao.GetConfig()
		if cfg != nil && cfg.Epg.Fuzz == 1 && dao.Lic.Type != 0 {
			log.Printf("通知引擎开始执行EPG模糊匹配...")
			dao.WS.SendWS(dao.Request{Action: "checkChEpg"})
		}
	}
	return touched
}

// MergeBoundChannelNames 把"手动绑定名单"与"自动绑定结果清单"合并成一份展示用的清单。
//
// 管理端 EPG 列表的「绑定频道」列显示的就是这个 —— 用户要看到的是
// "这个 EPG 当前绑着哪些台"的完整清单，不关心它是手动绑的还是规则算出来的。
//
// 内部两个来源分开存（判定只用手动那份），合并只发生在展示层。
func MergeBoundChannelNames(manual, auto string) string {
	seen := make(map[string]struct{}, 8)
	out := make([]string, 0, 8)
	add := func(s string) {
		for _, n := range strings.Split(s, ",") {
			n = strings.TrimSpace(n)
			if n == "" {
				continue
			}
			if _, dup := seen[n]; dup {
				continue
			}
			seen[n] = struct{}{}
			out = append(out, n)
		}
	}
	add(manual)
	add(auto)
	return strings.Join(out, ",")
}

// writeBackEpgBoundNames 把"当前真正绑到每个 EPG 的频道名"写回 iptv_epg.bound_names。
//
// 为什么要有这一步：管理端 EPG 列表有一列「绑定频道」，它显示的应该是
// "这个 EPG 当前绑着哪些台"。以前自动绑定只改 iptv_channels.epg_id，
// 哪儿都没记 ⇒ 那一列永远是「-」，用户看不到自动绑定到底绑上了哪些台。
//
// 写的是 BoundNames 而不是 Content，两个字段分工明确：
//   - BoundNames = 自动绑定的结果，**不参与判定** ⇒ 用户改了别名/新增了 EPG，
//     规则照样生效，不会被旧结果钉死；
//   - Content = 用户手动指定的名单，参与判定、优先级最高 ⇒ 不会被这里冲掉。
//
// 全量重写（不是追加）：某个频道改判到别的 EPG 后，它必须从原 EPG 的名单里
// 消失，否则名单与实际绑定对不上。顺带保证独占。
func writeBackEpgBoundNames(epgs []models.IptvEpg, bound map[int64]map[string]struct{}) {
	for _, epg := range epgs {
		names := make([]string, 0, 16)
		for n := range bound[epg.ID] {
			names = append(names, n)
		}

		// 去重 + 排序（顺序稳定 ⇒ 同一份绑定不会让名单来回抖动）。
		uniq := make([]string, 0, len(names))
		seen := make(map[string]struct{}, len(names))
		for _, n := range names {
			if strings.TrimSpace(n) == "" {
				continue
			}
			if _, dup := seen[n]; dup {
				continue
			}
			seen[n] = struct{}{}
			uniq = append(uniq, n)
		}
		sort.Strings(uniq)

		newNames := strings.Join(uniq, ",")
		if newNames == epg.BoundNames {
			continue
		}
		if err := dao.DB.Model(&models.IptvEpg{}).
			Where("id = ?", epg.ID).
			Update("bound_names", newNames).Error; err != nil {
			log.Printf("⚠️ 回写 EPG %d 的绑定频道名单失败: %v", epg.ID, err)
			continue
		}
		log.Printf("EPG %d(%s) 的绑定频道名单已更新：%d 个频道", epg.ID, epg.Name, len(uniq))
	}
}

// ReleaseNamesFromOtherEpgs 把一批频道名从"会跟它打架的其它 EPG"的 Content 里摘掉。
//
// 2026-10-29 起**不再按分组判断会不会打架**：绑定已经改成全局按名字判定
// （见 bindIndex.resolve），同一个名字被两个 EPG 认领就是真冲突 ——
// 不管它们在不在同一个分组。
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

	var others []models.IptvEpg
	if err := dao.DB.Model(&models.IptvEpg{}).
		Where("id <> ?", keepEpgID).
		Find(&others).Error; err != nil {
		log.Println("⚠️ 清理重复绑定失败：查询其它 EPG 出错:", err)
		return
	}

	for _, epg := range others {
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
		for _, toAddOne := range toAdd {
			oldList := strings.Split(toAddOne.FromList, ",")
			tmpList := append(oldList, fmt.Sprintf("%d", fromId))
			tmpList = RemoveEmptyStrings(tmpList)
			toAddOne.FromList = strings.Join(tmpList, ",")

			if EqualStringSets(oldList, tmpList) {
				continue
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

// EnsureMealEpgCachePath 确保套餐的聚合节目单缓存已就绪，并返回**缓存文件的绝对路径**。
//
// 回落语义：缓存不可用（dao.Cache 为 nil、缓存目录建不出来、写盘失败）时
// 返回 ok=false —— 调用方必须据此改用「现场生成的内容」下发，
// 不能因为缓存写不进去就把空节目单发给客户端。
func EnsureMealEpgCachePath(id int64) (string, bool) {
	if dao.Cache == nil {
		return "", false
	}
	path := filepath.Join(dao.Cache.Dir, mealEpgXmlKey(id))
	if hasXMLDeclFile(path) {
		return path, true
	}
	return writeMealEpgCache(id)
}

// EnsureMealEpgPayload 返回套餐聚合节目单的**下发载荷**。
//
// 三重返回：
//   - path：缓存文件路径。缓存可用且写盘成功时非空，handler 可以流式直发。
//   - body：完整 XML 字节（含声明头）。缓存不可用/写失败时用它兜底。
//   - ok：这份套餐到底有没有节目单。false 表示"这个套餐本来就没内容"。
//
// 关键语义：**只要 ok=true，调用方就一定能拿到内容** —— 缓存坏了也不能发空节目单。
//
// 注意：节目单**只生成一次**。缓存写盘成功 ⇒ 给路径（流式直发最省事）；
// 写盘失败 ⇒ 给现场算出来的内容。不要因为回落再算一遍（聚合很贵）。
func EnsureMealEpgPayload(id int64) (string, []byte, bool) {
	// 缓存已有文件 ⇒ 直接给路径。
	if dao.Cache != nil {
		path := filepath.Join(dao.Cache.Dir, mealEpgXmlKey(id))
		if hasXMLDeclFile(path) {
			return path, nil, true
		}
	}

	// 缓存没有 ⇒ 现场生成一次。
	body, ok := buildMealEpgXml(id)
	if !ok {
		return "", nil, false
	}

	// 回写缓存：成功就流式直发，失败就把内容直接给出去。
	if dao.Cache != nil {
		key := mealEpgXmlKey(id)
		if err := dao.Cache.Set(key, body); err != nil {
			log.Println("epg缓存设置失败:", err)
			dao.Cache.Delete(key)
			return "", body, true
		}
		return filepath.Join(dao.Cache.Dir, key), nil, true
	}
	return "", body, true
}

// EnsureMealEpgXml 返回套餐聚合节目单的**完整 XML 字节**（含 XML 声明头）。
//
// 这是"缓存错误回落"的正解：缓存只是加速手段。
// 缓存命中 → 直接读缓存文件；缓存不可用/写失败 → 现场算一遍再返回。
// 无论缓存处于什么状态，只要这个套餐本身有节目单，调用方就一定能拿到内容。
func EnsureMealEpgXml(id int64) ([]byte, bool) {
	if dao.Cache != nil {
		path := filepath.Join(dao.Cache.Dir, mealEpgXmlKey(id))
		if hasXMLDeclFile(path) {
			if body, err := os.ReadFile(path); err == nil {
				return body, true
			}
		}
	}

	body, ok := buildMealEpgXml(id)
	if !ok {
		return nil, false
	}

	// 回写缓存：失败只算错误，不影响本次返回。
	if dao.Cache != nil {
		key := mealEpgXmlKey(id)
		if err := dao.Cache.Set(key, body); err != nil {
			log.Println("epg缓存设置失败:", err)
			dao.Cache.Delete(key)
		}
	}
	return body, true
}

// GetEpg 只保证「套餐聚合节目单缓存已就绪」，返回值没有用途。
func EnsureMealEpgCache(id int64) {
	_, _ = EnsureMealEpgCachePath(id)
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

// writeMealEpgCache 生成套餐聚合节目单并写入缓存文件，返回其路径。
//
// 写盘失败 ⇒ 返回 ok=false（调用方要能改走"现场生成内容直接下发"的退路）。
func writeMealEpgCache(id int64) (string, bool) {
	body, ok := buildMealEpgXml(id)
	if !ok {
		return "", false
	}
	key := mealEpgXmlKey(id)
	if err := dao.Cache.Set(key, body); err != nil {
		log.Println("epg缓存设置失败:", err)
		dao.Cache.Delete(key)
		return "", false
	}
	return filepath.Join(dao.Cache.Dir, key), true
}

// buildMealEpgXml 生成套餐聚合节目单的 XML 字节（含 XML 声明头）。
//
// 与"写缓存"分开：内容生成成功但写盘失败时，内容本身仍然是好的，
// 调用方可以把它直接发给客户端，而不是返回一个空白节目单。
func buildMealEpgXml(id int64) ([]byte, bool) {
	var meal models.IptvMeals
	if err := dao.DB.Model(&models.IptvMeals{}).Where("id = ? and status = 1", id).First(&meal).Error; err != nil {
		return nil, false
	}

	raw := strings.Split(meal.Content, ",")
	categoryIdList := make([]string, 0, len(raw))
	for _, s := range raw {
		if s != "" {
			categoryIdList = append(categoryIdList, s)
		}
	}
	if len(categoryIdList) == 0 {
		return nil, false
	}

	var categoryList []models.IptvCategory
	if err := dao.DB.Model(&models.IptvCategory{}).Where("id in (?) and enable = 1", categoryIdList).Order("sort asc").Find(&categoryList).Error; err != nil {
		return nil, false
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
		return nil, false
	}

	// 声明头一并写进缓存：这份文件就是"最终响应体"，直发时不再拼任何东西。
	body := make([]byte, 0, len(xml.Header)+len(data))
	body = append(body, xml.Header...)
	body = append(body, data...)
	return body, true
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
