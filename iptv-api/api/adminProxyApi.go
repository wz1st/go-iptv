package api

import (
	"iptv-api/dto"
	"iptv-api/service"
	"iptv-api/until"

	"github.com/gin-gonic/gin"
)

// 出网代理设置（/api/proxy）—— 系统菜单下的网络代理配置。
//
// 四条路由：读当前配置、只测不存、测通才存、单改一个作用范围开关。
// 测试与保存分开是为了让前端能先给用户看结果再决定要不要提交；
// 保存接口内部也会再测一次，绕过前端直接打接口同样存不进去坏配置。
// 作用范围开关单列一条：拨开关就该即时生效，不该再点一次「保存配置」。

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

// ProxySave 保存代理的连接参数，**测试不通过不落盘**。
// POST /api/proxy/save   请求体同 ProxyTest。
//
// 四个作用范围开关（useEpg / useSrc / useUp / useRelay）**不在这里提交**，
// 一律沿用当前配置；改开关走 ProxyScope。
// type 为空（无代理）时跳过测试直接落盘，并把四个开关一并关闭。
func ProxySave(c *gin.Context) {
	var req dto.OutProxy
	if !bindJSON(c, &req) {
		return
	}
	reply(c, service.ProxySave(req))
}

// ProxyScope 单独改一个作用范围开关，改完立刻生效。
// POST /api/proxy/scope   {"key":"useEpg","value":1}
//
// key 取 useEpg / useSrc / useUp / useRelay，value 只能是 0 或 1，
// 允许全关。不做连通性测试：开关只决定"这次抓取用不用代理"。
func ProxyScope(c *gin.Context) {
	var req dto.OutProxyScopeDto
	if !bindJSON(c, &req) {
		return
	}
	reply(c, service.ProxyScope(req))
}
