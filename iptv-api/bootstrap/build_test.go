package bootstrap

import "testing"

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
