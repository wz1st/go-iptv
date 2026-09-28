package api

import (
	"iptv-api/dto"
	"iptv-api/service"

	"github.com/gin-gonic/gin"
)

// ClientMyTV 提交 MyTV 客户端参数并触发编译。
func ClientMyTV(c *gin.Context) {
	var req dto.MyTVBuildReq
	if !bindJSON(c, &req) {
		return
	}
	reply(c, service.SetMyTVAppInfo(req))
}

// BuildMyTVStatus 查询 MyTV 的编译进度。
// Data 与 clientMyTV/data 同一形状（两组卡片字段），前端一个 apply 函数复用。
func BuildMyTVStatus(c *gin.Context) {
	reply(c, service.GetMyTVBuildStatus())
}

// MytvPublishApk 把待发布包提升为线上版本。
func MytvPublishApk(c *gin.Context) {
	reply(c, service.PublishMytvAPK())
}

// MytvUploadBaseApk 上传 mytv 的编译基底 APK（multipart/form-data，字段名 apkfile）。
func MytvUploadBaseApk(c *gin.Context) {
	reply(c, service.UploadMytvBaseApk(c))
}

// MytvCheckBase 在线检查 mytv 编译基底的最新版本。
func MytvCheckBase(c *gin.Context) {
	reply(c, service.CheckMytvBaseUpdate())
}

// MytvUpgradeBase 在线下载并替换 mytv 的编译基底。
func MytvUpgradeBase(c *gin.Context) {
	reply(c, service.UpgradeMytvBase())
}
