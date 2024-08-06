package api

import (
	"encoding/json"
	"fmt"
	"net/http"
	"path/filepath"

	"go-iptv/bootstrap"
	"go-iptv/dto"
	"go-iptv/service"
	"go-iptv/until"

	"github.com/gin-gonic/gin"
	"golang.org/x/exp/rand"
)

func AuthLogin(c *gin.Context) {
	loginJSON := c.PostForm("login")
	var user dto.IptvUser
	json.Unmarshal([]byte(loginJSON), &user)
	result := service.Login(user)
	result.DataURL = until.BuildUrl(until.GetUrl(c), "/channels/data")
	result.AppURL = until.BuildUrl(until.GetUrl(c), "/apk/DSMTV.apk")
	ip, _ := until.GetIp(c.ClientIP())
	result.IP = ip

	resObj, _ := json.Marshal(result)
	fmt.Print(string(resObj))
	aes := until.NewAes(bootstrap.AES_KEY, "AES-128-ECB", "")
	reAes, _ := aes.Encrypt(string(resObj))

	c.String(http.StatusOK, reAes)
}

func Getver(c *gin.Context) {
	apkFilePath := "./apk/DSMTV.apk"
	result := service.Getver()
	result.AppURL = until.BuildUrl(until.GetUrl(c), "/apk/DSMTV.apk")
	result.UpSize = until.GetFileSize(apkFilePath) + "M"
	c.JSON(http.StatusOK, result)
}

func GetBg(c *gin.Context) {
	if bootstrap.IPTV_CON["background"] != "1" {
		c.String(http.StatusOK, "")
		return
	}
	dir := "./images"
	files, err := filepath.Glob(filepath.Join(dir, "*.png"))
	if err != nil {
		c.String(http.StatusOK, "")
		return
	}
	if len(files) == 0 {
		c.String(http.StatusOK, "")
		return
	}
	protocol := "http://"
	if c.Request.TLS != nil {
		protocol = "https://"
	}
	url := protocol + c.Request.Host + "/images/"
	pngs := make([]string, len(files))
	for i, file := range files {
		pngs[i] = url + filepath.Base(file)
	}
	randomIndex := rand.Intn(len(pngs))
	c.String(http.StatusOK, pngs[randomIndex])
}
