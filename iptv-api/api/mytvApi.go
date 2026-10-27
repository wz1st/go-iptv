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

	path, body, ok := service.MytvGetRssEpg(deviceId)
	serveEpgFile(c, path, body, ok)
}

func MytvReleases(c *gin.Context) {
	// 下载地址按请求基址拼，口径与清和的 Getver / ApkLogin 一致：
	// 站点上 HTTPS 后不能再给客户端下发 http 明文包地址（混合内容会被拦）。
	c.JSON(200, service.MytvReleases(adminBase(c)))
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
//
// fallback 是"文件读不动时的兜底内容"：缓存文件可能已被清掉/被截断，
// 这时宁可发一份现场算出来的，也不能发空节目单。
func serveXmlFile(c *gin.Context, path string, fallback []byte) {
	f, err := os.Open(path)
	if err != nil {
		log.Printf("读取节目单缓存失败: %v", err)
		serveEpgFallback(c, fallback)
		return
	}
	defer f.Close()

	info, err := f.Stat()
	if err != nil {
		log.Printf("读取节目单缓存属性失败: %v", err)
		serveEpgFallback(c, fallback)
		return
	}

	// 必须显式设 Content-Type：缓存文件名没有扩展名，不设的话 ServeContent
	// 只能嗅探前 512 字节，可能落到 text/plain，部分阅读器据此就不解析了。
	c.Header("Content-Type", "text/xml; charset=utf-8")
	http.ServeContent(c.Writer, c.Request, "e.xml", info.ModTime(), f)
}

// serveEpgFallback 发出兜底节目单：有内容就发内容，没内容才发空壳。
func serveEpgFallback(c *gin.Context, body []byte) {
	if len(body) > 0 {
		c.Header("Content-Type", "text/xml; charset=utf-8")
		c.Data(200, "text/xml; charset=utf-8", body)
		return
	}
	c.Data(200, "text/xml", []byte(xml.Header+getQingh()))
}

// serveEpgFile 是"有路径就流式发、没有就发兜底内容"的便捷包装。
//
// ok=false ⇒ 这个套餐本来就没有节目单（不是缓存故障）。
// ok=true 但 path 为空 ⇒ 缓存不可用，body 里是现场算出来的内容。
func serveEpgFile(c *gin.Context, path string, body []byte, ok bool) {
	if !ok {
		c.Data(200, "text/xml", []byte(xml.Header+getQingh()))
		return
	}
	if path == "" {
		serveEpgFallback(c, body)
		return
	}
	serveXmlFile(c, path, body)
}

// 这里曾有 BaseApk / BaseVersion 两个公开端点（GET /mytv/baseApk、/mytv/baseVersion），
