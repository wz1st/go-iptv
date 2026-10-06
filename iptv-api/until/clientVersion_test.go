package until

import "testing"

// FormatClientVersion 的归一判据。
// 真实事故（2026-10-06）：前端把**完整版本号**当编译号传进来，这里再拼一次基底，
// 线上编出过 8 段的 `1.0.0.1.0.0.1.1`，每点一次编译多叠一层且不报错。

func TestFormatClientVersion_Normal(t *testing.T) {
	cases := []struct{ base, buildNo, want string }{
		{"1.0.0", "001", "1.0.0.001"},
		{"1.0.0", "002", "1.0.0.002"},
		{"2.1.5", "010", "2.1.5.010"},
		// 少位数要补足三位：manifest 里是定长字节替换，不等长会写坏。
		{"1.0.0", "1", "1.0.0.001"},
		{"1.0.0", "9", "1.0.0.009"},
		// 基底换版：编译号跟着新基底重新起。
		{"2.0.0", "001", "2.0.0.001"},
	}
	for _, c := range cases {
		if got := FormatClientVersion(c.base, c.buildNo); got != c.want {
			t.Fatalf("FormatClientVersion(%q,%q) = %q, want %q", c.base, c.buildNo, got, c.want)
		}
	}
}

// 核心回归：传完整版本号进去，**绝不能**再叠一层基底。
func TestFormatClientVersion_NormalizesFullVersion(t *testing.T) {
	cases := []struct{ buildNo, want string }{
		{"1.0.0.001", "1.0.0.001"},
		{"1.0.0.1.0.0.001", "1.0.0.001"},
		{"1.0.0.1.0.0.1.1", "1.0.0.001"},
		{"1.0.0.1.0", "1.0.0.000"},
	}
	for _, c := range cases {
		got := FormatClientVersion("1.0.0", c.buildNo)
		if got != c.want {
			t.Fatalf("FormatClientVersion(1.0.0, %q) = %q, want %q", c.buildNo, got, c.want)
		}
	}
}

// 反向断言：结果**必须恒为 4 段**。事故的表征就是段数失控（5 段、8 段）。
func TestFormatClientVersion_AlwaysFourSegments(t *testing.T) {
	for _, buildNo := range []string{
		"001", "1.0.0.001", "1.0.0.1.0", "1.0.0.1.0.0.1.1", "0", "999",
	} {
		got := FormatClientVersion("1.0.0", buildNo)
		segs := 0
		for i := 0; i < len(got); i++ {
			if got[i] == '.' {
				segs++
			}
		}
		if segs != 3 { // 3 个点 = 4 段
			t.Fatalf("buildNo=%q 产出 %q 有 %d 段（应为 4 段）", buildNo, got, segs+1)
		}
	}
}

func TestFormatClientVersion_Empty(t *testing.T) {
	if got := FormatClientVersion("", "001"); got != "" {
		t.Fatalf("基底为空应返回空串，实际 %q", got)
	}
	if got := FormatClientVersion("1.0.0", "  "); got != "" {
		t.Fatalf("编译号为空应返回空串，实际 %q", got)
	}
}

// 末段必须恒为三位：客户端按字符串比版本，1.0.0.9 < 1.0.0.10 但 1.0.0.009 > 1.0.0.010。
func TestFormatClientVersion_BuildNoAlwaysThreeDigits(t *testing.T) {
	for _, buildNo := range []string{"0", "1", "9", "99", "999", "1.0.0.007", "1.0.0.1.0.0.5"} {
		got := FormatClientVersion("1.0.0", buildNo)
		idx := len(got) - 1
		start := idx
		for start >= 0 && got[start] != '.' {
			start--
		}
		if n := len(got) - start - 1; n != 3 {
			t.Fatalf("buildNo=%q 产出 %q 末段 %d 位（应为 3 位）", buildNo, got, n)
		}
	}
}
