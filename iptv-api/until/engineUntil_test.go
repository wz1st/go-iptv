package until

import (
	"os"
	"path/filepath"
	"strings"
	"testing"
)

// 钉住 custom 分支版本门（CheckEngineVer / parseVerTriple）的真实行为。
//
// 这套用例替代的是「在二进制里 grep 中文串」那种判据（不可靠）：
// Go 的字符串表按字面量分段存放，运行期拼接的串（"第 "+Itoa(i)+" 段 …"）
// 运行期拼接的串永远 grep 不到整串，所以改为直接调用真函数。

// writeFakeEngine 造一个只认 -version 的假引擎二进制。
func writeFakeEngine(t *testing.T, ver string) string {
	t.Helper()
	if _, err := os.Stat("/bin/sh"); err != nil {
		t.Skip("需要 POSIX 环境")
	}
	p := filepath.Join(t.TempDir(), "fakeengine")
	body := "#!/bin/sh\ncase \"$1\" in -version) echo '" + ver + "' ;; *) exit 1 ;; esac\n"
	if err := os.WriteFile(p, []byte(body), 0o755); err != nil {
		t.Fatalf("写假引擎失败: %v", err)
	}
	return p
}

func TestProbeParseVerTriple(t *testing.T) {
	ok := []struct {
		in   string
		want [3]int
	}{
		{"v3.0.0", [3]int{3, 0, 0}},
		{"3.0.0", [3]int{3, 0, 0}},
		{"V3.0.0", [3]int{3, 0, 0}},
		{"v3.0.0-custom.2", [3]int{3, 0, 0}},
		{"v3.0.0-custom.10", [3]int{3, 0, 0}},
		{"v3.0.0-rc1", [3]int{3, 0, 0}},
		{"v3.0.0+build.7", [3]int{3, 0, 0}},
		{"v3.0", [3]int{3, 0, 0}},
		{"v3", [3]int{3, 0, 0}},
		{"  v3.0.0  ", [3]int{3, 0, 0}},
		{"v3.2.15", [3]int{3, 2, 15}},
		{"v10.20.30", [3]int{10, 20, 30}},
	}
	for _, c := range ok {
		got, err := parseVerTriple(c.in)
		if err != nil {
			t.Errorf("parseVerTriple(%q) 意外报错: %v", c.in, err)
			continue
		}
		if got != c.want {
			t.Errorf("parseVerTriple(%q) = %v, 期望 %v", c.in, got, c.want)
		}
	}

	bad := []struct {
		in      string
		wantKey string
	}{
		{"", "版本号为空"},
		{"   ", "版本号为空"},
		{"v", "版本号为空"},
		{"-custom.2", "版本号为空"},
		{"v3..0", "第 2 段为空"},
		{"v3.", "第 2 段为空"},
		{"v3.0.0.beta", "最多 3 段"},
		{"v3.1.2.3.4.5", "最多 3 段"},
		{"v3.a.0", "不是非负整数"},
		{"v3.0.x", "不是非负整数"},
		// 后缀截断只看第一个 -/+，所以负数会被当成后缀吃掉，
		// 剩下的串决定报错内容——这是预期行为，不是 bug。
		{"v-1.0.0", "版本号为空"},
		{"v3.0.-1", "第 3 段为空"},
	}
	for _, c := range bad {
		_, err := parseVerTriple(c.in)
		if err == nil {
			t.Errorf("parseVerTriple(%q) 应该报错，实际通过了", c.in)
			continue
		}
		if !strings.Contains(err.Error(), c.wantKey) {
			t.Errorf("parseVerTriple(%q) 报错信息 %q 里没有 %q", c.in, err.Error(), c.wantKey)
		}
	}
}

// TestProbeCheckEngineVer 走完整函数。假引擎通过 IPTV_ENGINE_BIN 注入版本号，
// CheckEngineVer 拿不到 WS 时会回落到执行 `/app/engine -version`（同一条路径）。
func TestProbeCheckEngineVer(t *testing.T) {
	cases := []struct {
		latest   string
		engine   string
		wantPass bool
		wantMsg  string
	}{
		// 定制后缀必须放行 —— 这是本轮最核心的场景
		{latest: "v3.0.0", engine: "v3.0.0-custom.2", wantPass: true},
		{latest: "v3.0.0", engine: "v3.0.0-custom.10", wantPass: true},
		{latest: "v3.0.0", engine: "v3.0.0-rc1", wantPass: true},
		{latest: "v3.0.0", engine: "v3.0.0", wantPass: true},
		{latest: "v3.0.0", engine: "v3.0.1", wantPass: true},
		{latest: "v3.0.0", engine: "v3.0", wantPass: true},
		{latest: "v3.0.0", engine: "v4.0.0", wantPass: true},
		// 引擎低于门槛必须拦
		{latest: "v3.2.15", engine: "v3.0.0-custom.2", wantPass: false, wantMsg: "请升级引擎"},
		{latest: "v3.0.1", engine: "v3.0.0", wantPass: false, wantMsg: "请升级引擎"},
		{latest: "v3.1.0", engine: "v3.0.9", wantPass: false, wantMsg: "请升级引擎"},
		// 坏版本号要指向"格式问题"而不是"版本低"
		{latest: "v3.0.0", engine: "v3.0.0.beta", wantPass: false, wantMsg: "最多 3 段"},
		{latest: "v3.0.0", engine: "v3..0", wantPass: false, wantMsg: "第 2 段为空"},
		{latest: "v3.0.0", engine: "v3.a.0", wantPass: false, wantMsg: "不是非负整数"},
		{latest: "v3.0.0", engine: "", wantPass: false, wantMsg: "引擎版本号获取失败"},
		// 门槛本身写错要说"配置错误"
		{latest: "v3.a.0", engine: "v3.0.0", wantPass: false, wantMsg: "版本门配置错误"},
		{latest: "", engine: "v3.0.0", wantPass: false, wantMsg: "版本门配置错误"},
		// 旧实现会在这里报「版本号读取失败」；新实现必须指出是格式问题
		{latest: "v3.0.0", engine: "v3.0.0.beta", wantPass: false, wantMsg: "引擎版本号无法识别"},
	}

	for _, c := range cases {
		bin := writeFakeEngine(t, c.engine)
		t.Setenv("IPTV_ENGINE_BIN", bin)
		pass, err := CheckEngineVer(c.latest)
		if pass != c.wantPass {
			t.Errorf("CheckEngineVer(%q, 引擎=%q) = %v, 期望 %v (err=%v)",
				c.latest, c.engine, pass, c.wantPass, err)
			continue
		}
		if c.wantMsg != "" && (err == nil || !strings.Contains(err.Error(), c.wantMsg)) {
			t.Errorf("CheckEngineVer(%q, 引擎=%q) 报错 %v 里没有 %q",
				c.latest, c.engine, err, c.wantMsg)
		}
		// 旧串不许再出现
		if err != nil && strings.Contains(err.Error(), "版本号读取失败") {
			t.Errorf("CheckEngineVer(%q, 引擎=%q) 仍在报旧的「版本号读取失败」: %v",
				c.latest, c.engine, err)
		}
	}
}
