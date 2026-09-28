package dto

// AdminClientMyTVDto 对应 admin「客户端设置 → MyTV」面板的取数与编译轮询。
type AdminClientMyTVDto struct {
	Title       string `json:"title"`
	BaseVersion string `json:"baseVersion"`
	// basePkg 是当前底包的**包名**（如 xyz.qingh.mytv）。
	BasePkg   string `json:"basePkg"`
	ServerUrl string `json:"serverUrl"`
	Update    string `json:"update"`
	Status    int64  `json:"status"` // APK编译状态：1=编译中

	// ---- 当前版本（线上包 <MyTVName>-mytv.apk）----
	Version string `json:"version"`
	Size    string `json:"size"`
	Md5     string `json:"md5"`
	ApkUrl  string `json:"apkUrl"`
	ApkName string `json:"apkName"`

	// ---- 新版本（待发布包 <MyTVName>-mytv-new.apk）----
	NewVersion string `json:"newVersion"`
	NewSize    string `json:"newSize"`
	NewMd5     string `json:"newMd5"`
	NewExists  bool   `json:"newExists"`
	NewApkUrl  string `json:"newApkUrl"`
	NewApkName string `json:"newApkName"`
}

// MytvBaseCheckDto 是「在线检查基底最新版本」的回显。
type MytvBaseCheckDto struct {
	Local     string `json:"local"`     // 当前编译基底版本（1.2.2）
	Remote    string `json:"remote"`    // 远端最新基底版本
	Tag       string `json:"tag"`       // 远端标签（mytv-v1.2.3）
	HasUpdate bool   `json:"hasUpdate"` // 远端是否比本地新
	Route     string `json:"route"`     // 实际走的链路：直连 / gh-proxy.org / hk.gh-proxy.com
}
