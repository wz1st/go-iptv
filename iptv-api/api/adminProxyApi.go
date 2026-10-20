package api

import (
	"iptv-api/dto"
	"iptv-api/service"
	"iptv-api/until"

	"github.com/gin-gonic/gin"
)

// 出网代理设置（/api/proxy）—— 系统菜单下的网络代理配置。
//
// 三条路由：读当前配置、只测不存、测通才存。测试与保存分开是为了让
// 前端能先给用户看结果再决定要不要提交；保存接口内部也会再测一次，
// 绕过前端直接打接口同样存不进去坏配置。

// ProxyData 读取当前代理配置 + 「中转」这一项能不能勾。
// POST /api/proxy/data  （无请求体）
//
// 与其它 `*/data` 一样直接回页面 DTO（不套 ReturnJsonDto）。
func ProxyData(c *gin.Context) {
	if _, ok := until.GetAuthName(c); !ok {
		c.JSON(200, dto.NewAdminRedirectDto())
		return
	}
	c.JSON(200, service.ProxyData())
}

// ProxyTest 只测不存：连代理 + 访问 GitHub/Google。
// POST /api/proxy/test
// {"type":"socks5","host":"1.2.3.4","port":1080,"authOn":1,"user":"a","pwd":"b"}
//
// 失败时 data.failType 为 "dial"（代理连不通）或 "overseas"（能连但出不去），
// 前端据此选文案，不要把两种失败混成一句「测试失败」。
func ProxyTest(c *gin.Context) {
	var req dto.OutProxy
	if !bindJSON(c, &req) {
		return
	}
	reply(c, service.ProxyTest(req))
}

// ProxySave 保存代理配置，**测试不通过不落盘**。
// POST /api/proxy/save   请求体同 ProxyTest，另有四个作用范围开关：
// useEpg（EPG 更新）/ useSrc（频道源更新）/ useUp（在线升级）/ useRelay（中转，仅授权用户）。
func ProxySave(c *gin.Context) {
	var req dto.OutProxy
	if !bindJSON(c, &req) {
		return
	}
	reply(c, service.ProxySave(req))
}
