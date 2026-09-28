package until

import (
	"testing"

	"iptv-api/models"
)

func TestNormalizeChannelKeyFoldsWritingVariants(t *testing.T) {
	same := []string{
		"CCTV1",
		"cctv1",
		"CCTV-1",
		"CCTV 1",
		"CCTV_1",
		"CCTV·1",
		"  CCTV1  ",
		"CCtv-1",
		"ＣＣＴＶ１", // 全角
	}
	want := NormalizeChannelKey(same[0])
	if want != "CCTV1" {
		t.Fatalf("基准归一化结果 = %q，期望 %q", want, "CCTV1")
	}
	for _, s := range same {
		if got := NormalizeChannelKey(s); got != want {
			t.Fatalf("%q 归一化 = %q，期望 %q", s, got, want)
		}
	}
}

func TestNormalizeChannelKeyKeepsMeaningfulSuffix(t *testing.T) {
	// 后缀不能吃：吃掉了 "CCTV5" 和 "CCTV5+" 就分不出来了，
	// "湖南卫视" 和 "湖南卫视国际" 也会被错当成同一个台。
	cases := map[string]string{
		"CCTV5+":  "CCTV5+",
		"CCTV5":   "CCTV5",
		"CCTV1高清": "CCTV1高清",
		"湖南卫视国际":  "湖南卫视国际",
		"湖南卫视":    "湖南卫视",
	}
	for in, want := range cases {
		if got := NormalizeChannelKey(in); got != want {
			t.Fatalf("%q 归一化 = %q，期望 %q", in, got, want)
		}
	}
}

func TestNormalizeChannelKeyEmpty(t *testing.T) {
	for _, s := range []string{"", "   ", "---", "..."} {
		if got := NormalizeChannelKey(s); got != "" {
			t.Fatalf("%q 应归一化为空串，实际 %q", s, got)
		}
	}
}

// TestBindIndexManualBeatsExactName 守住优先级：手动绑定必须压过 EPG 名匹配，
func TestBindIndexManualBeatsExactName(t *testing.T) {
	// EPG1 的名字就是 CCTV1（exact），EPG2 的名字是 CCTV1HD，
	// 但 EPG2 的 content 里明确写着 CCTV1（manual）。
	epgs := []models.IptvEpg{
		{ID: 1, Name: "CCTV1", Cas: "5", Remarks: "CCTV1"},
		{ID: 2, Name: "CCTV1HD", Cas: "5", Remarks: "CCTV1HD", Content: "CCTV1"},
	}
	if got := buildBindIndex(epgs).resolve(5, "CCTV1"); got != 2 {
		t.Fatalf("resolve = %d，期望 2（content 里的显式绑定优先于名字匹配）", got)
	}

	// 去掉那条显式绑定后，回落到名字匹配 → ID 更小的 EPG1。
	epgs[1].Content = ""
	if got := buildBindIndex(epgs).resolve(5, "CCTV1"); got != 1 {
		t.Fatalf("resolve = %d，期望 1（无显式绑定时按名字匹配，取 ID 最小）", got)
	}
}

func TestBindIndexAliasMatchesWritingVariants(t *testing.T) {
	// remarks 是自动生成的别名列表，形如 "CCTV1|CCTV-1|CCTV1 4K|CCTV1 HD"。
	// 归一化之后，播放列表里的 "cctv-1" / "ＣＣＴＶ１" 都应该认得出来。
	epgs := []models.IptvEpg{
		{ID: 1, Name: "cctv1", Cas: "5", Remarks: "CCTV1|CCTV-1|CCTV1 4K|CCTV1 HD"},
	}
	bi := buildBindIndex(epgs)

	for _, name := range []string{"CCTV-1", "cctv1", "ＣＣＴＶ１", "CCTV1 4K", "CCTV1HD"} {
		// 注意 "CCTV1HD" 归一化是 "CCTV1HD"，而别名里是 "CCTV1 HD"（归一化后
		// 也是 "CCTV1HD"）—— 空格被归一化吃掉了，所以能对上。
		if got := bi.resolve(5, name); got != 1 {
			t.Fatalf("resolve(%q) = %d，期望 1", name, got)
		}
	}

	// 后缀有意义的写法不能被误绑。
	if got := bi.resolve(5, "CCTV5+"); got != 0 {
		t.Fatalf("resolve(CCTV5+) = %d，期望 0", got)
	}
}

func TestResolveHonoursCategoryClaim(t *testing.T) {
	// EPG1 只认领分类 5，EPG2 只认领分类 7。
	epgs := []models.IptvEpg{
		{ID: 1, Name: "CCTV1", Cas: "5", Remarks: "CCTV1"},
		{ID: 2, Name: "CCTV1", Cas: "7", Remarks: "CCTV1"},
	}
	bi := buildBindIndex(epgs)

	if got := bi.resolve(5, "CCTV1"); got != 1 {
		t.Fatalf("分类 5 的 resolve = %d，期望 1", got)
	}
	if got := bi.resolve(7, "CCTV1"); got != 2 {
		t.Fatalf("分类 7 的 resolve = %d，期望 2", got)
	}
	// 没有任何 EPG 认领这个分类 → 判不出来，不能硬绑。
	if got := bi.resolve(99, "CCTV1"); got != 0 {
		t.Fatalf("未认领分类的 resolve = %d，期望 0", got)
	}
}

func TestResolvePrefersLowestEpgIDRegardlessOfInputOrder(t *testing.T) {
	// 两个 EPG 源都有 CCTV1 且都认领分类 5。e_id 只能存一个，
	// 取 ID 最小的 —— 与入参顺序无关（map 遍历顺序是随机的）。
	asc := []models.IptvEpg{
		{ID: 3, Name: "CCTV1", Cas: "5", Remarks: "CCTV1"},
		{ID: 9, Name: "CCTV1", Cas: "5", Remarks: "CCTV1"},
	}
	desc := []models.IptvEpg{asc[1], asc[0]}

	if got := buildBindIndex(asc).resolve(5, "CCTV1"); got != 3 {
		t.Fatalf("升序入参 resolve = %d，期望 3", got)
	}
	if got := buildBindIndex(desc).resolve(5, "CCTV1"); got != 3 {
		t.Fatalf("降序入参 resolve = %d，期望 3（结果必须与入参顺序无关）", got)
	}
}

func TestResolveRejectsEmptyAndUnknown(t *testing.T) {
	epgs := []models.IptvEpg{{ID: 1, Name: "CCTV1", Cas: "5", Remarks: "CCTV1"}}
	bi := buildBindIndex(epgs)

	for _, name := range []string{"", "   ", "---", "不存在的频道"} {
		if got := bi.resolve(5, name); got != 0 {
			t.Fatalf("resolve(%q) = %d，期望 0", name, got)
		}
	}
}

func TestResolveSkipsEmptyCasClaims(t *testing.T) {
	// cas 为空的 EPG 不认领任何分类 —— 不能被它抢走绑定。
	epgs := []models.IptvEpg{{ID: 1, Name: "CCTV1", Cas: "", Remarks: "CCTV1"}}
	if got := buildBindIndex(epgs).resolve(5, "CCTV1"); got != 0 {
		t.Fatalf("resolve = %d，期望 0（该 EPG 没有认领任何分类）", got)
	}
}
