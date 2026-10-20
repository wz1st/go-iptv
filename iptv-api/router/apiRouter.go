package router

import (
	"iptv-api/api"
	"net/http"

	"github.com/gin-gonic/gin"
)

// API 路由总表

// apiBase 是所有后端接口的规范前缀。
const apiBase = "/api"

// 方法常量。写成别名是为了让下面的路由表读起来对齐、少点噪音。
const (
	mGet  = http.MethodGet
	mPost = http.MethodPost
)

// apiRoute 描述一条管理接口。
type apiRoute struct {
	path    string
	handler gin.HandlerFunc
}

// adminRoutes 是管理接口全表。
var adminRoutes = []apiRoute{
	// --- 概览 ---
	{"index/data", api.IndexData},

	// --- 设备列表 ---
	{"users/data", api.UsersData},
	{"users/delete", api.UsersDelete},
	{"users/marks", api.UsersMarks},
	{"users/forbid", api.UsersForbid},
	{"users/meals", api.UsersSetMeals},

	// --- 设备授权 ---
	{"authors/data", api.AuthorsData},
	{"authors/authorize", api.AuthorsAuthorize},
	{"authors/forbid", api.AuthorsForbid},
	{"authors/deleteExpired", api.AuthorsDeleteExpired},
	{"authors/delete", api.AuthorsDelete},
	{"authors/deleteAll", api.AuthorsDeleteAll},

	// --- 套餐 ---
	{"meals/data", api.MealsData},
	{"meals/status", api.MealsStatus},
	{"meals/edit", api.MealsEdit},
	{"meals/create", api.MealsCreate},
	{"meals/delete", api.MealsDelete},
	{"meals/save", api.MealsSave},

	// --- 频道 ---
	{"channels/data", api.ChannelsData},

	{"channels/listUpdate", api.ChannelsListUpdate},
	{"channels/listUpdateAll", api.ChannelsListUpdateAll},
	{"channels/listSave", api.ChannelsListSave},
	{"channels/listDelete", api.ChannelsListDelete},
	// 频道源列表上「更新间隔 / 自动更新」两列的开关。与 listSave 分开：
	{"channels/listFlag", api.ChannelsListFlag},

	{"channels/caChannels", api.ChannelsCaChannels},
	{"channels/caStatus", api.ChannelsCaStatus},
	{"channels/caSave", api.ChannelsCaSave},
	{"channels/caDelete", api.ChannelsCaDelete},

	{"channels/caListStatus", api.ChannelsCaListStatus},
	{"channels/channelStatus", api.ChannelsChannelStatus},
	{"channels/caSort", api.ChannelsCaSort},
	// 分组内频道的拖拽排序（「频道分组 → 管理」弹窗那张表）
	{"channels/chSort", api.ChannelsChSort},
	// 删除分组内的单个频道（同上那张表的操作列）
	{"channels/chDelete", api.ChannelsChDelete},
	{"channels/saveOne", api.ChannelsSaveOne},
	// 整表保存编辑框里的频道列表（顺序 + 内容 + 启停一次写完）
	{"channels/chImport", api.ChannelsChImport},
	// 分组列表上「中转访问 / 频道重命名」两个开关
	{"channels/caFlag", api.ChannelsCaFlag},
	{"channels/testResolution", api.ChannelsTestResolution},
	{"channels/uploadPayList", api.ChannelsUploadPayList},

	// --- EPG 列表 ---
	{"epgs/data", api.EpgsData},
	{"epgs/bindable", api.EpgsBindable},
	{"epgs/save", api.EpgsSave},
	{"epgs/bind", api.EpgsBind},
	{"epgs/status", api.EpgsStatus},
	{"epgs/delete", api.EpgsDelete},
	{"epgs/bindChannel", api.EpgsBindChannel},
	{"epgs/clearBind", api.EpgsClearBind},
	{"epgs/clearCache", api.EpgsClearCache},
	{"epgs/deleteLogo", api.EpgsDeleteLogo},
	{"epgs/deleteUnbound", api.EpgsDeleteUnbound},
	{"epgs/uploadLogo", api.EpgsUploadLogo},

	// --- EPG 来源 ---
	{"epgFrom/data", api.EpgsFromData},
	{"epgFrom/status", api.EpgFromStatus},
	{"epgFrom/update", api.EpgFromUpdate},
	{"epgFrom/updateAll", api.EpgFromUpdateAll},
	{"epgFrom/save", api.EpgFromSave},
	{"epgFrom/delete", api.EpgFromDelete},

	// MyTV 客户端编译 + 发布
	{"clientMyTV/data", api.ClientMyTVData},
	{"clientMyTV/save", api.ClientMyTV},
	{"clientMyTV/buildStatus", api.BuildMyTVStatus},
	{"clientMyTV/publish", api.MytvPublishApk},
	// 上传编译基底 APK（multipart，字段名 apkfile）：包名必须与镜像内底包一致，
	// 版本号从包里提取成基底版本（见 service.UploadMytvBaseApk）。
	{"clientMyTV/uploadBaseApk", api.MytvUploadBaseApk},
	// 在线检查/升级编译基底：远端是发布仓里的 mytv-vX.Y.Z 序列，
	// 直连失败或延迟过大会自动切国内加速（见 until/ghnet.go、until/mytvOnline.go）。
	{"clientMyTV/checkBase", api.MytvCheckBase},
	{"clientMyTV/upgradeBase", api.MytvUpgradeBase},

	// --- APK 客户端（编译 + 开机公告）---
	{"client/data", api.ClientData},
	{"client/deleteIcon", api.ClientDeleteIcon},
	{"client/deleteBj", api.ClientDeleteBj},
	{"client/decoder", api.ClientDecoder},
	{"client/buffTimeout", api.ClientBuffTimeout},
	{"client/needAuthor", api.ClientNeedAuthor},
	{"client/forceUpdate", api.ClientForceUpdate},
	{"client/appInfo", api.ClientAppInfo},
	// 「保存并测试」拆两步：这一步只测可达性，不落盘、不触发编译。
	{"client/testUrl", api.ClientTestUrl},
	{"client/saveUrl", api.ClientSaveUrl},
	{"client/tipSet", api.ClientTipSet},
	{"client/buildStatus", api.BuildStatus},
	{"client/publish", api.ClientPublish},
	{"client/uploadIcon", api.ClientUploadIcon},
	{"client/uploadBj", api.ClientUploadBj},
	// 客户端编译基底三件套（与 mytv 同构，但流程全在 api 侧，不经引擎）：
	// 上传基包（multipart，字段名 apkfile）→ 校验包名 → 落 /config/client；
	// 在线检查/升级远端 client-vX.Y.Z 序列（见 until/clientOnline.go）。
	// logo 与启动背景不进这里：它们是**编译期**打进包的 drawable，
	// 由后台的「上传图标 / 上传背景」提供，缺省则保留基包自带的默认图。
	{"client/uploadBaseApk", api.ClientUploadBaseApk},
	{"client/checkBase", api.ClientCheckBase},
	{"client/upgradeBase", api.ClientUpgradeBase},

	// 骆驼壳（独立客户端基底）：与 清和壳 各自一组路由，编译接口共用 BuildClientApk。
	{"client/lt/data", api.LuotuoData},
	{"client/lt/appInfo", api.LuotuoAppInfo},
	// 与清和壳同一个 handler：探测的是「编译时真正会用的那个路由」，
	// 差别由地址本身决定（清和 /apk/getver、骆驼 /apk/lt/getver）。
	{"client/lt/testUrl", api.ClientTestUrl},
	{"client/lt/saveUrl", api.ClientSaveUrl},
	{"client/lt/buildStatus", api.LuotuoBuildStatus},
	{"client/lt/publish", api.LuotuoPublish},
	{"client/lt/uploadBaseApk", api.LuotuoUploadBaseApk},
	{"client/lt/checkBase", api.LuotuoCheckBase},
	{"client/lt/upgradeBase", api.LuotuoUpgradeBase},
	// 图标 / 背景也按壳分两套：上面那组 /api/client/{uploadIcon,…} 只动清和壳的
	// 素材目录，骆驼壳走这四个（目录 /config/images/lt/*，URL 前缀 /lt/images、
	// /lt/icon）。**故意不共用**的判据见 api.LuotuoUploadIcon 的注释。
	{"client/lt/uploadIcon", api.LuotuoUploadIcon},
	{"client/lt/uploadBj", api.LuotuoUploadBj},
	{"client/lt/deleteIcon", api.LuotuoDeleteIcon},
	{"client/lt/deleteBj", api.LuotuoDeleteBj},

	// 公告：它保存的就是客户端启动时弹出的那条文案（显示时长、显示间隔都是
	{"client/noticeData", api.NoticeData},
	{"client/noticeSave", api.Notice},

	// --- 管理员 ---
	{"admins/data", api.AdminsData},
	{"admins/save", api.Admins},

	// --- 关于 ---
	{"about/data", api.AboutData},

	// --- 使用说明（首次进入的引导页）---
	{"guide/data", api.GuideData},
	{"guide/ack", api.GuideAck},

	// --- SSL 证书（系统菜单）---
	// 证书/私钥固定落在 /config/cert（持久卷），开关与端口落在 config.yml 的 ssl 段；
	// 保存时渲染 nginx 片段并 reload（见 until/sslUntil.go）。
	{"ssl/data", api.SslData},
	{"ssl/save", api.SslSave},
	{"ssl/clear", api.SslClear},

	// --- 出网代理（系统菜单）---
	// 协议/地址/端口/账密 + 作用范围落在 config.yml 的 out_proxy 段；
	// 保存前先实测连代理 + 访问 GitHub/Google，不通过不落盘（见 until/outProxy.go）。
	// 注意与 engine/proxy 区分：那个是「中转」开关，中转取流走代理是这里的 useRelay。
	{"proxy/data", api.ProxyData},
	{"proxy/test", api.ProxyTest},
	{"proxy/save", api.ProxySave},

	// --- 引擎（改造前叫「授权 / license」）---
	{"engine/data", api.EngineData},
	{"engine/checkProxy", api.CheckProxy},
	{"engine/log", api.EngineLog},
	{"engine/proxy", api.EngineProxy},
	{"engine/restart", api.EngineRestart},
	{"engine/autoRes", api.EngineAutoRes},
	{"engine/disCh", api.EngineDisCh},
	{"engine/epgFuzz", api.EngineEpgFuzz},
	{"engine/register", api.EngineRegister},
	{"engine/login", api.EngineLogin},
	{"engine/changePwd", api.EngineChangePwd},
	{"engine/reset", api.EngineReset},
	{"engine/logout", api.EngineLogout},
	{"engine/shortURL", api.EngineShortURL},

	// --- 在线升级 ---
	{"updata/data", api.UpdataData},
	{"updata/checkWeb", api.UpdataCheckWeb},
	{"updata/checkEngine", api.UpdataCheckEngine},
	{"updata/downWeb", api.UpdataDownWeb},
	{"updata/downEngine", api.UpdataDownEngine},
	{"updata/run", api.Updata},
	// 升级状态与进度：前端升级遮罩的唯一依据（刷新后靠它恢复）
	{"updata/status", api.UpdataStatus},

	// --- 订阅地址 ---
	{"rss/url", api.GetRssUrl},
}

// siteRoute 描述一条公开站点 / 安装接口。
type siteRoute struct {
	method  string
	path    string
	legacy  string
	public  bool
	handler gin.HandlerFunc
}

var siteRoutes = []siteRoute{
	// SPA 启动引导。前端原先靠 Go 往 index.html 注入 window.__IPTV__，
	{mGet, "site/boot", "", true, api.SiteBootData},
	// public：前台下载页（SiteIndex / SiteMobile）唯一的取数接口。
	{mGet, "site/index", "", true, api.SiteIndexData},
	// public：升级探测端点，两种安装状态下都必须可达。
	{mGet, "site/version", "/version", true, api.SiteVersionData},
	// public：更新记录原文。README.md 里那条 `[更新记录](./ChangeLog.md)`
	{mGet, "site/changelog", "/ChangeLog.md", true, api.SiteChangeLogData},
	// 安装状态的只读探针，public（两态可达）：
	{mGet, "install/state", "", true, api.InstallStateData},
	// 安装提交：**唯一的安装期限定**，已安装后必须封禁
	{mPost, "install/setup", "", false, api.InstallData},
}

// registerAdminAPI 把管理接口挂到 /api 之下。
func registerAdminAPI(r *gin.Engine) {
	g := r.Group(apiBase)
	g.POST("/login", api.Login)
	g.GET("/logout", api.Logout)

	authed := g.Group("", JWTMiddleware(loginPage))
	for _, rt := range adminRoutes {
		authed.POST(rt.path, rt.handler)
	}
}

// registerSiteAPI 挂公开站点 / 安装接口：规范路径在 /api 下，兼容路径按原样。
func registerSiteAPI(r *gin.Engine) {
	for _, rt := range siteRoutes {
		canonical := apiBase + "/" + rt.path
		switch rt.method {
		case mGet:
			r.GET(canonical, rt.handler)
		case mPost:
			r.POST(canonical, rt.handler)
		}
		if rt.legacy == "" || rt.legacy == canonical {
			continue
		}
		switch rt.method {
		case mGet:
			r.GET(rt.legacy, rt.handler)
		case mPost:
			r.POST(rt.legacy, rt.handler)
		}
	}
}

// registerAPIRoutes 挂载全部后端接口。
func registerAPIRoutes(r *gin.Engine) {
	registerAdminAPI(r)
	registerSiteAPI(r)

	// 客户端 / 播放器接口。这两组是最不能断的 —— APK 的基址烧在 smali 里，
	// RSS / MyTV 的地址被用户粘进了播放器，所以规范前缀与旧前缀都挂。
	//
	// `/apk/lt` 是**骆驼壳**专用前缀：编包时把它的基址注入成 `<站点>/apk/lt`，
	// 于是它请求 /apk/lt/login、/apk/lt/getver…。为什么要另起前缀而不是只留
	// `?shell=lt` 参数：登录密钥按"应用名 + 包名"派生（until.AesKeyOf），
	// 两个壳各有一套，服务端必须能**从路由本身**认出调用方 ——
	// 光靠参数的话，两个壳一旦同名就分不出来（那时包名不同、密钥仍然不同）。
	// 参数那条判据保留在 isLuotuoShell 里，兜住已经发出去的旧包。
	ApkRouter(r, apiBase+"/apk", "/apk", apiBase+"/apk/lt", "/apk/lt")
	MytvRouter(r, apiBase+"/mytv", "/mytv")
	RssRouter(r, apiBase, "")
}

// publicSitePaths 汇总「与安装态无关」的站点路径，供门禁放行使用。
func publicSitePaths() map[string]bool {
	paths := make(map[string]bool, len(siteRoutes)*2)
	for _, rt := range siteRoutes {
		if !rt.public {
			continue
		}
		paths[apiBase+"/"+rt.path] = true
		if rt.legacy != "" {
			paths[rt.legacy] = true
		}
	}
	return paths
}
