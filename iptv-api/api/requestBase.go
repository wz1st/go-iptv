package api

import (
	"iptv-api/dao"
	"iptv-api/until"
	"strings"

	"github.com/gin-gonic/gin"
)

// clientBase 取"客户端访问本站所用的地址"，形如 `http(s)://host[:port]`（含端口）。
func clientBase(c *gin.Context) (string, bool) {
	host := c.Request.Host
	if !until.IsValidHost(host) {
		return "", false
	}
	return GetClientScheme(c) + "://" + host, true
}

// adminBase 管理端用的同一个地址，但**不拒绝**。
func adminBase(c *gin.Context) string {
	if base, ok := clientBase(c); ok {
		return base
	}
	return strings.TrimRight(dao.GetConfig().ServerUrl, "/")
}
