package until

import (
	"os"
	"path/filepath"
	"strings"
	"testing"
)

// 基底分桶语义：apktool 解包本工程基包会产出 100+ 个 values-* 目录，
// 绝大多数只含 AndroidX 的 abc_* 翻译，不含本工程的三个注入键。
// 判据必须是「所有桶合起来覆盖三键」，不是「每个桶都覆盖」。

func writeStrings(t *testing.T, dir, body string) {
	t.Helper()
	if err := os.MkdirAll(dir, 0o755); err != nil {
		t.Fatal(err)
	}
	if err := os.WriteFile(filepath.Join(dir, "strings.xml"),
		[]byte(body), 0o644); err != nil {
		t.Fatal(err)
	}
}

func readStrings(t *testing.T, dir string) string {
	t.Helper()
	b, err := os.ReadFile(filepath.Join(dir, "strings.xml"))
	if err != nil {
		t.Fatal(err)
	}
	return string(b)
}

const abcOnlyStrings = `<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="abc_action_bar_home_description">Navigate up</string>
    <string name="abc_activity_chooser_view_see_all">See all</string>
</resources>
`

const baseStrings = `<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="app_name">清和电视</string>
    <string name="qhtv_server_host">http://10.10.220.161:8090/apk</string>
    <string name="qhtv_version_name">1.0.0</string>
</resources>
`

func TestRewriteClientResources_OnlyDefaultBucketHasKeys(t *testing.T) {
	work := t.TempDir()
	res := filepath.Join(work, "res")

	// 默认桶：三键齐全
	writeStrings(t, filepath.Join(res, "values"), baseStrings)
	// 几十个只有 AndroidX 翻译的桶 —— 这类是编译失败的主因
	for _, d := range []string{
		"values-af", "values-am", "values-ar", "values-v22", "values-v26",
		"values-v30", "values-vi", "values-watch", "values-xlarge",
		"values-zh-rCN", "values-zh-rHK", "values-zh-rTW", "values-zu",
	} {
		writeStrings(t, filepath.Join(res, d), abcOnlyStrings)
	}

	v := ClientBuildValues{
		ServerURL: "http://10.10.220.162:8090/apk",
		AppName:   "定制名称",
		Version:   "1.0.1",
	}
	if err := rewriteClientResources(work, v); err != nil {
		t.Fatalf("只有默认桶有键时不该报错: %v", err)
	}

	// 默认桶的值必须真的换了
	got := readStrings(t, filepath.Join(res, "values"))
	for _, want := range []string{
		"http://10.10.220.162:8090/apk", "定制名称", v.versionName(),
	} {
		if !strings.Contains(got, want) {
			t.Errorf("默认桶没有写入 %q\n实际:\n%s", want, got)
		}
	}
	// 旧值必须被换掉，不能残留
	if strings.Contains(got, "10.10.220.161") {
		t.Errorf("旧兜底地址残留\n实际:\n%s", got)
	}
	// AndroidX 桶不该被动过
	if other := readStrings(t, filepath.Join(res, "values-af")); other != abcOnlyStrings {
		t.Errorf("AndroidX 桶被改动了:\n%s", other)
	}
}

func TestRewriteClientResources_KeysInNonDefaultBucket(t *testing.T) {
	// 反过来：键只出现在某个 values-* 桶里，也算覆盖。
	work := t.TempDir()
	res := filepath.Join(work, "res")
	writeStrings(t, filepath.Join(res, "values"), abcOnlyStrings)
	writeStrings(t, filepath.Join(res, "values-zh-rCN"), baseStrings)

	v := ClientBuildValues{
		ServerURL: "http://10.10.220.162:8090/apk",
		AppName:   "甲",
		Version:   "2.0.0",
	}
	if err := rewriteClientResources(work, v); err != nil {
		t.Fatalf("键在非默认桶时不该报错: %v", err)
	}
}

func TestRewriteClientResources_ReallyForeignBase(t *testing.T) {
	// 真缺键（所有桶都没有）必须报错，且要说清是"不是本工程编的"。
	work := t.TempDir()
	res := filepath.Join(work, "res")
	writeStrings(t, filepath.Join(res, "values"), abcOnlyStrings)
	writeStrings(t, filepath.Join(res, "values-af"), abcOnlyStrings)

	v := ClientBuildValues{
		ServerURL: "http://x/apk", AppName: "甲", Version: "1.0.0",
	}
	err := rewriteClientResources(work, v)
	if err == nil {
		t.Fatal("所有桶都缺键时必须报错")
	}
	for _, k := range []string{ResKeyAppName, ResKeyServerHost, ResKeyVersion} {
		if !strings.Contains(err.Error(), k) {
			t.Errorf("报错里应点名缺失键 %s，实际: %v", k, err)
		}
	}
}

func TestRewriteClientResources_NoStringsAtAll(t *testing.T) {
	work := t.TempDir()
	if err := os.MkdirAll(filepath.Join(work, "res", "values"), 0o755); err != nil {
		t.Fatal(err)
	}
	v := ClientBuildValues{
		ServerURL: "http://x/apk", AppName: "甲", Version: "1.0.0",
	}
	err := rewriteClientResources(work, v)
	if err == nil || !strings.Contains(err.Error(), "strings.xml") {
		t.Fatalf("完全没有 strings.xml 时应报对应错误，实际: %v", err)
	}
}

func TestPatchStringXml_PreservesOtherAttrs(t *testing.T) {
	dir := t.TempDir()
	p := filepath.Join(dir, "strings.xml")
	// 带 translatable / formatted 等属性，替换后必须保留
	body := `<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="app_name" translatable="false" formatted="false">旧名</string>
</resources>
`
	if err := os.WriteFile(p, []byte(body), 0o644); err != nil {
		t.Fatal(err)
	}
	hit := map[string]bool{}
	want := map[string]string{ResKeyAppName: "新名 & <带符号>"}
	if err := patchStringXml(p, want, hit); err != nil {
		t.Fatal(err)
	}
	got := readStrings(t, dir)
	if !strings.Contains(got, `translatable="false"`) || !strings.Contains(got, `formatted="false"`) {
		t.Errorf("原标签属性被丢掉:\n%s", got)
	}
	if !strings.Contains(got, "新名 &amp; &lt;带符号&gt;") {
		t.Errorf("新值未做 XML 转义:\n%s", got)
	}
	if !hit[ResKeyAppName] {
		t.Error("hit 未被记录")
	}
}

// ---------- 骆驼壳（ez 壳）的地址在 smali 里 ----------

// 骆驼壳基底只有 app_name 是 string 资源；地址与版本号都不走资源。
// 若仍按清和壳那样要求三键齐全，编译会直接失败（"找不到资源键 qhtv_*"）。
func TestRewriteClientResources_LuotuoOnlyNeedsAppName(t *testing.T) {
	work := t.TempDir()
	res := filepath.Join(work, "res")
	writeStrings(t, filepath.Join(res, "values"), `<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="app_name">清和电视</string>
    <string name="abc_action_bar_home_description">Navigate up</string>
</resources>
`)
	v := ClientBuildValues{
		ServerURL:   "http://10.10.220.162:8090/apk",
		AppName:     "骆驼电视",
		Version:     "1.0.0",
		HostInSmali: true,
	}
	if err := rewriteClientResources(work, v); err != nil {
		t.Fatalf("骆驼壳只缺 qhtv_* 两键时不该报错: %v", err)
	}
	if got := readStrings(t, filepath.Join(res, "values")); !strings.Contains(got, "骆驼电视") {
		t.Errorf("app_name 未写入:\n%s", got)
	}
}

func writeSmali(t *testing.T, root, rel, body string) {
	t.Helper()
	p := filepath.Join(root, filepath.FromSlash(rel))
	if err := os.MkdirAll(filepath.Dir(p), 0o755); err != nil {
		t.Fatal(err)
	}
	if err := os.WriteFile(p, []byte(body), 0o644); err != nil {
		t.Fatal(err)
	}
}

const ltSplashSmali = `    const-string v0, "http://10.10.220.161/iptv"
    sput-object v0, Lcom/eztv/powerful/SplashActivity;->n:Ljava/lang/String;
    const-string v0, "http://10.10.220.161/iptv/getepg"
    const-string v0, "http://10.10.220.161/iptv/weather"
    const-string v1, "http://v.baidu.com/commonapi/x?y=1&z"
`

func TestPatchClientHostInSmali_RewritesAllIptvLiterals(t *testing.T) {
	work := t.TempDir()
	writeSmali(t, work, "smali/com/eztv/powerful/SplashActivity.smali", ltSplashSmali)

	if err := patchClientHostInSmali(work, "http://10.10.220.162:8090/apk"); err != nil {
		t.Fatalf("应能替换: %v", err)
	}
	b, err := os.ReadFile(filepath.Join(work, "smali", "com", "eztv", "powerful", "SplashActivity.smali"))
	if err != nil {
		t.Fatal(err)
	}
	got := string(b)
	for _, want := range []string{
		`"http://10.10.220.162:8090/apk"`,
		`"http://10.10.220.162:8090/apk/getepg"`,
		`"http://10.10.220.162:8090/apk/weather"`,
	} {
		if !strings.Contains(got, want) {
			t.Errorf("缺少 %s\n实际:\n%s", want, got)
		}
	}
	if strings.Contains(got, "10.10.220.161") {
		t.Errorf("旧兜底地址残留:\n%s", got)
	}
	// 与本站无关的地址不该被动
	if !strings.Contains(got, `"http://v.baidu.com/commonapi/x?y=1&z"`) {
		t.Errorf("无关地址被误改:\n%s", got)
	}
}

// 命中 0 次必须报错：静默放过会编出「指向基底里写死地址」的包 ——
// 编译成功、装得上、连不上。
func TestPatchClientHostInSmali_NoMatchIsFatal(t *testing.T) {
	work := t.TempDir()
	writeSmali(t, work, "smali/com/eztv/powerful/SplashActivity.smali",
		"    const-string v0, \"https://example.com/whatever\"\n")

	err := patchClientHostInSmali(work, "http://10.10.220.162:8090/apk")
	if err == nil {
		t.Fatal("找不到注入点时必须报错")
	}
	if !strings.Contains(err.Error(), "/iptv") || !strings.Contains(err.Error(), "/apk/lt") {
		t.Errorf("报错应点名两种注入点形态，实际: %v", err)
	}
}

// 现行基底的地址形态是 `<站点>/apk/lt`（不是历史的 `/iptv`）。
//
// 这条是回归钉子：早期正则只认「以 /iptv 结尾」，对现行形态一个真地址都匹配
// 不到，却命中了 PlayerActivity$50 里那条以中文开头的 GitHub 分享文案，
// 命中数 1 ≠ 0 于是闸门放行 —— 编出来的包仍指向基底里写死的旧地址，
// 表现为「编译成功、装得上、连不上」，服务端日志毫无异常。
func TestPatchClientHostInSmali_RewritesApkLtLiterals(t *testing.T) {
	work := t.TempDir()
	writeSmali(t, work, "smali/com/eztv/powerful/SplashActivity.smali",
		"    const-string v0, \"https://iptv.qingh.xyz/apk/lt\"\n"+
			"    sput-object v0, Lcom/eztv/powerful/SplashActivity;->n:Ljava/lang/String;\n")
	writeSmali(t, work, "smali/com/eztv/powerful/PlayerActivity.smali",
		"    const-string v0, \"https://iptv.qingh.xyz/apk/lt/weather\"\n"+
			"    const-string v0, \"https://iptv.qingh.xyz/apk/lt/getepg\"\n")
	// 真实存在于骆驼壳里的分享文案：以中文开头，结尾恰好是 …/iptv。
	writeSmali(t, work, "smali/com/eztv/powerful/PlayerActivity$50.smali",
		"    const-string v2, \"\\u6211\\u5728\\u4f7f\\u7528 https://github.com/wz1st/iptv\"\n")

	if err := patchClientHostInSmali(work, "http://10.10.220.162:18098/apk/lt"); err != nil {
		t.Fatalf("应能替换: %v", err)
	}
	splash, err := os.ReadFile(filepath.Join(work, "smali", "com", "eztv", "powerful", "SplashActivity.smali"))
	if err != nil {
		t.Fatal(err)
	}
	if !strings.Contains(string(splash), `"http://10.10.220.162:18098/apk/lt"`) {
		t.Errorf("主地址未替换:\n%s", string(splash))
	}
	player, err := os.ReadFile(filepath.Join(work, "smali", "com", "eztv", "powerful", "PlayerActivity.smali"))
	if err != nil {
		t.Fatal(err)
	}
	for _, want := range []string{
		`"http://10.10.220.162:18098/apk/lt/weather"`,
		`"http://10.10.220.162:18098/apk/lt/getepg"`,
	} {
		if !strings.Contains(string(player), want) {
			t.Errorf("缺少 %s\n实际:\n%s", want, string(player))
		}
	}
	if strings.Contains(string(player), "iptv.qingh.xyz") {
		t.Errorf("旧站点地址残留:\n%s", string(player))
	}
	// 反向断言：分享文案必须原样保留 —— 它正是被误改过的那个串。
	share, err := os.ReadFile(filepath.Join(work, "smali", "com", "eztv", "powerful", "PlayerActivity$50.smali"))
	if err != nil {
		t.Fatal(err)
	}
	if !strings.Contains(string(share), "https://github.com/wz1st/iptv") {
		t.Errorf("分享文案里的 GitHub 地址被误改:\n%s", string(share))
	}
}

// 现行基底在 0.32.1 起把地址解码成 const-string/jumbo（串索引越过 0xFFFF）。
// 替换正则必须同时认 const-string 与 const-string/jumbo，否则一个真地址都
// 匹配不到、命中数 0 ⇒ 编译失败（服务端报「找不到服务端地址字面量」）。
func TestPatchClientHostInSmali_JumboVariantIsRewritten(t *testing.T) {
	work := t.TempDir()
	writeSmali(t, work, "smali/com/eztv/powerful/SplashActivity.smali",
		"    const-string v0, \"https://iptv.qingh.xyz/apk/lt\"\n")
	writeSmali(t, work, "smali/com/eztv/powerful/PlayerActivity.smali",
		"    const-string/jumbo v0, \"https://iptv.qingh.xyz/apk/lt/getepg\"\n")

	if err := patchClientHostInSmali(work, "http://10.10.220.162:18098/apk/lt"); err != nil {
		t.Fatalf("jumbo 地址应当被替换: %v", err)
	}
	jumbo, err := os.ReadFile(filepath.Join(work, "smali", "com", "eztv", "powerful", "PlayerActivity.smali"))
	if err != nil {
		t.Fatal(err)
	}
	if !strings.Contains(string(jumbo), `"http://10.10.220.162:18098/apk/lt/getepg"`) {
		t.Errorf("jumbo 地址未被替换:\n%s", string(jumbo))
	}
	if strings.Contains(string(jumbo), "iptv.qingh.xyz") {
		t.Errorf("旧站点地址残留:\n%s", string(jumbo))
	}
}

// 带子路径的地址（<host>/getepg、<host>/weather）是**正确形态**，
// 不是残留 —— 早期版本用 `lit != host` 判定，把它们全误报成漏网。
func TestPatchClientHostInSmali_SubPathIsNotLeftover(t *testing.T) {
	work := t.TempDir()
	writeSmali(t, work, "smali/com/eztv/powerful/SplashActivity.smali",
		"    const-string v0, \"https://iptv.qingh.xyz/apk/lt\"\n")
	writeSmali(t, work, "smali/com/eztv/powerful/PlayerActivity.smali",
		"    const-string v0, \"https://iptv.qingh.xyz/apk/lt/weather\"\n"+
			"    const-string v0, \"https://iptv.qingh.xyz/apk/lt/getepg\"\n")

	if err := patchClientHostInSmali(work, "http://10.10.220.162:18098/apk/lt"); err != nil {
		t.Fatalf("子路径形态不该被判成残留: %v", err)
	}
}

// 地址里的 `$` 是 regexp 替换串的元字符，必须按字面量写入。
func TestPatchClientHostInSmali_DollarIsLiteral(t *testing.T) {
	work := t.TempDir()
	writeSmali(t, work, "smali/com/eztv/powerful/SplashActivity.smali", ltSplashSmali)
	if err := patchClientHostInSmali(work, "http://h/a$b/apk"); err != nil {
		t.Fatalf("应能替换: %v", err)
	}
	b, _ := os.ReadFile(filepath.Join(work, "smali", "com", "eztv", "powerful", "SplashActivity.smali"))
	if !strings.Contains(string(b), `"http://h/a$b/apk"`) {
		t.Errorf("$ 未被当字面量:\n%s", string(b))
	}
}
