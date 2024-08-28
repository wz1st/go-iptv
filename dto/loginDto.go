package dto

type LoginRes struct {
	MovieEngine      string      `json:"movieengine"`
	Status           int         `json:"status"`
	MealName         string      `json:"mealname"`
	DataURL          string      `json:"dataurl"`
	AppURL           string      `json:"appurl"`
	DataVer          string      `json:"dataver"`
	AppVer           string      `json:"appver"`
	SetVer           string      `json:"setver"`
	AdText           string      `json:"adtext"`
	ShowInterval     string      `json:"showinterval"`
	CategoryCount    int         `json:"categoryCount"`
	Exp              int         `json:"exp"`
	IP               string      `json:"ip"`
	ShowTime         string      `json:"showtime"`
	ProvList         interface{} `json:"provlist"`
	CanSeekList      []string    `json:"canseeklist"`
	ID               string      `json:"id"`
	Decoder          string      `json:"decoder"`
	BuffTimeOut      string      `json:"buffTimeOut"`
	TipUserNoReg     string      `json:"tipusernoreg"`
	TipLoading       string      `json:"tiploading"`
	TipUserForbidden string      `json:"tipuserforbidden"`
	TipUserExpired   string      `json:"tipuserexpired"`
	QQInfo           string      `json:"qqinfo"`
	ArrSrc           interface{} `json:"arrsrc"`
	ArrProxy         interface{} `json:"arrproxy"`
	Location         string      `json:"location"`
	NetType          string      `json:"nettype"`
	AutoUpdate       string      `json:"autoupdate"`
	UpdateInterval   string      `json:"updateinterval"`
	RandKey          string      `json:"randkey"`
	Exps             string      `json:"exps"`
	Stus             interface{} `json:"stus"`
}

type GetverRes struct {
	AppURL string `json:"appurl"`
	AppVer string `json:"appver"`
	UpSize string `json:"up_size"`
	UpSets string `json:"up_sets"`
	UpText string `json:"up_text"`
}

type IptvUser struct {
	ID         int    `json:"id"`
	Name       int    `json:"name"`
	Mac        string `json:"mac"`
	DeviceID   string `json:"androidid"`
	Model      string `json:"model"`
	IP         string `json:"ip"`
	Region     string `json:"region"`
	Exp        int    `json:"exp"`
	VPN        int    `json:"vpn"`
	IDChange   int    `json:"idchange"`
	Author     string `json:"author"`
	AuthorTime int    `json:"authortime"`
	Status     int    `json:"status"`
	LastTime   int    `json:"lasttime"`
	Marks      string `json:"marks"`
	Meal       int    `json:"meal"`
}
