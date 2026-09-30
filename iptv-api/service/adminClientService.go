package service

import (
	"fmt"
	"iptv-api/bootstrap"
	"iptv-api/dao"
	"iptv-api/dto"
	"iptv-api/until"
	"net/http"
	"net/url"
	"os"
	"strings"
	"time"

	"github.com/gin-gonic/gin"
)

// 签名与「更新内容」都已写死在服务端（until.FixedAppSign / until.FixedUpdateText），
// 请求体里带了也不采信 —— 否则等于「能调一次接口就能改签名」。

func UploadFile(c *gin.Context, imgType string) dto.ReturnJsonDto {
	if imgType == "icon" {
		file, err := c.FormFile("iconfile")
		if err != nil {
			return dto.ReturnJsonDto{Code: 0, Msg: "获取文件失败:" + err.Error(), Type: "danger"}
		}

		f, err := file.Open()
		if err != nil {
			return dto.ReturnJsonDto{Code: 0, Msg: "打开文件失败:" + err.Error(), Type: "danger"}
		}
		defer f.Close()

		// 读取前 512 字节判断 MIME 类型
		buf := make([]byte, 512)
		n, _ := f.Read(buf)
		contentType := http.DetectContentType(buf[:n])

		if contentType != "image/png" {
			return dto.ReturnJsonDto{Code: 0, Msg: "只允许上传 PNG 文件", Type: "danger"}
		}

		dst := "/config/images/icon/icon.png"
		if err := c.SaveUploadedFile(file, dst); err != nil {
			return dto.ReturnJsonDto{Code: 0, Msg: "保存文件失败:" + err.Error(), Type: "danger"}
		}
		return dto.ReturnJsonDto{Code: 1, Msg: "上传成功", Type: "success", Data: map[string]interface{}{"url": "/icon/icon.png"}}
	} else {
		file, err := c.FormFile("bjfile")
		if err != nil {
			return dto.ReturnJsonDto{Code: 0, Msg: "获取文件失败:" + err.Error(), Type: "danger"}
		}

		f, err := file.Open()
		if err != nil {
			return dto.ReturnJsonDto{Code: 0, Msg: "打开文件失败:" + err.Error(), Type: "danger"}
		}
		defer f.Close()

		// 读取前 512 字节判断 MIME 类型
		buf := make([]byte, 512)
		n, _ := f.Read(buf)
		contentType := http.DetectContentType(buf[:n])

		if contentType != "image/png" {
			return dto.ReturnJsonDto{Code: 0, Msg: "只允许上传 PNG 文件", Type: "danger"}
		}

		pngName := until.Md5(url.QueryEscape(fmt.Sprintf("%s%d", file.Filename, time.Now().Unix())))

		dst := "/config/images/bj/" + pngName + ".png"
		if err := c.SaveUploadedFile(file, dst); err != nil {
			return dto.ReturnJsonDto{Code: 0, Msg: "保存文件失败:" + err.Error(), Type: "danger"}
		}
		return dto.ReturnJsonDto{Code: 1, Msg: "上传成功", Type: "success", Data: map[string]interface{}{"name": pngName}}
	}
}

func DeleteFile(req dto.ClientDeleteBjReq, imgType string) dto.ReturnJsonDto {
	// iconFile := params.Get("iconfile")
	if imgType == "icon" {
		iconFile := "/config/images/icon/icon.png"
		if err := os.Remove(iconFile); err != nil {
			return dto.ReturnJsonDto{Code: 0, Msg: "删除失败:" + err.Error(), Type: "danger"}
		}
		return dto.ReturnJsonDto{Code: 1, Msg: "删除成功", Type: "success"}
	}
	bjName := req.Name
	if !until.IsSafeImgName(bjName) {
		return dto.ReturnJsonDto{Code: 0, Msg: "文件名不合法", Type: "danger"}
	}
	bjFile := "/config/images/bj/" + bjName + ".png"
	if err := os.Remove(bjFile); err != nil {
		return dto.ReturnJsonDto{Code: 0, Msg: "删除失败", Type: "danger"}
	}
	return dto.ReturnJsonDto{Code: 1, Msg: "删除成功", Type: "success"}
}

func DecoderSelect(req dto.ClientDecoderReq) dto.ReturnJsonDto {
	if req.Decoder != 0 && req.Decoder != 1 && req.Decoder != 2 {
		return dto.ReturnJsonDto{Code: 0, Msg: "解码器选择失败", Type: "danger"}
	}
	cfg := dao.GetConfig()
	cfg.App.Decoder = req.Decoder
	dao.SetConfig(cfg)
	return dto.ReturnJsonDto{Code: 1, Msg: "解码器选择成功", Type: "success"}
}

func SetBuffTimeOut(req dto.ClientBuffTimeoutReq) dto.ReturnJsonDto {
	// 只接受这几个档位：数值越大缓冲越久、起播越慢，不适合任意填。
	switch req.BuffTimeout {
	case 5, 10, 15, 20, 25, 30:
	default:
		return dto.ReturnJsonDto{Code: 0, Msg: "参数错误", Type: "danger"}
	}
	cfg := dao.GetConfig()
	cfg.App.BuffTimeout = req.BuffTimeout
	dao.SetConfig(cfg)
	return dto.ReturnJsonDto{Code: 1, Msg: "超时设置成功", Type: "success"}
}

func SetNeedAuthor(req dto.ClientNeedAuthorReq) dto.ReturnJsonDto {
	if req.NeedAuthor != 0 && req.NeedAuthor != 1 {
		return dto.ReturnJsonDto{Code: 0, Msg: "参数错误", Type: "danger"}
	}
	cfg := dao.GetConfig()
	cfg.App.NeedAuthor = req.NeedAuthor
	dao.SetConfig(cfg)
	return dto.ReturnJsonDto{Code: 1, Msg: "授权设置成功", Type: "success"}
}

// SetAppInfo 编译一个新版本 —— 注意它**只产出待发布包**，不动线上任何东西。
func SetAppInfo(req dto.ClientAppInfoReq) dto.ReturnJsonDto {

	if bootstrap.GetBuildStatus() == 1 {
		return dto.ReturnJsonDto{Code: 0, Msg: "正在打包中，请稍后再试", Type: "danger"}
	}
	appServerUrl := req.ServerUrl
	appName := req.AppName
	appVersion := req.Version

	if appName == "" || appVersion == "" || appServerUrl == "" {
		return dto.ReturnJsonDto{Code: 0, Msg: "参数错误", Type: "danger"}
	}

	cfg := dao.GetConfig()
	if cfg.Build.Version == appVersion {
		return dto.ReturnJsonDto{Code: 0, Msg: "版本号不能相同", Type: "danger"}
	}

	cfg.Build.Name = appName
	// 待发布版本号：编译用它，点「发布」时它才变成 Build.Version
	cfg.Build.NewVersion = appVersion

	if cfg.ServerUrl != appServerUrl {
		cfg.ServerUrl = appServerUrl
	}

	if req.UpSet {
		cfg.App.Update.Set = 1
	} else {
		cfg.App.Update.Set = 0
	}
	dao.SetConfig(cfg)

	go bootstrap.BuildAPK(true) // 出待发布包，线上文件不动
	return dto.ReturnJsonDto{Code: 1, Msg: "APK编译中...", Type: "success"}
}

func SetTipSet(req dto.ClientTipSetReq) dto.ReturnJsonDto {
	cfg := dao.GetConfig()

	cfg.Tips.Loading = req.Loading
	cfg.Tips.UserExpired = req.UserExpired
	cfg.Tips.UserForbidden = req.UserForbidden
	cfg.Tips.UserNoReg = req.UserNoReg

	dao.SetConfig(cfg)
	return dto.ReturnJsonDto{Code: 1, Msg: "设置成功", Type: "success"}
}

// AdInfo 是后台配置的「广告内容」（config.yml 的 site.ad），没配过时给固定默认文案。
// 这个值存在引擎侧的 Site.Ad 里 —— 引擎对非定制授权会在配置装载时把它重置回默认，
// 所以那份配置天然只在定制授权下有"自定义"的含义。
func AdInfo() string {
	if cfg := dao.GetConfig(); cfg != nil {
		if ad := strings.TrimSpace(cfg.Site.Ad); ad != "" {
			return ad
		}
	}
	return until.FixedAdInfo
}

// ApkAdInfo 是**下发给客户端**的广告内容（登录响应里的 qqinfo）。
// 只有（仍然有效的）定制授权才用后台配置的自定义值：授权失效时引擎会把
// License.Type 清成 0，这里随即回落到固定默认文案 —— 即"授权到期立即取消"。
func ApkAdInfo() string {
	if !dao.IsCustomLic() {
		return until.FixedAdInfo
	}
	return AdInfo()
}

// SetAdInfo 保存客户端退出弹窗里的「广告内容」。
// 仅定制授权可改：非定制授权下这段文案本就该是作者博客，
// 而且授权一旦失效（Type 清成 0）后台也就改不动了。
func SetAdInfo(req dto.ClientAdInfoReq) dto.ReturnJsonDto {
	if !dao.IsCustomLic() {
		return dto.ReturnJsonDto{Code: 0, Msg: "该功能仅在定制授权下可用", Type: "danger"}
	}

	cfg := dao.GetConfig()
	// 留空 = 不清空配置，而是让两端都回落到默认文案（AdInfo 的兜底）。
	cfg.Site.Ad = strings.TrimSpace(req.AdInfo)
	dao.SetConfig(cfg)

	return dto.ReturnJsonDto{Code: 1, Msg: "保存成功", Type: "success"}
}

// GetBuildStatus 返回编译进度，并把两张卡片要的数据一次给全。
func GetBuildStatus() dto.ReturnJsonDto {
	cfg := dao.GetConfig()
	data := clientApkInfo(cfg)

	if bootstrap.GetBuildStatus() == 1 {
		return dto.ReturnJsonDto{Code: 0, Msg: "APK编译中...", Type: "info", Data: data}
	}
	return dto.ReturnJsonDto{Code: 1, Msg: "APK编译完成", Type: "success", Data: data}
}

// clientApkInfo 汇总「线上包」与「待发布包」两组信息，供取数与轮询共用。
func clientApkInfo(cfg *dto.Config) map[string]interface{} {
	official := bootstrap.OfficialAPKPath(cfg.Build.Name)
	staged := bootstrap.StagedAPKPath(cfg.Build.Name)

	return map[string]interface{}{
		"status":     bootstrap.GetBuildStatus(),
		"version":    cfg.Build.Version,
		"size":       until.GetFileSize(official),
		"md5":        until.Md5File(official),
		"url":        "/app/" + cfg.Build.Name + ".apk",
		"name":       bootstrap.APKDownloadName(cfg.Build.Name, cfg.Build.Version),
		"newVersion": cfg.Build.NewVersion,
		"newSize":    until.GetFileSize(staged),
		"newMd5":     until.Md5File(staged),
		"newExists":  until.Exists(staged),
		// newName 必须发：前端的「新版本」下载链接用它当 :download，
		// 轮询时也要靠它把名字刷回来（只发 newUrl 的话名字会一直停在初值）。
		"newName": bootstrap.APKDownloadName(cfg.Build.Name, cfg.Build.NewVersion),
		"newUrl":  "/app/" + cfg.Build.Name + "-new.apk",
	}
}

// PublishAPK 把「待发布」的包提升成线上版本。
func PublishAPK() dto.ReturnJsonDto {
	if bootstrap.GetBuildStatus() == 1 {
		return dto.ReturnJsonDto{Code: 0, Msg: "正在打包中，请稍后再试", Type: "danger"}
	}

	cfg := dao.GetConfig()
	if cfg.Build.NewVersion == "" {
		return dto.ReturnJsonDto{Code: 0, Msg: "没有待发布的版本，请先编译", Type: "danger"}
	}

	staged := bootstrap.StagedAPKPath(cfg.Build.Name)
	if !until.Exists(staged) {
		return dto.ReturnJsonDto{Code: 0, Msg: "待发布的安装包不存在，请重新编译", Type: "danger"}
	}

	official := bootstrap.OfficialAPKPath(cfg.Build.Name)
	if err := os.Rename(staged, official); err != nil {
		return dto.ReturnJsonDto{Code: 0, Msg: "发布失败:" + err.Error(), Type: "danger"}
	}

	published := cfg.Build.NewVersion
	cfg.Build.Version = published
	cfg.Build.NewVersion = ""
	dao.SetConfig(cfg)

	return dto.ReturnJsonDto{Code: 1, Msg: "发布成功", Type: "success", Data: map[string]interface{}{
		"version": published,
		"size":    until.GetFileSize(official),
		"md5":     until.Md5File(official),
	}}
}
