package api

import (
	"encoding/xml"
	"fmt"
	"iptv-api/dto"
	"iptv-api/service"
	"iptv-api/until"
	"log"
	"net/http"
	"os"

	"github.com/gin-gonic/gin"
)

func MytvGetUserM3U8(c *gin.Context) {
	ts := c.Query("ts")             // 不存在时返回 ""
	deviceId := c.Query("deviceId") // 不存在时返回 ""

	if ts == "" || deviceId == "" {
		c.String(200, "参数错误1")
		return
	}

	clientIP := c.ClientIP()

	scheme := GetClientScheme(c)

	host := c.Request.Host
	if !until.IsValidHost(host) {
		c.String(200, "参数错误2")
		return
	}
	host = fmt.Sprintf("%s://%s", scheme, host)

	c.String(200, service.MytvGetUserM3U8(ts, deviceId, clientIP, host))
}

func MytvGetRssEpg(c *gin.Context) {
	deviceId := c.Param("deviceId")
	if deviceId == "" {
		c.Data(200, "text/xml", []byte(xml.Header+getQingh()))
		return
	}

	path, ok := service.MytvGetRssEpg(deviceId)
	serveEpgFile(c, path, ok)
}

func MytvReleases(c *gin.Context) {
	c.JSON(200, service.MytvReleases())
}

func getQingh() string {
	res := dto.XmlTV{
		GeneratorName: "清和IPTV管理系统",
		GeneratorURL:  "https://www.qingh.xyz",
	}
	output, _ := xml.MarshalIndent(res, "", "  ")
	return string(output)
}

// serveXmlFile 把一个 XML 文件**流式**发给客户端。
func serveXmlFile(c *gin.Context, path string) {
	f, err := os.Open(path)
	if err != nil {
		log.Printf("读取节目单缓存失败: %v", err)
		c.Data(200, "text/xml", []byte(xml.Header+getQingh()))
		return
	}
	defer f.Close()

	info, err := f.Stat()
	if err != nil {
		log.Printf("读取节目单缓存属性失败: %v", err)
		c.Data(200, "text/xml", []byte(xml.Header+getQingh()))
		return
	}

	// 必须显式设 Content-Type：缓存文件名没有扩展名，不设的话 ServeContent
	// 只能嗅探前 512 字节，可能落到 text/plain，部分阅读器据此就不解析了。
	c.Header("Content-Type", "text/xml; charset=utf-8")
	http.ServeContent(c.Writer, c.Request, "e.xml", info.ModTime(), f)
}

// serveEpgFile 是"有路径就流式发、没有就发一份空节目单"的便捷包装。
func serveEpgFile(c *gin.Context, path string, ok bool) {
	if !ok || path == "" {
		c.Data(200, "text/xml", []byte(xml.Header+getQingh()))
		return
	}
	serveXmlFile(c, path)
}

// 这里曾有 BaseApk / BaseVersion 两个公开端点（GET /mytv/baseApk、/mytv/baseVersion），
