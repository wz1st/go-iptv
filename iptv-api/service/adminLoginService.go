package service

import (
	"iptv-api/dao"
	"iptv-api/dto"
	"iptv-api/models"
	"iptv-api/until"
	"time"
)

func AdminLogin(username, password string, reMe bool) dto.ReturnJsonDto {
	// 获取记住密码选项

	var userDb models.IptvAdmin

	err := dao.DB.Model(&models.IptvAdmin{}).Where("username = ? and password_hash = ?", username, password).First(&userDb).Error
	if err != nil {
		return dto.ReturnJsonDto{Code: 0, Msg: "用户名或密码错误", Type: "danger"}
	}

	// 生成 JWT token
	tTime := 2 * time.Hour
	if reMe {
		tTime = 7 * 24 * time.Hour
	}
	tokenString, err := until.GenerateJWT(username, tTime)
	if err != nil {
		return dto.ReturnJsonDto{Code: 0, Msg: "生成Token失败", Type: "danger"}
	}
	// 设置 Cookie，过期时间为7天
	// c.SetCookie("token", tokenString, 7*24*3600, "/", "", false, true)
	return dto.ReturnJsonDto{Code: 1, Msg: "登录成功", Type: "success", Data: tokenString}
}
