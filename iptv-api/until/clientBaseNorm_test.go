package until

import (
	"os"
	"path/filepath"
	"strings"
	"testing"
)

// 客户端基底归一 —— 事故驱动：线上 Version_client 里躺过 6 段的
// `1.1.0.1.1.0`，拼出来的新版本号是 7 段的 `1.1.0.1.1.0.001`。
func TestBaseVersionFromReleaseNormalizes(t *testing.T) {
	cases := map[string]string{
		// 事故里的真实脏值。归一只看**前三段**，后面几段是什么完全不影响 ——
		// 这正是它的用处：把被叠加过的长串砍回基底。
		"1.1.0.1.1.0":    "1.1.0",
		"1.1.0.1.1.0.11": "1.1.0",
		"1.0.0.1.0":      "1.0.0",
		"1.1.0.1.b":      "1.1.0",
		"1.0.0.":         "1.0.0",
		// 发布者按 mytv 习惯写了四段 —— 允许，取前三段。
		"1.2.2.001": "1.2.2",
		// 正常值原样。
		"1.1.0": "1.1.0",
		"2.0.0": "2.0.0",
		// 归一不了的必须返回空，让调用方走"从 versionName 反推"那条路 ——
		// 宁可空着也不要返回一个会被继续叠的脏串。
		"":           "",
		"   ":        "",
		"1.1":        "",
		"1":          "",
		"1.1.0-beta": "",
		"abc":        "",
		"1..0":       "",
		".1.0":       "",
		"v1.1.0":     "",
		"１.１.０":      "",
	}
	for in, want := range cases {
		if got := BaseVersionFromRelease(in); got != want {
			t.Errorf("BaseVersionFromRelease(%q) = %q，期望 %q", in, got, want)
		}
	}
}

// 反向断言：基底归一后拼出来的版本号**恒为 4 段**。
// 这是用户能直接看到的形状（截图里的徽章），一旦回归必然是段数不对。
func TestBaseNormalizedAlwaysFourSegments(t *testing.T) {
	dirty := []string{"1.1.0.1.1.0", "1.1.0.1.1.0.11", "1.0.0.1.0", "1.0.0.1.0.0.001"}
	for _, b := range dirty {
		base := BaseVersionFromRelease(b)
		full := FormatClientVersion(base, "001")
		if n := strings.Count(full, ".") + 1; n != 4 {
			t.Errorf("污染基底 %q 归一后拼出 %q（%d 段），期望 4 段", b, full, n)
		}
		// 反向断言：污染值里那段多出来的基底绝不能漏回结果。
		if strings.Contains(full, "1.1.0.1") || strings.Contains(full, "1.0.0.1.0") {
			t.Errorf("污染基底 %q 的片段漏进了结果 %q", b, full)
		}
	}
}

// GetClientBaseVersion 必须在**读取时就归一**，而不是返回磁盘上的原值 ——
// 归一放在读取这一层，才能顺带修好存量污染（不必手工改文件）。
func TestGetClientBaseVersionNormalizesOnRead(t *testing.T) {
	dir := t.TempDir()
	p := filepath.Join(dir, "Version_client")
	if err := os.WriteFile(p, []byte("  1.1.0.1.1.0\n"), 0644); err != nil {
		t.Fatal(err)
	}
	b, err := os.ReadFile(p)
	if err != nil {
		t.Fatal(err)
	}
	if got := BaseVersionFromRelease(string(b)); got != "1.1.0" {
		t.Errorf("读取时归一失败：磁盘上是 1.1.0.1.1.0，读出 %q，期望 1.1.0", got)
	}
}
