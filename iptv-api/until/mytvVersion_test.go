package until

import "testing"

// mytv 版本号归一判据。
// 真实事故（2026-10-06，截图实证）：admin 面板上
//   当前版本 = 1.0.0.1.0        （5 段）
//   新版本   = 1.0.0.1.0.0.1.0.11（8 段）
//
// 两个缺陷叠出来的：
//  1. PadBuildNo 原来是「长度 >= 3 就原样返回」，于是 "1.0"（长度正好 3）
//     被当成合法编译号，与基底 1.0.0 拼出 5 段的 1.0.0.1.0。
//  2. FormatMytvVersion 没有末段归一（客户端的 FormatClientVersion 早就有），
//     前端把完整版本号当编译号发过来就再叠一层基底，8 段由此而来。

func TestPadBuildNo(t *testing.T) {
	cases := map[string]string{
		"1":    "001",
		"11":   "011",
		"111":  "111",
		" 7 ":  "007",
		"0123": "0123", // 超三位原样保留（不截断，交给后端「版本号不能相同」兜底）
		"":     "",
		// 完整版本号：取末段，不叠基底。
		"1.0.0.001": "001",
		"1.2.2.042": "042",
		// 事故里真实出现过的脏串：末段是 0，归一到 000。
		"1.0": "000",
		// 8 段叠出来的串，一样只取末段。
		"1.0.0.1.0.0.1.0.11": "011",
		// 纯字母没有数字段：归一为空，交给调用方走「版本号为空」分支。
		"abc": "",
	}
	for in, want := range cases {
		if got := PadBuildNo(in); got != want {
			t.Errorf("PadBuildNo(%q) = %q，期望 %q", in, got, want)
		}
	}
}

func TestFormatMytvVersion_Normal(t *testing.T) {
	cases := []struct{ base, buildNo, want string }{
		{"1.2.2", "001", "1.2.2.001"},
		{"1.2.2", "012", "1.2.2.012"},
		// 少位数补足三位：二进制 manifest 是定长字节替换，不等长会写坏。
		{"1.2.2", "1", "1.2.2.001"},
		{"1.2.2", "9", "1.2.2.009"},
		// 基底换版：编译号跟着新基底重新起。
		{"2.0.0", "001", "2.0.0.001"},
	}
	for _, c := range cases {
		if got := FormatMytvVersion(c.base, c.buildNo); got != c.want {
			t.Errorf("FormatMytvVersion(%q,%q) = %q，期望 %q", c.base, c.buildNo, got, c.want)
		}
	}
}

// 核心回归：传完整版本号进去，**绝不能**再叠一层基底。
func TestFormatMytvVersion_NormalizesFullVersion(t *testing.T) {
	cases := []struct{ buildNo, want string }{
		{"1.0.0.001", "1.0.0.001"},
		{"1.0.0.1.0.0.001", "1.0.0.001"},
		// 事故截图里的两个真实值。
		{"1.0", "1.0.0.000"},
		{"1.0.0.1.0.0.1.0.11", "1.0.0.011"},
	}
	for _, c := range cases {
		got := FormatMytvVersion("1.0.0", c.buildNo)
		if got != c.want {
			t.Errorf("FormatMytvVersion(1.0.0, %q) = %q，期望 %q", c.buildNo, got, c.want)
		}
	}
}

// 反向断言：结果**必须恒为 4 段**。事故的表征就是段数失控（5 段、8 段）。
func TestFormatMytvVersion_AlwaysFourSegments(t *testing.T) {
	for _, buildNo := range []string{
		"001", "1.0.0.001", "1.0", "1.0.0.1.0", "1.0.0.1.0.0.1.0.11", "0", "999",
	} {
		got := FormatMytvVersion("1.0.0", buildNo)
		segs := 1
		for i := 0; i < len(got); i++ {
			if got[i] == '.' {
				segs++
			}
		}
		if segs != 4 {
			t.Errorf("buildNo=%q 产出 %q 有 %d 段（应为 4 段）", buildNo, got, segs)
		}
	}
}

func TestFormatMytvVersion_Empty(t *testing.T) {
	if got := FormatMytvVersion("", "001"); got != "" {
		t.Errorf("基底为空应返回空串，实际 %q", got)
	}
	if got := FormatMytvVersion("1.0.0", "  "); got != "" {
		t.Errorf("编译号为空应返回空串，实际 %q", got)
	}
	// 编译号里一个数字都没有时也必须空串，不能拼出 "1.0.0." 这种半截串。
	if got := FormatMytvVersion("1.0.0", "abc"); got != "" {
		t.Errorf("编译号无数字应返回空串，实际 %q", got)
	}
}

// 末段恒为三位：mytv 客户端按字符串比版本，
// 不补零时 "1.2.2.9" 会被判成比 "1.2.2.12" 新。
func TestFormatMytvVersion_BuildNoAlwaysThreeDigits(t *testing.T) {
	for _, buildNo := range []string{"0", "1", "9", "99", "999", "1.0.0.007", "1.0", "1.0.0.1.0.0.5"} {
		got := FormatMytvVersion("1.2.2", buildNo)
		idx := len(got) - 1
		start := idx
		for start >= 0 && got[start] != '.' {
			start--
		}
		if n := len(got) - start - 1; n != 3 {
			t.Errorf("buildNo=%q 产出 %q 末段 %d 位（应为 3 位）", buildNo, got, n)
		}
	}
}

// 两条链路（mytv / 客户端）必须共用同一套归一 —— 各自的 Format* 只差基底来源。
// 各写一份归一，早晚只改一边：客户端那边加了末段归一时 mytv 这边漏掉，
// 就是本次事故（截图里 mytv 叠成 8 段、客户端同期正常）。
func TestBothVersionFormattersShareNormalization(t *testing.T) {
	inputs := []string{
		"001", "1", "9", "1.0", "1.0.0.001", "1.0.0.1.0", "1.0.0.1.0.0.1.0.11", "abc",
	}
	for _, in := range inputs {
		gotMytv := FormatMytvVersion("1.0.0", in)
		gotClient := FormatClientVersion("1.0.0", in)
		if gotMytv != gotClient {
			t.Errorf("输入 %q：mytv 得 %q，客户端得 %q，两条链路归一不一致", in, gotMytv, gotClient)
		}
	}
}
