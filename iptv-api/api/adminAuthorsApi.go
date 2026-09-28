package api

import (
	"iptv-api/dto"
	"iptv-api/service"

	"github.com/gin-gonic/gin"
)

// 设备授权（/api/authors）—— 一个动作一条路由。

// AuthorsAuthorize 批量永久授权：改成指定套餐、exp 清零、记录授权人。
// POST /api/authors/authorize  {"ids":["设备名"],"mealId":"2"}
func AuthorsAuthorize(c *gin.Context) {
	// 需要记录「谁授权的」，所以这里要取当前登录管理员。
	username, ok := authName(c)
	if !ok {
		return
	}
	var req dto.AuthorsAuthorizeReq
	if !bindJSON(c, &req) {
		return
	}
	reply(c, service.SubmitAuthorForever(req, username))
}

// AuthorsForbid 批量打回未授权状态。
// POST /api/authors/forbid  {"ids":["设备名"]}
func AuthorsForbid(c *gin.Context) {
	var req dto.ReqIDs
	if !bindJSON(c, &req) {
		return
	}
	reply(c, service.ForbiddenUser(req))
}

// AuthorsDeleteExpired 删除「未授权且最后在线时间在今天 0 点之前」的设备。
// POST /api/authors/deleteExpired  （无请求体）
func AuthorsDeleteExpired(c *gin.Context) {
	reply(c, service.DelUnAuthorOneDayBefore())
}

// AuthorsDelete 批量删除设备。
// POST /api/authors/delete  {"ids":["设备名"]}
func AuthorsDelete(c *gin.Context) {
	var req dto.ReqIDs
	if !bindJSON(c, &req) {
		return
	}
	reply(c, service.DelUsers(req))
}

// AuthorsDeleteAll 清空全部未授权设备。
// POST /api/authors/deleteAll  （无请求体）
func AuthorsDeleteAll(c *gin.Context) {
	reply(c, service.DelAllUsers())
}
