package service

import (
	"iptv-api/dao"
	"iptv-api/dto"
	"iptv-api/models"
	"iptv-api/until"
)

func Admins(req dto.AdminProfileReq) dto.ReturnJsonDto {
	username := req.Username
	oldPassword := req.OldPassword
	newpassword := req.NewPassword
	newpassword2 := req.NewPassword2

	if username == "" {
		return dto.ReturnJsonDto{Code: 0, Msg: "用户名不能为空", Type: "danger"}
	}
	if oldPassword == "" && (newpassword != "" || newpassword2 != "") {
		return dto.ReturnJsonDto{Code: 0, Msg: "旧密码不能为空"}
	}

	if newpassword != newpassword2 && newpassword != "" && newpassword2 != "" {
		return dto.ReturnJsonDto{Code: 0, Msg: "两次新密码不一致", Type: "danger"}
	}

	if oldPassword == newpassword && newpassword != "" {
		return dto.ReturnJsonDto{Code: 0, Msg: "新密码不能与旧密码相同", Type: "danger"}
	}

	if !until.IsSafe(username) {
		return dto.ReturnJsonDto{Code: 0, Msg: "用户名不合法", Type: "danger"}
	}

	var adminData models.IptvAdmin
	dao.DB.Model(&models.IptvAdmin{}).Where("id = ?", 1).First(&adminData)
	if adminData.PasswordHash != until.HashPassword(oldPassword) {
		return dto.ReturnJsonDto{Code: 0, Msg: "旧密码错误", Type: "danger"}
	}

	dao.DB.Model(&models.IptvAdmin{}).Where("id = ?", 1).Updates(map[string]interface{}{
		"password_hash": until.HashPassword(newpassword),
		"username":      username,
	})

	return dto.ReturnJsonDto{Code: 1, Msg: "修改成功", Type: "success"}
}
