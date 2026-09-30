package service

import (
	"os"
	"path/filepath"

	"iptv-api/dao"
	"iptv-api/dto"
	"iptv-api/until"

	"github.com/gin-gonic/gin"
)

// 定制APK 与「下载页编辑」的转发层
//
// 这两块的后端**全部在引擎里**：定制配置（/config/custom.yml，非定制授权不落盘）、
// 定制基底与产物、下载页源码与渲染都归引擎。api 在这里只做两件事：
//  1. 把请求转给引擎（WS），把引擎的回包原样带回前端；
//  2. 把 multipart 上传的字节落到 /tmp 的中转文件 —— WS 不适合传几十 MB 的帧。
//
// 所以本文件里**没有业务判断**：授权判定、"是不是定制授权"、路径越界校验、
// 版本号规则全在引擎。加判断只会让两处规则分叉。

// maxCustomUploadBytes 是单个上传的大小上限。
// 与引擎侧的 dlMaxUploadBytes 一起把住；这里挡在更前面，省一次跨进程搬运。
const maxCustomUploadBytes = 48 << 20

// engineDL / engineCustom 是两组动作共用的转发。
// okType 是成功时的提示类型（前端 toast 的颜色）。
func engineRelay(action string, data any, okType string) dto.ReturnJsonDto {
	res, err := dao.WS.SendWS(dao.Request{Action: action, Data: data})
	if err != nil {
		return dto.ReturnJsonDto{Code: 0, Msg: "连接引擎失败", Type: "danger"}
	}
	if res.Code == 1 {
		return dto.ReturnJsonDto{Code: 1, Msg: res.Msg, Type: okType, Data: res.Data}
	}
	// 引擎的拒绝都是"业务原因"（不是定制授权 / 路径越界 / 参数不合法），
	// 用 danger 报出去，前端可以直接把 Msg 显示给用户。
	return dto.ReturnJsonDto{Code: int(res.Code), Msg: res.Msg, Type: "danger", Data: res.Data}
}

// saveTempUpload 把 multipart 文件落到 /tmp 下的中转文件，返回它的绝对路径。
// 引擎只接受 /tmp/ 开头的路径（见 DlUpload / UploadCustomBase 的校验），
// 所以这里必须落在 /tmp —— 容器里 TMPDIR 未设置，os.TempDir() 就是 /tmp。
// 后缀保留原扩展名：引擎按 .apk 判"是不是 APK 文件"。
func saveTempUpload(c *gin.Context, field string) (string, error) {
	fh, err := c.FormFile(field)
	if err != nil {
		return "", err
	}
	f, err := os.CreateTemp("", "iptv-up-*"+filepath.Ext(fh.Filename))
	if err != nil {
		return "", err
	}
	name := f.Name()
	f.Close()
	if err := c.SaveUploadedFile(fh, name); err != nil {
		os.Remove(name)
		return "", err
	}
	return name, nil
}

// ---------------------------------------------------------------- 定制APK

// CustomApkInfo 取定制 tab 的数据（转发引擎的 customApkData）。
func CustomApkInfo() dto.ReturnJsonDto {
	return engineRelay("customApkData", nil, "success")
}

// SetCustomAppInfo 编译一版定制 APK —— 引擎校验通过后才异步编译。
func SetCustomAppInfo(req dto.CustomApkBuildReq) dto.ReturnJsonDto {
	return engineRelay("buildCustomApk", req, "success")
}

// GetCustomBuildStatus 轮询定制 APK 的编译进度。
// Data 形状与 customApkData 一致（引擎同一份 CustomApkInfo），前端一个 apply 复用。
func GetCustomBuildStatus() dto.ReturnJsonDto {
	return engineRelay("getCustomBuildStatus", nil, "info")
}

// PublishCustomAPK 把待发布包提升为线上版本。
func PublishCustomAPK() dto.ReturnJsonDto {
	return engineRelay("publishCustomApk", nil, "success")
}

// UploadCustomBaseApk 上传定制编译基底 APK（multipart，字段名 apkfile）。
// 与 mytv 那条的分工不同：这里**不做包名检查**（定制包本身就是改过包名的），
// 校验与记账全在引擎（版本号仍必须能提取出来）。
func UploadCustomBaseApk(c *gin.Context) dto.ReturnJsonDto {
	fh, err := c.FormFile("apkfile")
	if err != nil {
		return dto.ReturnJsonDto{Code: 0, Msg: "获取文件失败:" + err.Error(), Type: "danger"}
	}
	if !until.IsMytvApkName(fh.Filename) {
		return dto.ReturnJsonDto{Code: 0, Msg: "只允许上传 APK 文件", Type: "danger"}
	}
	if fh.Size > maxCustomUploadBytes {
		return dto.ReturnJsonDto{Code: 0, Msg: "APK 超过 48 MB", Type: "danger"}
	}

	tmp, err := saveTempUpload(c, "apkfile")
	if err != nil {
		return dto.ReturnJsonDto{Code: 0, Msg: "保存文件失败:" + err.Error(), Type: "danger"}
	}

	res := engineRelay("uploadCustomBase", dto.CustomBaseUploadReq{Tmp: tmp, Remove: true}, "success")
	if res.Code != 1 {
		// 引擎拒收时它没机会删中转文件（未走到 Remove 分支），api 负责收拾。
		os.Remove(tmp)
	}
	return res
}

// ---------------------------------------------------------------- 下载页编辑

// DlStatus 下载页编辑页的初始状态（开关、是否生效、三个占位符当前值）。
func DlStatus() dto.ReturnJsonDto {
	return engineRelay("dlStatus", nil, "success")
}

// DlList 列目录。
func DlList(req dto.DlPathReq) dto.ReturnJsonDto {
	return engineRelay("dlList", req, "success")
}

// DlRead 读文件内容。
func DlRead(req dto.DlPathReq) dto.ReturnJsonDto {
	return engineRelay("dlRead", req, "success")
}

// DlWrite 保存文件内容。
func DlWrite(req dto.DlWriteReq) dto.ReturnJsonDto {
	return engineRelay("dlWrite", req, "success")
}

// DlRename 改名。
func DlRename(req dto.DlRenameReq) dto.ReturnJsonDto {
	return engineRelay("dlRename", req, "success")
}

// DlDelete 删除文件或目录。
func DlDelete(req dto.DlPathReq) dto.ReturnJsonDto {
	return engineRelay("dlDelete", req, "success")
}

// DlMkdir 新建目录。
func DlMkdir(req dto.DlPathReq) dto.ReturnJsonDto {
	return engineRelay("dlMkdir", req, "success")
}

// DlToggle 打开/关闭自定义下载页。
func DlToggle(req dto.DlToggleReq) dto.ReturnJsonDto {
	return engineRelay("dlToggle", req, "success")
}

// DlSetButtons 保存「默认下载页」四个按钮的显隐。
func DlSetButtons(req dto.DlButtonsReq) dto.ReturnJsonDto {
	return engineRelay("dlSetButtons", req, "success")
}

// DlUpload 上传下载页文件（multipart，字段名 file；相对路径在表单字段 path 里）。
func DlUpload(c *gin.Context) dto.ReturnJsonDto {
	fh, err := c.FormFile("file")
	if err != nil {
		return dto.ReturnJsonDto{Code: 0, Msg: "获取文件失败:" + err.Error(), Type: "danger"}
	}
	if fh.Size > maxCustomUploadBytes {
		return dto.ReturnJsonDto{Code: 0, Msg: "文件超过 48 MB", Type: "danger"}
	}

	tmp, err := saveTempUpload(c, "file")
	if err != nil {
		return dto.ReturnJsonDto{Code: 0, Msg: "保存文件失败:" + err.Error(), Type: "danger"}
	}

	req := dto.DlUploadReq{Tmp: tmp, Path: c.PostForm("path"), Remove: true}
	res := engineRelay("dlUpload", req, "success")
	if res.Code != 1 {
		os.Remove(tmp)
	}
	return res
}
