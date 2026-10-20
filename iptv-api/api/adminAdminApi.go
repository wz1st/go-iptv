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

// 以下端点都没有参数，路由与动作一一对应，无需请求体。

// UpdataCheckWeb 检查管理系统是否有新版本。
func UpdataCheckWeb(c *gin.Context) {
	reply(c, service.UpdataCheckWeb())
}

// UpdataCheckEngine 检查授权引擎是否有新版本。
func UpdataCheckEngine(c *gin.Context) {
	reply(c, service.UpdataCheckEngine())
}

// UpdataDownWeb 下载管理系统新版本到本地待安装区。
func UpdataDownWeb(c *gin.Context) {
	reply(c, service.UpdataDownWeb())
}

// UpdataDownEngine 下载授权引擎新版本到本地待安装区。
func UpdataDownEngine(c *gin.Context) {
	reply(c, service.UpdataDownEngine())
}

// Updata 触发在线升级（启动器会重启进程）。
func Updata(c *gin.Context) {
	reply(c, service.Updata())
}

// UpdataStatus 查询升级状态与进度（前端升级遮罩轮询）。
// POST /api/updata/status  （无请求体）
func UpdataStatus(c *gin.Context) {
	reply(c, service.UpdataStatus())
}
