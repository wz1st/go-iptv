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

// baseHasUpdate 从各基底检查接口的返回值里抽出"有无新基底"布尔。
// 清和壳 / 骆驼壳返回 map（字段 hasUpdate），MyTV 返回结构体（字段 HasUpdate），
// 两种形态都兼容；检查失败（Code!=1）或没数据时按"无更新"处理，绝不误报红点。
func baseHasUpdate(r dto.ReturnJsonDto) bool {
	if r.Code != 1 || r.Data == nil {
		return false
	}
	switch d := r.Data.(type) {
	case map[string]interface{}:
		if h, ok := d["hasUpdate"].(bool); ok {
			return h
		}
	case dto.MytvBaseCheckDto:
		return d.HasUpdate
	}
	return false
}

// SilentCheckUpdates 登录后静默盘点各组件是否有新版本，给前端菜单/标签红点用。
// 定制分支只盘点 APK 基底：清和壳(qh) / 骆驼壳(lt) / MyTV(mytv)。
// 管理系统自身在线升级（web）已移除 —— 一律换镜像更新，故 web 恒为 false；
// 引擎升级走引擎自身链路，不在此盘点（engine 恒为 false）。
func SilentCheckUpdates() dto.ReturnJsonDto {
	data := map[string]bool{
		"web":    false,
		"engine": false,
		"qh":     baseHasUpdate(CheckClientBaseUpdate()),
		"lt":     baseHasUpdate(CheckLuotuoBaseUpdate()),
		"mytv":   baseHasUpdate(CheckMytvBaseUpdate()),
	}
	return dto.ReturnJsonDto{Code: 1, Msg: "ok", Type: "success", Data: data}
}
