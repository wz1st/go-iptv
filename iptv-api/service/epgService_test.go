package service

import (
	"testing"
	"time"
)

// 钉住 CNTV 节目单两条解析路径的真实行为。
//
// 这套用例替代的是「打线上接口看返回」那种判据：CNTV 时好时坏，
// 线上恰好返回什么取决于那一刻上游给什么，没出问题的路径根本测不到。
//
// 背景：CNTV 的 program 元素有两种形态 —— 带 showTime 的完整形态，
// 和只有 t/st/et 的残缺形态。代码若只认 showTime，残缺形态下
// starttime 会全空，而客户端解析节目单时会整条丢弃解析失败的项，
// 表现为「接口返回 33 条、第三栏一条都显示不出来」。

// cntvProgrammeTime 的两个分支都要覆盖。
func TestCntvProgrammeTime(t *testing.T) {
	loc := time.FixedZone("CST", 8*3600)
	// 2026-10-07 05:27:00 +08 对应的 Unix 秒
	const st05_27 int64 = 1791322020

	cases := []struct {
		name string
		data map[string]interface{}
		want string
	}{
		{
			name: "有 showTime 就用它",
			data: map[string]interface{}{"showTime": "05:27", "st": float64(st05_27)},
			want: "05:27",
		},
		{
			name: "缺 showTime 时按 st 与站点时区格式化",
			data: map[string]interface{}{"st": float64(st05_27)},
			want: "05:27",
		},
		{
			name: "showTime 为空串视同缺失",
			data: map[string]interface{}{"showTime": "", "st": float64(st05_27)},
			want: "05:27",
		},
		{
			name: "两个都没有时返回空串（交由调用方丢弃）",
			data: map[string]interface{}{"t": "某节目"},
			want: "",
		},
		{
			name: "st 非数字不参与类型断言",
			data: map[string]interface{}{"st": "1791304020"},
			want: "",
		},
	}

	for _, tc := range cases {
		t.Run(tc.name, func(t *testing.T) {
			if got := cntvProgrammeTime(tc.data, loc); got != tc.want {
				t.Fatalf("got %q, want %q", got, tc.want)
			}
		})
	}
}

// 缺 showTime 的残缺响应里，当前节目仍必须能取出来。
func TestCurrentCntvProgrammeFallback(t *testing.T) {
	loc := time.FixedZone("CST", 8*3600)
	now := time.Now().In(loc)
	base := now.Add(-30 * time.Minute)

	epgData := map[string]interface{}{
		"program": []interface{}{
			// 已播完
			map[string]interface{}{
				"t":  "上午的节目",
				"st": float64(base.Add(-2 * time.Hour).Unix()),
				"et": float64(base.Add(-time.Hour).Unix()),
			},
			// 正在播。et 必须落在 now 之后 —— 判据是"有 et 且已过则算播完"，
			// et 恰好等于 now 会被正确排除，用例得自己留出余量。
			map[string]interface{}{
				"t":  "农耕探文明",
				"st": float64(base.Unix()),
				"et": float64(base.Add(2 * time.Hour).Unix()),
			},
			// 还没开播
			map[string]interface{}{
				"t":  "晚上的节目",
				"st": float64(base.Add(2 * time.Hour).Unix()),
				"et": float64(base.Add(3 * time.Hour).Unix()),
			},
		},
	}

	got, ok := currentCntvProgramme(epgData, loc)
	if !ok {
		t.Fatal("应当能找出正在播的节目")
	}
	if got.Name != "农耕探文明" {
		t.Fatalf("取错了节目: %q", got.Name)
	}
	if got.StartTime != base.Format("15:04") {
		t.Fatalf("开播时刻不对: %q, want %q", got.StartTime, base.Format("15:04"))
	}
}

// 重播时段：前一条与当前条时刻重叠时，取开播更晚的那条。
func TestCurrentCntvProgrammePicksLatestOverlap(t *testing.T) {
	loc := time.FixedZone("CST", 8*3600)
	now := time.Now().In(loc)
	early := now.Add(-90 * time.Minute)
	late := now.Add(-10 * time.Minute)

	epgData := map[string]interface{}{
		"program": []interface{}{
			// 没有 et，只看 st —— 两条都"已开始"，必须取更晚的那条
			map[string]interface{}{"t": "前一条", "st": float64(early.Unix())},
			map[string]interface{}{"t": "后一条", "st": float64(late.Unix())},
		},
	}

	got, ok := currentCntvProgramme(epgData, loc)
	if !ok {
		t.Fatal("应当能找出正在播的节目")
	}
	if got.Name != "后一条" {
		t.Fatalf("重叠时段取错了节目: %q", got.Name)
	}
}

// 空响应、字段类型不对都不能 panic，且必须返回 false。
func TestCurrentCntvProgrammeNoMatch(t *testing.T) {
	loc := time.FixedZone("CST", 8*3600)
	future := time.Now().In(loc).Add(3 * time.Hour)

	cases := []struct {
		name string
		data map[string]interface{}
	}{
		{"program 缺失", map[string]interface{}{}},
		{"program 类型不对", map[string]interface{}{"program": "not-a-list"}},
		{"全是未来节目", map[string]interface{}{
			"program": []interface{}{
				map[string]interface{}{"t": "未来", "st": float64(future.Unix())},
			},
		}},
		{"节目名缺失", map[string]interface{}{
			"program": []interface{}{
				map[string]interface{}{"st": float64(time.Now().Unix())},
			},
		}},
		{"元素不是对象", map[string]interface{}{
			"program": []interface{}{"just-a-string", 42},
		}},
	}

	for _, tc := range cases {
		t.Run(tc.name, func(t *testing.T) {
			if _, ok := currentCntvProgramme(tc.data, loc); ok {
				t.Fatal("不应当判定为命中")
			}
		})
	}
}
