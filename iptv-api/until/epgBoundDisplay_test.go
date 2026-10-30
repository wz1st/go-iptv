package until

import (
	"strings"
	"testing"

	"iptv-api/models"
)

// 「绑定频道」列的展示口径 —— 列表接口与「手动绑定频道」保存后的回传
// 必须用**同一个**函数，否则"保存后立刻看到的那一行"和"刷新页面看到的"对不上。
//
// 口径 = 手动名单（Content）∪ 自动绑定结果（BoundNames）− 黑名单（Blacklist）。

func TestEpgBoundDisplayMergesManualAndAuto(t *testing.T) {
	epg := models.IptvEpg{
		Content:    "CCTV1,湖南卫视",
		BoundNames: "CCTV1,央视一套",
	}
	got := EpgBoundDisplay(epg)
	want := "CCTV1,湖南卫视,央视一套"
	if got != want {
		t.Fatalf("EpgBoundDisplay = %q，期望 %q", got, want)
	}
}

// 黑名单里的台不能出现在展示里 —— 拉黑的语义是"这个 EPG 不要这个台"。
func TestEpgBoundDisplayExcludesBlacklist(t *testing.T) {
	epg := models.IptvEpg{
		Content:    "CCTV1,湖南卫视",
		BoundNames: "CCTV1,央视一套",
		Blacklist:  "湖南卫视",
	}
	got := EpgBoundDisplay(epg)
	want := "CCTV1,央视一套"
	if got != want {
		t.Fatalf("EpgBoundDisplay = %q，期望 %q", got, want)
	}
}

// 黑名单比较必须用归一化键 —— 与绑定判定（bindIndex.isBlacklisted）同一套口径。
// 写 "CCTV-1" 要能挡住 "CCTV1"。
func TestExcludeBlacklistedUsesNormalizedKey(t *testing.T) {
	got := ExcludeBlacklisted("CCTV1,湖南卫视,CCTV-2", "CCTV-1")
	want := "湖南卫视,CCTV-2"
	if got != want {
		t.Fatalf("ExcludeBlacklisted = %q，期望 %q", got, want)
	}
}

// 空黑名单 ⇒ 原样返回（不做无谓的拆分重组）。
func TestExcludeBlacklistedEmptyBlacklist(t *testing.T) {
	const in = "CCTV1,湖南卫视"
	if got := ExcludeBlacklisted(in, ""); got != in {
		t.Fatalf("ExcludeBlacklisted = %q，期望 %q", got, in)
	}
	if got := ExcludeBlacklisted(in, "  "); got != in {
		t.Fatalf("ExcludeBlacklisted(空白黑名单) = %q，期望 %q", got, in)
	}
}

// 名单里的空项要被丢掉（库里可能有 "A,,B" 这种脏数据）。
func TestExcludeBlacklistedDropsEmptyItems(t *testing.T) {
	got := ExcludeBlacklisted("CCTV1,,湖南卫视", "CCTV9")
	want := "CCTV1,湖南卫视"
	if got != want {
		t.Fatalf("ExcludeBlacklisted = %q，期望 %q", got, want)
	}
}

// ★真实缺陷的回归：手动名单里的台**库里没有对应频道**时，
// 列表列显示它、弹窗「已绑定的频道」却不显示它（实测：生产库 CCTV2 的
// content="CCTV2"，而 iptv_channels 表里没有这个台）。
//
// 根因：弹窗那栏以前是"遍历 iptv_channels + 规则判定"算的，
// 库里没有的台名在它眼里不存在 ⇒ 两个界面口径不同源。
// 现在弹窗那栏改用 EpgBoundNames（= 与列表列逐字同口径），矛盾消失。
func TestEpgBoundNamesIncludesManualNamesWithoutChannel(t *testing.T) {
	epg := models.IptvEpg{Content: "CCTV2"}
	// 列表列显示什么
	list := EpgBoundDisplay(epg)
	// 弹窗「已绑定的频道」显示什么 —— 必须与上面**逐字相同**
	popup := strings.Join(EpgBoundNames(epg), ",")
	if list != popup {
		t.Fatalf("列表列 = %q，弹窗 = %q —— 两端口径不一致", list, popup)
	}
	if !strings.Contains(popup, "CCTV2") {
		t.Fatalf("弹窗应显示手动名单里的 CCTV2，实际 = %q", popup)
	}
}

// 手动名单与「全部认领的台」要分得开：
// 多选框预选的是**手动名单**（manual），不是全部认领的台 ——
// 否则用户不改直接点确定，就把自动匹配上的台固化成手动名单了。
func TestEpgManualNamesIsOnlyManualList(t *testing.T) {
	epg := models.IptvEpg{
		Content:    "CCTV1",
		BoundNames: "CCTV1,CCTV2",
	}
	manual := EpgManualNames(epg)
	if len(manual) != 1 || manual[0] != "CCTV1" {
		t.Fatalf("EpgManualNames = %v，期望 [CCTV1]", manual)
	}
	// 全部认领的台 = 手动 ∪ 自动
	bound := EpgBoundNames(epg)
	if len(bound) != 2 {
		t.Fatalf("EpgBoundNames = %v，期望 2 项", bound)
	}
}

// 黑名单里的台既不在手动名单、也不在认领名单里。
func TestEpgManualNamesExcludesBlacklist(t *testing.T) {
	epg := models.IptvEpg{Content: "CCTV1,CCTV2", Blacklist: "CCTV2"}
	manual := EpgManualNames(epg)
	if len(manual) != 1 || manual[0] != "CCTV1" {
		t.Fatalf("EpgManualNames = %v，期望 [CCTV1]", manual)
	}
	bound := EpgBoundNames(epg)
	if len(bound) != 1 || bound[0] != "CCTV1" {
		t.Fatalf("EpgBoundNames = %v，期望 [CCTV1]", bound)
	}
}

// SplitBoundNames：去空、去重、保序。
func TestSplitBoundNames(t *testing.T) {
	got := SplitBoundNames("CCTV1,,湖南卫视,CCTV1")
	want := []string{"CCTV1", "湖南卫视"}
	if len(got) != len(want) {
		t.Fatalf("SplitBoundNames = %v，期望 %v", got, want)
	}
	for i := range want {
		if got[i] != want[i] {
			t.Fatalf("SplitBoundNames = %v，期望 %v", got, want)
		}
	}
}
