package service

import (
	"iptv-api/dao"
	"iptv-api/dto"
	"iptv-api/models"
	"iptv-api/until"
	"log"
	"strconv"
	"time"
)

func MytvGetUserM3U8(ts, deviceId, clientIP, host string) string {
	var user models.IptvUser
	user.IP = clientIP
	user.DeviceID = deviceId
	user.Region = until.GetIpRegion(user.IP)

	if lastTime, err := strconv.ParseInt(ts, 10, 64); err == nil {
		user.LastTime = lastTime
	} else {
		user.LastTime = time.Now().Unix()
	}
	user = SaveUser(user)
	keySeed := ts + deviceId

	data, err := until.AESEncrypt(until.EnsureMytvSubM3u8(user.MealID, deviceId, host), keySeed)
	if err != nil {
		log.Println("mytv订阅加密失败: ", err)
	}
	return data
}

// MytvGetRssEpg 返回该设备所属套餐的聚合节目单。
//
// 同 GetRssEpg：缓存不可用时 path 为空但 body 仍有现场算出的内容，
// handler 必须优先发 body，不能发空节目单。
func MytvGetRssEpg(deviceId string) (string, []byte, bool) {
	var dbUser models.IptvUser
	res := dao.DB.Where("device_id = ?", deviceId).First(&dbUser)
	if res.RowsAffected == 0 {
		return "", nil, false
	}
	return until.EnsureMealEpgPayload(dbUser.MealID)
}

func SaveUser(user models.IptvUser) models.IptvUser {
	var dbUser models.IptvUser
	res := dao.DB.Where("device_id = ?", user.DeviceID).First(&dbUser)
	if res.RowsAffected == 0 {
		// 账号直接用 device_id —— mytv 本来就以 device_id 查用户，
		// 拿它当账号比随机数更好认。取不到才退回随机数（与 apk 侧同一套逻辑）。
		user.Name = genName(dto.ApkUser{DeviceID: user.DeviceID})
		var cfg = dao.GetConfig()
		switch cfg.App.NeedAuthor {
		case 0:
			user.Status = 999
			user.Marks = "自动授权"
		case 1:
			user.Status = -1
			user.Marks = "未授权"
		}
		user.MealID = 1000
		dao.DB.Model(&models.IptvUser{}).Create(&user)
		return user
	}

	dbUser.IP = user.IP
	dbUser.Region = user.Region
	dbUser.LastTime = user.LastTime

	dao.DB.Model(&models.IptvUser{}).Where("device_id = ?", user.DeviceID).Updates(dbUser)
	return dbUser
}
