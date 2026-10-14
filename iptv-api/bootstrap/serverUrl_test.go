package bootstrap

import (
	"net/url"
	"strings"
	"testing"
)

// TestNormalizeServerURL_StripPath 是这次改动的核心断言：
// **存进 config.yml 的只能是站点根**（末尾那段 apk 路由不能留在配置里）。
//
// 每条用例都钉住一个具体的历史故障：
//   - 带 /apk      → 服务端自己拼 dataurl 会变成 /apk/apk/… 404
//   - 带 /apk/lt   → 清和壳按 /apk 补会叠成 /apk/apk/lt
//   - 末尾多斜杠  → 补出来是 //apk，客户端拼 /login 时多一个斜杠
//   - 裸地址      → 必须原样返回（幂等，可反复调用）
func TestNormalizeServerURL_StripPath(t *testing.T) {
	cases := []struct {
		name string
		in   string
		want string
	}{
		{"裸地址原样", "http://10.10.220.162:18160", "http://10.10.220.162:18160"},
		{"剥掉 /apk", "http://10.10.220.162:18160/apk", "http://10.10.220.162:18160"},
		{"剥掉 /apk/lt", "http://10.10.220.162:18160/apk/lt", "http://10.10.220.162:18160"},
		{"末尾斜杠", "http://host:8090/", "http://host:8090"},
		{"末尾多斜杠", "http://host:8090///", "http://host:8090"},
		{"path 前带斜杠", "http://host:8090/apk/", "http://host:8090"},
		{"https 不受影响", "https://iptv.example.com/apk", "https://iptv.example.com"},
		{"带域名无端口", "http://iptv.example.com/apk/lt", "http://iptv.example.com"},
		{"大写 APK 也剥", "http://host:8090/APK", "http://host:8090"},
		// ★子路径部署必须**保留**（既有契约，见 build_test.go 同名用例）：
		// /tv 是部署前缀不是我们的路由，剥了会从 http://host/tv/apk
		// 变成 http://host/apk，客户端直接连不上。
		{"子路径部署原样保留", "http://host/tv", "http://host/tv"},
		{"子路径 + 末段是 apk 才剥", "http://host/tv/apk", "http://host/tv"},
		{"无关末段保留", "http://host/mytv", "http://host/mytv"},
		{"多段里含 apk 但不在末尾也保留", "http://host/apk/tv", "http://host/apk/tv"},
		// 非法输入**原样返回**，不能静默清空 ——
		// 否则用户会以为"地址被系统擦了"，实际是自己填错了没看到报错。
		{"空串", "", ""},
		{"全空白", "   ", ""},
		{"无 scheme 的非法串", "不是地址", "不是地址"},
	}
	for _, c := range cases {
		if got := normalizeServerURL(c.in); got != c.want {
			t.Errorf("%s: normalizeServerURL(%q) = %q，期望 %q", c.name, c.in, got, c.want)
		}
	}
}

// TestNormalizeServerURL_Idempotent 保证可反复调用 ——
// 保存时调一次、编译时调一次，两次结果必须相同，否则会出现
// "编译用的地址和存盘的地址对不上"这种极难查的问题。
func TestNormalizeServerURL_Idempotent(t *testing.T) {
	for _, in := range []string{
		"http://host:8090",
		"http://host:8090/apk",
		"http://host:8090/apk/lt",
		"http://host:8090/apk/lt/",
	} {
		once := normalizeServerURL(in)
		twice := normalizeServerURL(once)
		if once != twice {
			t.Errorf("不幂等：normalizeServerURL(normalizeServerURL(%q)) = %q，首次 = %q",
				in, twice, once)
		}
	}
}

// TestNormalizeServerURL_DoesNotTouchHost 确认只剥末尾那段路由，
// 不会误伤 scheme/host/port —— 特别是 "//" 不能被当 path 起点
// （用 strings.Index(trimmed, "/") 切 "http://h" 会切出 "http:" 这种废串）。
func TestNormalizeServerURL_DoesNotTouchHost(t *testing.T) {
	got := normalizeServerURL("http://10.10.220.162:18160/apk/lt")
	if got != "http://10.10.220.162:18160" {
		t.Fatalf("host/port 被破坏了：%q", got)
	}
	// scheme 必须完整 —— 截断成 "http:" 会被 http.Get 拒绝，
	// 而报错（unsupported protocol scheme）完全指不回真因。
	if !strings.HasPrefix(got, "http://") {
		t.Fatalf("scheme 被截断：%q", got)
	}
	if u, err := url.Parse(got); err != nil || u.Host == "" || u.Scheme != "http" {
		t.Fatalf("解析结果不合法：%q（err=%v）", got, err)
	}
}

// TestClientApkHost_AfterNormalize 验证「归一 + 补 path」这条链路端到端：
// 用户填什么形式（裸 / 带路由段 / 带子路径）都该补出**唯一正确**的地址。
func TestClientApkHost_AfterNormalize(t *testing.T) {
	cases := []struct{ in, want string }{
		{"http://host:8090", "http://host:8090/apk"},
		{"http://host:8090/", "http://host:8090/apk"},
		{"http://host:8090/apk", "http://host:8090/apk"},
		{"http://host:8090/apk/", "http://host:8090/apk"},
		// 误填了骆驼壳的路由段，清和壳要能纠回来（而不是叠成 /apk/apk/lt）
		{"http://host:8090/apk/lt", "http://host:8090/apk"},
		// 子路径部署：/tv 是部署前缀，必须保留
		{"http://host/tv", "http://host/tv/apk"},
		{"http://host/tv/apk", "http://host/tv/apk"},
	}
	for _, c := range cases {
		if got := clientApkHost(c.in); got != c.want {
			t.Errorf("clientApkHost(%q) = %q，期望 %q", c.in, got, c.want)
		}
	}
}

// TestClientApkHostLt_AfterNormalize 骆驼壳侧同理，唯一结果必须是 /apk/lt。
func TestClientApkHostLt_AfterNormalize(t *testing.T) {
	cases := []struct{ in, want string }{
		{"http://host:8090", "http://host:8090/apk/lt"},
		{"http://host:8090/", "http://host:8090/apk/lt"},
		{"http://host:8090/apk", "http://host:8090/apk/lt"},
		{"http://host:8090/apk/lt", "http://host:8090/apk/lt"},
		{"http://host:8090/apk/lt/", "http://host:8090/apk/lt"},
		// 子路径部署同样保留
		{"http://host/tv", "http://host/tv/apk/lt"},
		{"http://host/tv/apk", "http://host/tv/apk/lt"},
	}
	for _, c := range cases {
		if got := clientApkHostLt(c.in); got != c.want {
			t.Errorf("clientApkHostLt(%q) = %q，期望 %q", c.in, got, c.want)
		}
	}
}

// TestClientApkHostLt_NoDoubleAppend 是那条被注释里反复提到的坑：
// 手填过 /apk/lt 的地址不能叠成 /apk/apk/lt 或 /apk/lt/apk/lt
// （客户端拿到的是 SPA 的 HTML，表现为"登录失败"而服务端日志无异常）。
func TestClientApkHostLt_NoDoubleAppend(t *testing.T) {
	got := clientApkHostLt("http://host:8090/apk/lt")
	if got != "http://host:8090/apk/lt" {
		t.Fatalf("被重复追加：%q", got)
	}
	if strings.Count(got, "/apk") != 1 {
		t.Fatalf("出现重复 /apk 段：%q", got)
	}
	if strings.Contains(got, "/lt/apk") || strings.Contains(got, "/apk/apk") {
		t.Fatalf("path 叠了：%q", got)
	}
}

// TestClientApkHost_Empty 空地址必须返回空串，不能拼出 "/apk"
// —— 那会让客户端拿着 "/apk" 当绝对地址去请求。
func TestClientApkHost_Empty(t *testing.T) {
	if got := clientApkHost(""); got != "" {
		t.Errorf("clientApkHost(\"\") = %q，期望空串", got)
	}
	if got := clientApkHostLt(""); got != "" {
		t.Errorf("clientApkHostLt(\"\") = %q，期望空串", got)
	}
	if got := clientApkHost("   "); got != "" {
		t.Errorf("clientApkHost(空白) = %q，期望空串", got)
	}
}

// TestNormalizeServerURL_Exported 确认导出的入口与内部函数是同一套逻辑 ——
// 保存走 NormalizeServerURL、编译走 normalizeServerURL，
// 两者一旦分叉就会出现"存的是一种、编的是另一种"。
func TestNormalizeServerURL_Exported(t *testing.T) {
	const in = "http://host:8090/apk/lt"
	if NormalizeServerURL(in) != normalizeServerURL(in) {
		t.Fatal("导出入口与内部函数行为不一致")
	}
}
