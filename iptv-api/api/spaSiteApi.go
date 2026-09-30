package api

import (
	"errors"
	"io"
	"iptv-api/bootstrap"
	"iptv-api/crontab"
	"iptv-api/dao"
	"iptv-api/dto"
	"iptv-api/models"
	"iptv-api/until"
	"os"
	"strings"

	"github.com/gin-gonic/gin"
)

// 前台站点（下载页 / 安装向导）的 JSON 数据端点 —— **站点组**。

// SiteName 是站点显示名。站点组与前端兜底文案共用这一个来源
const SiteName = "清和IPTV管理系统"

// SiteBootData 对应 GET /api/site/boot —— SPA 的启动引导。
func SiteBootData(c *gin.Context) {
	c.JSON(200, gin.H{
		"site_name": SiteName,
		"version":   "清和IPTV " + until.GetVersion(),
		"is_lic":    isLicensed(),
		// lic_logged：**授权账号**是否已登录（= dao.Lic.Status == 1）。
		"lic_logged": licLogged(),
		"author":     cfgAuthor(),
		"installed":  bootstrap.IsInstalled(),
		// lic_type：授权等级。4 = 定制授权 —— 前端据此决定是否显示
		// 「下载页编辑」与「定制APK」这两个入口（见 utils/site.js 的 isCustom）。
		"lic_type": dao.GetLic().Type,
	})
}

// SiteVersionData 对应 GET /api/site/version —— 只回一个版本号字符串。
func SiteVersionData(c *gin.Context) {
	c.String(200, until.GetVersion())
}

// SiteChangeLogData 对应 GET /api/site/changelog（旧路径 /ChangeLog.md）。
func SiteChangeLogData(c *gin.Context) {
	if WantsHTML(c) {
		c.Redirect(302, "/install-log")
		return
	}
	data, err := os.ReadFile("/app/ChangeLog.md")
	if err != nil {
		c.String(404, "ChangeLog.md 不存在")
		return
	}
	c.Data(200, "text/plain; charset=utf-8", data)
}

// SiteIndexData 对应路由 GET /api/site/index —— 是否展示下载按钮与文件信息。
func SiteIndexData(c *gin.Context) {
	var pageData dto.IndexDto

	if !bootstrap.IsInstalled() {
		c.JSON(200, gin.H{
			"installed": false,
			"site_name": SiteName,
		})
		return
	}

	cfg := dao.GetConfig()

	// 默认下载页四个按钮的开关（配在 /config/custom.yml，定制授权专属）。
	// 非定制授权读不到那份文件 ⇒ 四个开关都是 true，行为与改造前一致。
	// 这里的"显示"是**开关 && APK 已编译**：文件不存在时按钮点了也是 404，
	// 所以开关只负责"关"，不负责"无中生有"。
	swCamel, swMytv, swCustom, swAdmin, customApkName := dao.CustomDlSwitches()
	pageData.ShowAdmin = swAdmin

	if swCamel && until.GetFileSize("/config/app/"+cfg.Build.Name+".apk") != "0 MB" {
		pageData.ShowDown = true
		pageData.ApkName = cfg.Build.Name + "-" + cfg.Build.Version + ".apk"
		pageData.ApkUrl = "/app/" + cfg.Build.Name + ".apk"
	}

	if swMytv && until.GetFileSize("/config/app/"+cfg.Site.MytvNameOr()+"-mytv.apk") != "0 MB" {
		pageData.ShowDownMyTV = true
		// 文件名带真实版本「底包版本.编译号」—— 改造前硬编码 "1.2.0."，
		// 底包升到 1.2.2 后下载文件名与包内版本就对不上了。
		pageData.MyTVName = cfg.Site.MytvNameOr() + "-" +
			until.FormatMytvVersion(until.GetMytvVersion(), cfg.MyTV.Version) + ".apk"
		pageData.MyTVUrl = "/app/" + cfg.Site.MytvNameOr() + "-mytv.apk"
	}

	// 定制客户端：只在定制授权（Type == 4）下才可能出现产物。名字与产物的取名规则
	// 与引擎逐字对齐（见 dao.CustomDlSwitches 的兜底），产物文件名不带版本号
	// （见引擎 customApkService.go 的 customApkOfficialSuffix）。
	if dao.IsCustomLic() {
		if swCustom && until.GetFileSize("/config/app/"+customApkName+"-custom.apk") != "0 MB" {
			pageData.ShowDownCustom = true
			pageData.CustomName = customApkName + "-custom.apk"
			pageData.CustomUrl = "/app/" + customApkName + "-custom.apk"
		}
	}

	c.JSON(200, gin.H{
		"installed":        true,
		"site_name":        SiteName,
		"show_down":        pageData.ShowDown,
		"apk_name":         pageData.ApkName,
		"apk_url":          pageData.ApkUrl,
		"show_down_mytv":   pageData.ShowDownMyTV,
		"mytv_name":        pageData.MyTVName,
		"mytv_url":         pageData.MyTVUrl,
		"show_down_custom": pageData.ShowDownCustom,
		"custom_name":      pageData.CustomName,
		"custom_url":       pageData.CustomUrl,
		"show_admin":       pageData.ShowAdmin,
	})
}

// InstallStateData 对应路由 GET /api/install/state —— 返回当前处于哪一步。
func InstallStateData(c *gin.Context) {
	if bootstrap.IsInstalled() {
		c.JSON(200, gin.H{"state": "done", "installed": true})
		return
	}
	c.JSON(200, gin.H{
		"state":     "form",
		"installed": false,
		"readme":    readDocFile("/app/README.md"),
		"changelog": readDocFile("/app/ChangeLog.md"),
	})
}

// readDocFile 读取文档类文件；不存在时返回空串而不是报错 ——
// 文档缺失不该让安装流程走不下去（前台会退化成「暂无内容」）。
func readDocFile(path string) string {
	data, err := os.ReadFile(path)
	if err != nil {
		return ""
	}
	return string(data)
}

// 初始化安装的默认管理员账号 —— 用户名与密码都是 test。
const (
	defaultInstallUser = "test"
	defaultInstallPass = "test"
)

// installReq 是安装提交的请求体。
type installReq struct {
	Username  string `json:"username" form:"username"`
	Password  string `json:"password" form:"password"`
	Password2 string `json:"password2" form:"password2"`
	ApkApi    string `json:"apkapi" form:"apkapi"`
}

// InstallData 对应路由 POST /api/install/setup（旧路径 POST /install）。
func InstallData(c *gin.Context) {
	var body installReq
	// 空请求体（io.EOF）不算格式错误：后面会用更准确的中文提示报缺哪个字段。
	if err := c.ShouldBind(&body); err != nil && !errors.Is(err, io.EOF) {
		c.JSON(200, gin.H{"code": 0, "msg": "请求参数格式错误", "type": "danger"})
		return
	}

	username := strings.TrimSpace(body.Username)
	password := body.Password
	password2 := body.Password2
	apkApi := strings.TrimSpace(body.ApkApi)

	if apkApi == "" {
		c.JSON(200, gin.H{"code": 0, "msg": "APK接口错误", "type": "danger"})
		return
	}

	// 初始化安装的默认账号：用户名与密码都留空时用 test / test。
	if username == "" && password == "" && password2 == "" {
		username, password, password2 = defaultInstallUser, defaultInstallPass, defaultInstallPass
	}

	if username == "" || password == "" || password2 == "" {
		c.JSON(200, gin.H{"code": 0, "msg": "用户名或密码不能为空", "type": "danger"})
		return
	}
	if password != password2 {
		c.JSON(200, gin.H{"code": 0, "msg": "两次密码不一致", "type": "danger"})
		return
	}

	password = until.HashPassword(password)

	if bootstrap.IsInstalled() {
		c.JSON(200, gin.H{"code": 0, "msg": "已安装，请勿重复安装", "type": "danger"})
		return
	}

	status, msg := bootstrap.Install()
	if !status {
		c.JSON(200, gin.H{"code": 0, "msg": msg, "type": "danger"})
		return
	}

	dao.DB.Model(&models.IptvAdmin{}).Create(&models.IptvAdmin{
		Username:     username,
		PasswordHash: password,
	})
	cfg := dao.GetConfig()
	cfg.ServerUrl = strings.TrimSuffix(apkApi, "/")
	dao.SetConfig(cfg)
	// 先重置停止信号：安装前若已跑过 Crontab（例如上一轮安装被清库重装），
	// 直接 make 新通道会让旧循环永远等不到停止信号。
	crontab.ResetCrontab()
	if os.Getenv("NOBUILD") != "true" {
		// 安装流程必然还没有线上包，这里出的是线上 apk（staged=false）
		go bootstrap.BuildAPK(false)
	}
	go crontab.Crontab()
	go crontab.EpgCron()
	go until.InitCacheRebuild()
	bootstrap.SetInstalled(true)

	// 安装完成必须**补一次引擎连接**：api 启动时若处于未安装态，
	if os.Getenv("NOLICENSE") != "true" {
		go bootstrap.InitEngine()
	}

	c.JSON(200, gin.H{
		"code": 1,
		"msg":  "安装成功,正在编译APK,请稍后访问" + cfg.ServerUrl + "查看...",
		"type": "success",
	})
}

// 配置读取的安全包装

func cfgAuthor() int64 {
	if cfg := dao.GetConfig(); cfg != nil {
		return cfg.App.NeedAuthor
	}
	return 0
}

// isLicensed 判断是否处于「已永久授权 / 未过期」状态。
func isLicensed() bool {
	return dao.LicStillValid()
}

// licLogged 报告**授权账号**是否处于登录态（dao.Lic.Status == 1）。
func licLogged() bool {
	return dao.GetLic().Status == 1
}
