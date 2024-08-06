package service

import (
	"encoding/json"
	"encoding/xml"
	"go-iptv/dto"
	"go-iptv/until"
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

func GetEpg(id string) dto.Response {
	var res dto.Response

	id = strings.ToLower(id)
	if strings.Contains(id, "cctv") {
		res = getEpgCntv(id)
		if len(res.Data) <= 0 {
			epgUrl := "http://epg.51zmt.top:8000/cc.xml"
			res = getEpg51Zmt(epgUrl, id)
		}
	} else if strings.Contains(id, "卫视") || strings.Contains(id, "金鹰") || strings.Contains(id, "卡酷") || strings.Contains(id, "哈哈") {
		epgUrl := "http://epg.51zmt.top:8000/cc.xml"
		res = getEpg51Zmt(epgUrl, id)
	} else {
		epgUrl := "http://epg.51zmt.top:8000/e.xml"
		res = getEpg51Zmt(epgUrl, id)
	}
	return res
}

func GetSimpleEpg(id string) dto.SimpleResponse {
	var res dto.SimpleResponse

	id = strings.ToLower(id)
	if strings.Contains(id, "cctv") {
		res = getSimpleEpgCntv(id)
		if res.Data != (dto.Program{}) {
			epgUrl := "http://epg.51zmt.top:8000/cc.xml"
			res = getSimpleEpg51Zmt(epgUrl, id)
		}
	} else if strings.Contains(id, "卫视") || strings.Contains(id, "金鹰") || strings.Contains(id, "卡酷") || strings.Contains(id, "哈哈") {
		epgUrl := "http://epg.51zmt.top:8000/cc.xml"
		res = getSimpleEpg51Zmt(epgUrl, id)
	} else {
		epgUrl := "http://epg.51zmt.top:8000/e.xml"
		res = getSimpleEpg51Zmt(epgUrl, id)
	}
	return res
}

func getEpgCntv(id string) dto.Response {

	var res dto.Response
	res.Code = 200
	res.Msg = "请求成功!"

	if id == "" {
		res.Data = []dto.Program{}
		return res
	}
	epgUrl := "https://api.cntv.cn/epg/epginfo?c=" + id + "&serviceId=channel&d="

	var jsonMap map[string]map[string]interface{}
	jsonStr := until.GetUrlData(epgUrl)
	err := json.Unmarshal([]byte(jsonStr), &jsonMap)
	if err != nil {
		res.Data = []dto.Program{}
		return res
	}
	if _, ok := jsonMap["errcode"]; ok {
		res.Data = []dto.Program{}
		return res
	}

	if epgData, ok := jsonMap[id]; ok {
		dataList := []dto.Program{}
		pos := 0

		if len(epgData["program"].([]interface{})) <= 0 {
			res.Data = []dto.Program{}
			return res
		}
		currentTime := time.Now()
		zoneName, _ := currentTime.Zone()
		if zoneName == "UTC" {
			currentTime = currentTime.Add(8 * time.Hour)
		}
		nowTime := currentTime.Format("15:04")
		for _, item := range epgData["program"].([]interface{}) {
			if dataMap, ok := item.(map[string]interface{}); ok {
				data := dto.Program{}
				data.Name = dataMap["t"].(string)
				data.StartTime = dataMap["showTime"].(string)
				dataList = append(dataList, data)

				if nowTime > data.StartTime {
					pos += 1
				}
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

func getSimpleEpgCntv(id string) dto.SimpleResponse {

	var simpleRes dto.SimpleResponse
	simpleRes.Code = 200
	simpleRes.Msg = "请求成功!"

	if id == "" {
		simpleRes.Data = dto.Program{}
		return simpleRes
	}
	epgUrl := "https://api.cntv.cn/epg/epginfo?c=" + id + "&serviceId=channel&d="

	var jsonMap map[string]map[string]interface{}
	jsonStr := until.GetUrlData(epgUrl)
	err := json.Unmarshal([]byte(jsonStr), &jsonMap)
	if err != nil {
		simpleRes.Data = dto.Program{}
		return simpleRes
	}
	if _, ok := jsonMap["errcode"]; ok {
		simpleRes.Data = dto.Program{}
		return simpleRes
	}

	if epgData, ok := jsonMap[id]; ok {
		var simpleRes dto.SimpleResponse
		data := dto.Program{}
		data.Name = epgData["isLive"].(string)
		data.StartTime = time.Unix(int64(epgData["liveSt"].(float64)), 0).Format("15:04")
		simpleRes.Data = data
		return simpleRes
	} else {
		simpleRes.Data = dto.Program{}
	}
	return simpleRes
}

func getEpg51Zmt(epgUrl string, id string) dto.Response {
	res := dto.Response{}
	res.Code = 200
	res.Msg = "请求成功!"
	if id == "" {
		res.Data = []dto.Program{}
		return res
	}
	zmtTV := zmtXmlToType(epgUrl)

	if isZmtTVEmpty(zmtTV) {
		res.Data = []dto.Program{}
		return res
	}
	currentTime := time.Now()
	zoneName, _ := currentTime.Zone()
	if zoneName == "UTC" {
		currentTime = currentTime.Add(8 * time.Hour)
	}
	nowTime := currentTime.Format("15:04")
	const layout = "20060102150405 -0700"
	dataList := make([]dto.Program, 0)
	pos := 0

	for _, channel := range zmtTV.Channels {
		if strings.ToLower(channel.DisplayName) == id {
			for _, programme := range zmtTV.Programmes {
				if programme.Channel == channel.ID {
					tS, _ := time.Parse(layout, programme.Start)
					tE, _ := time.Parse(layout, programme.Stop)
					StartTime := tS.Format("15:04")
					EndTime := tE.Format("15:04")

					data := dto.Program{}
					data.Name = programme.Title
					data.StartTime = StartTime

					dataList = append(dataList, data)

					if nowTime < EndTime {
						pos += 1
					}
				}
			}
			res.Pos = pos
			res.Data = dataList
			break
		}
	}
	return res
}

func getSimpleEpg51Zmt(epgUrl string, id string) dto.SimpleResponse {
	res := dto.SimpleResponse{}
	res.Code = 200
	res.Msg = "请求成功!"
	if id == "" {
		res.Data = dto.Program{}
		return res
	}
	zmtTV := zmtXmlToType(epgUrl)

	if isZmtTVEmpty(zmtTV) {
		res.Data = dto.Program{}
		return res
	}
	currentTime := time.Now()
	zoneName, _ := currentTime.Zone()
	if zoneName == "UTC" {
		currentTime = currentTime.Add(8 * time.Hour)
	}
	nowTime := currentTime.Format("15:04")
	const layout = "20060102150405 -0700"

	for _, channel := range zmtTV.Channels {
		if strings.ToLower(channel.DisplayName) == id {
			for _, programme := range zmtTV.Programmes {
				if programme.Channel == channel.ID {
					tS, _ := time.Parse(layout, programme.Start)
					tE, _ := time.Parse(layout, programme.Stop)
					StartTime := tS.Format("15:04")
					EndTime := tE.Format("15:04")

					data := dto.Program{}
					data.Name = programme.Title
					data.StartTime = StartTime

					if nowTime < EndTime {
						res.Data = data
						return res
					} else {
						continue
					}
				}
			}
			break
		}
	}
	res.Data = dto.Program{}
	return res
}

func zmtXmlToType(url string) dto.ZmtTV {
	var zmtTV dto.ZmtTV
	xmlStr := until.GetUrlData(url)
	xml.Unmarshal([]byte(xmlStr), &zmtTV)
	return zmtTV
}

func isZmtTVEmpty(tv dto.ZmtTV) bool {
	return len(tv.Channels) == 0 || len(tv.Programmes) == 0
}
