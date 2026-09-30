package router

import (
	"net/http"
	"net/http/httptest"
	"sort"
	"strings"
	"testing"

	"iptv-api/bootstrap"

	"github.com/gin-gonic/gin"
)

func init() { gin.SetMode(gin.TestMode) }

// okHandler 是探针处理器：命中即 200 "ok"，用于观察门禁是否放行。
func okHandler(c *gin.Context) { c.String(http.StatusOK, "ok") }

// newGateEngine 造一个只挂了 installGate 与若干探针路由的引擎。
func newGateEngine() *gin.Engine {
	r := gin.New()
	r.Use(installGate)

	seen := map[string]bool{}
	reg := func(method, p string) {
		k := method + " " + p
		if seen[k] {
			return
		}
		seen[k] = true
		r.Handle(method, p, okHandler)
	}
	for _, p := range pagePaths {
		reg("GET", p)
	}
	for _, p := range assetPaths {
		reg("GET", p)
	}
	for _, p := range apiPaths {
		reg("GET", p)
		reg("POST", p)
	}
	return r
}

// pagePaths 是「页面类」请求路径 —— 用户在地址栏敲、浏览器带 Accept: text/html。
var pagePaths = []string{
	"/install", "/install-log", "/ChangeLog.md", "/admin/login", "/admin/index", "/mobile",
}

// assetPaths 是「与安装态无关的公共静态资源」。
var assetPaths = []string{
	"/images/bj/a.png", "/icon/icon.png", "/logo/a.png", "/app/a.apk", "/static/a.png",
}

// apiPaths 是需要在门禁下观察的接口路径。
var apiPaths = []string{
	"/api/install/state", "/api/install/setup", "/api/site/index", "/api/site/boot",
	"/api/users/data", "/api/apk/channels", "/api/mytv/releases",
	// /version 是升级探测端点（两种安装状态下都必须可达），
	// 少了它门禁的「公共资源」分支就没人验证。
	"/version",
	// 兼容前缀同样要受门禁约束 —— 兼容不等于免检，
	// 否则「未安装时能用旧前缀碰到客户端接口」就成了绕过门禁的后门。
	"/apk/login", "/getRss/x/paylist.m3u",
}

// do 发一个请求，返回状态码与 Location。
func do(r *gin.Engine, method, path string) (int, string) {
	w := httptest.NewRecorder()
	req := httptest.NewRequest(method, path, nil)
	req.Header.Set("Accept", "text/html") // 模拟浏览器导航
	r.ServeHTTP(w, req)
	return w.Code, w.Header().Get("Location")
}

// doAPI 发一个不接受 HTML 的接口请求。
func doAPI(r *gin.Engine, method, path string) (int, string) {
	w := httptest.NewRecorder()
	req := httptest.NewRequest(method, path, nil)
	req.Header.Set("Accept", "application/json")
	r.ServeHTTP(w, req)
	return w.Code, w.Body.String()
}

// 未安装态

func TestGate_NotInstalled_AllowsInstallPaths(t *testing.T) {
	bootstrap.SetInstalled(false)
	defer bootstrap.SetInstalled(false)
	r := newGateEngine()

	// 向导自身与它依赖的取数接口必须可达，否则装不了机。
	for _, p := range []string{
		"/api/install/state", "/api/install/setup", "/api/site/index", "/api/site/boot",
	} {
		if code, _ := do(r, "GET", p); code != http.StatusOK {
			t.Errorf("未安装时 %s 应可达，实际 %d", p, code)
		}
	}
}

func TestGate_NotInstalled_AllowsPublicAssets(t *testing.T) {
	bootstrap.SetInstalled(false)
	defer bootstrap.SetInstalled(false)
	r := newGateEngine()

	// 静态资源与版本探测在未安装时也要能取（向导页依赖它们渲染）
	for _, p := range []string{"/images/bj/a.png", "/icon/icon.png", "/logo/a.png", "/app/a.apk", "/version", "/ChangeLog.md"} {
		if code, _ := do(r, "GET", p); code != http.StatusOK {
			t.Errorf("未安装时 %s 应可达，实际 %d", p, code)
		}
	}
}

// 未安装时被拒的页面必须落到 /install，而不是 "/"。
func TestGate_NotInstalled_RedirectsToInstall(t *testing.T) {
	bootstrap.SetInstalled(false)
	defer bootstrap.SetInstalled(false)
	r := newGateEngine()

	for _, p := range []string{"/admin/login", "/admin/index", "/mobile"} {
		code, loc := do(r, "GET", p)
		if code != http.StatusFound {
			t.Errorf("未安装时 %s 应 302，实际 %d", p, code)
			continue
		}
		if loc != "/install" {
			t.Errorf("未安装时 %s 应重定向到 /install，实际 %s", p, loc)
		}
	}
}

// 未安装时接口一律 403 + JSON。
func TestGate_NotInstalled_BlocksAPIsWith403(t *testing.T) {
	bootstrap.SetInstalled(false)
	defer bootstrap.SetInstalled(false)
	r := newGateEngine()

	for _, p := range []string{"/api/users/data", "/apk/login", "/getRss/x/paylist.m3u", "/mytv/releases"} {
		code, body := doAPI(r, "GET", p)
		if code != http.StatusForbidden {
			t.Errorf("未安装时接口 %s 应 403，实际 %d", p, code)
			continue
		}
		if body == "" || body[0] != '{' {
			t.Errorf("未安装时接口 %s 应返回 JSON，实际 %q", p, body)
		}
	}
}

// 已安装态

func TestGate_Installed_BlocksInstallPaths(t *testing.T) {
	old := bootstrap.IsInstalled()
	bootstrap.SetInstalled(true)
	defer bootstrap.SetInstalled(old)

	r := newGateEngine()

	// 已安装后安装向导必须不可再访问，否则可被重复提交安装。
	code, loc := do(r, "GET", "/install")
	if code != http.StatusFound {
		t.Fatalf("已安装时 /install 应 302，实际 %d", code)
	}
	if loc != "/" {
		t.Errorf("已安装时 /install 应重定向到 /，实际 %s", loc)
	}
}

// 更新记录在两种安装状态下都必须可达。
func TestGate_UpdateLogReachableInBothStates(t *testing.T) {
	check := func(state string) {
		r := newGateEngine()
		if code, _ := do(r, "GET", "/ChangeLog.md"); code != http.StatusOK {
			t.Errorf("%s时 /ChangeLog.md 应可达，实际 %d", state, code)
		}
	}

	bootstrap.SetInstalled(false)
	check("未安装")
	bootstrap.SetInstalled(true)
	check("已安装")
	bootstrap.SetInstalled(false)
}

func TestGate_Installed_BlocksInstallAPIsWith403(t *testing.T) {
	old := bootstrap.IsInstalled()
	bootstrap.SetInstalled(true)
	defer bootstrap.SetInstalled(old)

	r := newGateEngine()

	// 只有**会改状态**的安装端点在装好后封禁。
	code, body := doAPI(r, "POST", "/api/install/setup")
	if code != http.StatusForbidden {
		t.Errorf("已安装时 /api/install/setup 应 403，实际 %d", code)
	}
	if body == "" || body[0] != '{' {
		t.Errorf("已安装时 /api/install/setup 应返回 JSON，实际 %q", body)
	}
}

// /api/install/state 在两种安装状态下都必须可达。
func TestGate_InstallStateReachableInBothStates(t *testing.T) {
	old := bootstrap.IsInstalled()
	defer bootstrap.SetInstalled(old)

	for _, installed := range []bool{false, true} {
		bootstrap.SetInstalled(installed)
		r := newGateEngine()
		if code, body := doAPI(r, "GET", "/api/install/state"); code != http.StatusOK {
			t.Errorf("installed=%v 时 /api/install/state 应 200，实际 %d (%s)", installed, code, body)
		}
	}

	// 对照组：会改状态的提交端点在已安装后必须仍然封禁，
	// 否则「放行安装态探针」就成了把整组安装接口一起放开的借口。
	bootstrap.SetInstalled(true)
	r := newGateEngine()
	if code, _ := doAPI(r, "POST", "/api/install/setup"); code != http.StatusForbidden {
		t.Errorf("已安装时 /api/install/setup 应仍为 403，实际 %d", code)
	}
}

func TestGate_Installed_AllowsAdminAndSitePaths(t *testing.T) {
	old := bootstrap.IsInstalled()
	bootstrap.SetInstalled(true)
	defer bootstrap.SetInstalled(old)

	r := newGateEngine()

	// 版本探测与前台下载页取数在已安装后仍要可达
	for _, p := range []string{"/version", "/api/site/index", "/api/site/boot"} {
		if code, _ := do(r, "GET", p); code != http.StatusOK {
			t.Errorf("已安装时 %s 应可达，实际 %d", p, code)
		}
	}
	// 管理接口此时交给 JWT，门禁本身不该拦；页面交给 nginx，门禁也不该拦。
	for _, p := range []string{"/api/users/data", "/admin/login", "/admin/index"} {
		if code, _ := do(r, "GET", p); code != http.StatusOK {
			t.Errorf("已安装时 %s 应放行给 JWT/nginx，实际 %d", p, code)
		}
	}
}

// 门禁规则本身

func TestIsInstallOnlyPath(t *testing.T) {
	cases := map[string]bool{
		"/api/install":       true,
		"/api/install/state": true,
		"/api/install/setup": true,
		"/install":           true,  // 前端向导页面路径（不是接口），列在这里只为不被门禁反复 302
		"/install/step2":     true,  // 路径段前缀应命中
		"/install-log":       false, // 更新记录页：README 的链接在已安装态也会被点到
		"/ChangeLog.md":      false, // 同上，两态可达
		"/installed-page":    false, // 段前缀语义：不该被 "/install" 误伤，也不该误伤 /install-log
		"/installer":         false,
		"/":                  false,
		"/admin/login":       false,
		"/assets/index.js":   false,
		"/api/other":         false,
		"/api/site/index":    false, // 前台下载页的取数接口，不是安装专属
		"/api/site/boot":     false, // SPA 启动引导，两态都要能取
	}
	for path, want := range cases {
		if got := isInstallOnlyPath(path); got != want {
			t.Errorf("isInstallOnlyPath(%q) = %v, want %v", path, got, want)
		}
	}
}

func TestHasPathPrefix(t *testing.T) {
	cases := []struct {
		path, base string
		want       bool
	}{
		{"/install", "/install", true},
		{"/install/step2", "/install", true},
		{"/installed-page", "/install", false},
		{"/installer", "/install", false},
		{"/api/install/state", "/api/install", true},
		{"/api/install", "/api/install", true},
		{"/api/installed", "/api/install", false},
		{"/api/users/data", "/api/", true},
		{"/api", "/api/", false},
	}
	for _, c := range cases {
		if got := hasPathPrefix(c.path, c.base); got != c.want {
			t.Errorf("hasPathPrefix(%q, %q) = %v, want %v", c.path, c.base, got, c.want)
		}
	}
}

func TestIsPublicPath(t *testing.T) {
	for _, p := range []string{
		"/static/a.png", "/images/b.jpg", "/icon/c.png", "/logo/d.png",
		"/app/e.apk",
		// 升级探测：规范路径与旧路径**都**要在内。
		// 只写 /version 曾经是一个真 bug（规范路径 403）。
		"/version", "/api/site/version",
		"/api/site/index", "/api/site/boot",
		// 更新记录：两态都要能看，规范路径同理。
		"/ChangeLog.md", "/api/site/changelog",
		// 安装状态只读探针：两态可达（详见 TestGate_InstallStateReachableInBothStates）
		"/api/install/state",
	} {
		if !isPublicPath(p) {
			t.Errorf("isPublicPath(%q) 应为 true", p)
		}
	}
	// 会改状态的安装提交端点必须**不在**公共集合里。
	for _, p := range []string{
		"/api/users/data", "/api/install/setup", "/install", "/admin/index",
	} {
		if isPublicPath(p) {
			t.Errorf("isPublicPath(%q) 应为 false", p)
		}
	}
}

// 公共集合直接从接口路由表派生，不再手写。
func TestPublicExactFollowsRouteTable(t *testing.T) {
	for _, rt := range siteRoutes {
		if !rt.public {
			continue
		}
		canonical := apiBase + "/" + rt.path
		if !publicExact[canonical] {
			t.Errorf("路由表标了 public 但 publicExact 缺规范路径 %s", canonical)
		}
		if rt.legacy != "" && !publicExact[rt.legacy] {
			t.Errorf("路由表标了 public 但 publicExact 缺兼容路径 %s", rt.legacy)
		}
	}
	// 反向：publicExact 里不该混进非 public 的路由。
	for _, rt := range siteRoutes {
		if rt.public {
			continue
		}
		if publicExact[apiBase+"/"+rt.path] {
			t.Errorf("%s 未标 public，却出现在 publicExact 里", rt.path)
		}
	}
}

// /api/site/index 在**已安装**状态下也必须可达。
func TestGate_SiteIndexAPIReachableInBothStates(t *testing.T) {
	bootstrap.SetInstalled(false)
	r := newGateEngine()
	if code, _ := doAPI(r, "GET", "/api/site/index"); code != http.StatusOK {
		t.Errorf("未安装时 /api/site/index 应可达，实际 %d", code)
	}

	bootstrap.SetInstalled(true)
	defer bootstrap.SetInstalled(false)
	if code, _ := doAPI(r, "GET", "/api/site/index"); code != http.StatusOK {
		t.Errorf("已安装时 /api/site/index 应可达（前台下载页依赖），实际 %d", code)
	}
}

// /api/site/boot 在两种安装状态下都必须可达，且两种调用方都不能被 302 糊弄。
func TestGate_SiteBootReachableInBothStates(t *testing.T) {
	for _, installed := range []bool{false, true} {
		bootstrap.SetInstalled(installed)
		r := newGateEngine()
		for _, accept := range []string{"application/json", "text/html"} {
			w := httptest.NewRecorder()
			req := httptest.NewRequest("GET", "/api/site/boot", nil)
			req.Header.Set("Accept", accept)
			r.ServeHTTP(w, req)
			if w.Code != http.StatusOK {
				t.Errorf("installed=%v Accept=%s 时 /api/site/boot 应 200，实际 %d", installed, accept, w.Code)
			}
		}
	}
	bootstrap.SetInstalled(false)
}

// reject 的两种拒绝方式不能按路径判断"是不是接口"。
func TestRejectUsesAcceptNotPath(t *testing.T) {
	bootstrap.SetInstalled(false)
	defer bootstrap.SetInstalled(false)
	r := newGateEngine()

	// 同一条路径：浏览器导航 → 302 到安装向导
	if code, loc := do(r, "GET", "/api/users/data"); code != http.StatusFound || loc != "/install" {
		t.Errorf("页面请求应 302 到 /install，实际 %d %s", code, loc)
	}
	// 同一条路径：fetch/XHR → 403 + JSON（不能被 302 糊弄过去）
	code, body := doAPI(r, "GET", "/api/users/data")
	if code != http.StatusForbidden {
		t.Errorf("接口请求应 403，实际 %d", code)
	}
	if body == "" || body[0] != '{' {
		t.Errorf("接口请求应返回 JSON，实际 %q", body)
	}
}

// gateRedirectTarget 的落点必须随安装态变化。
func TestGateRedirectTarget(t *testing.T) {
	bootstrap.SetInstalled(false)
	if got := gateRedirectTarget(); got != "/install" {
		t.Errorf("未安装时应跳 /install，实际 %s", got)
	}
	bootstrap.SetInstalled(true)
	if got := gateRedirectTarget(); got != "/" {
		t.Errorf("已安装时应跳 /，实际 %s", got)
	}
	bootstrap.SetInstalled(false)
}

// 更新日志的两种调用方

// newSiteEngine 只挂站点组路由，用于观察更新日志的分流。
func newSiteEngine() *gin.Engine {
	r := gin.New()
	registerSiteAPI(r)
	return r
}

// 更新日志的两种调用方要分开对待。
func TestChangeLogSeparatesNavigationFromFetch(t *testing.T) {
	r := newSiteEngine()

	// 浏览器导航：必须转去渲染页
	for _, p := range []string{"/ChangeLog.md", "/api/site/changelog"} {
		if code, loc := do(r, "GET", p); code != http.StatusFound || loc != "/install-log" {
			t.Errorf("浏览器访问 %s 应 302 到 /install-log，实际 %d %s", p, code, loc)
		}
	}

	// fetch：不能 302
	for _, p := range []string{"/ChangeLog.md", "/api/site/changelog"} {
		w := httptest.NewRecorder()
		req := httptest.NewRequest("GET", p, nil)
		req.Header.Set("Accept", "*/*")
		r.ServeHTTP(w, req)
		if w.Code == http.StatusFound {
			t.Errorf("fetch %s 不应 302（会拿到 HTML 而非 Markdown 原文）", p)
		}
	}
}

// 路由表自检

// 完整路由表必须能构造出来，且每条路由都在。
func TestRouteTableIsConsistent(t *testing.T) {
	// InitRouter 内部会按环境决定 gin 模式，这里只关心路由构造，不做断言。
	r := InitRouter(false)

	type routeKey struct{ method, path string }
	have := map[routeKey]bool{}
	for _, rt := range r.Routes() {
		have[routeKey{rt.Method, rt.Path}] = true
	}

	// 1) 管理接口：只认 POST，且只有 /api 一套前缀。
	var missing []string
	for _, rt := range adminRoutes {
		k := routeKey{mPost, apiBase + "/" + rt.path}
		if !have[k] {
			missing = append(missing, "管理接口缺失: "+k.method+" "+k.path)
		}
	}

	// 2) 站点组：规范路径必须在；有兼容路径的还要额外在
	for _, rt := range siteRoutes {
		canonical := routeKey{rt.method, apiBase + "/" + rt.path}
		if !have[canonical] {
			missing = append(missing, "站点规范缺失: "+canonical.method+" "+canonical.path)
		}
		if rt.legacy == "" || rt.legacy == canonical.path {
			continue
		}
		legacy := routeKey{rt.method, rt.legacy}
		if !have[legacy] {
			missing = append(missing, "站点兼容路径缺失: "+legacy.method+" "+legacy.path)
		}
	}

	// 3) 客户端组：新旧前缀都要有（APK 基址烧在 smali 里、订阅地址已发出）
	for _, p := range []string{
		"/apk/login", "/api/apk/login",
		"/mytv/releases", "/api/mytv/releases",
		"/getRss/:token/paylist.m3u", "/api/getRss/:token/paylist.m3u",
		"/r/:key/p.m3u", "/api/r/:key/p.m3u",
	} {
		if !have[routeKey{"GET", p}] && !have[routeKey{"POST", p}] {
			missing = append(missing, "客户端路由缺失: "+p)
		}
	}

	if len(missing) > 0 {
		sort.Strings(missing)
		t.Errorf("路由表不完整，共 %d 条：\n  %s", len(missing), joinLines(missing))
	}
}

func joinLines(items []string) string {
	out := ""
	for i, s := range items {
		if i > 0 {
			out += "\n  "
		}
		out += s
	}
	return out
}

// 后端不再有 /admin/** 下的任何路由。
func TestNoLegacyAdminRoutes(t *testing.T) {
	r := InitRouter(false)

	var left []string
	for _, rt := range r.Routes() {
		if hasPathPrefix(rt.Path, "/admin") {
			left = append(left, rt.Method+" "+rt.Path)
		}
	}
	if len(left) > 0 {
		sort.Strings(left)
		t.Errorf("/admin/** 下不应再有后端路由，实际还有 %d 条：\n  %s",
			len(left), joinLines(left))
	}
}

// 后端不再有任何页面路由。
func TestBackendServesNoPages(t *testing.T) {
	r := InitRouter(false)
	have := map[string]bool{}
	for _, rt := range r.Routes() {
		have[rt.Method+" "+rt.Path] = true
	}

	// 这些路径必须由 nginx 交给前端。
	pageGets := []string{
		"/", "/mobile", "/install", "/install-log", "/favicon.ico", "/assets/index.js",
		"/admin", "/admin/index", "/admin/users", "/admin/authors",
		"/admin/meals", "/admin/channels", "/admin/channelsSource",
		"/admin/epgsList", "/admin/epgFrom",
		"/admin/client", "/admin/clientMyTV", "/admin/admins",
		"/admin/engine", "/admin/about",
		// /admin/login 是页面；它的接口是 POST /api/login。
		"/admin/login",
	}
	for _, p := range pageGets {
		if have["GET "+p] {
			t.Errorf("GET %s 不应由后端注册：页面归 nginx 直出的前端站点", p)
		}
	}

	// 同一 URL 上「页面 + 接口」曾共存的两个特例，现在只剩接口那一半：
	for path, method := range map[string]string{
		"/version":      "GET",
		"/ChangeLog.md": "GET",
	} {
		if !have[method+" "+path] {
			t.Errorf("%s %s 应保留为兼容接口，但路由表里没有", method, path)
			continue
		}
		other := "POST"
		if method == "POST" {
			other = "GET"
		}
		if have[other+" "+path] {
			t.Errorf("%s %s 不该注册（同一 URL 上只保留 %s 一个方法）", other, path, method)
		}
	}

	for _, path := range []string{"/install", "/admin/login"} {
		if have["GET "+path] || have["POST "+path] {
			t.Errorf("%s 上不应再有后端路由：它现在是纯前端页面路径", path)
		}
	}
}

// 「接口统一 JSON」的契约

// 管理端不能有 GET。
func TestAdminRoutesArePOSTOnly(t *testing.T) {
	r := InitRouter(false)

	var bad []string
	for _, rt := range r.Routes() {
		p := rt.Path
		if !strings.HasPrefix(p, apiBase+"/") {
			continue
		}
		// 公开站点组、客户端/播放器组、登出：这几类的 GET 由外部契约决定
		if isPublicOrClientPath(p) || p == apiBase+"/logout" {
			continue
		}
		if rt.Method != http.MethodPost {
			bad = append(bad, rt.Method+" "+p)
		}
	}
	if len(bad) > 0 {
		sort.Strings(bad)
		t.Errorf("管理端接口只允许 POST + JSON，实际有 %d 条非 POST：\n  %s",
			len(bad), joinLines(bad))
	}
}

// 在线升级（api / 引擎 / 前端整包）在定制分支整体删除，只留 mytv 编译基底那组。
// 反向断言：这 8 条必须消失，mytv 那两条必须还在 —— 漏一条就是删得不干净。
func TestOnlineUpgradeRoutesAreGone(t *testing.T) {
	r := InitRouter(false)
	have := map[string]bool{}
	for _, rt := range r.Routes() {
		have[rt.Method+" "+rt.Path] = true
	}

	removed := []string{
		"updata/data",
		"updata/checkWeb", "updata/checkFront", "updata/checkEngine",
		"updata/downWeb", "updata/downFront", "updata/downEngine",
		"updata/run",
	}
	for _, name := range removed {
		p := apiBase + "/" + name
		for _, m := range []string{http.MethodGet, http.MethodPost} {
			if have[m+" "+p] {
				t.Errorf("%s %s 应随在线升级一起删除", m, p)
			}
		}
	}

	for _, name := range []string{"clientMyTV/checkBase", "clientMyTV/upgradeBase"} {
		p := apiBase + "/" + name
		if !have[http.MethodPost+" "+p] {
			t.Errorf("POST %s 必须保留：mytv 编译基底在线链路不受本次删除影响", p)
		}
	}
}

// /api/** 下允许 GET 的只有「公开站点」与「客户端」两类。
var allowedAPIGET = []string{
	"/api/site/", "/api/install/", "/api/logout",
	"/api/apk/", "/api/mytv/", "/api/getRss/", "/api/ku9/", "/api/epg/",
	"/api/r/", "/api/k/",
}

// isPublicOrClientPath 判断路径是否属于「外部契约决定方法」的那几组。
func isPublicOrClientPath(p string) bool {
	for _, prefix := range allowedAPIGET {
		if strings.HasPrefix(p, prefix) {
			return true
		}
	}
	return false
}

func TestAPIGETRoutesAreOnlyPublicOnes(t *testing.T) {
	r := InitRouter(false)

	var bad []string
	for _, rt := range r.Routes() {
		if rt.Method != http.MethodGet || !strings.HasPrefix(rt.Path, "/api/") {
			continue
		}
		if !isPublicOrClientPath(rt.Path) {
			bad = append(bad, rt.Path)
		}
	}
	if len(bad) > 0 {
		sort.Strings(bad)
		t.Errorf("以下 GET /api/** 不在白名单里：\n  %s\n"+
			"管理端接口一律 POST + JSON。若是公开只读端点，"+
			"请把它加进 allowedAPIGET 并写明理由。", joinLines(bad))
	}
}
