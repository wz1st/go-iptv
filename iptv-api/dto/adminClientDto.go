package dto

type AdminClientDto struct {
	LoginUser   string   `json:"loginUser"`
	Title       string   `json:"title"`
	ServerUrl   string   `json:"serverUrl"`
	Build       Build    `json:"build"`
	App         App      `json:"app"`
	Tips        Tips     `json:"tips"`
	IconUrl     string   `json:"iconUrl"`
	BjUrl       []string `json:"bjUrl"`
	AdInfo      string   `json:"adInfo"` // 客户端退出弹窗的「广告内容」（config.yml 的 site.ad，仅定制授权可改）
	UpSize      string   `json:"upSize"` // 当前（线上）apk 大小
	ApkMd5      string   `json:"apkMd5"` // 当前（线上）apk 的 MD5
	ApkUrl      string   `json:"apkUrl"`
	ApkName     string   `json:"apkName"`
	NewVersion  string   `json:"newVersion"` // 待发布版本号（空 = 没有待发布的包）
	NewSize     string   `json:"newSize"`
	NewMd5      string   `json:"newMd5"`
	NewApkUrl   string   `json:"newApkUrl"`
	NewApkName  string   `json:"newApkName"`
	NewExists   bool     `json:"newExists"`
	BuildStatus int64    `json:"status"` // APK编译状态
}
