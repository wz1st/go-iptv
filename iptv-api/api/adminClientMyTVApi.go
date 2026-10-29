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

// ClientMyTVTestUrl 「测试APK地址」：探测 mytv 独立连接地址是否可达（只读、不落盘）。
// 与清和壳 ClientTestUrl 同源：能连上（含 4xx/5xx）就算可达；连接失败才报错；
// IPv6 假阴性会带 ipv6 标记让前端弹「强制保存」。
func ClientMyTVTestUrl(c *gin.Context) {
	var req dto.ClientTestUrlReq
	if !bindJSON(c, &req) {
		return
	}
	reply(c, service.TestMyTVServerURL(req))
}

// ClientMyTVSaveUrl 只把 mytv 的「APK连接地址」持久化到 config.yml，不触发编译。
// 给「测试通过」与「IPv6 假阴性时强制保存」两条路径用：地址即时落盘
// （刷新不丢、下次编译即用），但绝不再顺手编译。
func ClientMyTVSaveUrl(c *gin.Context) {
	var req dto.ClientTestUrlReq
	if !bindJSON(c, &req) {
		return
	}
	reply(c, service.SaveMyTVServerURL(req))
}
