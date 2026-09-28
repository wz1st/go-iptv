package router

import (
	"iptv-api/bootstrap"
	"net/http"
	"os"
	"strings"

	"github.com/gin-gonic/gin"
)

// 路由总入口。
func InitRouter(debug bool) *gin.Engine {
	if os.Getenv("IPTVDEV") != "true" {
		gin.SetMode(gin.ReleaseMode)
	}

	var r *gin.Engine
	if debug {
		r = gin.Default()
	} else {
		r = gin.New()
	}

	r.SetTrustedProxies([]string{
		"10.0.0.0/8",
		"192.168.0.0/16",
		"172.0.0.0/8",      // docker私有网络地址
		"::1",              // IPv6 localhost
		"127.0.0.1",        // IPv4 localhost
		"::ffff:127.0.0.1", // IPv6 mapped IPv4 localhost
	})
	r.RemoteIPHeaders = []string{"X-Original-Forwarded-For", "X-Real-IP", "X-Forwarded-For"}

	// 静态资源目录：刻意注册在门禁之前，未安装时也可访问
	r.Static("/app", "/config/app")
	r.Static("/images", "/config/images/bj")
	r.Static("/icon", "/config/images/icon")
	r.Static("/logo", "/config/logo")
	// /static 是下载页/登录页的品牌图与 README.md 里引用的收款码图片。
	r.Static("/static", "/app/web/static")

	// 安装态门禁：必须早于下面所有业务路由
	r.Use(installGate)

	// CORS 必须注册在路由之前 —— Gin 在注册路由时就把中间件链固定下来了，
	r.Use(Cors)

	registerAPIRoutes(r)

	r.NoRoute(apiNotFound)
	return r
}

// apiNotFound 统一 404。
func apiNotFound(c *gin.Context) {
	c.JSON(http.StatusNotFound, gin.H{
		"code": 0,
		"msg":  "接口不存在",
		"type": "danger",
		"data": nil,
	})
}

// 安装态门禁

// 安装期限定路径 —— 未安装时必须可达，已安装时必须封禁。
var installOnlyPrefixes = []string{
	"/api/install",
	"/install",
}

// hasPathPrefix 按「路径段」判断前缀：
// base 本身、base+"/" 开头、或 base 以 "/" 结尾且是字面前缀。
func hasPathPrefix(path, base string) bool {
	if strings.HasPrefix(path, base) {
		// 以 "/" 结尾的 base（如 "/api/install/"）本身就是段边界
		if strings.HasSuffix(base, "/") {
			return true
		}
		// 否则要求下一个字符是 "/" 或恰好相等，避免 /install 命中 /installed
		rest := path[len(base):]
		return rest == "" || rest[0] == '/'
	}
	return false
}

// publicPrefixes 是「与安装态无关的公共资源」—— 任何安装状态下都放行。
var publicPrefixes = []string{
	"/static/", // README.md 里的收款码图片（仓库根 static/）
	"/images/",
	"/icon/",
	"/logo/",
	"/app/", // APK / MyTV 下载目录，前台下载页依赖
}

// publicExact 是与安装态无关、两种状态下都必须可达的确切路径。
var publicExact = publicSitePaths()

// isInstallOnlyPath 判断路径是否属于「只在安装阶段可用」的集合。
func isInstallOnlyPath(path string) bool {
	for _, p := range installOnlyPrefixes {
		if hasPathPrefix(path, p) {
			return true
		}
	}
	return false
}

// isPublicPath 判断路径是否为安装态无关的公共资源。
func isPublicPath(path string) bool {
	if publicExact[path] {
		return true
	}
	for _, p := range publicPrefixes {
		if hasPathPrefix(path, p) {
			return true
		}
	}
	return false
}

// installGate 是安装态访问控制，规则只有两条：
func installGate(c *gin.Context) {
	path := c.Request.URL.Path

	if isPublicPath(path) {
		c.Next()
		return
	}

	var allowed bool
	if !bootstrap.IsInstalled() {
		// 未安装：只认安装相关路径
		allowed = isInstallOnlyPath(path)
	} else {
		// 已安装：安装向导相关接口不再可达
		allowed = !isInstallOnlyPath(path)
	}

	if allowed {
		c.Next()
		return
	}

	reject(c)
}

// reject 拒绝一个未放行的请求。
func reject(c *gin.Context) {
	if wantsHTML(c) {
		c.Redirect(http.StatusFound, gateRedirectTarget())
		c.Abort()
		return
	}
	c.AbortWithStatusJSON(http.StatusForbidden, gin.H{
		"code": 0,
		"msg":  "当前安装状态下该接口不可用",
		"type": "danger",
		"data": nil,
	})
}

// gateRedirectTarget 决定「被门禁拒绝的页面请求」应该落到哪一屏。
func gateRedirectTarget() string {
	if bootstrap.IsInstalled() {
		return "/"
	}
	return "/install"
}

// 杂项

// Cors 处理跨域预检。
func Cors(c *gin.Context) {
	if c.Request.Method != "OPTIONS" {
		c.Next()
		return
	}
	c.Header("Access-Control-Allow-Origin", "*")
	c.Header("Access-Control-Allow-Methods", "GET,POST,PUT,PATCH,DELETE,OPTIONS")
	c.Header("Access-Control-Allow-Headers", "authorization, origin, content-type, accept")
	c.Header("Allow", "HEAD,GET,POST,PUT,PATCH,DELETE,OPTIONS")
	c.Header("Content-Type", "application/json")
	c.AbortWithStatus(200)
}
