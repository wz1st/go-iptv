package dto

type Build struct {
	Name    string `mapstructure:"name" json:"name" yaml:"name"`
	Version string `mapstructure:"version" json:"version" yaml:"version"`
	// NewVersion 是待发布版本号：编译只出待发布 apk，点「发布」才提升为 Version。
	NewVersion string `mapstructure:"new_version" json:"newVersion" yaml:"new_version"`
}

type MyTV struct {
	// ServerUrl 是 mytv 客户端**独立**的 APK 连接地址，不与骆驼共用的
	ServerUrl string `mapstructure:"server_url" json:"server_url" yaml:"server_url"`
	// NewVersion 待发布版本号，语义同 Build.NewVersion：编译只出待发布包，
	// 点「发布」才提升为 Version。json tag 同上（引擎要按它反解）。
	NewVersion string `mapstructure:"new_version" json:"new_version" yaml:"new_version"`
	// 这里曾有 BaseVersion（底包版本，经 WS 传给引擎）。
	Version string `mapstructure:"version" json:"version" yaml:"version"`
	Update  string `mapstructure:"update" json:"update" yaml:"update"`
}

type AppUpdate struct {
	// Url  string `mapstructure:"url" json:"url" yaml:"url"`
	Set int64 `mapstructure:"set" json:"set" yaml:"set"`
}

type App struct {
	NeedAuthor  int64 `mapstructure:"needauthor" json:"needAuthor" yaml:"needauthor"`
	BuffTimeout int64 `mapstructure:"buff_time_out" json:"buffTimeout" yaml:"buff_time_out"`
	Decoder     int64 `mapstructure:"decoder" json:"decoder" yaml:"decoder"`
	// TrialDays   int64 `mapstructure:"trialdays" json:"trialdays" yaml:"trialdays"`
	Update AppUpdate `mapstructure:"update" json:"update" yaml:"update"`
}

type Tips struct {
	Loading       string `mapstructure:"loading" json:"loading" yaml:"loading"`
	UserExpired   string `mapstructure:"user_expired" json:"userExpired" yaml:"user_expired"`
	UserForbidden string `mapstructure:"user_forbidden" json:"userForbidden" yaml:"user_forbidden"`
	UserNoReg     string `mapstructure:"user_noreg" json:"userNoReg" yaml:"user_noreg"`
}

type Ad struct {
	ShowTime     int64  `mapstructure:"showtime" json:"showTime" yaml:"showtime"`
	ShowInterval int64  `mapstructure:"showinterval" json:"showInterval" yaml:"showinterval"`
	AdText       string `mapstructure:"adtext" json:"adText" yaml:"adtext"`
}

// 旧版这里是 ConfigChannel{Interval, Auto}：全局唯一的频道更新间隔与自动更新开关。

// type Cache struct {

type Redis struct {
	Host     string `mapstructure:"host" json:"host" yaml:"host"`
	Password string `mapstructure:"password" json:"password" yaml:"password"`
	Db       int    `mapstructure:"db" json:"db" yaml:"db"`
}

type Rss struct {
	Key string `mapstructure:"key" json:"key" yaml:"key"`
}

// Proxy 只剩一个开关。
type Proxy struct {
	Status int64 `mapstructure:"status" json:"status" yaml:"status"`
}

type Resolution struct {
	Auto  int64 `mapstructure:"auto" json:"auto" yaml:"auto"`
	DisCh int64 `mapstructure:"disch" json:"disCh" yaml:"disch"`
}

type Epg struct {
	Fuzz int64 `mapstructure:"fuzz" json:"fuzz" yaml:"fuzz"`
}

// System 必须与引擎侧的 dto.System **完全一致**。
type System struct {
	ShortURL int64 `mapstructure:"short_url" json:"shortUrl" yaml:"short_url"`
}

// Site 同理：这是改造前**整个结构体都不存在**的那一段。
type Site struct {
	SiteName  string `mapstructure:"site_name" json:"siteName" yaml:"site_name"`
	Copyright string `mapstructure:"copyright" json:"copyright" yaml:"copyright"`
	Ad        string `mapstructure:"ad" json:"ad" yaml:"ad"`
	ShowEz    int64  `mapstructure:"show_ez" json:"showEz" yaml:"show_ez"`
	ShowMytv  int64  `mapstructure:"show_mytv" json:"showMytv" yaml:"show_mytv"`
	MyTVName  string `mapstructure:"mytv_name" json:"mytvName" yaml:"mytv_name"`
	ShowOther int64  `mapstructure:"show_other" json:"showOther" yaml:"show_other"`
}

// MytvNameOr 返回 mytv 包名，配置缺失时兜底 "清和IPTV"。
func (s Site) MytvNameOr() string {
	if s.MyTVName != "" {
		return s.MyTVName
	}
	return "清和IPTV"
}

type Config struct {
	ServerUrl  string     `mapstructure:"server_url" json:"server_url" yaml:"server_url"`
	Build      Build      `mapstructure:"build" json:"build" yaml:"build"`
	App        App        `mapstructure:"app" json:"app" yaml:"app"`
	Tips       Tips       `mapstructure:"tips" json:"tips" yaml:"tips"`
	Ad         Ad         `mapstructure:"ad" json:"ad" yaml:"ad"`
	Rss        Rss        `mapstructure:"rss" json:"rss" yaml:"rss"`
	Proxy      Proxy      `mapstructure:"proxy" json:"proxy" yaml:"proxy"`
	Resolution Resolution `mapstructure:"resolution" json:"resolution" yaml:"resolution"`
	Epg        Epg        `mapstructure:"epg" json:"epg" yaml:"epg"`
	System     System     `mapstructure:"system" json:"system" yaml:"system"`
	MyTV       MyTV       `mapstructure:"mytv" json:"mytv" yaml:"mytv"`
	Site       Site       `mapstructure:"site" json:"site" yaml:"site"`
	// Weather   Weather   `mapstructure:"weather" json:"weather" yaml:"weather"`
}
