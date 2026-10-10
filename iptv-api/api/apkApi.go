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

	aes := until.NewAes(until.GetAesKey()[5:21], "AES-128-ECB", "")
	reAes, _ := aes.Encrypt(string(resObj))

	c.String(http.StatusOK, reAes)
}

func Getver(c *gin.Context) {
	// 与 ApkLogin 同一口径：下载地址按请求基址拼，避免站点上 HTTPS 后仍下发 http 明文包地址。
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
