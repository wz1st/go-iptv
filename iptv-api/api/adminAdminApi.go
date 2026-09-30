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
