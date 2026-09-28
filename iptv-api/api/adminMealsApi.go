package api

import (
	"iptv-api/dto"
	"iptv-api/service"

	"github.com/gin-gonic/gin"
)

// 套餐管理 —— 一个动作一条路由。

// MealsStatus 上线 / 下线套餐。
// POST /api/meals/status  {"id":12}
func MealsStatus(c *gin.Context) {
	var req dto.ReqID
	if !bindJSON(c, &req) {
		return
	}
	reply(c, service.MealsChangeStatus(req))
}

// MealsEdit 取「编辑套餐」用的频道分类勾选列表（已选中的打勾）。
// POST /api/meals/edit  {"id":12}
func MealsEdit(c *gin.Context) {
	var req dto.ReqID
	if !bindJSON(c, &req) {
		return
	}
	reply(c, service.MealsEdit(req, true))
}

// MealsCreate 取「新增套餐」用的频道分类列表（全部未勾选）。
// POST /api/meals/create  （无请求体）
func MealsCreate(c *gin.Context) {
	reply(c, service.MealsEdit(dto.ReqID{}, false))
}

// MealsDelete 删除套餐。
// POST /api/meals/delete  {"id":12}
func MealsDelete(c *gin.Context) {
	var req dto.ReqID
	if !bindJSON(c, &req) {
		return
	}
	reply(c, service.MealsDel(req))
}

// MealsSave 新增或编辑套餐：id 为 0 表示新增。
// POST /api/meals/save  {"id":12,"name":"基础套餐","ids":["1","3"]}
func MealsSave(c *gin.Context) {
	var req dto.MealsSaveReq
	if !bindJSON(c, &req) {
		return
	}
	reply(c, service.MealsSubmit(req))
}
