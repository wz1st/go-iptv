package api

import (
	"encoding/json"
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
	result := service.ApkLogin(dbUser, adminBase(c))

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
	imgName := service.GetBg()
	if imgName == "" {
		c.String(http.StatusOK, "")
		return
	}
	// 同 ApkLogin：按请求基址拼，站点上 HTTPS 后不给客户端发明文地址。
	c.String(http.StatusOK, adminBase(c)+"/images/bj/"+imgName)
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
	result := service.GetChannels(channel, base)

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
