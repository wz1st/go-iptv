package bootstrap

import (
	"strings"
	"testing"
)

// clientApkHost 是「站点根」到「客户端 apk 地址」的归一，两个字段语义不同：
// 配置里存站点根（服务端自己拼 /apk/channels），注入客户端的必须带 /apk 段。
func TestClientApkHost(t *testing.T) {
	cases := []struct {
		name string
		in   string
		want string
	}{
		{"站点根补 /apk", "http://10.10.220.162:8090", "http://10.10.220.162:8090/apk"},
		{"已带 /apk 不重复加", "http://10.10.220.162:8090/apk", "http://10.10.220.162:8090/apk"},
		{"末尾斜杠先去掉", "http://10.10.220.162:8090/", "http://10.10.220.162:8090/apk"},
		{"已带 /apk 且带尾斜杠", "http://10.10.220.162:8090/apk/", "http://10.10.220.162:8090/apk"},
		{"https 同样处理", "https://iptv.example.com", "https://iptv.example.com/apk"},
		{"空串仍为空串（交给上层报「地址不能为空」）", "", ""},
		{"纯空白也归一成空串", "   ", ""},
		// 子路径部署：站点挂在 /tv 下，仍只在末尾补 /apk，不动中间段。
		{"子路径部署只补末尾", "http://host/tv", "http://host/tv/apk"},
		// 末段不是 apk（如 /mytv）时也要补，否则拼出的地址客户端连不上。
		{"末段不是 apk 也要补", "http://host/mytv", "http://host/mytv/apk"},
	}
	for _, c := range cases {
		t.Run(c.name, func(t *testing.T) {
			if got := clientApkHost(c.in); got != c.want {
				t.Fatalf("clientApkHost(%q) = %q，期望 %q", c.in, got, c.want)
			}
		})
	}
}

// 反向断言：绝不能把已带 /apk 的地址再加一段，
// 否则 dataurl 会变成 /apk/apk/channels，客户端拿到的是 404。
func TestClientApkHost_NoDoubleApk(t *testing.T) {
	got := clientApkHost("http://host:8090/apk")
	if got != "http://host:8090/apk" {
		t.Fatalf("重复追加了 /apk：%q", got)
	}
}

// clientApkHostLt 是骆驼壳的基址：/apk 之上再挂一层 /lt。
// 这一层是**路由级的身份标识** —— 服务端只从路由就能认出调用方，
// 进而挑对应的登录密钥（两个壳的应用名与包名都不同，密钥必然不同）。
func TestClientApkHostLt(t *testing.T) {
	cases := []struct {
		name string
		in   string
		want string
	}{
		{"站点根补 /apk/lt", "http://10.10.220.162:8090", "http://10.10.220.162:8090/apk/lt"},
		{"已带 /apk 只补 /lt", "http://host:8090/apk", "http://host:8090/apk/lt"},
		{"末尾斜杠先去掉", "http://host:8090/apk/", "http://host:8090/apk/lt"},
		{"https 同样处理", "https://iptv.example.com", "https://iptv.example.com/apk/lt"},
		{"子路径部署只补末尾", "http://host/tv", "http://host/tv/apk/lt"},
		// 幂等：配置里手写了 /apk/lt 时不能再叠一层（叠了客户端会打到 SPA）。
		{"已带 /apk/lt 原样返回", "http://host:8090/apk/lt", "http://host:8090/apk/lt"},
		{"已带 /apk/lt 且带尾斜杠", "http://host:8090/apk/lt/", "http://host:8090/apk/lt"},
		{"空串仍为空串", "", ""},
		{"纯空白也归一成空串", "   ", ""},
	}
	for _, c := range cases {
		t.Run(c.name, func(t *testing.T) {
			if got := clientApkHostLt(c.in); got != c.want {
				t.Fatalf("clientApkHostLt(%q) = %q，期望 %q", c.in, got, c.want)
			}
		})
	}
}

// 两个壳的基址必须是不同前缀：若哪天两个函数返回同一个串，
// 按路由分流（isLuotuoShell）就失效了 —— 骆驼壳会拿到清和壳的密钥。
func TestClientApkHostLt_DiffersFromQinghe(t *testing.T) {
	qh := clientApkHost("http://host:8090")
	lt := clientApkHostLt("http://host:8090")
	if qh == lt {
		t.Fatalf("两个壳的基址相同（%q）—— 按路由分流不可能生效", lt)
	}
	if !strings.HasPrefix(lt, qh+"/") {
		t.Fatalf("骆驼壳基址 %q 不是清和壳基址 %q 的子路径", lt, qh)
	}
}
