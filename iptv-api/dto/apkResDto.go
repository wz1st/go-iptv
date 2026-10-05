package dto

type LoginRes struct {
	MovieEngine  MovieEngine `json:"movieengine"`
	Status       int64       `json:"status"`
	MealName     string      `json:"mealname"`
	DataURL      string      `json:"dataurl"`
	AppURL       string      `json:"appurl"`
	AppVer       string      `json:"appver"`
	SetVer       int64       `json:"setver"`
	AdText       string      `json:"adtext"`
	ShowInterval int64       `json:"showinterval"`
	Exp          int64       `json:"exp"`
	IP           string      `json:"ip"`
	ShowTime     int64       `json:"showtime"`
	ProvList     []string    `json:"provlist"`
	// 设备账号，**字符串**下发：新装设备是客户端 androidid 原文（如 f8145fb34e8f5d91），
	// 存量设备是历史随机数字（如 210079），两种格式并存。
	// 客户端 `ServerConfig.accountId` 声明为 String，两边必须一致 ——
	// 下发数字会逼 kotlinx 走宽松解析，是个静默的类型陷阱。
	ID               string   `json:"id"`
	Decoder          int64    `json:"decoder"`
	BuffTimeOut      int64    `json:"buffTimeOut"`
	TipUserNoReg     string   `json:"tipusernoreg"`
	TipLoading       string   `json:"tiploading"`
	TipUserForbidden string   `json:"tipuserforbidden"`
	TipUserExpired   string   `json:"tipuserexpired"`
	ArrSrc           []string `json:"arrsrc"`
	ArrProxy         []string `json:"arrproxy"`
	Location         string   `json:"location"`
	NetType          string   `json:"nettype"`
	AutoUpdate       int64    `json:"autoupdate"`
	UpdateInterval   int64    `json:"updateinterval"`
	RandKey          string   `json:"randkey"`
	Exps             int64    `json:"exps"`
	Stus             int64    `json:"stus"`
	AdInfo           string   `json:"qqinfo"`
}

type GetverRes struct {
	AppURL string `json:"appurl"`
	AppVer string `json:"appver"`
	UpSize string `json:"appsize"`
	UpSets int64  `json:"appsets"`
	UpText string `json:"apptext"`
}

// MovieEngine 是登录响应里下发给 APK 客户端的「点播引擎」配置。
type MovieEngine struct {
	Model []struct{} `json:"model"`
}

type ApkUser struct {
	Mac      string `json:"mac"`
	DeviceID string `json:"androidid"`
	Model    string `json:"model"`
	IP       string `json:"ip"`
	Region   string `json:"region"`
	NetType  string `json:"nettype"`
	AppName  string `json:"appname"`
}

type ChannelListDto struct {
	ID   int64         `json:"-"`
	Name string        `json:"name"`
	Psw  string        `json:"psw"`
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
