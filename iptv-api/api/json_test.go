package api

import (
	"encoding/json"
	"testing"
)

// queryValue 的类型收敛回归测试。
func TestQueryValueAcceptsStringAndNumber(t *testing.T) {
	cases := []struct {
		name string
		raw  string
		want string
	}{
		// ---- 字符串（order / keywords / jumpto 常见）----
		{"普通字符串", `"id"`, "id"},
		{"空字符串", `""`, ""},
		{"含中文", `"新闻"`, "新闻"},
		{"字符串里的数字", `"20"`, "20"},

		// ---- 数字（page / recCounts 常见）----
		{"整数", `2`, "2"},
		{"零", `0`, "0"},
		{"负数", `-1`, "-1"},
		{"浮点", `1.5`, "1.5"},

		// ---- 其它 JSON 标量 ----
		{"true", `true`, "true"},
		{"false", `false`, "false"},
		{"null", `null`, ""},

		// ---- 边界 ----
		{"数字两边有空白", `  7  `, "7"},
		{"字符串保留原样空格", `" id "`, " id "},
	}

	for _, tc := range cases {
		t.Run(tc.name, func(t *testing.T) {
			var v queryValue
			if err := json.Unmarshal([]byte(tc.raw), &v); err != nil {
				t.Fatalf("Unmarshal(%s) 报错: %v", tc.raw, err)
			}
			if got := v.String(); got != tc.want {
				t.Fatalf("queryValue(%s) = %q, 期望 %q", tc.raw, got, tc.want)
			}
		})
	}
}

// 用 pagingReq 跑一遍真实请求体，覆盖"字段缺失"与"整包解析"两条路径。
func TestPagingReqParsesFrontendPayload(t *testing.T) {
	// 前端 UsersView 实际发出的形状：数字与字符串混着来
	raw := `{"page":2,"recCounts":50,"order":"last_time","keywords":"张三"}`

	var req pagingReq
	if err := json.Unmarshal([]byte(raw), &req); err != nil {
		t.Fatalf("解析前端负载失败: %v", err)
	}

	for _, c := range []struct{ name, got, want string }{
		{"page", req.Page.String(), "2"},
		{"recCounts", req.RecCounts.String(), "50"},
		{"order", req.Order.String(), "last_time"},
		{"keywords", req.Keywords.String(), "张三"},
		{"未出现的 jumpto", req.Jumpto.String(), ""},
	} {
		if c.got != c.want {
			t.Errorf("%s = %q, 期望 %q", c.name, c.got, c.want)
		}
	}
}

// 空请求体（前端发 {} 或不带 body）必须得到全零值，由 parsePaging 回落默认值。
func TestPagingReqEmptyObject(t *testing.T) {
	var req pagingReq
	if err := json.Unmarshal([]byte(`{}`), &req); err != nil {
		t.Fatalf("解析 {} 失败: %v", err)
	}
	if req.Page.String() != "" || req.RecCounts.String() != "" ||
		req.Order.String() != "" || req.Keywords.String() != "" || req.Jumpto.String() != "" {
		t.Fatalf("空对象应得到全空字段，实际 %+v", req)
	}
}
