package api

import (
	"iptv-api/dto"
	"iptv-api/service"
	"iptv-api/until"

	"github.com/gin-gonic/gin"
)

// SSL 证书页（/api/ssl）—— 系统菜单下的 HTTPS 配置。
//
// 证书与私钥固定落在 `/config/cert/server.crt|server.key`（持久卷），
// 开关与端口落在 config.yml 的 `ssl:` 段。三条路由各管一件事：
// 读、保存（含重载）、清除。

// SslData 拉取证书信息、开关状态、nginx 版本与文件路径。
// POST /api/ssl/data  （无请求体）
//
// 与其它 `/api/*/data` 一样**直接回页面 DTO**（不套 ReturnJsonDto）。
func SslData(c *gin.Context) {
	if _, ok := until.GetAuthName(c); !ok {
		c.JSON(200, dto.NewAdminRedirectDto())
		return
	}
	c.JSON(200, service.SSLData())
}

// SslSave 保存证书/私钥与开关，并渲染 nginx 片段 + 重载。
// POST /api/ssl/save
// {"enable":true,"forceRedirect":true,"port":443,
//
//	"certPem":"-----BEGIN CERTIFICATE-----...","keyPem":"-----BEGIN PRIVATE KEY-----...",
//	"certName":"example.com.crt","keyName":"example.com.key"}
//
// certPem / keyPem 留空表示"这一项保持磁盘上的原样"（只改开关时不会清掉证书）。
func SslSave(c *gin.Context) {
	var req dto.SSLSaveReq
	if !bindJSON(c, &req) {
		return
	}
	reply(c, service.SSLSave(req))
}

// SslClear 清除证书与私钥，并把 443 / 强制跳转两个开关一起关掉。
// POST /api/ssl/clear  （无请求体）
func SslClear(c *gin.Context) {
	reply(c, service.SSLClear())
}
