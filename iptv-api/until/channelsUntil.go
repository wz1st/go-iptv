package until

import (
	"encoding/json"
	"fmt"
	"iptv-api/dao"
	"iptv-api/dto"
	"iptv-api/models"
	"log"
	"regexp"
	"strconv"
	"strings"

	"gorm.io/gorm"
)

// convertListFormat 将 m3u 或 "频道,URL" 格式统一转换为 "频道,URL\n"
func ConvertListFormat(srclist string) string {
	if !strings.HasSuffix(srclist, "\n") {
		srclist += "\n"
	}

	var convertedList strings.Builder

	// 匹配 #EXTINF
	reExtInf := regexp.MustCompile(`#EXTINF:-?\d+.*?,(.*?)\n(.*?)\n`)
	matches := reExtInf.FindAllStringSubmatch(srclist, -1)

	if len(matches) > 0 {
		for _, match := range matches {
			channelName := strings.TrimSpace(match[1])
			channelURL := match[2]
			convertedList.WriteString(fmt.Sprintf("%s,%s\n", channelName, channelURL))
		}
		return convertedList.String()
	}

	// 匹配 "频道,URL"
	reLine := regexp.MustCompile(`(.*?),(.*)\n`)
	matches = reLine.FindAllStringSubmatch(srclist, -1)

	if len(matches) > 0 {
		for _, match := range matches {
			channelName := strings.TrimSpace(match[1])
			channelURL := match[2]
			convertedList.WriteString(fmt.Sprintf("%s,%s\n", channelName, channelURL))
		}
		return convertedList.String()
	}

	return srclist
}

// addChannelList 添加频道到数据库

func ConvertDataToMap(data string, group bool) map[string]dto.ChannelDto {
	lines := strings.Split(data, "\n")
	result := make(map[string]dto.ChannelDto)
	currentGenre := ""
	groupName := ""

	for _, line := range lines {
		line = strings.TrimSpace(line)
		if line == "" {
			continue
		}

		if strings.Contains(line, ",#group#") {
			if group {
				name := strings.SplitN(line, ",#group#", 2)[0]
				if name != "" {
					groupName = "[" + name + "]"
				}
			}
			continue
		}

		if strings.Contains(line, "#genre#") {
			currentGenre = strings.SplitN(line, ",#genre#", 2)[0] + groupName

			if _, exists := result[currentGenre]; !exists {
				result[currentGenre] = dto.ChannelDto{
					Ku9: strings.SplitN(line, ",#genre#", 2)[1],
				}
			}
		} else if currentGenre != "" {
			tmp := result[currentGenre]
			if result[currentGenre].SrcList != "" {
				// 取出副本
				tmp.SrcList += "\n"
			}
			tmp.SrcList += line
			result[currentGenre] = tmp
		}
	}

	return result
}

func M3UToGenreTXT(m3u string) string {
	lines := strings.Split(m3u, "\n")

	genreMap := make(map[string][]string)
	var groupsOrder []string // 记录首次出现的分组顺序

	// 更稳健的正则：在任意位置捕获 group-title="xx"，最后一个逗号后是频道名
	reExtinf := regexp.MustCompile(`(?i)#EXTINF:[^,]*?(?:.*?group-title=["']([^"']+)["'])?.*?,\s*(.*)$`)

	var lastGroup, lastName string

	for _, line := range lines {
		line = strings.TrimSpace(line)
		if line == "" || strings.HasPrefix(line, "#EXTM3U") {
			continue
		}

		if strings.HasPrefix(line, "#EXTINF:") {
			matches := reExtinf.FindStringSubmatch(line)
			if len(matches) >= 3 {
				group := strings.TrimSpace(matches[1])
				name := strings.TrimSpace(matches[2])

				if group == "" {
					group = "未分组"
				}

				lastGroup = group
				lastName = name

				// 若首次见到该分组，记录顺序
				if _, ok := genreMap[group]; !ok {
					groupsOrder = append(groupsOrder, group)
					genreMap[group] = []string{}
				}
			}
		} else if isStreamURL(line) {
			if lastName != "" && lastGroup != "" {
				genreMap[lastGroup] = append(genreMap[lastGroup], fmt.Sprintf("%s,%s", lastName, line))
				// 清空以避免错误关联
				lastName, lastGroup = "", ""
			}
		}
	}

	// 按首次出现顺序输出（避免 sort 后改变顺序）
	var builder strings.Builder
	for _, group := range groupsOrder {
		builder.WriteString(fmt.Sprintf("%s,#genre#\n", group))
		for _, item := range genreMap[group] {
			builder.WriteString(item + "\n")
		}
		builder.WriteString("\n")
	}

	return strings.TrimSpace(builder.String())
}

// streamURLSchemes 是"这一行是一个直播源地址"的协议前缀。
var streamURLSchemes = []string{"http", "rtsp", "rtmp", "mms"}

func isStreamURL(line string) bool {
	for _, s := range streamURLSchemes {
		if strings.HasPrefix(line, s) {
			return true
		}
	}
	return false
}

func IsM3UContent(data string) bool {
	// 去除前后空白
	trimmed := strings.TrimSpace(data)

	// 必须以 #EXTM3U 开头
	if !strings.HasPrefix(trimmed, "#EXTM3U") {
		return false
	}

	// 检查是否包含至少一个 #EXTINF
	if !strings.Contains(data, "#EXTINF:") {
		return false
	}

	return true
}

// GetAutoChannelList 取自动聚合分类（正则聚合 / EPG 聚合）的频道列表。
func GetAutoChannelList(category models.IptvCategory, show bool, base string) []models.IptvChannelShow {

	var result []models.IptvChannelShow

	var res dao.Response
	var err error
	if show {
		res, err = dao.WS.SendWS(dao.Request{Action: "getAutoClassShow", Data: category.ID})
	} else {
		res, err = dao.WS.SendWS(dao.Request{Action: "getAutoClass", Data: category.ID})
	}

	if err != nil {
		log.Println("获取聚合频道失败:", err)
		return result
	}
	if res.Code != 1 {
		log.Println("获取聚合频道失败:", res.Msg)
		return result
	}

	if err := json.Unmarshal(res.Data, &result); err != nil {
		log.Println("解析聚合频道失败:", err)
		return nil
	}

	// 补全协议 / 域名 / 端口。**必须在 Unmarshal 之后、返回之前**做，
	NormalizeProxyPaths(result, base)

	return result
}

// CaGetChannels 取某个分组的频道列表。
func CaGetChannels(category models.IptvCategory, show bool, base string) []models.IptvChannelShow {

	if strings.Contains(category.Type, "auto") {
		return GetAutoChannelList(category, show, base)
	} else {
		cfg := dao.GetConfig()
		var channels []models.IptvChannelShow
		// ca_name / ca.proxy 是**查询别名**：普通分组里它们恒等于"本分组本身"，
		// ca.ua 同理（本分组的自定义 UA），只用于展示与"为什么还在走中转"的解释。
		dao.DB.Table(models.IptvChannelShow{}.TableName()+" AS c").
			Select("c.*, e.name AS epg_name, ca.name AS ca_name, ca.proxy, ca.ua AS ua").
			Joins("LEFT JOIN "+models.IptvEpg{}.TableName()+" AS e ON c.epg_id = e.id AND e.status = 1").
			Joins("LEFT JOIN "+models.IptvCategory{}.TableName()+" AS ca ON c.category_id = ca.id").
			Where("c.category_id = ?", category.ID).
			Order("c.sort asc").
			Find(&channels)
		for i, ch := range channels {
			if ch.EpgName != "" {
				channels[i].Logo = EpgNameGetLogo(ch.EpgName)
				if category.AutoRename && !show {
					channels[i].Name = ch.EpgName
				}
			}
			// 中转地址只从**原始源地址**推：源地址本身已经是 `/p/…` 时不再包一层
			// （见 IsProxyPath），否则就是"中转已中转的链接"。
			if IsProxyPath(ch.Url) {
				log.Printf("⚠️ 分组 %d 的频道 %q 源地址已是中转地址，跳过中转生成: %s",
					category.ID, ch.Name, ch.Url)
			} else if category.Proxy && cfg.Proxy.Status == 1 && ch.Status && base != "" {
				msg, err := EncryptChannelURL(category.ID, ch.Url)
				if err == nil {
					channels[i].PUrl = ProxyURL(base, msg)
				}
			}
		}
		return channels
	}

}

// AddChannelList 用一份播放列表文本**整体重写**某个分组的频道。
func AddChannelList(srclist string, cId, listId int64, doRepeat bool) (int, error) {
	// 空文本 = 清空这个分组
	if srclist == "" {
		if err := dao.DB.Transaction(func(tx *gorm.DB) error {
			return tx.Where("category_id = ?", cId).Delete(&models.IptvChannel{}).Error
		}); err != nil {
			return 0, err
		}
		notifyChannelWrite(cId)
		return 0, nil
	}

	var oldChannels []models.IptvChannel
	if err := dao.DB.Model(&models.IptvChannel{}).Where("category_id = ?", cId).Find(&oldChannels).Error; err != nil {
		return 0, err
	}

	// 去重清单：手工分组（type = user 且启用中）里已经有的 URL，本分组不再重复落库。
	// 只在开了去重时才查 —— 它是一次跨分组的 JOIN，白白跑没有意义。
	handMap := make(map[string]string)
	if doRepeat {
		var handChannels []models.IptvChannel
		dao.DB.Table(models.IptvChannel{}.TableName()+" AS c").
			Select("c.name, c.url").
			Joins("LEFT JOIN "+models.IptvCategory{}.TableName()+" AS cat ON c.category_id = cat.id and cat.enable = 1").
			Where("cat.type = ?", "user").
			Scan(&handChannels)

		for _, ch := range handChannels {
			if ch.Url != "" && ch.Name != "" {
				handMap[ch.Url] = ch.Name
			}
		}
	}

	plan := planChannelWrite(
		ParseChannelList(ConvertListFormat(srclist)),
		oldChannels, cId, listId, doRepeat, handMap,
	)

	if err := execChannelPlan(dao.DB, plan); err != nil {
		return plan.Repeat, err
	}

	if plan.Changed() {
		log.Printf("分组 %d 频道数据变动：新增 %d / 原地更新 %d / 删除 %d（跳过重复 %d）",
			cId, len(plan.Insert), len(plan.Patch), len(plan.Delete), plan.Repeat)

		dao.DB.Model(&models.IptvCategory{}).Where("id = ?", cId).Update("raw_count", plan.RawCount)

		// 频道表变了：聚合分组的内容与 EPG 绑定都要跟着重算。
		notifyChannelWrite(cId)
	}
	log.Printf("订阅频道数量: %d", plan.RawCount)

	return plan.Repeat, nil
}

// SyncCaToEpg 把一个分组 id 挂到所有启用中的 EPG 的 cas 上（"这个 EPG 认领哪些分组"）。
func SyncCaToEpg(caId int64) {
	caIdStr := fmt.Sprintf("%d", caId)

	dao.DB.Model(&models.IptvEpg{}).
		Where("status = 1").
		Update("cas", gorm.Expr(`
			CASE
				WHEN cas IS NULL OR cas = '' THEN ?
				WHEN instr(',' || cas || ',', ',' || ? || ',') = 0 THEN cas || ',' || ?
				ELSE cas
			END
		`, caIdStr, caIdStr, caIdStr))
}

func RemoveCaFromEpg(caId int64) {
	caIdStr := fmt.Sprintf("%d", caId)

	dao.DB.Model(&models.IptvEpg{}).
		Where("status = 1").
		Update("cas", gorm.Expr(`
			TRIM(
				REPLACE(
					REPLACE(
						',' || cas || ',',
						',' || ? || ',',
						','
					),
					',,',
					','
				),
				','
			)
		`, caIdStr))
}

// upperChannelName 统一「节目单里对外显示的频道名」的大小写。
func upperChannelName(name string) string {
	return strings.ToUpper(name)
}

func GetTxt(id int64, base string) string {
	var res string

	txtCaCheKey := "rssMealTxt_" + strconv.FormatInt(id, 10)
	if dao.Cache.Exists(txtCaCheKey) {
		cacheData, err := dao.Cache.GetNotExpired(txtCaCheKey)
		if err == nil {
			return string(cacheData)
		}
	}

	var meal models.IptvMeals
	if err := dao.DB.Model(&models.IptvMeals{}).Where("id = ? and status = 1", id).First(&meal).Error; err != nil {
		return res
	}
	categoryIdList := strings.Split(meal.Content, ",")
	var categoryList []models.IptvCategory
	if err := dao.DB.Model(&models.IptvCategory{}).Where("id in (?) and enable = 1", categoryIdList).Order("sort asc").Find(&categoryList).Error; err != nil {
		return res
	}
	cfg := dao.GetConfig()

	for _, category := range categoryList {
		var channels []models.IptvChannelShow
		if !strings.Contains(category.Type, "auto") {
			channels = CaGetChannels(category, false, base)
		} else {
			channels = GetAutoChannelList(category, false, base)
		}
		if len(channels) == 0 {
			continue
		}
		res += category.Name + ",#genre#\n"
		for _, channel := range channels {
			if channel.Status {
				name := upperChannelName(channel.Name)
				if category.Proxy && cfg.Proxy.Status == 1 && channel.PUrl != "" {
					res += name + "," + channel.PUrl + "\n"
					continue
				}
				res += name + "," + channel.Url + "\n"
			}

		}
	}

	if err := dao.Cache.Set(txtCaCheKey, []byte(res)); err != nil {
		log.Println("订阅缓存设置失败:", err)
		dao.Cache.Delete(txtCaCheKey)
	}

	return res
}

func GetTxtKu9(id int64, base string) string {
	var res string

	txtCaCheKey := "rssMealTxt_" + strconv.FormatInt(id, 10)
	if dao.Cache.Exists(txtCaCheKey) {
		cacheData, err := dao.Cache.GetNotExpired(txtCaCheKey)
		if err == nil {
			return string(cacheData)
		}
	}

	var meal models.IptvMeals
	if err := dao.DB.Model(&models.IptvMeals{}).Where("id = ? and status = 1", id).First(&meal).Error; err != nil {
		return res
	}
	categoryIdList := strings.Split(meal.Content, ",")
	var categoryList []models.IptvCategory
	if err := dao.DB.Model(&models.IptvCategory{}).Where("id in (?) and enable = 1", categoryIdList).Order("sort asc").Find(&categoryList).Error; err != nil {
		return res
	}
	cfg := dao.GetConfig()

	tmpGroup := make(map[string]string)

	for _, category := range categoryList {
		caGroup, caName := GetCaName(category.Name)
		if caGroup == "" {
			caGroup = "default"
		}

		var channels []models.IptvChannelShow
		if strings.Contains(category.Type, "auto") {
			channels = GetAutoChannelList(category, false, base)
		} else {
			channels = CaGetChannels(category, false, base)
		}

		if len(channels) == 0 {
			continue
		}
		if category.Ku9 != "" {
			tmpGroup[caGroup] += caName + ",#genre#," + category.Ku9 + "\n"
		} else {
			if category.UA == "" {
				tmpGroup[caGroup] += caName + ",#genre#\n"
			} else {
				tmpGroup[caGroup] += fmt.Sprintf("%s,#genre#,HEADERS={\"User-Agent\":\"%s\"}\n", caName, category.UA)
			}
		}

		for _, channel := range channels {
			if channel.Status {
				name := upperChannelName(channel.Name)
				if category.Proxy && cfg.Proxy.Status == 1 && channel.PUrl != "" {
					tmpGroup[caGroup] += name + "," + channel.PUrl + "\n"
					continue
				}
				tmpGroup[caGroup] += name + "," + channel.Url + "\n"
			}
		}
		tmpGroup[caGroup] += "\n"
	}

	for k, v := range tmpGroup {
		if k == "default" {
			res += "\n" + v
			continue
		}
		res += "\n" + k + ",#group#\n\n" + v
	}

	if err := dao.Cache.Set(txtCaCheKey, []byte(res)); err != nil {
		log.Println("订阅缓存设置失败:", err)
		dao.Cache.Delete(txtCaCheKey)
	}

	return res
}

func GetM3u8(id int64, host, token string) string {

	m3u8CaCheKey := "rssMealM3u8_" + strconv.FormatInt(id, 10)
	if dao.Cache.Exists(m3u8CaCheKey) {
		cacheData, err := dao.Cache.GetNotExpired(m3u8CaCheKey)
		if err == nil {
			return string(cacheData)
		}
	}

	epgURL := host + "/epg/" + token + "/e.xml"
	logoBase := host + "/logo/"

	var builder strings.Builder
	builder.WriteString(fmt.Sprintf("#EXTM3U url-tvg=\"%s\"\n\n", epgURL))

	var meal models.IptvMeals
	if err := dao.DB.Model(&models.IptvMeals{}).Where("id = ? and status = 1", id).First(&meal).Error; err != nil {
		return builder.String()
	}
	categoryIdList := strings.Split(meal.Content, ",")
	var categoryList []models.IptvCategory
	if err := dao.DB.Model(&models.IptvCategory{}).Where("id in (?) and enable = 1", categoryIdList).Order("sort asc").Find(&categoryList).Error; err != nil {
		return builder.String()
	}
	cfg := dao.GetConfig()

	for _, category := range categoryList {
		var channels []models.IptvChannelShow
		if !strings.Contains(category.Type, "auto") {
			channels = CaGetChannels(category, false, host)
		} else {
			channels = GetAutoChannelList(category, false, host)
		}
		if len(channels) == 0 {
			continue
		}

		for _, channel := range channels {
			if channel.Status {
				var logo string = ""
				var extinf string = ""
				if channel.EpgName != "" {
					logo = fmt.Sprintf("%s%s.png", strings.TrimRight(logoBase, "/")+"/", channel.EpgName)
				}
				// 展示名统一大写（见 upperChannelName）。tvg-id **保持原样** ——
				// 它要和 EPG 的 <channel id> 对齐，单边改了节目表就匹配不上。
				name := upperChannelName(channel.Name)
				if category.Proxy && cfg.Proxy.Status == 1 && channel.PUrl != "" {
					extinf = fmt.Sprintf(`#EXTINF:-1 tvg-id="%s" tvg-name="%s" tvg-logo="%s" group-title="%s" http-user-agent="%s",%s`,
						channel.Name, name, logo, category.Name, category.UA, name)
					builder.WriteString(extinf + "\n")
					builder.WriteString(channel.PUrl + "\n\n")
					continue
				}
				extinf = fmt.Sprintf(`#EXTINF:-1 tvg-id="%s" tvg-name="%s" tvg-logo="%s" group-title="%s" http-user-agent="%s",%s`,
					channel.Name, name, logo, category.Name, category.UA, name)
				builder.WriteString(extinf + "\n")
				builder.WriteString(channel.Url + "\n\n")
			}
		}
	}

	if err := dao.Cache.Set(m3u8CaCheKey, []byte(builder.String())); err != nil {
		log.Println("订阅缓存设置失败:", err)
		dao.Cache.Delete(m3u8CaCheKey)
	}

	return builder.String()
}

func MytvM3u8(id int64, deviceId, host string) string {

	m3u8CaCheKey := "mytvMealM3u8_" + deviceId
	if dao.Cache.Exists(m3u8CaCheKey) {
		cacheData, err := dao.Cache.GetNotExpired(m3u8CaCheKey)
		if err == nil {
			return string(cacheData)
		}
	}

	epgURL := host + "/mytv/" + deviceId + "/e.xml"
	logoBase := host + "/logo/"

	var builder strings.Builder
	builder.WriteString(fmt.Sprintf("#EXTM3U url-tvg=\"%s\"\n\n", epgURL))

	var meal models.IptvMeals
	if err := dao.DB.Model(&models.IptvMeals{}).Where("id = ? and status = 1", id).First(&meal).Error; err != nil {
		return builder.String()
	}
	categoryIdList := strings.Split(meal.Content, ",")
	var categoryList []models.IptvCategory
	if err := dao.DB.Model(&models.IptvCategory{}).Where("id in (?) and enable = 1", categoryIdList).Order("sort asc").Find(&categoryList).Error; err != nil {
		return builder.String()
	}
	cfg := dao.GetConfig()

	for _, category := range categoryList {
		var channels []models.IptvChannelShow
		if !strings.Contains(category.Type, "auto") {
			channels = CaGetChannels(category, false, host)
		} else {
			channels = GetAutoChannelList(category, false, host)
		}
		if len(channels) == 0 {
			continue
		}

		for _, channel := range channels {
			if channel.Status {
				var logo string = ""
				var extinf string = ""
				if channel.EpgName != "" {
					logo = fmt.Sprintf("%s%s.png", strings.TrimRight(logoBase, "/")+"/", channel.EpgName)
				}
				// 展示名统一大写（见 upperChannelName）。tvg-id **保持原样** ——
				// 它要和 EPG 的 <channel id> 对齐，单边改了节目表就匹配不上。
				name := upperChannelName(channel.Name)
				if category.Proxy && cfg.Proxy.Status == 1 && channel.PUrl != "" {
					extinf = fmt.Sprintf(`#EXTINF:-1 tvg-id="%s" tvg-name="%s" tvg-logo="%s" group-title="%s" http-user-agent="%s",%s`,
						channel.Name, name, logo, category.Name, category.UA, name)
					builder.WriteString(extinf + "\n")
					builder.WriteString(channel.PUrl + "\n\n")
					continue
				}
				extinf = fmt.Sprintf(`#EXTINF:-1 tvg-id="%s" tvg-name="%s" tvg-logo="%s" group-title="%s" http-user-agent="%s",%s`,
					channel.Name, name, logo, category.Name, category.UA, name)
				builder.WriteString(extinf + "\n")
				builder.WriteString(channel.Url + "\n\n")
			}
		}
	}

	if err := dao.Cache.Set(m3u8CaCheKey, []byte(builder.String())); err != nil {
		log.Println("订阅缓存设置失败:", err)
		dao.Cache.Delete(m3u8CaCheKey)
	}

	return builder.String()
}

func GetCaName(s string) (content string, cleaned string) {
	re := regexp.MustCompile(`\[(.*?)\]`)
	m := re.FindStringSubmatch(s)

	if len(m) > 1 {
		content = m[1]                       // 中括号内内容
		cleaned = re.ReplaceAllString(s, "") // 移除整个 [xxx]
	} else {
		content = ""
		cleaned = s
	}

	return
}
