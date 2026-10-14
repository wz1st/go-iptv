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
	official := until.ClientApkPath(cfg.Build.Name, false)
	staged := until.ClientApkPath(cfg.Build.Name, true)

	pageData := dto.AdminClientDto{
		Title:       "客户端设置",
		ServerUrl:   cfg.ServerUrl,
		Build:       cfg.Build,
		App:         cfg.App,
		Tips:        cfg.Tips,
		ApkUrl:      until.ClientApkURL(cfg.Build.Name, false),
		ApkName:     until.ClientApkSaveName(cfg.Build.Name, until.ShellQh, cfg.Build.Version),
		UpSize:      until.GetFileSize(official),
		ApkMd5:      until.Md5File(official),
		NewVersion:  cfg.Build.NewVersion,
		NewSize:     until.GetFileSize(staged),
		NewMd5:      until.Md5File(staged),
		NewApkUrl:   until.ClientApkURL(cfg.Build.Name, true),
		NewApkName:  until.ClientApkSaveName(cfg.Build.Name, until.ShellQh, cfg.Build.NewVersion),
		NewExists:   until.Exists(staged),
		BuildStatus: bootstrap.GetBuildStatus(),
	}

	// 图标 / 背景都按**清和壳**自己的那一套取（目录与 URL 前缀同源，
	// 见 until.ClientIconDir / ClientIconURLPrefix）。
	if until.Exists(until.ClientIconFile(until.ShellQh)) {
		pageData.IconUrl = until.ClientIconURLPrefix(until.ShellQh) + "icon.png"
	}
	pageData.BjUrl, _ = until.GetPngFileNames(until.ClientBgDir(until.ShellQh))

	c.JSON(200, pageData)
}

// LuotuoData 对应「骆驼壳」客户端设置页：站点地址 / 应用设置 / 提示与 清和壳 共用，
// 编译卡片走骆驼壳自己的基底与版本（见 until.ClientLt*）；
// **图标与背景是分开的两套** —— 骆驼壳有自己的目录与 URL 前缀（/lt/icon、/lt/images），
// 与清和壳互不影响，否则在一边上传的图会同时进到两个壳的包里。
func LuotuoData(c *gin.Context) {
	_, ok := until.GetAuthName(c)
	if !ok {
		c.JSON(200, dto.NewAdminRedirectDto())
		return
	}
	cfg := dao.GetConfig()

	official := until.ClientLtApkPath(cfg.BuildLt.Name, false)
	staged := until.ClientLtApkPath(cfg.BuildLt.Name, true)

	pageData := dto.AdminClientDto{
		Title: "骆驼壳客户端设置",
		// 骆驼壳自己的那份地址（server_url_lt）；空值回退与编译侧共用
		// until.LuotuoServerURL —— 两边各判一次就会出现「页面显示 A、
		// 编译用 B」。
		ServerUrl:   until.LuotuoServerURL(cfg),
		Build:       cfg.BuildLt,
		App:         cfg.App,
		Tips:        cfg.Tips,
		ApkUrl:      until.ClientLtApkURL(cfg.BuildLt.Name, false),
		ApkName:     until.ClientApkSaveName(cfg.BuildLt.Name, until.ShellLt, cfg.BuildLt.Version),
		UpSize:      until.GetFileSize(official),
		ApkMd5:      until.Md5File(official),
		NewVersion:  cfg.BuildLt.NewVersion,
		NewSize:     until.GetFileSize(staged),
		NewMd5:      until.Md5File(staged),
		NewApkUrl:   until.ClientLtApkURL(cfg.BuildLt.Name, true),
		NewApkName:  until.ClientApkSaveName(cfg.BuildLt.Name, until.ShellLt, cfg.BuildLt.NewVersion),
		NewExists:   until.Exists(staged),
		BuildStatus: bootstrap.GetBuildStatusLt(),
	}

	if until.Exists(until.ClientIconFile(until.ShellLt)) {
		pageData.IconUrl = until.ClientIconURLPrefix(until.ShellLt) + "icon.png"
	}
	pageData.BjUrl, _ = until.GetPngFileNames(until.ClientBgDir(until.ShellLt))

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

// UpdataData 对应 html.Updata —— 管理系统与引擎各自的当前版本号。
// 引擎未安装/未就绪时 engine 为空串，前端显示 "-"。
func UpdataData(c *gin.Context) {
	_, ok := until.GetAuthName(c)
	if !ok {
		c.JSON(200, dto.NewAdminRedirectDto())
		return
	}
	c.JSON(200, gin.H{
		"title":   "在线升级",
		"version": until.GetVersion(),
		"engine":  until.EngineVersion(),
	})
}
