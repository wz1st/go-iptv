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
	if got := buildBindIndex(epgs).resolve("CCTV1"); got != 2 {
		t.Fatalf("resolve = %d，期望 2（content 里的显式绑定优先于名字匹配）", got)
	}

	// 去掉那条显式绑定后，回落到名字匹配 → ID 更小的 EPG1。
	epgs[1].Content = ""
	if got := buildBindIndex(epgs).resolve("CCTV1"); got != 1 {
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
		if got := bi.resolve(name); got != 1 {
			t.Fatalf("resolve(%q) = %d，期望 1", name, got)
		}
	}

	// 后缀有意义的写法不能被误绑。
	if got := bi.resolve("CCTV5+"); got != 0 {
		t.Fatalf("resolve(CCTV5+) = %d，期望 0", got)
	}
}

// TestResolveIgnoresCategoryClaim 守住本次改动的核心：绑定判定**不再受 caID 限制**。
//
// 以前 resolve(caID, name) 要求 EPG 认领该分组（cas 命中），认领了就绑不上。
// 现在判定只看频道名与规则表 —— 分组归属不再参与。
func TestResolveIgnoresCategoryClaim(t *testing.T) {
	epgs := []models.IptvEpg{
		{ID: 1, Name: "CCTV1", Cas: "5", Remarks: "CCTV1"},
		{ID: 2, Name: "CCTV1", Cas: "7", Remarks: "CCTV1"},
	}
	bi := buildBindIndex(epgs)

	// 两个 EPG 名字相同 ⇒ 取 ID 最小的那个，与分组无关。
	if got := bi.resolve("CCTV1"); got != 1 {
		t.Fatalf("resolve = %d，期望 1（同名取 ID 最小者）", got)
	}

	// 分组不同不再导致"绑不上"：只有 EPG2 认领的分组，频道名照样绑到 EPG2。
	only7 := []models.IptvEpg{
		{ID: 2, Name: "湖南卫视", Cas: "7", Remarks: "湖南卫视"},
	}
	if got := buildBindIndex(only7).resolve("湖南卫视"); got != 2 {
		t.Fatalf("resolve = %d，期望 2（只有它认领分组也照样能绑）", got)
	}
}

func TestResolvePrefersLowestEpgIDRegardlessOfInputOrder(t *testing.T) {
	// 两个 EPG 源都有 CCTV1。e_id 只能存一个，取 ID 最小的 ——
	// 与入参顺序无关（map 遍历顺序是随机的）。
	asc := []models.IptvEpg{
		{ID: 3, Name: "CCTV1", Cas: "5", Remarks: "CCTV1"},
		{ID: 9, Name: "CCTV1", Cas: "5", Remarks: "CCTV1"},
	}
	desc := []models.IptvEpg{asc[1], asc[0]}

	if got := buildBindIndex(asc).resolve("CCTV1"); got != 3 {
		t.Fatalf("升序入参 resolve = %d，期望 3", got)
	}
	if got := buildBindIndex(desc).resolve("CCTV1"); got != 3 {
		t.Fatalf("降序入参 resolve = %d，期望 3（结果必须与入参顺序无关）", got)
	}
}

func TestResolveRejectsEmptyAndUnknown(t *testing.T) {
	epgs := []models.IptvEpg{{ID: 1, Name: "CCTV1", Cas: "5", Remarks: "CCTV1"}}
	bi := buildBindIndex(epgs)

	for _, name := range []string{"", "   ", "---", "不存在的频道"} {
		if got := bi.resolve(name); got != 0 {
			t.Fatalf("resolve(%q) = %d，期望 0", name, got)
		}
	}
}

// TestResolveAcceptsEmptyCas 守住"cas 不再是绑定的门槛"。
//
// cas 为空的 EPG（内置的 18 个 CNTV EPG 就是这样）在以前**永远绑不上** ——
// claims 为空 ⇒ resolve 一律返回 0。现在判定不看 cas，它照样能按名字命中。
func TestResolveAcceptsEmptyCas(t *testing.T) {
	epgs := []models.IptvEpg{{ID: 1, Name: "CCTV1", Cas: "", Remarks: "CCTV1|CCTV-1"}}
	if got := buildBindIndex(epgs).resolve("CCTV1"); got != 1 {
		t.Fatalf("resolve = %d，期望 1（cas 为空不再影响绑定）", got)
	}
}
