package dto

// LoginRes 是 `/apk/login` 的响应体。
//
// **只保留服务端真正会下发的字段。** 早先这里挂着十来个从未被 `service.ApkLogin`
// 赋值过的字段（`setver` / `showinterval` / `exp` / `arrsrc` / `arrproxy` /
// `autoupdate` / `updateinterval` / `exps` / `stus` / `movieengine`）：
// 它们有的客户端还在按默认值读（删掉后 Kotlin 侧走默认值，行为不变），
// 有的两侧都已是死代码。一并删除，避免"字段在协议里、其实永远是零值"的误导。
//
// 注意：客户端 `ServerConfig` 里另有 `dataver` / `categoryCount` / `canseeklist` /
// `regionlimit` 等字段，服务端**从来没有下发过**（也是恒默认值），
// 那是客户端侧的协议兼容冗余，不在本接口的清理范围。
type LoginRes struct {
	Status   int64    `json:"status"`
	MealName string   `json:"mealname"`
	DataURL  string   `json:"dataurl"`
	AppURL   string   `json:"appurl"`
	AppVer   string   `json:"appver"`
	AdText   string   `json:"adtext"`
	IP       string   `json:"ip"`
	ShowTime int64    `json:"showtime"`
	ProvList []string `json:"provlist"`
	// 设备账号，**字符串**下发：新装设备是客户端 androidid 原文（如 f8145fb34e8f5d91），
	// 存量设备是历史随机数字（如 210079），两种格式并存。
	// 客户端 `ServerConfig.accountId` 声明为 String，两边必须一致 ——
	// 下发数字会逼 kotlinx 走宽松解析，是个静默的类型陷阱。
	ID               string `json:"id"`
	Decoder          int64  `json:"decoder"`
	BuffTimeOut      int64  `json:"buffTimeOut"`
	TipUserNoReg     string `json:"tipusernoreg"`
	TipLoading       string `json:"tiploading"`
	TipUserForbidden string `json:"tipuserforbidden"`
	TipUserExpired   string `json:"tipuserexpired"`
	Location         string `json:"location"`
	NetType          string `json:"nettype"`
	RandKey          string `json:"randkey"`
	// Exp 是账号**剩余天数**（<=0 即已到期）。
	//
	// 这个字段曾被当作"没人读"删掉，代价是**骆驼壳全部用户都被判为已到期**：
	// 骆驼壳 SplashActivity 登录后 `optInt("exp")` 取它（清和壳不读），字段缺失时
	// optInt 返回 0 ⇒ e=0 ⇒ 弹「账号已到期」并停在授权输入页 —— 登录日志一切正常、
	// 频道接口也 200，就是进不去主界面。恢复时用 until.ExpireDaysLeft（带符号），
	// 不要拿 DiffDays 顶替（它取绝对值，已过期账号也会算出正数）。
	Exp int64 `json:"exp"`
	// Meal 是套餐名。客户端 SplashActivity 读的是 `meal`（optString("meal")），
	// 与 MealName 的 json 名（mealname）不一致；两个都下发，免得改任何一边的 tag
	// 打断另一边的读法（清和壳走的是 mealname）。
	Meal   string `json:"meal"`
	AdInfo string `json:"qqinfo"`
}

type GetverRes struct {
	AppURL string `json:"appurl"`
	AppVer string `json:"appver"`
	UpSize string `json:"appsize"`
	UpSets int64  `json:"appsets"`
	UpText string `json:"apptext"`
}

type ApkUser struct {
	Mac      string `json:"mac"`
	DeviceID string `json:"androidid"`
	Model    string `json:"model"`
	IP       string `json:"ip"`
	Region   string `json:"region"`
	NetType  string `json:"nettype"`
	AppName  string `json:"appname"`
	// Pkg 是客户端上报的**自己的包名**（如骆驼壳 xyz.qingh.lutuo、清和壳 xyz.qingh.qhtv）。
	// 服务端据此分流比应用名更稳（包名与 applicationId 绑定，应用名可在后台改）。
	// 不报（空串）时回落现有「路径判壳」逻辑（见 api.isLuotuoShell）。
	Pkg string `json:"packagename"`
}

type ChannelListDto struct {
	ID   int64  `json:"-"`
	Name string `json:"name"`
	Psw  string `json:"psw"`
	// Ua 是该分组的**自定义 UA**（`iptv_category.ua`），随分组一起下发。
	//
	// 客户端播放这个分组里的链接时要把它作为 User-Agent，
	// 优先级：下发 UA > 客户端自己设置的 UA > 客户端默认 UA
	// （见客户端 `MediaLine.effectiveUserAgent`）。
	//
	// 为什么必须下发：分组没开中转时下发的是**直连源地址**，源站若按 UA 放行，
	// 只有客户端自己带上这个 UA 才播得动 —— 中转那条路是引擎按分组 UA 取流的，
	// 直连这条路没有别的地方能补上。
	// 空串表示该分组没有配自定义 UA，客户端保持自己的设置。
	Ua   string        `json:"ua"`
	Data []ChannelData `json:"data"`
	Tmp  string        `json:"tmp"`
}

type ChannelData struct {
	Num    int64    `json:"num"`
	Name   string   `json:"name"`
	Source []string `json:"source"`
	// Logo 是台标图片的**绝对地址**，由 CaGetChannels 依据频道绑定的 EPG 台名
	// 从 /config/logo 目录匹配后拼出（见 until.EpgNameGetLogo）。
	// 空串表示该频道没有绑定 EPG 或目录里没有对应图片，
	// 客户端应回落到台号文字，不能当作异常。
	Logo string `json:"logo"`
}

type DataReqDto struct {
	Mac      string `json:"mac"`
	DeviceID string `json:"androidid"`
	Model    string `json:"model"`
	Region   string `json:"region"`
	Rand     string `json:"rand"`
	// AppName 是客户端上报的**自己的应用显示名**（ez 壳 `SplashActivity.l()` 里
	// `"appname"` ← `getApplicationLabel()`，每次都随频道请求一起发）。
	//
	// 服务端必须据此判断调用方是哪个壳：频道载荷要用**该壳自己的密钥**加密
	// （见 service.GetChannels），而两个壳的密钥不同（应用名 + 包名一起进公式）。
	// 为什么不靠路由判：骆驼壳请求的是登录下发给它的 dataurl，线上线下都存在
	// `/apk/channels`（不带 `/lt`）的包，光看路径分不出调用方。
	AppName string `json:"appname"`
	// Pkg 是客户端上报的**自己的包名**（如骆驼壳 xyz.qingh.lutuo）。
	// 分流优先级高于 AppName：报了包名就直接按包名判壳，否则回落 AppName + 路径。
	Pkg string `json:"packagename"`
}
type Program struct {
	Name      string `json:"name"`
	Pos       int    `json:"pos"`
	StartTime string `json:"starttime"`
}

type ApkResponse struct {
	Code int       `json:"code"`
	Data []Program `json:"data"`
	Msg  string    `json:"msg"`
	Pos  int       `json:"pos"`
}

type SimpleResponse struct {
	Code int     `json:"code"`
	Data Program `json:"data"`
	Msg  string  `json:"msg"`
	Pos  int     `json:"pos"`
}
