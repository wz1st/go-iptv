package api

import (
	"iptv-api/dao"
	"iptv-api/dto"
	"iptv-api/service"
	"iptv-api/until"

	"github.com/gin-gonic/gin"
)

// 定制授权专属的两个页面：客户端设置里的「定制APK」标签页，系统分组里的「下载页编辑」。
// 两边的后端都在引擎里，这里只是转发（见 service/adminCustomService.go）。

// ClientCustomData 对应「定制APK」标签页的取数。
// 与 ClientMyTVData 同一套前置判断：未登录回改道、未授权回"需要先授权"。
func ClientCustomData(c *gin.Context) {
	if _, ok := until.GetAuthName(c); !ok {
		c.JSON(200, dto.NewAdminRedirectDto())
		return
	}
	if dao.Lic.Type == 0 {
		c.JSON(200, dto.ReturnJsonDto{Code: 5, Msg: "需要先授权", Type: "warning"})
		return
	}
	replyData(c, service.CustomApkInfo())
}

// ClientCustomSave 提交定制客户端参数并触发编译。
func ClientCustomSave(c *gin.Context) {
	var req dto.CustomApkBuildReq
	if !bindJSON(c, &req) {
		return
	}
	reply(c, service.SetCustomAppInfo(req))
}

// BuildCustomStatus 查询定制 APK 的编译进度。
func BuildCustomStatus(c *gin.Context) {
	reply(c, service.GetCustomBuildStatus())
}

// CustomPublishApk 把定制待发布包提升为线上版本。
func CustomPublishApk(c *gin.Context) {
	reply(c, service.PublishCustomAPK())
}

// CustomUploadBaseApk 上传定制编译基底 APK（multipart，字段名 apkfile）。
func CustomUploadBaseApk(c *gin.Context) {
	reply(c, service.UploadCustomBaseApk(c))
}

// DlStatusData 对应「下载页编辑」页的取数：开关、是否生效、三个占位符当前值。
func DlStatusData(c *gin.Context) {
	if _, ok := until.GetAuthName(c); !ok {
		c.JSON(200, dto.NewAdminRedirectDto())
		return
	}
	if dao.Lic.Type == 0 {
		c.JSON(200, dto.ReturnJsonDto{Code: 5, Msg: "需要先授权", Type: "warning"})
		return
	}
	replyData(c, service.DlStatus())
}

// DlListData 列目录。
func DlListData(c *gin.Context) {
	var req dto.DlPathReq
	if !bindJSON(c, &req) {
		return
	}
	reply(c, service.DlList(req))
}

// DlReadData 读文件内容。
func DlReadData(c *gin.Context) {
	var req dto.DlPathReq
	if !bindJSON(c, &req) {
		return
	}
	reply(c, service.DlRead(req))
}

// DlWriteData 保存文件内容。
func DlWriteData(c *gin.Context) {
	var req dto.DlWriteReq
	if !bindJSON(c, &req) {
		return
	}
	reply(c, service.DlWrite(req))
}

// DlRenameData 改名。
func DlRenameData(c *gin.Context) {
	var req dto.DlRenameReq
	if !bindJSON(c, &req) {
		return
	}
	reply(c, service.DlRename(req))
}

// DlDeleteData 删除文件或目录。
func DlDeleteData(c *gin.Context) {
	var req dto.DlPathReq
	if !bindJSON(c, &req) {
		return
	}
	reply(c, service.DlDelete(req))
}

// DlMkdirData 新建目录。
func DlMkdirData(c *gin.Context) {
	var req dto.DlPathReq
	if !bindJSON(c, &req) {
		return
	}
	reply(c, service.DlMkdir(req))
}

// DlToggleData 打开/关闭自定义下载页。
func DlToggleData(c *gin.Context) {
	var req dto.DlToggleReq
	if !bindJSON(c, &req) {
		return
	}
	reply(c, service.DlToggle(req))
}

// DlSetButtonsData 保存「默认下载页」四个按钮（骆驼 / MyTV / 定制 / 进后台）的显隐。
func DlSetButtonsData(c *gin.Context) {
	var req dto.DlButtonsReq
	if !bindJSON(c, &req) {
		return
	}
	reply(c, service.DlSetButtons(req))
}

// DlUploadData 上传下载页文件（multipart，字段名 file；相对路径在表单字段 path）。
func DlUploadData(c *gin.Context) {
	reply(c, service.DlUpload(c))
}
