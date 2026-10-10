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
	{"client/appInfo", api.ClientAppInfo},
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

	// 公告：它保存的就是客户端启动时弹出的那条文案（显示时长、显示间隔都是
	{"client/noticeData", api.NoticeData},
	{"client/noticeSave", api.Notice},

	// --- 管理员 ---
	{"admins/data", api.AdminsData},
	{"admins/save", api.Admins},

	// --- 关于 ---
	{"about/data", api.AboutData},

	// --- SSL 证书（系统菜单）---
	// 证书/私钥固定落在 /config/cert（持久卷），开关与端口落在 config.yml 的 ssl 段；
	// 保存时渲染 nginx 片段并 reload（见 until/sslUntil.go）。
	{"ssl/data", api.SslData},
	{"ssl/save", api.SslSave},
	{"ssl/clear", api.SslClear},

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
	{"updata/checkFront", api.UpdataCheckFront},
	{"updata/checkEngine", api.UpdataCheckEngine},
	{"updata/downWeb", api.UpdataDownWeb},
	{"updata/downFront", api.UpdataDownFront},
	{"updata/downEngine", api.UpdataDownEngine},
	{"updata/run", api.Updata},

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
	ApkRouter(r, apiBase+"/apk", "/apk")
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
