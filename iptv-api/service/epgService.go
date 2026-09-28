package service

import (
	"encoding/json"
	"iptv-api/dao"
	"iptv-api/dto"
	"iptv-api/models"
	"iptv-api/until"
	"slices"
	"strings"
	"time"
)

func GetWeather() map[string]interface{} {
	res := make(map[string]interface{})
	res["code"] = 200
	res["msg"] = "请求成功!"
	res["content"] = map[string]interface{}{
		"city":        "北京",
		"date":        "2024-08-01",
		"weather":     "晴",
		"temperature": "30°C",
	}
	return res
}

func GetEpg(name string) dto.ApkResponse {
	var res dto.ApkResponse
	res.Code = 200
	res.Msg = "请求成功!"

	var epg models.IptvEpg
	name = strings.ToUpper(name)
	dao.DB.Model(&models.IptvEpg{}).Where("content like ? or remarks like ?", "%"+name+"%", "%"+name+"%").First(&epg)
	if epg.ID == 0 {
		res.Code = 500
		res.Msg = "未找到相关节目!"
		return res
	}

	fromList := strings.Split(epg.FromList, ",")

	if len(fromList) <= 0 {
		res.Code = 500
		res.Msg = "未找到相关节目!"
		return res
	}

	if slices.Contains(fromList, "0") {
		res = getEpgCntv(epg.Name)
		if len(res.Data) <= 0 {
			var epgFromList []models.IptvEpgList
			dao.DB.Where("id in ?", fromList).Find(&epgFromList)
			if len(epgFromList) == 0 {
				return res
			}
			for _, epgFrom := range epgFromList {
				res = getEpgXml(epgFrom.ID, epg.Name)
				if len(res.Data) > 0 {
					return res
				}
			}
		}
	} else {
		var epgFromList []models.IptvEpgList
		dao.DB.Where("id in ?", fromList).Find(&epgFromList)
		if len(epgFromList) == 0 {
			return res
		}
		for _, epgFrom := range epgFromList {
			res = getEpgXml(epgFrom.ID, epg.Name)
			if len(res.Data) > 0 {
				return res
			}
		}
	}
	return res
}

func GetSimpleEpg(name string) dto.SimpleResponse {
	var res dto.SimpleResponse

	res.Code = 200
	res.Msg = "请求成功!"

	var epg models.IptvEpg
	name = strings.ToUpper(name)
	dao.DB.Model(&models.IptvEpg{}).Where("content like ? or remarks like ?", "%"+name+"%", "%"+name+"%").First(&epg)
	if epg.ID == 0 {
		res.Code = 500
		res.Msg = "未找到相关节目!"
		return res
	}

	fromList := strings.Split(epg.FromList, ",")

	if len(fromList) <= 0 {
		res.Code = 500
		res.Msg = "未找到相关节目!"
		return res
	}

	if slices.Contains(fromList, "0") {
		res = getSimpleEpgCntv(epg.Name)
		if res.Data == (dto.Program{}) {
			// CNTV 没给数据 → 回退到其它 EPG 源。
			var epgFromList []models.IptvEpgList
			dao.DB.Where("id in ?", fromList).Find(&epgFromList)
			for _, epgFrom := range epgFromList {
				res = getSimpleEpg(epgFrom.ID, epg.Name)
				if res.Data != (dto.Program{}) {
					return res
				}
			}
		}
	}
	return res
}

func getEpgCntv(name string) dto.ApkResponse {

	var res dto.ApkResponse
	res.Code = 200
	res.Msg = "请求成功!"

	if name == "" {
		res.Data = []dto.Program{}
		return res
	}

	name = strings.ToLower(name)
	// 缓存键必须**在归一化之后**算，而且只走 dao.CNTVCacheKey 一处。
	cacheKey := dao.CNTVCacheKey(name)
	epgUrl := "https://api.cntv.cn/epg/epginfo?c=" + name + "&serviceId=channel&d="

	var jsonMap map[string]map[string]interface{}

	readCacheOk := false
	if dao.Cache.Exists(cacheKey) {
		// 必须取址。json.Unmarshal 要往目标里回填，传值会返回
		if err := dao.Cache.GetJSON(cacheKey, &jsonMap); err == nil {
			readCacheOk = true
		}
	}

	if !readCacheOk {
		jsonStr := until.GetUrlData(epgUrl)
		err := json.Unmarshal([]byte(jsonStr), &jsonMap)
		if err != nil {
			res.Data = []dto.Program{}
			return res
		}
		if dao.Cache.SetJSON(cacheKey, jsonMap) != nil {
			dao.Cache.Delete(cacheKey)
		}
	}

	if _, ok := jsonMap["errcode"]; ok {
		res.Data = []dto.Program{}
		return res
	}

	if epgData, ok := jsonMap[name]; ok {
		dataList := []dto.Program{}
		pos := 0

		if len(epgData["program"].([]interface{})) <= 0 {
			res.Data = []dto.Program{}
			return res
		}
		// 用统一的站点时区，而不是"先看容器是不是 UTC、是就手动 +8"。
		now := time.Now().In(until.EPGLocation())
		nowTime := now.Format("15:04")
		var a = 0
		for _, item := range epgData["program"].([]interface{}) {
			if dataMap, ok := item.(map[string]interface{}); ok {
				// 断言失败会直接 panic（CNTV 偶尔会漏字段），
				// 用逗号-ok 形式降级成空值。
				title, _ := dataMap["t"].(string)
				showTime, _ := dataMap["showTime"].(string)

				data := dto.Program{}
				data.Name = title
				data.StartTime = showTime

				data.Pos = a
				dataList = append(dataList, data)

				if nowTime > data.StartTime {
					pos += 1
				}
				a++

			}
		}
		if pos > 1 {
			pos = pos - 1
		}
		res.Pos = pos
		res.Data = dataList
	} else {
		res.Data = []dto.Program{}
	}

	return res
}

func getSimpleEpgCntv(name string) dto.SimpleResponse {

	var simpleRes dto.SimpleResponse
	simpleRes.Code = 200
	simpleRes.Msg = "请求成功!"

	if name == "" {
		simpleRes.Data = dto.Program{}
		return simpleRes
	}
	name = strings.ToLower(name)
	// 同 getEpgCntv：键在归一化之后算，且只走 dao.CNTVCacheKey。
	cacheKey := dao.CNTVCacheKey(name)
	epgUrl := "https://api.cntv.cn/epg/epginfo?c=" + name + "&serviceId=channel&d="

	var jsonMap map[string]map[string]interface{}
	readCacheOk := false

	if dao.Cache.Exists(cacheKey) {
		// 同 getEpgCntv：必须取址，否则缓存永远不命中。
		if err := dao.Cache.GetJSON(cacheKey, &jsonMap); err == nil {
			readCacheOk = true
		}
	}

	if !readCacheOk {
		jsonStr := until.GetUrlData(epgUrl)
		err := json.Unmarshal([]byte(jsonStr), &jsonMap)
		if err != nil {
			simpleRes.Data = dto.Program{}
			return simpleRes
		}
		if dao.Cache.SetJSON(cacheKey, jsonMap) != nil {
			dao.Cache.Delete(cacheKey)
		}
	}

	if _, ok := jsonMap["errcode"]; ok {
		simpleRes.Data = dto.Program{}
		dao.Cache.Delete(cacheKey)
		return simpleRes
	}

	if epgData, ok := jsonMap[name]; ok {
		data := dto.Program{}
		if live, isStr := epgData["isLive"].(string); isStr {
			data.Name = live
		}
		if liveSt, isNum := epgData["liveSt"].(float64); isNum {
			// 统一按站点时区显示。原来直接用 time.Unix(...).Format("15:04")，
			// 取的是容器本地时区 —— 容器跑在 UTC 时这一栏会差 8 小时。
			data.StartTime = time.Unix(int64(liveSt), 0).In(until.EPGLocation()).Format("15:04")
		}
		// 注意：原来这里又声明了一个同名的 simpleRes，把外层那个遮掉了
		simpleRes.Data = data
		return simpleRes
	}
	simpleRes.Data = dto.Program{}
	return simpleRes
}

func getEpgXml(epgFromId int64, epgName string) dto.ApkResponse {
	res := dto.ApkResponse{}
	res.Code = 200
	res.Msg = "请求成功!"

	var epgsList models.IptvEpgList
	if err := dao.DB.Model(&models.IptvEpgList{}).Where("id = ? and status = 1", epgFromId).First(&epgsList).Error; err != nil {
		return res
	}

	xmlTV := until.GetEpgListXml(epgsList.Name, epgsList.Url)
	if isXmlTVEmpty(xmlTV) {
		return res
	}
	loc := until.EPGLocation()
	currentTime := time.Now().In(loc)

	dataList := make([]dto.Program, 0)
	pos := 0

	for _, channel := range xmlTV.Channels {
		// 原来直接取 DisplayName[0]，遇到没有 display-name 的频道会 panic。
		if len(channel.DisplayName) == 0 || !strings.EqualFold(channel.DisplayName[0].Value, epgName) {
			continue
		}

		// 先把本频道的节目挑出来再排序：只需排这一个频道的量级，
		progs := make([]dto.Programme, 0, 64)
		for _, programme := range xmlTV.Programmes {
			if programme.Channel == channel.ID {
				progs = append(progs, programme)
			}
		}
		sub := dto.XmlTV{Programmes: progs}
		until.SortXmlTV(&sub)

		a := 0
		for _, programme := range sub.Programmes {
			// 走统一的容错解析，不再只认秒级 TimeLayout。
			tS, err := until.ParseEPGTime(programme.Start)
			if err != nil {
				continue
			}

			StartTime := tS.In(loc).Format("15:04")

			data := dto.Program{}
			data.Name = programme.Title.Value
			data.StartTime = StartTime
			data.Pos = a
			dataList = append(dataList, data)
			if currentTime.After(tS) {
				pos++
			}
			a++
		}

		if pos > 1 {
			pos = pos - 1
		}
		res.Pos = pos
		res.Data = dataList
		break
	}

	return res
}

func getSimpleEpg(epgFromId int64, epgName string) dto.SimpleResponse {

	res := dto.SimpleResponse{}
	res.Code = 200
	res.Msg = "请求成功!"

	var epgsList models.IptvEpgList
	if err := dao.DB.Model(&models.IptvEpgList{}).Where("id = ? and status = 1", epgFromId).First(&epgsList).Error; err != nil {
		return res
	}

	xmlTV := until.GetEpgListXml(epgsList.Name, epgsList.Url)
	if isXmlTVEmpty(xmlTV) {
		return res
	}
	loc := until.EPGLocation()
	now := time.Now().In(loc)

	for _, channel := range xmlTV.Channels {
		if len(channel.DisplayName) == 0 || !strings.EqualFold(channel.DisplayName[0].Value, epgName) {
			continue
		}

		// 找出"此刻正在播"的那条：开始时间已过、且（若有结束时间）还没结束，
		var (
			best   dto.Programme
			bestAt time.Time
			found  bool
		)
		for _, programme := range xmlTV.Programmes {
			if programme.Channel != channel.ID {
				continue
			}
			tS, errS := until.ParseEPGTime(programme.Start)
			if errS != nil {
				continue
			}
			if now.Before(tS) {
				continue // 还没开播
			}
			if tE, errE := until.ParseEPGTime(programme.Stop); errE == nil && !now.Before(tE) {
				continue // 已经播完
			}
			if !found || tS.After(bestAt) {
				best, bestAt, found = programme, tS, true
			}
		}

		if found {
			res.Data = dto.Program{
				Name:      best.Title.Value,
				StartTime: bestAt.In(loc).Format("15:04"),
			}
			return res
		}
		break
	}

	res.Data = dto.Program{}
	return res
}

func isXmlTVEmpty(tv dto.XmlTV) bool {
	return len(tv.Channels) == 0 || len(tv.Programmes) == 0
}
