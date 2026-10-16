package api

import (
	"iptv-api/dao"
	"iptv-api/until"
	"net/url"
	"strings"

	"github.com/gin-gonic/gin"
)

// clientBase 取"客户端访问本站所用的地址"，形如 `http(s)://host[:port]`（含端口）。
//
// 仅当本次请求的 host 与 path 都合法时才返回；否则回落到配置（见 adminBase）。
//
// 为什么以请求为准、不以 cfg.ServerUrl 为准（需求 #3）：
// 旧客户端用某个地址连上服务端后，服务端回给它的数据地址必须正是"它用来的那个
// 地址"——否则会出现"能登录、取不到数据"（数据地址指向了另一份/旧的 ServerUrl）。
// 所以 host 一律优先取请求里的；path 用来判壳（清和 /apk、骆驼 /apk/lt）与做合法性校验。
func clientBase(c *gin.Context) (string, bool) {
	host := c.Request.Host
	if !until.IsValidHost(host) {
		return "", false
	}
	// path 合法性：拒绝目录穿越与控制字符，避免用非法 path 拼出错误/攻击性的数据地址。
	if !isValidRequestPath(c.Request.URL.Path) {
		return "", false
	}
	return GetClientScheme(c) + "://" + host, true
}

// isValidRequestPath 校验请求路径，防止用非法 path 拼出错误/攻击性的对外数据地址。
// 只拦截真正危险的字符（目录穿越 `..`、不可打印字符），正常业务路径（含 /、:、字母数字）一律放行。
func isValidRequestPath(p string) bool {
	if p == "" {
		return false
	}
	if strings.Contains(p, "..") {
		return false
	}
	for _, r := range p {
		if r < 0x20 || r == 0x7f {
			return false
		}
	}
	// 再解析一次，拦掉 url.Parse 直接拒绝的畸形片段。
	if _, err := url.Parse(p); err != nil {
		return false
	}
	return true
}

// adminBase 管理端/客户端下发地址用的对外基址。
//
// 优先用本次请求的 host+path 推导（保证"客户端用哪来的就回哪去"），只有请求本身
// 不可用（host/path 非法）时才回落配置。回落也**按壳分流**：骆驼壳用 server_url_lt、
// 清和壳用 server_url，不能一律用清和的 ServerUrl——否则骆驼壳在"请求 host 非法"时
// 会拿到清和站的下载/数据地址（需求 #3：不能以 ServerURL 为准，且两壳地址各存一份）。
func adminBase(c *gin.Context) string {
	if base, ok := clientBase(c); ok {
		return base
	}
	cfg := dao.GetConfig()
	if isLuotuoShell(c) {
		return strings.TrimRight(until.LuotuoServerURL(cfg), "/")
	}
	return strings.TrimRight(cfg.ServerUrl, "/")
}
