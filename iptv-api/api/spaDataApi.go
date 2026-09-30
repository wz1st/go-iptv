package api

import (
	"encoding/json"
	"iptv-api/bootstrap"
	"iptv-api/dao"
	"iptv-api/dto"
	"iptv-api/service"
	"iptv-api/until"
	"os"
	"regexp"
	"time"

	"github.com/gin-gonic/gin"
)

// SPA 专用的 JSON 数据端点。

// unmarshalOr 忽略解析错误 —— 原 handler 只打日志、继续往下走，这里保持一致
func unmarshalOr(data []byte, v interface{}) {
	_ = json.Unmarshal(data, v)
}

// EngineData 对应 html.Engine —— 授权信息 + 引擎状态 + 功能开关初值。
func EngineData(c *gin.Context) {
	_, ok := until.GetAuthName(c)
	if !ok {
		c.JSON(200, dto.NewAdminRedirectDto())
		return
	}

	var pageData = dto.AdminEngineDto{
		Title: "进阶功能",
	}

	// 授权失效的兜底关停：心跳（dao/engineDao.go 的 syncEngineLicense）
	service.EnforceLicenseGate()

	if dao.WS.IsOnline() {
		pageData.Online = 1

		// reloadLic 会让引擎去**远端**（autu.qingh.xyz）重新校验授权，
		if !dao.LicStillValid() || dao.ReloadLicDue() {
			res, err := dao.WS.SendWS(dao.Request{Action: "reloadLic"})
			if err == nil {
				// 解到局部变量再 SetLic，不要 &dao.Lic 直接 Unmarshal：
				var fresh dto.Lic
				if err := json.Unmarshal(res.Data, &fresh); err == nil {
					dao.SetLic(fresh)
				}
			}
		}
		verJson, err := dao.WS.SendWS(dao.Request{Action: "getVersion"})
		if err == nil {
			unmarshalOr(verJson.Data, &pageData.Version)
		}

		pageData.Lic = dao.GetLic()
		cfg := dao.GetConfig()
		pageData.Proxy = cfg.Proxy.Status

		pageData.AutoRes = cfg.Resolution.Auto
		pageData.DisCh = cfg.Resolution.DisCh
		pageData.EpgFuzz = cfg.Epg.Fuzz
		if pageData.Lic.Exp != 0 {
			pageData.Lic.ExpStr = time.Unix(pageData.Lic.Exp, 0).Format("2006-01-02 15:04:05")
		}
		pageData.ShortURL = cfg.System.ShortURL
	}

	if until.IsRunning() {
		pageData.Status = 1
	}

	// 功能开关**恒下发**，不看授权状态（2026-09-23 按反馈回退）。
	resp := gin.H{
		"loginUser": pageData.LoginUser,
		"title":     pageData.Title,
		"lic":       pageData.Lic,
		"status":    pageData.Status,
		"online":    pageData.Online,
		"version":   pageData.Version,
		"proxy":     pageData.Proxy,
		"autoRes":   pageData.AutoRes,
		"disCh":     pageData.DisCh,
		"epgFuzz":   pageData.EpgFuzz,
		"shortUrl":  pageData.ShortURL,
	}
	c.JSON(200, resp)
}

// ClientData 对应 html.Client —— 编译配置 + 应用默认设置 + 提示文案。
func ClientData(c *gin.Context) {
	_, ok := until.GetAuthName(c)
	if !ok {
		c.JSON(200, dto.NewAdminRedirectDto())
		return
	}
	cfg := dao.GetConfig()

	// 线上包 / 待发布包各四件：版本号、大小、MD5、下载地址。
	// 两张卡片都用这套字段渲染，编译状态由同一份数据（GetBuildStatus）在轮询里刷新。
	official := bootstrap.OfficialAPKPath(cfg.Build.Name)
	staged := bootstrap.StagedAPKPath(cfg.Build.Name)

	pageData := dto.AdminClientDto{
		Title:       "客户端设置",
		ServerUrl:   cfg.ServerUrl,
		Build:       cfg.Build,
		App:         cfg.App,
		Tips:        cfg.Tips,
		ApkUrl:      "/app/" + cfg.Build.Name + ".apk",
		ApkName:     bootstrap.APKDownloadName(cfg.Build.Name, cfg.Build.Version),
		UpSize:      until.GetFileSize(official),
		ApkMd5:      until.Md5File(official),
		NewVersion:  cfg.Build.NewVersion,
		NewSize:     until.GetFileSize(staged),
		NewMd5:      until.Md5File(staged),
		NewApkUrl:   "/app/" + cfg.Build.Name + "-new.apk",
		NewApkName:  bootstrap.APKDownloadName(cfg.Build.Name, cfg.Build.NewVersion),
		NewExists:   until.Exists(staged),
		BuildStatus: bootstrap.GetBuildStatus(),
	}

	if until.Exists("/config/images/icon/icon.png") {
		pageData.IconUrl = "/icon/icon.png"
	}
	pageData.BjUrl, _ = until.GetPngFileNames("/config/images/bj")
	// 广告内容：回后台配置过的值（没配过则是固定默认文案）。
	// 输入框本身只对定制授权显示，这里不做授权判断 —— 非定制授权下读到的
	// 也只会是引擎重置过的默认文案。
	pageData.AdInfo = service.AdInfo()

	c.JSON(200, pageData)
}

// ClientMyTVData 对应 html.ClientMyTV。
func ClientMyTVData(c *gin.Context) {
	_, ok := until.GetAuthName(c)
	if !ok {
		c.JSON(200, dto.NewAdminRedirectDto())
		return
	}

	if dao.Lic.Type == 0 {
		c.JSON(200, dto.ReturnJsonDto{Code: 5, Msg: "需要先授权", Type: "warning"})
		return
	}

	c.JSON(200, service.MytvApkInfo())
}

// AboutData 对应后台「升级日志」页：渲染 /app/ChangeLog.md 原文。
func AboutData(c *gin.Context) {
	_, ok := until.GetAuthName(c)
	if !ok {
		c.JSON(200, dto.NewAdminRedirectDto())
		return
	}

	data, _ := os.ReadFile("/app/ChangeLog.md")
	content := string(data)
	// 原文里写的是相对路径（./static/…、./ChangeLog.md），页面深度一变就 404，
	// 统一补前导 /。
	re := regexp.MustCompile(`\./static`)
	content = re.ReplaceAllString(content, "/static")
	re = regexp.MustCompile(`\./ChangeLog.md`)
	content = re.ReplaceAllString(content, "/ChangeLog.md")

	c.JSON(200, gin.H{
		"title":   "升级日志",
		"content": content,
	})
}

// UpdataData（在线升级页的取数口）随在线升级一并删除：定制分支没有这条链路。
