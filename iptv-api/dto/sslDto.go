package dto

// 「SSL 证书」页（/admin/ssl）的请求与响应。
//
// 这一页管的是**容器里那份 nginx 的 HTTPS**：
//   - 证书与私钥固定落在 /config/cert/server.crt|server.key（持久卷）；
//   - 页面上的开关与端口落在 config.yml 的 `ssl:` 段（dto.Config.SSL）；
//   - 保存时由 until/sslUntil.go 渲染 nginx 片段 → `nginx -t` → reload。
//
// 证书原文会随 ssl/data 回给前端（**只有证书**，私钥不回显，见 SSLDataDto 注释），
// 这样"只改开关、不重新上传证书"时文本框里还有内容，不会把证书清掉。

// SSLCertDto 描述一张证书的解析结果，以及它和私钥是否配对。
//
// 每个字段都按"读不到就留零值 + 把原因写进 Error"的口径填，
// 前端不需要为了显示一段提示而多打一次接口。
type SSLCertDto struct {
	// OK 为真表示证书文件存在且解析成功。
	OK bool `json:"ok"`
	// Error 是证书侧的问题描述（没上传 / 格式不对 / 解析失败）。
	Error string `json:"error"`
	// KeyError 是私钥侧的问题描述（没上传 / 不是一对）。
	KeyError string `json:"keyError"`
	// KeyMatches 表示私钥与证书确实是一对（false 时 nginx 重载会 key values mismatch）。
	KeyMatches bool `json:"keyMatches"`

	Subject     string `json:"subject"`
	Issuer      string `json:"issuer"`
	Serial      string `json:"serial"`
	NotBefore   string `json:"notBefore"`
	NotAfter    string `json:"notAfter"`
	SigAlg      string `json:"sigAlg"`
	KeyType     string `json:"keyType"`     // 私钥算法（没私钥时退化成公钥算法）
	Fingerprint string `json:"fingerprint"` // SHA-256，小写十六进制
	ChainLen    int    `json:"chainLen"`    // PEM 里的证书张数（>1 表示带了中间证书）

	DNSNames    []string `json:"dnsNames"`
	IPAddresses []string `json:"ipAddresses"`

	SelfSigned  bool `json:"selfSigned"`
	Expired     bool `json:"expired"`
	NotYetValid bool `json:"notYetValid"`
	// ExpiringSoon 在剩余天数 <= 14 天时为真（界面标红用）。
	ExpiringSoon bool `json:"expiringSoon"`
	// DaysLeft 剩余天数，已过期时为负。
	DaysLeft int `json:"daysLeft"`
}

// SSLDataDto 是 SSL 页一次拉取的全部内容。
type SSLDataDto struct {
	Enable        bool `json:"enable"`
	ForceRedirect bool `json:"forceRedirect"`
	Port          int  `json:"port"`
	// Running 表示重载后这个端口在本机确实有人监听 —— 用它区分
	// "配置写对了"和"真的起来了"（没把端口映射出来的话配置再对也没用）。
	Running bool `json:"running"`
	// Listening 与 Running 同义，保留给界面上的「实际生效」一栏。
	Listening bool `json:"listening"`

	NginxVersion string `json:"nginxVersion"`
	// HTTP2 表示当前 nginx 版本支持 `http2 on;`（>= 1.25.1），生成配置时会带上它。
	HTTP2 bool `json:"http2"`

	Cert SSLCertDto `json:"cert"`

	// CertDir / CertPath / KeyPath 会在页面上原样显示给用户（用户挂载的是 /config）。
	CertDir  string `json:"certDir"`
	CertPath string `json:"certPath"`
	KeyPath  string `json:"keyPath"`

	CertSize    string `json:"certSize"`
	CertModTime string `json:"certModTime"`
	KeySize     string `json:"keySize"`
	KeyModTime  string `json:"keyModTime"`
	// KeyConfigured 表示私钥文件在盘上（私钥内容不外发，只给"有没有"）。
	KeyConfigured bool `json:"keyConfigured"`

	// CertName / KeyName 是用户上传时的原始文件名，仅供显示。
	CertName string `json:"certName"`
	KeyName  string `json:"keyName"`

	// CertPEM 是**已上传的证书原文**，回填文本框用。
	// 私钥**故意不回显**：它一旦进了浏览器，就会留在历史/缓存/调试面板里，
	// 而文本框留空本身就表达了"保持不变"（见 SSLSaveReq 的约定）。
	CertPEM string `json:"certPem"`

	// Warning 是需要提醒但不算错误的情况（如"开了强制跳转但没开 HTTPS"）。
	Warning string `json:"warning"`
}

// SSLSaveReq 保存 SSL 设置。
//
// **空值约定**：CertPEM / KeyPEM 留空表示"这一项保持磁盘上的原样"。
// 前端只改开关时会把文本框里已有的证书原文一并回传，私钥框空着 ——
// 所以"空"必须解释成保持不变，否则改一次开关就会把证书删掉。
type SSLSaveReq struct {
	Enable bool `json:"enable"`
	// ForceRedirect 只在 Enable 也为真时才生效（它俩是从属关系，见
	// service.SSLSave 的收敛说明）—— 单独打开会把站点锁在门外。
	ForceRedirect bool `json:"forceRedirect"`
	// Port 为 0 或越界时按 443 处理。
	Port int `json:"port"`

	CertPEM string `json:"certPem"`
	KeyPEM  string `json:"keyPem"`

	// CertName / KeyName 是本次上传的原始文件名，只用于回显。
	CertName string `json:"certName"`
	KeyName  string `json:"keyName"`
}

// SSLClearReq 删除证书与私钥（无字段；留类型是为了路由表统一）。
type SSLClearReq struct{}
