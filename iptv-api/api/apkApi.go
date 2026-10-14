package api

import (
	"encoding/json"
	"iptv-api/dao"
	"iptv-api/dto"
	"iptv-api/service"
	"iptv-api/until"
	"net/http"
	"strings"

	"github.com/gin-gonic/gin"
)

// apkLtSegment 是骆驼壳专用的路径段：骆驼壳编译时注入的基址是 `<站点>/apk/lt`，
// 于是它请求的是 `/apk/lt/login`、`/apk/lt/getver`…（见 bootstrap.clientApkHostLt）。
const apkLtSegment = "/apk/lt/"

// isLuotuoShell 判断这次请求来自**骆驼壳**还是清和壳。
//
// 判据两条，缺一不可：
//   - 路径里带 /apk/lt/ 段 —— 新编出来的骆驼壳包走这条（含 apiBase 前缀时同样命中）；
//   - `?shell=lt` —— 早期已经发出去的骆驼壳包只带这个参数，改不了。丢掉这条会让
//     存量设备直接失效（表现为登录乱码、升级检查拿错版本号）。
//
// 为什么要按"哪个壳"分流而不是一刀切：两个壳的**应用名与包名都不同**，
// 登录密钥是这两者的函数（until.AesKeyOf），共用一份密钥必然有一边解不开。
func isLuotuoShell(c *gin.Context) bool {
	if strings.Contains(c.Request.URL.Path, apkLtSegment) {
		return true
	}
	return c.Query("shell") == "lt"
}

func ApkLogin(c *gin.Context) {
	var user dto.ApkUser

	if err := c.ShouldBindJSON(&user); err != nil {
		c.AbortWithStatus(http.StatusForbidden)
		return
	}

	ip := c.ClientIP() //获取ip

	// 取不到 MAC 的设备，登录时把 mac 回落成 androidid 建了账号。
	// 两种非正常 mac 都要能回落：失败提示串（老客户端）与空串。
	if strings.Contains(user.Mac, "获取地址失败") || user.Mac == "" {
		user.Mac = user.DeviceID
	}

	dbUser := service.CheckUserDb(user, ip)

	// 下发地址（dataurl / appurl）按**本次请求的 scheme+host** 拼，拿不到才回落配置。
	//
	// 为什么不能只用配置里的 ServerUrl：站点一旦挂到 HTTPS（后台「SSL 证书」页开了 443），
	// 配置里那条 http 地址就会让客户端拿到 `http://…/app/xxx.apk`，
	// 而页面/客户端若是 https 上下文，这条明文地址会被浏览器按混合内容拦掉
	// （控制台原话：The file at 'http://…apk' was loaded over an insecure connection.
	// This file should be served over HTTPS）。
	// 走请求基址就自动同协议：https 进来发 https，http 进来还是 http。
	// 与 RSS 订阅地址、中转 purl 的基址口径完全一致（都走 until/clientBase）。
	// 两个壳共用这一个入口（`?shell=lt` 分流），所以要把shell 传下去 ——
	// service层要按它决定回落到哪份配置地址（server_url / server_url_lt）。
	// 少传这一个参数的后果：骆驼壳在「请求没带基址」时会拿到清和壳的地址。
	shell := until.ShellQh
	if isLuotuoShell(c) {
		shell = until.ShellLt
	}
	result := service.ApkLogin(dbUser, adminBase(c), shell)

	// 骆驼壳的「应用下载地址 / 版本」必须用它自己那一套（cfg.BuildLt.*）：
	// service.ApkLogin 里那两行按清和壳（cfg.Build.*）拼，直接下发会让骆驼壳
	// 拿到清和壳那个包。与 GetverLt 的口径必须一致 —— 否则同一个
	// 壳从 /login 与 /getver 拿到的"该下哪个包"是两个答案。
	//
	// 现状说明（2026-10-13 实测）：本壳把这两个字段**只写不读**
	// （client/smali 的 SplashActivity->j/->b 只有 sput，没有 sget），
	// 升级实际走 /apk/lt/getver（g$3.smali 写 g->g/g->f），那条是对的 ——
	// 所以这是"今天无害、但契约错"的值，仍然修掉，免得壳子哪天读起来就装错包。
	if isLuotuoShell(c) {
		cfg := dao.GetConfig()
		result.AppVer = cfg.BuildLt.Version
		result.AppURL = adminBase(c) + until.ClientLtApkURL(cfg.BuildLt.Name, false)
		// 频道接口也走骆驼壳自己的前缀，与 /apk/lt/* 其它接口同源；
		// 顺带让"按路由判壳"这条兜底判据在频道这条路上也成立
		// （真正决定密钥的是请求体里的 appname，见 api.GetChannels）。
		result.DataURL = adminBase(c) + "/apk/lt/channels"
	}

	resObj, _ := json.Marshal(result)

	// 密钥按壳挑：清和壳与骆驼壳的应用名、包名都不同，密钥必须各算各的
	// （公式与客户端 smali 的 md5 链逐字一致，见 until.AesKeyOf）。
	// [5:21] 取的是客户端那条 `F.substring(5, 21)` 的同一切片 —— 两边口径必须一样。
	key := until.GetAesKey()
	if isLuotuoShell(c) {
		key = until.GetAesKeyLt()
	}
	aes := until.NewAes(key[5:21], "AES-128-ECB", "")
	reAes, _ := aes.Encrypt(string(resObj))

	c.String(http.StatusOK, reAes)
}

func Getver(c *gin.Context) {
	// 与 ApkLogin 同一口径：下载地址按请求基址拼，避免站点上 HTTPS 后仍下发 http 明文包地址。
	// 骆驼壳的版本信息走自己的那套（基底 /app/client/Client_lt.apk、版本号 cfg.BuildLt.Version）
	// —— 分流判据与登录完全一致（见 isLuotuoShell）。
	if isLuotuoShell(c) {
		result := service.GetverLt(adminBase(c))
		c.JSON(http.StatusOK, result)
		return
	}
	result := service.Getver(adminBase(c))
	c.JSON(http.StatusOK, result)
}

func GetBg(c *gin.Context) {
	// 背景图池按壳分（清和壳 /config/images/bj、骆驼壳 /config/images/lt/bj），
	// 分流判据与登录/getver 完全一致（见 isLuotuoShell）—— 骆驼壳的 SplashActivity
	// 会拿这个地址下载启动背景并缓存成 filesDir/ez_bg.png。
	shell := until.ShellQh
	if isLuotuoShell(c) {
		shell = until.ShellLt
	}
	imgName := service.GetBg(shell)
	if imgName == "" {
		c.String(http.StatusOK, "")
		return
	}
	// 前缀按壳取，且**不再**拼 "/images/bj/"：/images/ 的 alias 已经指向 bj 目录
	// 本身，多一层是 /config/images/bj/bj/xxx.png —— 404，而客户端把取图失败
	// 静默吞掉，表现只是"背景一直是包内默认图"，极难定位。
	//
	// 同 ApkLogin：按请求基址拼，站点上 HTTPS 后不给客户端发明文地址。
	c.String(http.StatusOK, adminBase(c)+until.ClientBgURLPrefix(shell)+imgName)
}

func GetChannels(c *gin.Context) {

	var channel dto.DataReqDto
	if err := c.ShouldBindJSON(&channel); err != nil {
		c.AbortWithStatus(http.StatusForbidden)
		return
	}

	// 取不到 MAC 的设备，登录时已把 mac 回落成 androidid 建了账号，
	// 这里必须能把同一个身份找回来，否则查库落空 ⇒ 下发「该套餐无频道」。
	// 两种非正常 mac 都要能回落：失败提示串（老客户端）与空串。
	if strings.Contains(channel.Mac, "获取地址失败") || channel.Mac == "" {
		channel.Mac = channel.DeviceID
	}

	// base 只影响 purl（中转地址）。取不到合法 Host 时传空串，
	// service 那边会退化成下发源地址，而不是下发一条空 URL。
	base, _ := clientBase(c)
	// 载荷密钥按壳选。判据**优先看请求体里的 appname** —— 骆驼壳请求的是登录
	// 下发给它的 dataurl，而现役/历史包都可能落在 `/apk/channels`（不带 /lt），
	// 光看路径分不出调用方；appname 就是它自己的应用显示名（smali 里
	// `"appname"` ← getApplicationLabel()），与服务端 cfg.BuildLt.Name 同源。
	// 没带 appname 时回落路由判据（/apk/lt/ 前缀或 ?shell=lt）。
	lt := service.IsLuotuoAppName(channel.AppName) || isLuotuoShell(c)
	result := service.GetChannels(channel, base, lt)

	c.String(http.StatusOK, result)
}

func GetWeather(c *gin.Context) {
	result := service.GetWeather()
	c.JSON(http.StatusOK, result)
}

func GetEpg(c *gin.Context) {
	id := c.DefaultQuery("id", "")
	simple := c.DefaultQuery("simple", "")

	if simple != "1" {
		result := service.GetEpg(id)
		c.JSON(http.StatusOK, result)
	} else {
		result := service.GetSimpleEpg(id)
		c.JSON(http.StatusOK, result)
	}
}
