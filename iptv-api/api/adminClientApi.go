package api

import (
	"iptv-api/dto"
	"iptv-api/service"

	"github.com/gin-gonic/gin"
)

// 骆驼客户端设置（/api/client）—— 一个动作一条路由。

// ClientDeleteIcon 删除已上传的启动图标。
// POST /api/client/deleteIcon  （无请求体）
func ClientDeleteIcon(c *gin.Context) {
	reply(c, service.DeleteFile(dto.ClientDeleteBjReq{}, "icon"))
}

// ClientDeleteBj 删除指定的一张背景图。
// POST /api/client/deleteBj  {"name":"a1b2c3"}
func ClientDeleteBj(c *gin.Context) {
	var req dto.ClientDeleteBjReq
	if !bindJSON(c, &req) {
		return
	}
	reply(c, service.DeleteFile(req, "bj"))
}

// ClientDecoder 设置解码方式。
// POST /api/client/decoder  {"decoder":1}
func ClientDecoder(c *gin.Context) {
	var req dto.ClientDecoderReq
	if !bindJSON(c, &req) {
		return
	}
	reply(c, service.DecoderSelect(req))
}

// ClientBuffTimeout 设置播放缓冲超时（秒）。
// POST /api/client/buffTimeout  {"buffTimeout":15}
func ClientBuffTimeout(c *gin.Context) {
	var req dto.ClientBuffTimeoutReq
	if !bindJSON(c, &req) {
		return
	}
	reply(c, service.SetBuffTimeOut(req))
}

// ClientNeedAuthor 设置客户端是否需要授权才能观看。
// POST /api/client/needAuthor  {"needAuthor":1}
func ClientNeedAuthor(c *gin.Context) {
	var req dto.ClientNeedAuthorReq
	if !bindJSON(c, &req) {
		return
	}
	reply(c, service.SetNeedAuthor(req))
}

// ClientAppInfo 保存 APK 构建参数并触发编译。
func ClientAppInfo(c *gin.Context) {
	var req dto.ClientAppInfoReq
	if !bindJSON(c, &req) {
		return
	}
	reply(c, service.SetAppInfo(req))
}

// ClientTipSet 保存客户端各类提示文案。
func ClientTipSet(c *gin.Context) {
	var req dto.ClientTipSetReq
	if !bindJSON(c, &req) {
		return
	}
	reply(c, service.SetTipSet(req))
}

// ---- 以下三个端点保持原样（上传是 multipart，构建状态是只读查询）----

// ClientUploadIcon 上传启动图标（multipart/form-data，字段名 iconfile）。
func ClientUploadIcon(c *gin.Context) {
	reply(c, service.UploadFile(c, "icon"))
}

// ClientUploadBj 上传背景图（multipart/form-data，字段名 bjfile）。
func ClientUploadBj(c *gin.Context) {
	reply(c, service.UploadFile(c, "bj"))
}

// BuildStatus 查询 APK 编译进度（顺带回两张卡片要的包信息）。
func BuildStatus(c *gin.Context) {
	reply(c, service.GetBuildStatus())
}

// ClientPublish 发布：把待发布 apk 提升为线上版本。
// POST /api/client/publish  （无请求体）
func ClientPublish(c *gin.Context) {
	reply(c, service.PublishAPK())
}
