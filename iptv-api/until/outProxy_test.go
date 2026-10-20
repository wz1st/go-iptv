package until

import (
	"fmt"
	"net/http"
	"net/http/httptest"
	"net/url"
	"strconv"
	"strings"
	"testing"

	"iptv-api/dto"
)

// 出网代理：协议归一、作用范围、地址拼接、保存前测试的失败分类。

// hostPort 把 httptest 的地址拆成 host/port，配进 OutProxy。
func hostPort(t *testing.T, rawURL string) (string, int64) {
	t.Helper()
	u, err := url.Parse(rawURL)
	if err != nil {
		t.Fatal(err)
	}
	port, err := strconv.Atoi(u.Port())
	if err != nil {
		t.Fatal(err)
	}
	return u.Hostname(), int64(port)
}

// withTestTargets 把保存前要访问的「境外站点」换成本地测试服务。
// proxyTestTargets 是包级变量正是为了这个 —— 真去敲 github/google 的测试
// 在离线环境里必失败，而失败分类恰恰是要测的东西。
func withTestTargets(t *testing.T, targets ...string) {
	t.Helper()
	old := proxyTestTargets
	list := make([]struct {
		name string
		url  string
	}, 0, len(targets))
	for i, u := range targets {
		list = append(list, struct {
			name string
			url  string
		}{name: fmt.Sprintf("t%d", i), url: u})
	}
	proxyTestTargets = list
	t.Cleanup(func() { proxyTestTargets = old })
}

func TestNormalizeProxyType(t *testing.T) {
	for in, want := range map[string]string{
		"":         ProxyTypeNone,
		"none":     ProxyTypeNone,
		"None":     ProxyTypeNone,
		"  http  ": ProxyTypeHttp,
		// "https" 不等于 http 代理：它是「代理服务器本身走 TLS」，
		// 混同会让填错的人撞上一个连不上的代理，所以按认不出来处理。
		"HTTPS":          ProxyTypeNone,
		"socks5://":      ProxyTypeSocks5,
		"SOCKS5H":        ProxyTypeSocks5,
		"ftp":            ProxyTypeNone, // 认不出来的协议按「无代理」处理，不报错也不误开
		"http://1.2.3.4": ProxyTypeHttp,
		"socks5://1.2.3": ProxyTypeSocks5,
	} {
		if got := NormalizeProxyType(in); got != want {
			t.Errorf("NormalizeProxyType(%q) = %q, 期望 %q", in, got, want)
		}
	}
}

// 半截配置（没地址 / 没端口 / 端口越界）一律按「不走代理」处理：
// 拿它去拨号会让本该成功的更新直接失败，比直连糟得多。
func TestOutProxyEnabledRejectsHalfFilledConfig(t *testing.T) {
	base := dto.OutProxy{Type: "socks5", Host: "1.2.3.4", Port: 1080, UseUp: 1}
	for name, mut := range map[string]func(p *dto.OutProxy){
		"协议为空":   func(p *dto.OutProxy) { p.Type = "" },
		"协议非法":   func(p *dto.OutProxy) { p.Type = "ftp" },
		"地址为空":   func(p *dto.OutProxy) { p.Host = "  " },
		"端口为零":   func(p *dto.OutProxy) { p.Port = 0 },
		"端口越界":   func(p *dto.OutProxy) { p.Port = 70000 },
		"地址只有空格": func(p *dto.OutProxy) { p.Host = "\t" },
	} {
		p := base
		mut(&p)
		cfg := newTestConfig(t)
		cfg.OutProxy = p
		if OutProxyEnabled(ProxyUseUp) {
			t.Errorf("%s 时不该判定为走代理", name)
		}
	}
}

// 四个作用范围各走各的：勾了在线升级不该顺带把 EPG 也代理掉。
func TestOutProxyEnabledPerPurpose(t *testing.T) {
	cfg := newTestConfig(t)
	cfg.OutProxy = dto.OutProxy{Type: "http", Host: "10.0.0.9", Port: 8080, UseUp: 1}

	if !OutProxyEnabled(ProxyUseUp) {
		t.Error("勾了在线升级却判定不走代理")
	}
	for _, p := range []int{ProxyUseEpg, ProxyUseSrc, ProxyUseRelay} {
		if OutProxyEnabled(p) {
			t.Errorf("未勾选的用途 %d 不该走代理", p)
		}
	}

	cfg.OutProxy.UseEpg = 1
	cfg.OutProxy.UseSrc = 1
	cfg.OutProxy.UseRelay = 1
	for _, p := range []int{ProxyUseEpg, ProxyUseSrc, ProxyUseRelay} {
		if !OutProxyEnabled(p) {
			t.Errorf("已勾选的用途 %d 仍判定不走代理", p)
		}
	}
}

// 地址框里粘进整个 "socks5://1.2.3.4:1080" 或带端口的写法都要吃得下。
func TestOutProxyURLForNormalizesHost(t *testing.T) {
	cfg := newTestConfig(t)
	cfg.OutProxy = dto.OutProxy{Type: "socks5", Host: "socks5://1.2.3.4:1080", Port: 1080, UseUp: 1}

	u := OutProxyURLFor(ProxyUseUp)
	if u == nil {
		t.Fatal("应能拼出代理地址")
	}
	if u.Scheme != "socks5" || u.Host != "1.2.3.4:1080" {
		t.Errorf("地址没归一: %q", u.String())
	}

	// 只填地址、端口留 0，但地址里带了端口 ⇒ 用地址里的
	cfg.OutProxy.Host = "1.2.3.4:1081"
	cfg.OutProxy.Port = 0
	u = OutProxyURLFor(ProxyUseUp)
	if u == nil || u.Host != "1.2.3.4:1081" {
		t.Errorf("地址里带的端口没被采用: %v", u)
	}
}

// 账号密码开关关着时，配置里残留的 User/Pwd 一律不生效。
func TestOutProxyURLForAuthSwitch(t *testing.T) {
	cfg := newTestConfig(t)
	cfg.OutProxy = dto.OutProxy{
		Type: "http", Host: "10.0.0.9", Port: 8080, UseUp: 1,
		AuthOn: 0, User: "alice", Pwd: "secret",
	}
	u := OutProxyURLFor(ProxyUseUp)
	if u == nil || u.User != nil {
		t.Fatalf("开关关着不该带账密: %v", u)
	}

	cfg.OutProxy.AuthOn = 1
	u = OutProxyURLFor(ProxyUseUp)
	if u == nil || u.User == nil {
		t.Fatal("开关打开后应带上账密")
	}
	if u.User.Username() != "alice" {
		t.Errorf("用户名不对: %q", u.User.Username())
	}
	pw, _ := u.User.Password()
	if pw != "secret" {
		t.Errorf("密码不对: %q", pw)
	}
}

// 未启用该用途时返回 nil —— 调用方据此走直连，不必各自再分叉。
func TestOutProxyURLForNilWhenPurposeOff(t *testing.T) {
	cfg := newTestConfig(t)
	cfg.OutProxy = dto.OutProxy{Type: "socks5", Host: "1.2.3.4", Port: 1080, UseUp: 1}
	if u := OutProxyURLFor(ProxyUseEpg); u != nil {
		t.Fatalf("未勾选的用途不该拿到代理地址: %v", u)
	}
}

// 保存前测试：分清「代理连不通」与「代理能连但出不去境外」。
func TestTestOutProxyClassifiesFailures(t *testing.T) {
	// 一个「连得上但回 502」的本地 HTTP 代理
	badProxy := httptest.NewServer(http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		w.WriteHeader(http.StatusBadGateway)
	}))
	defer badProxy.Close()
	ph, pp := hostPort(t, badProxy.URL)

	// 一个「转发成功」的本地 HTTP 代理
	goodProxy := httptest.NewServer(http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		w.WriteHeader(http.StatusNoContent)
	}))
	defer goodProxy.Close()
	gh, gp := hostPort(t, goodProxy.URL)

	target := httptest.NewServer(http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		w.WriteHeader(http.StatusNoContent)
	}))
	defer target.Close()
	withTestTargets(t, target.URL, target.URL)

	// ① 代理通、目标通 ⇒ 通过
	res := TestOutProxy(dto.OutProxy{Type: "http", Host: gh, Port: gp})
	if !res.OK {
		t.Errorf("可用代理应判通过，实际 %+v", res)
	}

	// ② 代理通、目标返 5xx ⇒ 能连但访问不了境外
	res = TestOutProxy(dto.OutProxy{Type: "http", Host: ph, Port: pp})
	if res.OK || res.FailType != ProxyFailOverseas {
		t.Errorf("应判 overseas，实际 %+v", res)
	}

	// ③ 代理端口没人监听 ⇒ 连不通
	res = TestOutProxy(dto.OutProxy{Type: "http", Host: "127.0.0.1", Port: 1})
	if res.OK || res.FailType != ProxyFailDial {
		t.Errorf("应判 dial，实际 %+v", res)
	}

	// ④ SOCKS5 协议填了、地址没人监听 ⇒ 同样归 dial
	res = TestOutProxy(dto.OutProxy{Type: "socks5", Host: "127.0.0.1", Port: 1})
	if res.OK || res.FailType != ProxyFailDial {
		t.Errorf("socks5 失败应判 dial，实际 %+v", res)
	}

	// ⑤ 地址没填 ⇒ 直接判 dial，detail 要说清是地址问题
	res = TestOutProxy(dto.OutProxy{Type: "http", Port: 8080})
	if res.OK || res.FailType != ProxyFailDial {
		t.Errorf("空地址应判 dial，实际 %+v", res)
	}
	if !strings.Contains(res.Detail, "地址") {
		t.Errorf("detail 要说明是地址没填对: %q", res.Detail)
	}
}

// 选「无代理」时也要实测：直连得通就放行，免得把没配代理的正常机器拦在门外。
func TestTestOutProxyWithoutProxyChecksDirect(t *testing.T) {
	target := httptest.NewServer(http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		w.WriteHeader(http.StatusNoContent)
	}))
	defer target.Close()
	withTestTargets(t, target.URL, target.URL)

	res := TestOutProxy(dto.OutProxy{})
	if !res.OK {
		t.Errorf("无代理且直连得通应放行，实际 %+v", res)
	}
}
