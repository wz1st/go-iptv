package api

import (
	"iptv-api/dto"
	"iptv-api/service"

	"github.com/gin-gonic/gin"
)

// 设备列表（/api/users）的批量操作 —— 一个动作一条路由。

// UsersDelete 批量删除设备账号。
// POST /api/users/delete  {"ids":["设备名1","设备名2"]}
func UsersDelete(c *gin.Context) {
	var req dto.ReqIDs
	if !bindJSON(c, &req) {
		return
	}
	reply(c, service.UsersDelete(req))
}

// UsersMarks 批量修改备注。
// POST /api/users/marks  {"ids":["设备名"],"marks":"已联系"}
func UsersMarks(c *gin.Context) {
	var req dto.UsersMarksReq
	if !bindJSON(c, &req) {
		return
	}
	reply(c, service.UsersMarks(req))
}

// UsersForbid 批量取消授权。
// POST /api/users/forbid  {"ids":["设备名"]}
func UsersForbid(c *gin.Context) {
	var req dto.ReqIDs
	if !bindJSON(c, &req) {
		return
	}
	reply(c, service.UsersForbid(req))
}

// UsersSetMeals 批量改套餐。
// POST /api/users/meals  {"ids":["设备名"],"mealId":2}
func UsersSetMeals(c *gin.Context) {
	var req dto.UsersMealsReq
	if !bindJSON(c, &req) {
		return
	}
	reply(c, service.UsersSetMeals(req))
}
