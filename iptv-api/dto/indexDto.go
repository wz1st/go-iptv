package dto

// IndexDto 是前台下载页（GET /api/site/index）下发的按钮信息。
//
// ## 为什么有两组 APK
//
// 服务端并行提供**两个壳**的客户端，下载页要把它们分开列出来：
//   - 骆驼壳（主槽位）：client/smali 树编出来的那套 → ApkUrl / ApkName / ShowDown
//   - 清和壳：预编译 Client.apk 那套 → ApkQhUrl / ApkQhName / ShowDownQh
//
// 两个壳共用同一套编译接口（until.BuildClientApk），但基底、应用名、版本号
// 与下载地址各自独立，所以按钮也必须各自一套 —— 合成一个字段会让用户
// 只能下到其中一个。
//
// 字段名沿用改造前的 `apk_*`（不新造 `apk_lt_*`）：前台自定义下载页的
// `{APK_URL}` / `{APK_NAME}` 两个占位符是**对外契约**，用户在页面源码里写死了，
// 改名等于让所有存量下载页静默失效。`apk_*` 归主槽位（骆驼壳），
// 与设置页的 tab 顺序、下载页的首个按钮一致。
//
// ## Name 与 Label 的区别
//
//   - `*_name`（ApkName / ApkQhName）：**存盘名**，带壳标记
//     （`清和电视-qh-1.3.2.001.apk`），挂在 `<a download>` 上；
//   - `*_label`（ApkLabel / ApkQhLabel）：按钮**文案**，不带壳标记
//     （`清和电视-1.3.2.001.apk`）。
//
// 壳标记是给"文件"用的（两个壳可能重名，落盘必须分得开），不是给用户看的。
// 见 until.ClientApkLabel。
type IndexDto struct {
	ApkUrl       string `json:"apk_url"`
	ApkName      string `json:"apk_name"`
	ApkLabel     string `json:"apk_label"`
	ShowDown     bool   `json:"show_down"`
	ApkQhUrl     string `json:"apk_qh_url"`
	ApkQhName    string `json:"apk_qh_name"`
	ApkQhLabel   string `json:"apk_qh_label"`
	ShowDownQh   bool   `json:"show_down_qh"`
	Content      string `json:"content"`
	ShowDownMyTV bool   `json:"show_down_mytv"`
	MyTVName     string `json:"mytv_name"`
	MyTVUrl      string `json:"mytv_url"`
}
