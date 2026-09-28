package api

import (
	"iptv-api/dto"
	"iptv-api/service"
	"iptv-api/until"

	"github.com/gin-gonic/gin"
)

// Login 管理员登录。
func Login(c *gin.Context) {
	var req dto.AdminLoginReq
	if err := c.ShouldBindJSON(&req); err != nil {
		fail(c, "请求参数格式错误")
		return
	}

	username := req.Username
	password := until.HashPassword(req.Password)
	reMe := req.Remember

	res := service.AdminLogin(username, password, reMe)

	token, ok := res.Data.(string)
	if !ok || token == "" {
		reply(c, res)
		return
	}

	if reMe {
		c.SetCookie("token", token, 7*24*3600, "/", "", false, true)
	} else {
		c.SetCookie("token", token, 2*3600, "/", "", false, true)
	}
	res.Data = nil
	reply(c, res)
}

// Logout 退出登录：清掉 cookie。
func Logout(c *gin.Context) {
	c.SetCookie("token", "", -1, "/", "", false, true)
	reply(c, dto.ReturnJsonDto{Code: 1, Msg: "退出登录成功", Type: "success"})
}
