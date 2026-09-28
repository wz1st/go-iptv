package dto

type LoginRes struct {
	MovieEngine      MovieEngine `json:"movieengine"`
	Status           int64       `json:"status"`
	MealName         string      `json:"mealname"`
	DataURL          string      `json:"dataurl"`
	AppURL           string      `json:"appurl"`
	AppVer           string      `json:"appver"`
	SetVer           int64       `json:"setver"`
	AdText           string      `json:"adtext"`
	ShowInterval     int64       `json:"showinterval"`
	Exp              int64       `json:"exp"`
	IP               string      `json:"ip"`
	ShowTime         int64       `json:"showtime"`
	ProvList         []string    `json:"provlist"`
	ID               int64       `json:"id"`
	Decoder          int64       `json:"decoder"`
	BuffTimeOut      int64       `json:"buffTimeOut"`
	TipUserNoReg     string      `json:"tipusernoreg"`
	TipLoading       string      `json:"tiploading"`
	TipUserForbidden string      `json:"tipuserforbidden"`
	TipUserExpired   string      `json:"tipuserexpired"`
	ArrSrc           []string    `json:"arrsrc"`
	ArrProxy         []string    `json:"arrproxy"`
	Location         string      `json:"location"`
	NetType          string      `json:"nettype"`
	AutoUpdate       int64       `json:"autoupdate"`
	UpdateInterval   int64       `json:"updateinterval"`
	RandKey          string      `json:"randkey"`
	Exps             int64       `json:"exps"`
	Stus             int64       `json:"stus"`
	AdInfo           string      `json:"qqinfo"`
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
