package dto

// IndexDto 是前台下载页（GET /api/site/index）的数据。
//
// ShowDown* 是**最终是否显示**（按钮开关 && APK 已编译），不是配置里的开关值 ——
// 开关值见引擎 dto.DlButtonsDto（下载页编辑页读它）。
//
// 两个客户端壳各占一组字段：
//   - `apk_*`     归**骆驼壳**（= 主槽位，与设置页 tab 顺序、下载页首个按钮三处一致）；
//   - `apk_qh_*`  归**清和壳**。
//
// 名字刻意不新造 `apk_lt_*`：`{APK_URL}` / `{APK_NAME}` 是用户在自定义下载页源码里
// 写死的对外契约，改名等于让所有存量下载页静默失效。
type IndexDto struct {
	ApkUrl       string `json:"apk_url"`
	ApkName      string `json:"apk_name"`
	Content      string `json:"content"`
	ShowDown     bool   `json:"show_down"`
	ShowDownMyTV bool   `json:"show_down_mytv"`
	MyTVName     string `json:"mytv_name"`
	MyTVUrl      string `json:"mytv_url"`

	// 清和壳（Client.apk 那套）：与骆驼壳同构，只是字段名带 qh 后缀。
	ShowDownQh bool   `json:"show_down_qh"`
	ApkQhName  string `json:"apk_qh_name"`
	ApkQhUrl   string `json:"apk_qh_url"`

	// 定制客户端（定制授权专属）。名字与 mytv 同一套兜底，文件名不带版本号。
	ShowDownCustom bool   `json:"show_down_custom"`
	CustomName     string `json:"custom_name"`
	CustomUrl      string `json:"custom_url"`

	// ShowAdmin 控制「进后台」那个按钮（无文件条件，只看开关）。
	ShowAdmin bool `json:"show_admin"`
}
