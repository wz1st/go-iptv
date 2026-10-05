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

	data, err := until.AESEncrypt(until.MytvM3u8(user.MealID, deviceId, host), keySeed)
	if err != nil {
		log.Println("mytv订阅加密失败: ", err)
	}
	return data
}

// MytvGetRssEpg 返回该设备所属套餐的「聚合节目单缓存文件路径」，由 handler 流式直发。
func MytvGetRssEpg(deviceId string) (string, bool) {
	var dbUser models.IptvUser
	res := dao.DB.Where("device_id = ?", deviceId).First(&dbUser)
	if res.RowsAffected == 0 {
		return "", false
	}
	return until.GetEpgPath(dbUser.MealID)
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
