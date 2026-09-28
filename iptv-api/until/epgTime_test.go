package until

import (
	"regexp"
	"testing"
	"time"

	"iptv-api/dto"
)

// xmltvCanonical 描述"归一化之后的时间串"长什么样：
var xmltvCanonical = regexp.MustCompile(`^\d{14} [+-]\d{4}$`)

func programmeTitles(tv *dto.XmlTV) []string {
	out := make([]string, 0, len(tv.Programmes))
	for _, p := range tv.Programmes {
		out = append(out, p.Title.Value)
	}
	return out
}

// sameInstant 断言两种写法指的是同一个绝对时刻。
func sameInstant(t *testing.T, want, got string) {
	t.Helper()

	a, err := ParseEPGTime(want)
	if err != nil {
		t.Fatalf("参照写法 %q 解析失败: %v", want, err)
	}
	b, err := ParseEPGTime(got)
	if err != nil {
		t.Fatalf("%q 解析失败: %v", got, err)
	}
	if !a.Equal(b) {
		t.Fatalf("时刻不一致：%q -> %s，但 %q -> %s", want, a.UTC(), got, b.UTC())
	}
}

// TestParseEPGTimeAcceptsAllPrecisions 是这次改造的核心断言：
// "不同来源的 xml 时间精细度不同"不能再导致用不了。
func TestParseEPGTimeAcceptsAllPrecisions(t *testing.T) {
	// 参照时刻：2026-09-18 20:00:00 +0800 == 12:00:00 UTC
	const ref = "20260918200000 +0800"

	variants := []string{
		"20260918200000+0800", // 秒级，偏移前不带空格
		"20260918200000",      // 秒级，无时区 → 按站点本地解释
		"202609182000 +0800",  // 分钟级（XMLTV 允许省略低位）
		"202609182000",        // 分钟级，无时区
		"2026-09-18 20:00:00", // 横杠 + 冒号
		"2026-09-18 20:00:00 +0800",
		"2026-09-18T20:00:00+08:00",
		"2026-09-18T20:00:00",
		"20260918120000 +0000", // 同一时刻的 UTC 直给
		"20260918120000+0000",
		"2026-09-18T12:00:00Z",
	}
	for _, v := range variants {
		sameInstant(t, ref, v)
	}
}

func TestParseEPGTimeRejectsGarbage(t *testing.T) {
	for _, s := range []string{"", "   ", "待定", "2026/09/18 20:00", "unknown"} {
		if _, err := ParseEPGTime(s); err == nil {
			t.Fatalf("%q 应当解析失败，却被接受了", s)
		}
	}
}

func TestFormatEPGTimeIsCanonicalUTC(t *testing.T) {
	tm := time.Date(2026, 9, 18, 20, 0, 0, 0, EPGLocation())

	got := FormatEPGTime(tm)
	if got != "20260918120000 +0000" {
		t.Fatalf("FormatEPGTime = %q，期望 %q", got, "20260918120000 +0000")
	}
	if !xmltvCanonical.MatchString(got) {
		t.Fatalf("输出不符合统一格式: %q", got)
	}

	// 秒级精度不能丢：自产格式必须能被自己解析回同一时刻。
	back, err := ParseEPGTime(got)
	if err != nil {
		t.Fatalf("自产格式解析失败: %v", err)
	}
	if !back.Equal(tm) {
		t.Fatalf("往返后时刻变了: %s != %s", back.UTC(), tm.UTC())
	}
}

func TestEPGLocationIsUTCPlus8(t *testing.T) {
	_, off := time.Now().In(EPGLocation()).Zone()
	if off != 8*3600 {
		t.Fatalf("EPGLocation 偏移 = %d 秒，期望 %d（+08:00）", off, 8*3600)
	}
}

// TestNormalizeXmlTVCollapsesPrecisionsToCanonical 验证"只保留一个最精细时间"。
func TestNormalizeXmlTVCollapsesPrecisionsToCanonical(t *testing.T) {
	tv := &dto.XmlTV{
		Channels: []dto.XmlChannel{{ID: "CCTV1", DisplayName: []dto.DisplayName{{Value: "CCTV1"}}}},
		Programmes: []dto.Programme{
			// 分钟精度
			{Channel: "CCTV1", Start: "202609182000 +0800", Stop: "202609182100 +0800", Title: dto.Title{Value: "新闻联播"}},
			// 秒级 UTC，与上一条同一时刻
			{Channel: "CCTV1", Start: "20260918120000 +0000", Stop: "20260918130000 +0000", Title: dto.Title{Value: "新闻联播"}},
		},
	}

	fixed, bad := NormalizeXmlTV(tv)
	if len(bad) != 0 {
		t.Fatalf("不该有丢弃项: %v", bad)
	}
	if fixed == 0 {
		t.Fatal("分钟精度的条目应当被改写（fixed 不应为 0）")
	}

	for i, p := range tv.Programmes {
		if !xmltvCanonical.MatchString(p.Start) {
			t.Fatalf("第 %d 条 start 未归一: %q", i, p.Start)
		}
		if !xmltvCanonical.MatchString(p.Stop) {
			t.Fatalf("第 %d 条 stop 未归一: %q", i, p.Stop)
		}
	}

	// 归一化之前，两条的"前 14 位去重键"是不一样的
	// （分钟级截出来是 "202609182000 +"），所以同一节目会留两份。
	if tv.Programmes[0].Start[:14] != tv.Programmes[1].Start[:14] {
		t.Fatalf("归一化后同一时刻的去重键仍不一致: %q vs %q",
			tv.Programmes[0].Start[:14], tv.Programmes[1].Start[:14])
	}
}

// TestNormalizeXmlTVDropsBadStartAndClearsBadStop 验证脏数据的处理方式：
// 宁可少一条，也不要零值时间（会被排到最前面）或编造的结束时间。
func TestNormalizeXmlTVDropsBadStartAndClearsBadStop(t *testing.T) {
	tv := &dto.XmlTV{
		Programmes: []dto.Programme{
			{Channel: "1", Start: "不是时间", Stop: "20260918200000 +0800", Title: dto.Title{Value: "开始时间脏"}},
			{Channel: "1", Start: "20260918200000 +0800", Stop: "??", Title: dto.Title{Value: "结束时间脏"}},
			{Channel: "1", Start: "20260918200000 +0800", Stop: "20260918210000 +0800", Title: dto.Title{Value: "正常"}},
		},
	}

	_, bad := NormalizeXmlTV(tv)
	if len(bad) != 2 {
		t.Fatalf("期望记录 2 条问题数据，实际 %d: %v", len(bad), bad)
	}
	if len(tv.Programmes) != 2 {
		t.Fatalf("Start 解析不出来的条目应被删掉，实际剩 %d 条: %v", len(tv.Programmes), programmeTitles(tv))
	}
	if tv.Programmes[0].Title.Value != "结束时间脏" {
		t.Fatalf("顺序被打乱了: %v", programmeTitles(tv))
	}
	if tv.Programmes[0].Stop != "" {
		t.Fatalf("Stop 解析失败时应清空而不是编造，实际 %q", tv.Programmes[0].Stop)
	}
	if tv.Programmes[1].Stop == "" {
		t.Fatal("正常的 stop 不该被动到")
	}
}

// TestSortXmlTVOrdersByChannelOrderThenTime 覆盖两个容易错的点：
// 频道要按 Channels 里的顺序（不是 ID 的字符串序），组内按时间升序。
func TestSortXmlTVOrdersByChannelOrderThenTime(t *testing.T) {
	tv := &dto.XmlTV{
		// 故意让 ID 的字符串序与出现顺序相反：CleanTV 会把频道 ID
		// 重编成 "1".."10"..，若按 ID 字符串排序，"10" 会插到 "2" 前面。
		Channels: []dto.XmlChannel{
			{ID: "10", DisplayName: []dto.DisplayName{{Value: "CCTV10"}}},
			{ID: "2", DisplayName: []dto.DisplayName{{Value: "CCTV2"}}},
		},
		Programmes: []dto.Programme{
			{Channel: "2", Start: "20260918210000 +0800", Title: dto.Title{Value: "C2-2100"}},
			{Channel: "10", Start: "20260918200000 +0800", Title: dto.Title{Value: "C10-2000"}},
			{Channel: "2", Start: "20260918200000 +0800", Title: dto.Title{Value: "C2-2000"}},
			{Channel: "10", Start: "20260918220000 +0800", Title: dto.Title{Value: "C10-2200"}},
		},
	}

	SortXmlTV(tv)

	want := []string{"C10-2000", "C10-2200", "C2-2000", "C2-2100"}
	got := programmeTitles(tv)
	for i := range want {
		if got[i] != want[i] {
			t.Fatalf("排序结果 = %v，期望 %v", got, want)
		}
	}
}

// TestSortXmlTVHandlesMixedPrecision 覆盖用户提出的原始症状：
// 不同来源精度不同时，节目单也必须按时间排好。
func TestSortXmlTVHandlesMixedPrecision(t *testing.T) {
	tv := &dto.XmlTV{
		Channels: []dto.XmlChannel{{ID: "1"}},
		Programmes: []dto.Programme{
			{Channel: "1", Start: "202609182030 +0800", Title: dto.Title{Value: "后"}},   // 分钟级 20:30
			{Channel: "1", Start: "20260918200000 +0800", Title: dto.Title{Value: "先"}}, // 秒级 20:00
			{Channel: "1", Start: "2026-09-18 20:15:00", Title: dto.Title{Value: "中"}},  // 无时区 20:15
		},
	}

	if _, bad := NormalizeXmlTV(tv); len(bad) != 0 {
		t.Fatalf("不该有丢弃: %v", bad)
	}
	SortXmlTV(tv)

	want := []string{"先", "中", "后"}
	got := programmeTitles(tv)
	for i := range want {
		if got[i] != want[i] {
			t.Fatalf("混合精度排序 = %v，期望 %v", got, want)
		}
	}
}

// TestSortXmlTVProducesNonDecreasingTime 守的是"当前节目"的取值前提：
// 客户端取第一条 start <= now 的记录，所以同一频道内时间必须单调不减。
func TestSortXmlTVProducesNonDecreasingTime(t *testing.T) {
	tv := &dto.XmlTV{Channels: []dto.XmlChannel{{ID: "1"}}}
	raw := []string{
		"20260918230000 +0800",
		"2026091820 +0800",
		"2026-09-18T22:00:00+08:00",
		"20260918190000 +0000", // == 次日 03:00 (+0800)，最晚
		"202609182300 +0800",
	}
	for i, s := range raw {
		tv.Programmes = append(tv.Programmes, dto.Programme{
			Channel: "1",
			Start:   s,
			Title:   dto.Title{Value: string(rune('a' + i))},
		})
	}

	if _, bad := NormalizeXmlTV(tv); len(bad) != 0 {
		t.Fatalf("不该有丢弃: %v", bad)
	}
	SortXmlTV(tv)

	var prev time.Time
	for i, p := range tv.Programmes {
		tm, err := ParseEPGTime(p.Start)
		if err != nil {
			t.Fatalf("第 %d 条解析失败: %v", i, err)
		}
		if i > 0 && tm.Before(prev) {
			t.Fatalf("排序后时间非单调：第 %d 条 %s 早于上一条 %s（%v）",
				i, tm.UTC(), prev.UTC(), programmeTitles(tv))
		}
		prev = tm
	}
}

// TestCleanTVDedupesSameProgrammeAcrossPrecisions 验证"归一化 + 去重"这条链路：
// 去重键取 Start 前 14 位，所以必须先归一化，否则两个源各留一份。
func TestCleanTVDedupesSameProgrammeAcrossPrecisions(t *testing.T) {
	tv := &dto.XmlTV{
		Channels: []dto.XmlChannel{{ID: "CCTV1", DisplayName: []dto.DisplayName{{Value: "CCTV1"}}}},
		Programmes: []dto.Programme{
			{Channel: "CCTV1", Start: "20260918200000 +0800", Title: dto.Title{Value: "新闻联播"}},
			{Channel: "CCTV1", Start: "202609182000 +0800", Title: dto.Title{Value: "新闻联播"}},
		},
	}

	if _, bad := NormalizeXmlTV(tv); len(bad) != 0 {
		t.Fatalf("不该有丢弃: %v", bad)
	}
	CleanTV(tv)

	if len(tv.Programmes) != 1 {
		t.Fatalf("同一个节目应被去重成 1 条，实际 %d 条: %v", len(tv.Programmes), programmeTitles(tv))
	}
}

// TestCleanTVKeepsEntryWithStop 验证重复条目里"留信息更全的那条"。
func TestCleanTVKeepsEntryWithStop(t *testing.T) {
	tv := &dto.XmlTV{
		Channels: []dto.XmlChannel{{ID: "1"}},
		Programmes: []dto.Programme{
			{Channel: "1", Start: "20260918200000 +0000", Title: dto.Title{Value: "X"}},
			{Channel: "1", Start: "20260918200000 +0000", Stop: "20260918210000 +0000", Title: dto.Title{Value: "X"}},
		},
	}

	CleanTV(tv)

	if len(tv.Programmes) != 1 {
		t.Fatalf("应去重成 1 条，实际 %d 条", len(tv.Programmes))
	}
	if tv.Programmes[0].Stop == "" {
		t.Fatal("应保留带 stop 的那条（缺 stop 的条目客户端只能靠下一条的开始时间推断时长）")
	}
}
