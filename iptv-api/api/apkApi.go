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

	result := service.ApkLogin(dbUser)

	resObj, _ := json.Marshal(result)

	aes := until.NewAes(until.GetAesKey()[5:21], "AES-128-ECB", "")
	reAes, _ := aes.Encrypt(string(resObj))

	c.String(http.StatusOK, reAes)
}

func Getver(c *gin.Context) {
	result := service.Getver()
	c.JSON(http.StatusOK, result)
}

func GetBg(c *gin.Context) {
	imgName := service.GetBg()
	if imgName == "" {
		c.String(http.StatusOK, "")
		return
	}
	c.String(http.StatusOK, dao.GetConfig().ServerUrl+"/images/bj/"+imgName)
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
