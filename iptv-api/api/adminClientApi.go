package api

import (
	"iptv-api/dto"
	"iptv-api/service"
	"iptv-api/until"

	"github.com/gin-gonic/gin"
)

// 骆驼客户端设置（/api/client）—— 一个动作一条路由。
//
// 图标 / 背景**按壳分两套目录**（见 until.ClientIconDir / ClientBgDir），
// 所以每个上传/删除动作都要带上自己的壳：这里是清和壳（until.ShellQh），
// 骆驼壳那一组在文件下半部的 /api/client/lt/*。

// ClientDeleteIcon 删除已上传的启动图标。
// POST /api/client/deleteIcon  （无请求体）
func ClientDeleteIcon(c *gin.Context) {
	reply(c, service.DeleteFile(dto.ClientDeleteBjReq{}, "icon", until.ShellQh))
}

// ClientDeleteBj 删除指定的一张背景图。
// POST /api/client/deleteBj  {"name":"a1b2c3"}
func ClientDeleteBj(c *gin.Context) {
	var req dto.ClientDeleteBjReq
	if !bindJSON(c, &req) {
		return
	}
	reply(c, service.DeleteFile(req, "bj", until.ShellQh))
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

// ClientForceUpdate 设置「强制更新」开关。
// POST /api/client/forceUpdate  {"forceUpdate":1}
func ClientForceUpdate(c *gin.Context) {
	var req dto.ClientForceUpdateReq
	if !bindJSON(c, &req) {
		return
	}
	reply(c, service.SetForceUpdate(req))
}

// ClientAppInfo 保存 APK 构建参数并触发编译。
func ClientAppInfo(c *gin.Context) {
	var req dto.ClientAppInfoReq
	if !bindJSON(c, &req) {
		return
	}
	reply(c, service.SetAppInfo(req))
}

// ClientTestUrl 「保存并测试」里的**测试**那一步：探测填的地址是否可达。
// 只读、不落盘 —— 真正的保存仍走 appInfo（那里才归一化地址并触发编译）。
//
// 独立一个端点而不是给 appInfo 加 save 开关：编译是分钟级重活，
// 用户每改一个字就点一下"保存并测试"会把编译队列打满。
func ClientTestUrl(c *gin.Context) {
	var req dto.ClientTestUrlReq
	if !bindJSON(c, &req) {
		return
	}
	reply(c, service.TestServerURL(req))
}

// ClientSaveUrl 只把「APK连接地址」持久化到 config.yml，**不触发编译**。
// 给「测试通过」和「IPv6 假阴性时强制保存」两条路径用：地址即时落盘
// （刷新不丢、下次编译即用），但绝不再顺手编译。
func ClientSaveUrl(c *gin.Context) {
	var req dto.ClientTestUrlReq
	if !bindJSON(c, &req) {
		return
	}
	reply(c, service.SaveServerURL(req))
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
	reply(c, service.UploadFile(c, "icon", until.ShellQh))
}

// ClientUploadBj 上传背景图（multipart/form-data，字段名 bjfile）。
func ClientUploadBj(c *gin.Context) {
	reply(c, service.UploadFile(c, "bj", until.ShellQh))
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

// ClientUploadBaseApk 上传客户端的编译基底 APK（multipart/form-data，字段名 apkfile）。
// 只接受**指定包名**（与镜像出厂基包同包名），否则编出来的包登录时解不开响应。
func ClientUploadBaseApk(c *gin.Context) {
	reply(c, service.UploadClientBase(c))
}

// ClientCheckBase 在线检查客户端编译基底的最新版本（远端 client-vX.Y.Z 序列）。
func ClientCheckBase(c *gin.Context) {
	reply(c, service.CheckClientBaseUpdate())
}

// ClientUpgradeBase 在线下载并替换客户端编译基底。
func ClientUpgradeBase(c *gin.Context) {
	reply(c, service.UpgradeClientBase())
}

// ============================================================================
// 骆驼壳（独立客户端基底）设置 —— 与上面 清和壳 各自一组路由，资产名 / 标签前缀
// 都不同；编译期共用的只有 until.BuildClientApk（见 service/adminClientLuotuoService.go）。
// ============================================================================

// LuotuoAppInfo 保存骆驼壳 APK 构建参数并触发编译。
func LuotuoAppInfo(c *gin.Context) {
	var req dto.ClientAppInfoReq
	if !bindJSON(c, &req) {
		return
	}
	reply(c, service.SetLuotuoAppInfo(req))
}

// LuotuoBuildStatus 查询骆驼壳 APK 编译进度（顺带回两张卡片要的包信息）。
func LuotuoBuildStatus(c *gin.Context) {
	reply(c, service.GetLuotuoBuildStatus())
}

// LuotuoPublish 发布：把骆驼壳待发布 apk 提升为线上版本。
func LuotuoPublish(c *gin.Context) {
	reply(c, service.PublishLuotuoAPK())
}

// LuotuoUploadBaseApk 上传骆驼壳的编译基底 APK（multipart，字段名 apkfile）。
func LuotuoUploadBaseApk(c *gin.Context) {
	reply(c, service.UploadLuotuoBase(c))
}

// ---- 骆驼壳的图标 / 背景：与清和壳**各自一套目录**，不共用 --------
//
// 上面那四个 /api/client/{uploadIcon,uploadBj,deleteIcon,deleteBj} 只动清和壳的
// 素材（/config/images/{icon,bj}）。骆驼壳走下面这四个（/config/images/lt/*）。
//
// 为什么不能让它复用上面四个：两个壳的启动页资源名不同（qh_bg / ez_bg），
// 用户在骆驼壳后台上传的图应当只进骆驼壳的包 —— 共用的直接后果是
// "改一个壳的图，另一个壳的包也跟着变"。

// LuotuoUploadIcon 上传骆驼壳的启动图标（multipart，字段名 iconfile）。
func LuotuoUploadIcon(c *gin.Context) {
	reply(c, service.UploadFile(c, "icon", until.ShellLt))
}

// LuotuoUploadBj 上传骆驼壳的背景图（multipart，字段名 bjfile）。
func LuotuoUploadBj(c *gin.Context) {
	reply(c, service.UploadFile(c, "bj", until.ShellLt))
}

// LuotuoDeleteIcon 删除骆驼壳已上传的启动图标。
func LuotuoDeleteIcon(c *gin.Context) {
	reply(c, service.DeleteFile(dto.ClientDeleteBjReq{}, "icon", until.ShellLt))
}

// LuotuoDeleteBj 删除骆驼壳指定的一张背景图。
func LuotuoDeleteBj(c *gin.Context) {
	var req dto.ClientDeleteBjReq
	if !bindJSON(c, &req) {
		return
	}
	reply(c, service.DeleteFile(req, "bj", until.ShellLt))
}

// LuotuoCheckBase 在线检查骆驼壳编译基底的最新版本（远端 luotuo-vX.Y.Z 序列）。
func LuotuoCheckBase(c *gin.Context) {
	reply(c, service.CheckLuotuoBaseUpdate())
}

// LuotuoUpgradeBase 在线下载并替换骆驼壳编译基底。
func LuotuoUpgradeBase(c *gin.Context) {
	reply(c, service.UpgradeLuotuoBase())
}
