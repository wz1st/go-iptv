package dto

// 定制授权专属：定制APK + 「下载页编辑」的请求体
//
// 这两块的**响应体由引擎产出**（引擎持有定制配置、下载页源码与渲染产物），
// api 只做转发，所以这里只定义请求体；响应形状见引擎的 dto.CustomApkInfoDto /
// dto.DlStatusDto / dto.DlEntry，api 原样透传 —— 再定义一份镜像结构只会
// 多出一处会跟引擎漂移的定义。

// CustomApkBuildReq 是编译定制 APK 的请求。
// 没有连接地址字段：定制客户端的连接地址与 mytv 共用。
type CustomApkBuildReq struct {
	Name       string `json:"name"`
	AppVersion string `json:"appVersion"`
	UpBody     string `json:"upBody"`
}

// CustomBaseUploadReq 是上传定制编译基底时给引擎的中转信息。
type CustomBaseUploadReq struct {
	Tmp    string `json:"tmp"`
	Remove bool   `json:"remove"`
}

// DlPathReq 是「只有一个路径」的下载页动作（列表 / 读 / 删除 / 建目录）。
type DlPathReq struct {
	Path string `json:"path"`
}

// DlWriteReq 是保存文件内容。
type DlWriteReq struct {
	Path    string `json:"path"`
	Content string `json:"content"`
}

// DlRenameReq 是改名。
type DlRenameReq struct {
	Path string `json:"path"`
	Name string `json:"name"`
}

// DlToggleReq 是自定义下载页开关。
type DlToggleReq struct {
	Enabled int64 `json:"enabled"`
}

// DlButtonsReq 是保存「默认下载页按钮」四个开关的请求。
// 与引擎 dto.DlButtonsReq 逐字一致（字段名就是 json 契约）。
type DlButtonsReq struct {
	ShowCamel  int64 `json:"show_camel"`
	ShowMytv   int64 `json:"show_mytv"`
	ShowCustom int64 `json:"show_custom"`
	ShowAdmin  int64 `json:"show_admin"`
}

// DlUploadReq 是下载页文件上传给引擎的中转信息。
type DlUploadReq struct {
	Tmp    string `json:"tmp"`
	Path   string `json:"path"`
	Remove bool   `json:"remove"`
}
