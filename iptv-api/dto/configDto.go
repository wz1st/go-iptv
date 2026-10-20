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
	// ForceUpdate 是「强制更新」开关：开启后 APK 发现新版本会弹出**不可取消**的更新框，
	// 不点更新进不去主界面。yaml 键 `forceupdate`、json 键同名 —— 客户端 getver 解析
	// 只读 `forceupdate`（见 smali g$3）。两个壳共用同一份配置（与 NeedAuthor 同构）。
	ForceUpdate int64 `mapstructure:"forceupdate" json:"forceUpdate" yaml:"forceupdate"`
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

// 出网代理：协议/地址/端口/账密 + 作用范围。
//
// ★ 为什么不叫 Proxy、也不复用上面那个 `proxy` 键：上面那个是中转
// （引擎侧的 IPTV 取流反向代理）的开关，协议/地址/端口在改造时已写死进引擎
// （见 until/proxyAddr.go），与出网代理毫无关系却同名。两段并存时
// `out_proxy:` 与 `proxy:` 必须都留在 config.yml 里，各自独立。
//
// ★ 这一项必须同时在 iptv-engine/dto/configDto.go 里声明 —— 引擎会整份重写
// config.yml，只在一侧声明的键会在引擎保存配置时被静默丢掉（理由同 BuildLt）。
type OutProxy struct {
	// Type 代理协议：""/"none"=无代理，"socks5"、"http"。
	// 取值用字符串而不是枚举下标，是为了让「无代理」在 config.yml 里就是
	// 一句 `type: none`，读的人不用回查代码就知道当前是什么。
	Type string `mapstructure:"type" json:"type" yaml:"type"`
	Host string `mapstructure:"host" json:"host" yaml:"host"`
	Port int64  `mapstructure:"port" json:"port" yaml:"port"`
	// AuthOn 是「代理账号密码」开关。关着时下面 User/Pwd 一律不生效，
	// 也不用保存 —— 开关关着还把口令留在文件里没意义。
	AuthOn int64  `mapstructure:"auth_on" json:"authOn" yaml:"auth_on"`
	User   string `mapstructure:"user" json:"user" yaml:"user"`
	Pwd    string `mapstructure:"pwd" json:"pwd" yaml:"pwd"`
	// 作用范围：每个功能各一个开关（0 关 / 1 开），彼此独立。
	UseEpg   int64 `mapstructure:"use_epg" json:"useEpg" yaml:"use_epg"`       // EPG 更新
	UseSrc   int64 `mapstructure:"use_src" json:"useSrc" yaml:"use_src"`       // 频道源更新
	UseUp    int64 `mapstructure:"use_up" json:"useUp" yaml:"use_up"`          // 在线升级（默认选中）
	UseRelay int64 `mapstructure:"use_relay" json:"useRelay" yaml:"use_relay"` // 中转取流（限 SOCKS5，仅授权用户）
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

// SSL 是后台「SSL 证书」页的设置（开关 443 / 80 强制跳转 / 端口）。
//
// **yaml 标签必须与引擎侧 dto.SSL 完全一致。** 引擎在授权失效时会把自己的
// dto.Config 整体重写回 config.yml（dao.SaveConfigToFile），字段（名字）对不齐，
// 那一次重写就会把整段 ssl 丢掉 —— 表现为"授权一过期，HTTPS 就悄悄关掉了"。
// 本段引擎不消费，放在两边纯粹是为了让整体重写不丢字段。
//
// 证书与私钥本身**不在这里**：它们固定落在 /config/cert/server.crt|server.key，
// 由 until/sslUntil.go 管理；这里只记原始上传文件名，供界面显示来源。
type SSL struct {
	// Enable 为真时 nginx 会监听 HTTPS 端口（默认 443）。
	Enable bool `mapstructure:"enable" json:"enable" yaml:"enable"`
	// ForceRedirect 为真时 80 端口的请求整体 301 到 HTTPS。
	ForceRedirect bool `mapstructure:"force_redirect" json:"forceRedirect" yaml:"force_redirect"`
	// Port 是 HTTPS 监听端口，0 视为 443。
	Port int `mapstructure:"port" json:"port" yaml:"port"`
	// CertName / KeyName 是**用户上传时的原始文件名**，仅用于界面显示；
	// 落盘名恒为 server.crt / server.key（nginx 配置里写死）。
	CertName string `mapstructure:"cert_name" json:"certName" yaml:"cert_name"`
	KeyName  string `mapstructure:"key_name" json:"keyName" yaml:"key_name"`
}

type Config struct {
	ServerUrl string `mapstructure:"server_url" json:"server_url" yaml:"server_url"`
	Build     Build  `mapstructure:"build" json:"build" yaml:"build"`
	// BuildLt 是「骆驼壳」（smali 树编出来的那套）的独立编译参数：应用名与版本号，
	// 与 清和壳（Client.apk，即上面的 Build）互不影响。
	// **这一项必须同时在 iptv-engine/dto/configDto.go 里声明** —— 引擎会整份重写
	// config.yml，只在一侧声明的键会在引擎保存配置时被静默丢掉。
	BuildLt Build `mapstructure:"build_lt" json:"buildLt" yaml:"build_lt"`
	// ServerUrlLt 是「骆驼壳」的 APK 连接地址，与上面清和壳的 ServerUrl **各存一份**。
	//
	// ★ 为什么不能共用（2026-10-14 修正）：两个壳的用户可能完全不同 ——
	// 清和壳填的是内网/生产地址、骆驼壳填的是另一个外网地址很常见，
	// 而共用一个字段意味着「在骆驼壳页改地址会把清和壳的地址也改掉」，
	// 编出来的清和壳包里就会带着骆驼壳的地址，客户端直接连不上。
	//
	// ★ **这一项必须同时在 iptv-engine/dto/configDto.go 里声明**（理由同 BuildLt：
	// 引擎整份重写 config.yml，单侧声明的键会被静默丢掉）。
	//
	// 空值回退到 ServerUrl：老配置没有这个键，若不回退则升级后骆驼壳编译
	// 会拿到空地址（而 UserUrl() 之外的路径不会兜底）。
	ServerUrlLt string     `mapstructure:"server_url_lt" json:"serverUrlLt" yaml:"server_url_lt"`
	App         App        `mapstructure:"app" json:"app" yaml:"app"`
	Tips        Tips       `mapstructure:"tips" json:"tips" yaml:"tips"`
	Ad          Ad         `mapstructure:"ad" json:"ad" yaml:"ad"`
	Rss         Rss        `mapstructure:"rss" json:"rss" yaml:"rss"`
	Proxy       Proxy      `mapstructure:"proxy" json:"proxy" yaml:"proxy"`
	OutProxy    OutProxy   `mapstructure:"out_proxy" json:"outProxy" yaml:"out_proxy"`
	Resolution  Resolution `mapstructure:"resolution" json:"resolution" yaml:"resolution"`
	Epg         Epg        `mapstructure:"epg" json:"epg" yaml:"epg"`
	System      System     `mapstructure:"system" json:"system" yaml:"system"`
	MyTV        MyTV       `mapstructure:"mytv" json:"mytv" yaml:"mytv"`
	Site        Site       `mapstructure:"site" json:"site" yaml:"site"`
	SSL         SSL        `mapstructure:"ssl" json:"ssl" yaml:"ssl"`
	// Weather   Weather   `mapstructure:"weather" json:"weather" yaml:"weather"`
}
