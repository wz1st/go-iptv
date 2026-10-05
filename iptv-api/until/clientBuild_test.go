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
