package service

import (
	"fmt"
	"iptv-api/bootstrap"
	"iptv-api/dao"
	"iptv-api/dto"
	"iptv-api/until"
	"log"
	"net/http"
	"net/url"
	"os"
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
	// 换基底后编译号归零，裸编译号会与旧基底撞号（1.1.1.001 与 1.2.0.001 的编译号都是 001），
	// 必须按「基底.编译号」完整串比对，否则后台会误报「版本号不能相同」挡住新基底首版编译。
	curFull := until.FormatClientVersion(until.ClientPublishedBase(), cfg.Build.Version)
	newFull := until.FormatClientVersion(until.GetClientBaseVersion(), appVersion)
	if curFull != "" && curFull == newFull {
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

// GetBuildStatus 返回编译进度，并把两张卡片要的数据一次给全。
func GetBuildStatus() dto.ReturnJsonDto {
	if bootstrap.GetBuildStatus() == 1 {
		return dto.ReturnJsonDto{Code: 0, Msg: "APK编译中...", Type: "info", Data: ClientApkInfo()}
	}
	return dto.ReturnJsonDto{Code: 1, Msg: "APK编译完成", Type: "success", Data: ClientApkInfo()}
}

// clientApkInfo 已并入 ClientApkInfo（adminClientBaseService.go）——
// 基底信息、线上/待发布两组卡片都在那里汇总，保留两份必然只改一边。

// PublishAPK 把「待发布」的包提升成线上版本。
func PublishAPK() dto.ReturnJsonDto {
	if bootstrap.GetBuildStatus() == 1 {
		return dto.ReturnJsonDto{Code: 0, Msg: "正在打包中，请稍后再试", Type: "danger"}
	}

	cfg := dao.GetConfig()
	if cfg.Build.NewVersion == "" {
		return dto.ReturnJsonDto{Code: 0, Msg: "没有待发布的版本，请先编译", Type: "danger"}
	}

	staged := until.ClientApkPath(cfg.Build.Name, true)
	if !until.Exists(staged) {
		return dto.ReturnJsonDto{Code: 0, Msg: "待发布的安装包不存在，请重新编译", Type: "danger"}
	}

	official := until.ClientApkPath(cfg.Build.Name, false)
	if err := os.Rename(staged, official); err != nil {
		return dto.ReturnJsonDto{Code: 0, Msg: "发布失败:" + err.Error(), Type: "danger"}
	}

	// 先把「这版用的是哪版基底」记下来，再推进版本号：顺序反了而中间失败，
	// 就会出现「版本号说 1.0.0.001、记录还写 1.0.0」的自相矛盾状态。
	pubBase := until.GetClientBaseVersion()
	if err := until.SetClientPublishedBase(pubBase); err != nil {
		log.Println("⚠️ 记录线上基底版本失败:", err)
	}

	published := cfg.Build.NewVersion
	cfg.Build.Version = published
	cfg.Build.NewVersion = ""
	dao.SetConfig(cfg)

	return dto.ReturnJsonDto{Code: 1, Msg: "发布成功", Type: "success", Data: map[string]interface{}{
		"version": until.FormatClientVersion(pubBase, published),
		"size":    until.GetFileSize(official),
		"md5":     until.Md5File(official),
	}}
}
