package api

import (
	"iptv-api/dto"
	"iptv-api/service"

	"github.com/gin-gonic/gin"
)

// Notice 系统公告 —— 保存广告文案与展示节奏。
func Notice(c *gin.Context) {
	var req dto.NoticeReq
	if !bindJSON(c, &req) {
		return
	}
	reply(c, service.Notice(req))
}
