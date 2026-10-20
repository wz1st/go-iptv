package until

import (
	"context"
	"fmt"
	"net"
	"net/http"
	"net/url"
	"strconv"
	"strings"
	"time"

	"iptv-api/dao"
	"iptv-api/dto"
)

// 出网代理（config.yml 的 out_proxy 段）。
//
// ## 与中转是两回事
//
// 「中转」是引擎侧的 IPTV 取流反向代理（proxy/proxy.go，127.0.0.1:8080），
// 走的是 TCP 长连接；出网代理是本进程发出去的 HTTP 请求（SOCKS5 / HTTP CONNECT）。
// 两者唯一的交集是「中转取流也能借用出网代理」，且中转只支持 SOCKS5。

// 代理协议。空串与 "none" 都表示不启用 —— 老配置里没有这一项，
// 读出来是空串，若只认 "none" 就会把没配代理的机器判成「配了个非法协议」。
const (
	ProxyTypeNone   = ""
	ProxyTypeSocks5 = "socks5"
	ProxyTypeHttp   = "http"
)

// 代理作用范围。**加用途时必须同时改前端的作用范围勾选项**，
// 否则会多出一个用户永远勾不上的开关（或者反过来：勾了却不生效）。
const (
	ProxyUseEpg   = iota // EPG 更新
	ProxyUseSrc          // 频道源更新
	ProxyUseUp           // 在线升级
	ProxyUseRelay        // 中转取流（引擎侧生效，限 SOCKS5）
	ProxyUseCount
)

// GetOutProxy 读当前出网代理配置。cfg 为空时返回零值（等价于「无代理」）。
func GetOutProxy() dto.OutProxy {
	cfg := dao.GetConfig()
	if cfg == nil {
		return dto.OutProxy{}
	}
	return cfg.OutProxy
}

// NormalizeProxyType 把用户填的协议名收敛成三个合法值之一。
// 容错两件事：大小写（"SOCKS5"）、以及把整串代理地址粘进了协议栏
// （"socks5://1.2.3.4:1080"）—— 前者打错一个字母，后者是从地址栏复制串行，
// 两种都不该让人对着一个"配置无效"的界面发呆。
func NormalizeProxyType(s string) string {
	t := strings.ToLower(strings.TrimSpace(s))
	if i := strings.Index(t, "://"); i >= 0 {
		t = t[:i]
	}
	// "socks5h" 是 SOCKS5 的「域名交给代理解析」变体，本地 DNS 不可用时才有意义，
	// 这里统一当 socks5 —— Go 标准库两种都支持，但配置里不必让用户分辨。
	if t == "socks5h" {
		t = ProxyTypeSocks5
	}
	switch t {
	case ProxyTypeSocks5, ProxyTypeHttp:
		return t
	default:
		return ProxyTypeNone
	}
}

// resolveProxyAddr 从配置里取出可用的 host/port。
//
// 地址框里可能带 scheme（"socks5://1.2.3.4"）、也可能自带端口
// （"1.2.3.4:1081"）—— 用户把整串代理地址粘进来是常事。**地址里自带的端口
// 优先于端口输入框**：地址框里写的东西更具体，而端口框空着（0）时也只有
// 地址里的那个能用。
func resolveProxyAddr(p dto.OutProxy) (string, int64) {
	host := strings.TrimSpace(p.Host)
	if i := strings.Index(strings.ToLower(host), "://"); i >= 0 {
		host = host[i+3:]
	}
	host = strings.TrimSuffix(host, "/")
	port := p.Port
	if h, ps, err := net.SplitHostPort(host); err == nil && h != "" {
		host = h
		if n, err := strconv.Atoi(ps); err == nil && n > 0 {
			port = int64(n)
		}
	}
	return host, port
}

// NormalizeOutProxy 把一份提交上来的代理配置收敛成可直接落盘的形态：
// 协议归一、地址去 scheme、开关关着时清掉账密、没选协议时清空地址。
//
// service 与测试都走这一个入口 —— 各处各归一一次，迟早会在某处漏掉一条。
func NormalizeOutProxy(in dto.OutProxy) dto.OutProxy {
	out := in
	out.Type = NormalizeProxyType(in.Type)
	host, port := resolveProxyAddr(in)
	out.Host, out.Port = host, port
	if out.Type == ProxyTypeNone {
		out.Host, out.Port, out.AuthOn, out.User, out.Pwd = "", 0, 0, "", ""
	}
	if out.AuthOn != 1 {
		out.User, out.Pwd = "", ""
	}
	return out
}

// OutProxyEnabled 报告该用途是否要走代理。
//
// 半截配置（没地址 / 端口越界 / 协议认不出）一律返回 false ——
// 拿它去拨号会让本该成功的更新直接失败，比直连糟得多。
func OutProxyEnabled(purpose int) bool {
	p := GetOutProxy()
	host, port := resolveProxyAddr(p)
	if NormalizeProxyType(p.Type) == ProxyTypeNone || host == "" || port <= 0 || port > 65535 {
		return false
	}
	switch purpose {
	case ProxyUseEpg:
		return p.UseEpg == 1
	case ProxyUseSrc:
		return p.UseSrc == 1
	case ProxyUseUp:
		return p.UseUp == 1
	case ProxyUseRelay:
		return p.UseRelay == 1
	}
	return false
}

// OutProxyURLFor 拼出该用途的代理 URL；不该走代理时返回 nil。
//
// 账号密码写进 URL 的 userinfo：Go 标准库的 Transport 对 socks5 与 http
// 都会自动取（http 走 Proxy-Authorization，socks5 走握手里的账密），
// 不需要各自再实现一遍认证。
func OutProxyURLFor(purpose int) *url.URL {
	if !OutProxyEnabled(purpose) {
		return nil
	}
	p := GetOutProxy()
	host, port := resolveProxyAddr(p)
	u := &url.URL{
		Scheme: NormalizeProxyType(p.Type),
		Host:   net.JoinHostPort(host, strconv.FormatInt(port, 10)),
	}
	if p.AuthOn == 1 && p.User != "" {
		u.User = url.UserPassword(p.User, p.Pwd)
	}
	return u
}

// outProxyDialer 出网代理统一的拨号与超时参数。取流类长连接不在此列。
func outProxyDialer() *net.Dialer {
	return &net.Dialer{Timeout: 10 * time.Second, KeepAlive: 30 * time.Second}
}

// OutProxyTransport 按用途给出一个带代理的 Transport；不该走代理时
// Proxy 为 nil（即直连），调用方不必再分叉。
//
// 不要用 Setenv("PROXY", ...) 的老做法：Go 的 http.DefaultTransport 会读它，
// 于是所有没打算走代理的请求也会被代理 —— service/adminClientService.go 里
// 测「站点可达」的地方正是特意把 Proxy 置 nil 来躲环境变量的。
func OutProxyTransport(purpose int) *http.Transport {
	return outProxyTransport(OutProxyURLFor(purpose))
}

func outProxyTransport(u *url.URL) *http.Transport {
	tr := &http.Transport{
		DialContext:           outProxyDialer().DialContext,
		TLSHandshakeTimeout:   10 * time.Second,
		ResponseHeaderTimeout: 15 * time.Second,
	}
	if u != nil {
		tr.Proxy = http.ProxyURL(u)
	}
	return tr
}

// ProxyTestResult 是一次代理连通性测试的结论。
type ProxyTestResult struct {
	OK        bool   // 整体是否通过
	FailType  string // ""=通过；"dial"=代理连不通；"overseas"=代理能连但访问不了境外
	Stage     string // 卡在哪一步（dial/github/google），给日志用
	Detail    string // 人话原因
	LatencyMs int64  // 代理握手耗时（毫秒）
}

// 失败类型常量。别用裸字符串散落各处 —— 保存接口要把它原样回给前端，
// 前端按它选文案；这里集中定义是为了改一处就够。
const (
	ProxyFailNone     = ""
	ProxyFailDial     = "dial"
	ProxyFailOverseas = "overseas"
)

// proxyTestTargets 保存前要实测的两个境外站点。
//
// GitHub 与 Google 是两类墙的代表：国内直连时两者都不通；配了代理之后
// GitHub 通、只有 Google 不通，说明代理其实只是个国内出口 —— 这两种情况
// 对用户的意义完全不同，所以分成两个阶段分别报。
var proxyTestTargets = []struct {
	name string
	url  string
}{
	{"github", "https://api.github.com/zen"},
	{"google", "https://www.google.com/generate_204"},
}

// TestOutProxy 实测一份代理配置能不能用，**不读全局配置** ——
// 保存前测的就是「用户刚填的这份」，配置还没落盘。
//
// 三段式：先裸 TCP 连代理（分清「代理本身连不上」），再用它各访问一个
// 境外站点（分清「代理能连但出不去」）。失败类型由此确定：
// 任何一段在**建立连接**阶段失败记 dial，握手成功但 HTTP 层失败记 overseas。
func TestOutProxy(p dto.OutProxy) ProxyTestResult {
	typ := NormalizeProxyType(p.Type)
	if typ == ProxyTypeNone {
		// 无代理也要测：这时测的是「不走代理能不能访问境外」，
		// 否则一台没配代理的机器点保存会被无意义地拦下。
		return testDirectOverseas()
	}
	host, port := resolveProxyAddr(p)
	if host == "" || port <= 0 || port > 65535 {
		return ProxyTestResult{FailType: ProxyFailDial, Stage: "dial", Detail: "代理地址或端口未填写正确"}
	}
	addr := net.JoinHostPort(host, strconv.FormatInt(port, 10))

	// ① 代理本身通不通
	start := time.Now()
	conn, err := outProxyDialer().DialContext(context.Background(), "tcp", addr)
	latency := time.Since(start).Milliseconds()
	if err != nil {
		return ProxyTestResult{FailType: ProxyFailDial, Stage: "dial",
			Detail: fmt.Sprintf("连不上代理 %s：%v", addr, err)}
	}
	_ = conn.Close()

	u := &url.URL{Scheme: typ, Host: addr}
	if p.AuthOn == 1 && p.User != "" {
		u.User = url.UserPassword(p.User, p.Pwd)
	}

	// ② 经代理访问境外
	for _, t := range proxyTestTargets {
		if r, ok := testViaProxy(u, t.url); !ok {
			if r.FailType == ProxyFailDial {
				return r
			}
			return ProxyTestResult{FailType: ProxyFailOverseas, Stage: t.name,
				Detail:    fmt.Sprintf("代理 %s 能连上，但访问 %s 失败：%s", addr, t.name, r.Detail),
				LatencyMs: latency}
		}
	}
	return ProxyTestResult{OK: true, LatencyMs: latency}
}

// testDirectOverseas 无代理时逐个直连境外站点。
func testDirectOverseas() ProxyTestResult {
	for _, t := range proxyTestTargets {
		client := &http.Client{
			Timeout:   10 * time.Second,
			Transport: outProxyTransport(nil),
		}
		resp, err := client.Get(t.url)
		if err != nil {
			// 没配代理就连不上境外，这不叫「代理坏了」—— 不通过，
			// 但类型是 overseas（原因在境外那边），前端会照实提示。
			return ProxyTestResult{FailType: ProxyFailOverseas, Stage: t.name,
				Detail: fmt.Sprintf("未配置代理，直连 %s 失败：%v", t.name, err)}
		}
		_ = resp.Body.Close()
	}
	return ProxyTestResult{OK: true}
}

// testViaProxy 经指定代理访问一个 URL。
// 连接阶段失败记 dial（多半是代理挂了），HTTP 层失败记 overseas（代理能连但墙还在）。
func testViaProxy(u *url.URL, target string) (ProxyTestResult, bool) {
	client := &http.Client{Timeout: 12 * time.Second, Transport: outProxyTransport(u)}
	resp, err := client.Get(target)
	if err != nil {
		msg := err.Error()
		// net/http 的代理错误都包着 "proxyconnect" / "socks" 字样；
		// 连同超时一起算「代理这一层就没成」。
		if strings.Contains(msg, "proxyconnect") || strings.Contains(msg, "socks") {
			return ProxyTestResult{FailType: ProxyFailDial, Stage: "dial", Detail: msg}, false
		}
		return ProxyTestResult{FailType: ProxyFailOverseas, Stage: "overseas", Detail: msg}, false
	}
	defer resp.Body.Close()
	if resp.StatusCode >= 400 {
		return ProxyTestResult{FailType: ProxyFailOverseas, Stage: "http",
			Detail: fmt.Sprintf("状态码 %d", resp.StatusCode)}, false
	}
	return ProxyTestResult{OK: true}, true
}
