package until

import (
	"crypto/md5"
	"encoding/hex"
	"fmt"
	"iptv-api/dao"
	"iptv-api/models"
	"log"
	"math"
	"time"
)

var PANEL_MD5_KEY = "tvkey_"

// HashPassword 使用 PANEL_MD5_KEY + 密码 做 md5
func HashPassword(password string) string {
	h := md5.New()
	h.Write([]byte(PANEL_MD5_KEY + password))
	return hex.EncodeToString(h.Sum(nil))
}

func CheckUserDay(users []models.IptvUserShow) []models.IptvUserShow {
	now := time.Now().Unix()
	for i, u := range users {
		users[i].LastTimeStr = time.Unix(u.LastTime, 0).Format("2006-01-02 15:04:05")
		// 默认到期时间
		expDate := "到期时间：" + time.Unix(u.ExpireTime, 0).Format("2006-01-02 15:04:05")
		remainDays := int(math.Ceil(float64(u.ExpireTime-now) / 86400))
		days := ""
		statusDesc := ""

		if u.Status == 999 {
			days = "永不到期"
			expDate = days
			statusDesc = days
		} else if u.Status == 0 {
			days = "已禁用"
			statusDesc = days
		} else if u.Status == -1 {
			days = "未授权"
			statusDesc = fmt.Sprintf("试用天数[%d]", remainDays)
		} else if u.ExpireTime > now {
			statusDesc = "正常"
			days = fmt.Sprintf("剩%d天", remainDays)
		} else {
			days = "过期"
		}

		users[i].ExpDesc = expDate
		users[i].ExpDays = days
		users[i].StatusDesc = statusDesc
	}
	return users
}

func PasswordReset() bool {
	data := ReadFile("/config/reset.txt")
	if data == "" {
		return false
	}
	log.Println("尝试重置密码为:", data)
	res := dao.DB.Model(&models.IptvAdmin{}).Where("id = 1").Update("password_hash", HashPassword(data))
	if res.Error != nil {
		log.Println("密码重置失败，数据库错误:", res.Error)
		return false
	}
	if res.RowsAffected == 0 {
		log.Println("密码重置失败，没有找到管理员信息")
		return false
	}
	log.Println("密码重置成功")
	return true
}
