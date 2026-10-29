package api

import (
	"iptv-api/dto"
	"iptv-api/service"

	"github.com/gin-gonic/gin"
)

// Admins 管理员设置 —— 修改登录名与密码。
func Admins(c *gin.Context) {
	var req dto.AdminProfileReq
	if !bindJSON(c, &req) {
		return
	}
	reply(c, service.Admins(req))
}

// ClientSilentCheck 登录后静默盘点 APK 基底新版本，给前端菜单/标签红点用。
// 只覆盖清和壳 / 骆驼壳 / MyTV 三个 APK 基底；管理系统自身升级不在定制分支内。
func ClientSilentCheck(c *gin.Context) {
	reply(c, service.SilentCheckUpdates())
}
