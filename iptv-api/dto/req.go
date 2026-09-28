package dto

// 管理端接口的请求体（POST JSON）

// 通用

// ReqID —— 单条记录操作：上下线、删除、上移/下移/置顶、单条保存。
type ReqID struct {
	ID int64 `json:"id"`
}

// ReqIDs —— 批量操作：列表页勾选多行后点按钮。
type ReqIDs struct {
	IDs []string `json:"ids"`
}

// 系统公告  POST /api/client/noticeSave

type NoticeReq struct {
	AdText       string `json:"adText"`
	ShowTime     int64  `json:"showTime"`
	ShowInterval int64  `json:"showInterval"`
}

// 管理员设置  POST /api/admins/save

type AdminProfileReq struct {
	Username     string `json:"username"`
	OldPassword  string `json:"oldPassword"`
	NewPassword  string `json:"newPassword"`
	NewPassword2 string `json:"newPassword2"`
}

// MyTV 客户端  POST /api/clientMyTV/save

type MyTVBuildReq struct {
	ServerUrl  string `json:"serverUrl"`
	AppVersion string `json:"appVersion"`
	UpBody     string `json:"upBody"`
}

// 在线升级  POST /api/updata/checkFront

// UpdataCheckFrontReq 是前端自报的版本号。
type UpdataCheckFrontReq struct {
	Version string `json:"version"`
}

// 设备列表  /api/users

type UsersMarksReq struct {
	IDs   []string `json:"ids"`
	Marks string   `json:"marks"`
}

type UsersMealsReq struct {
	IDs    []string `json:"ids"`
	MealID int64    `json:"mealId"`
}

// 设备授权  /api/authors

type AuthorsAuthorizeReq struct {
	IDs    []string `json:"ids"`
	MealID string   `json:"mealId"`
}

// 套餐管理  /api/meals

// MealsSaveReq 是「新增/编辑套餐」的提交体：ID 为 0 表示新增。
type MealsSaveReq struct {
	ID     int64    `json:"id"`
	Name   string   `json:"name"`
	IDList []string `json:"ids"`
}

// 骆驼客户端设置  /api/client

type ClientDeleteBjReq struct {
	Name string `json:"name"`
}

type ClientDecoderReq struct {
	Decoder int64 `json:"decoder"`
}

type ClientBuffTimeoutReq struct {
	BuffTimeout int64 `json:"buffTimeout"`
}

type ClientNeedAuthorReq struct {
	NeedAuthor int64 `json:"needAuthor"`
}

type ClientAppInfoReq struct {
	ServerUrl string `json:"serverUrl"`
	AppName   string `json:"appName"`
	Version   string `json:"version"` // 待发布版本号（前端按"当前版本末位+1"给出）
	UpSet     bool   `json:"upSet"`
}

type ClientTipSetReq struct {
	Loading       string `json:"loading"`
	UserExpired   string `json:"userExpired"`
	UserForbidden string `json:"userForbidden"`
	UserNoReg     string `json:"userNoReg"`
}

// EPG 列表  /api/epgs

type EpgSaveReq struct {
	ID       int64  `json:"id"`
	Name     string `json:"name"`
	Remarks  string `json:"remarks"`
	CaList   string `json:"caList"`
	FromList string `json:"fromList"`
}

type EpgBindReq struct {
	ID       int64  `json:"id"`
	Channels string `json:"channels"`
}

// EPG 来源  /api/epgFrom

type EpgFromSaveReq struct {
	ID   int64  `json:"id"`
	Name string `json:"name"`
	Url  string `json:"url"`
	UA   string `json:"ua"`
}

// 进阶功能（授权）  /api/engine

type EngineAccountReq struct {
	Name string `json:"name"`
	Pwd  string `json:"pwd"`
	Pwd2 string `json:"pwd2"`
}

type EnginePwdReq struct {
	OldPwd string `json:"oldPwd"`
	Pwd    string `json:"pwd"`
	Pwd2   string `json:"pwd2"`
}

type EngineResetReq struct {
	Name string `json:"name"`
}

// EngineSwitchReq 是「一个开关」的通用提交体：
type EngineSwitchReq struct {
	Enable bool `json:"enable"`
}

// EngineProxyReq 中转开关。
type EngineProxyReq struct {
	Enable bool `json:"enable"`
}

// 频道管理  /api/channels

// ChannelsListFlagReq —— POST /api/channels/listFlag
type ChannelsListFlagReq struct {
	ID       int64 `json:"id"`
	Interval int64 `json:"interval"` // 秒；<=0 视为非法，由服务端拒绝
	Auto     bool  `json:"auto"`
}

// ChannelsListReq 是新增/编辑频道列表的提交体：ID 为 0 表示新增。
type ChannelsListReq struct {
	ID           int64  `json:"id"`
	Name         string `json:"name"`
	Url          string `json:"url"`
	UA           string `json:"ua"`
	AutoCategory bool   `json:"autoCategory"`
	AutoGroup    bool   `json:"autoGroup"`
	Ku9          bool   `json:"ku9"`
	Dedup        bool   `json:"dedup"`
	AutoRename   bool   `json:"autoRename"`
	Interval     int64  `json:"interval"` // 秒；<=0 表示"未提供"，见上面说明
}

type ChannelsOneReq struct {
	ID    int64  `json:"id"`
	Name  string `json:"name"`
	Url   string `json:"url"`
	EPGID int64  `json:"epgId"`
}

// ChannelsStatusReq 是「按目标状态启停单个频道」的提交体。
type ChannelsStatusReq struct {
	ID     int64 `json:"id"`
	Status bool  `json:"status"`
}

type ChannelsCategoryReq struct {
	ID         int64  `json:"id"`
	Name       string `json:"name"`
	UA         string `json:"ua"`
	AutoType   string `json:"autoType"`
	RulesRe    string `json:"rulesRe"`
	RulesEpg   string `json:"rulesEpg"`
	Ku9        string `json:"ku9"`
	Proxy      bool   `json:"proxy"`
	AutoRename bool   `json:"autoRename"`
}

// ChannelsCaSortReq —— POST /api/channels/caSort
type ChannelsCaSortReq struct {
	IDs []int64 `json:"ids"`
}

// ChannelsChSortReq —— POST /api/channels/chSort
type ChannelsChSortReq struct {
	CaID int64   `json:"caId"`
	IDs  []int64 `json:"ids"`
}

// ChannelsImportReq —— POST /api/channels/chImport
type ChannelsImportReq struct {
	CaID int64  `json:"caId"`
	List string `json:"list"`
}

// ChannelsCaFlagReq —— POST /api/channels/caFlag
type ChannelsCaFlagReq struct {
	ID         int64 `json:"id"`
	Proxy      bool  `json:"proxy"`
	AutoRename bool  `json:"autoRename"`
}

// 杂项

// AdminLoginReq —— POST /api/login
// 这是唯一一个不在 JWT 保护下的管理端接口，因此单独定义。
type AdminLoginReq struct {
	Username string `json:"username"`
	Password string `json:"password"`
	// Remember 勾选「记住我」时 cookie 有效期从 2 小时延长到 7 天。
	Remember bool `json:"remember"`
}

// RssUrlReq —— POST /api/rss/url
// NewKey 非空时表示「重新生成密钥」，此时忽略 ID。
type RssUrlReq struct {
	ID     string `json:"id"`
	NewKey string `json:"newKey"`
}
