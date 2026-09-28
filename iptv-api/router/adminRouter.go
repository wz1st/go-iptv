package router

import (
	"iptv-api/api"
	"iptv-api/until"
	"net/http"
	"time"

	"github.com/gin-gonic/gin"
)

// 管理后台的鉴权中间件。

// loginPage 是登录页的**页面**路径（SPA 路由），不是接口路径。
const loginPage = "/admin/login"

// JWTMiddleware 校验 cookie 中的 token（JWT）。
func JWTMiddleware(loginPage string) gin.HandlerFunc {
	return func(c *gin.Context) {
		// 从 Cookie 获取 token
		tokenString, err := c.Cookie("token")
		if err != nil {
			unauthorized(c, loginPage)
			return
		}

		// 调用 VerifyJWT 验证 token
		claims, err, update := until.VerifyJWT(tokenString)
		if err != nil {
			unauthorized(c, loginPage)
			return
		}
		if update {
			// 更新 token
			tokenString, _ := until.GenerateJWT(claims["username"].(string), time.Hour)
			c.SetCookie("token", tokenString, 3600, "/", "", false, true)
		}

		// 保存 claims 到上下文
		c.Set("auth", claims)

		c.Next()
	}
}

// unauthorized 统一处理鉴权失败：接口回 401 JSON，页面 302 到登录页。
func unauthorized(c *gin.Context, loginPage string) {
	if wantsHTML(c) {
		c.Redirect(http.StatusFound, loginPage)
		c.Abort()
		return
	}
	c.AbortWithStatusJSON(http.StatusUnauthorized, gin.H{
		"code": 5, // 沿用既有语义：5 = 需跳转（前端据此跳登录页）
		"msg":  "登录已失效，请重新登录",
		"type": "danger",
		"data": nil,
	})
}

// wantsHTML 粗略判断调用方是否期望 HTML 页面（浏览器导航）而非接口数据。
func wantsHTML(c *gin.Context) bool {
	return api.WantsHTML(c)
}
