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

	// if bootstrap.GAODE_KEY == "" {
	// 	return res
	// }
	// _, cityId := until.GetIp("192.168.1.1")

	// url := "https://restapi.amap.com/v3/weather/weatherInfo?city=" + cityId + "&key=" + bootstrap.GAODE_KEY
	// jsonStr := until.GetUrlData(url)
	// var jsonMap map[string]interface{}

	// // 将 JSON 字符串解码到 map 中
	// err := json.Unmarshal([]byte(jsonStr), &jsonMap)
	// if err != nil {
	// 	return res
	// }
	// if infocode, ok := jsonMap["infocode"]; ok {
	// 	if infocode != "10000" {
	// 		return res
	// 	}
	// 	if conditions, ok := jsonMap["lives"].([]interface{}); ok {
	// 		if len(conditions) > 0 {
	// 			res["content"] = conditions[0]
	// 			return res
	// 		}
	// 	}
	// }
	return res
}

func GetEpg(id string, simple string) map[string]interface{} {
	res := make(map[string]interface{}, 0)

	id = strings.ToLower(id)
	if strings.Contains(id, "cctv") {
		res = getEpgCntv(id, simple)
		if len(res["data"].([]map[string]interface{})) <= 0 {
			epgUrl := "http://epg.51zmt.top:8000/cc.xml"
			res = getEpg51Zmt(epgUrl, id, simple)
		}
	} else if strings.Contains(id, "卫视") || strings.Contains(id, "金鹰") || strings.Contains(id, "卡酷") || strings.Contains(id, "哈哈") {
		epgUrl := "http://epg.51zmt.top:8000/cc.xml"
		res = getEpg51Zmt(epgUrl, id, simple)
	} else {
		epgUrl := "http://epg.51zmt.top:8000/e.xml"
		res = getEpg51Zmt(epgUrl, id, simple)
	}
	return res
}

func getEpgCntv(id string, simple string) map[string]interface{} {

	res := make(map[string]interface{})
	res["code"] = 200
	res["msg"] = "请求成功!"

	if id == "" {
		res["data"] = []map[string]interface{}{}
		return res
	}
	epgUrl := "https://api.cntv.cn/epg/epginfo?c=" + id + "&serviceId=channel&d="

	var jsonMap map[string]map[string]interface{}
	jsonStr := until.GetUrlData(epgUrl)
	err := json.Unmarshal([]byte(jsonStr), &jsonMap)
	if err != nil {
		res["data"] = []map[string]interface{}{}
		return res
	}
	if _, ok := jsonMap["errcode"]; ok {
		res["data"] = []map[string]interface{}{}
		return res
	}

	if epgData, ok := jsonMap[id]; ok {
		if simple == "1" {
			data := make(map[string]interface{})
			data["name"] = epgData["isLive"]
			data["starttime"] = time.Unix(int64(epgData["liveSt"].(float64)), 0).Format("15:04")
			res["data"] = data
			return res
		}
		dataList := make([]map[string]interface{}, 0)
		pos := 0

		if len(epgData["program"].([]interface{})) <= 0 {
			res["data"] = []map[string]interface{}{}
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
				data := make(map[string]interface{})
				data["name"] = dataMap["t"]
				data["starttime"] = dataMap["showTime"]
				dataList = append(dataList, data)

				if nowTime > data["starttime"].(string) {
					pos += 1
				}
			}
		}
		if pos > 1 {
			pos = pos - 1
		}
		res["pos"] = pos
		res["data"] = dataList
	} else {
		res["data"] = []map[string]interface{}{}
	}

	return res
}

func getEpg51Zmt(epgUrl string, id string, simple string) map[string]interface{} {
	res := make(map[string]interface{})
	res["code"] = 200
	res["msg"] = "请求成功!"
	if id == "" {
		res["data"] = []map[string]interface{}{}
		return res
	}
	zmtTV := zmtXmlToType(epgUrl)

	if isZmtTVEmpty(zmtTV) {
		res["data"] = []map[string]interface{}{}
		return res
	}
	currentTime := time.Now()
	zoneName, _ := currentTime.Zone()
	if zoneName == "UTC" {
		currentTime = currentTime.Add(8 * time.Hour)
	}
	nowTime := currentTime.Format("15:04")
	const layout = "20060102150405 -0700"
	dataList := make([]map[string]interface{}, 0)
	pos := 0

	for _, channel := range zmtTV.Channels {
		if strings.ToLower(channel.DisplayName) == id {
			for _, programme := range zmtTV.Programmes {
				if programme.Channel == channel.ID {
					tS, _ := time.Parse(layout, programme.Start)
					tE, _ := time.Parse(layout, programme.Stop)
					StartTime := tS.Format("15:04")
					EndTime := tE.Format("15:04")

					data := make(map[string]interface{})
					data["name"] = programme.Title
					data["starttime"] = StartTime

					if simple == "1" {
						if nowTime < EndTime {
							res["data"] = data
							return res
						} else {
							continue
						}
					}

					dataList = append(dataList, data)

					if nowTime < EndTime {
						pos += 1
					}
				}
			}
			res["pos"] = pos
			res["data"] = dataList
			break
		}
	}
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
