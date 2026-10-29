package until

import (
	"path/filepath"
	"testing"

	"iptv-api/dao"
	"iptv-api/models"
)

// 「分组 → 套餐」反查的回归测试。
//
// 2026-10-29：mealIdsReferencingCategories 拼了带 ? 的 SQL 却**没把参数传给
// Where()** ⇒ 驱动收到一堆没有绑定的占位符，报 "missing argument with index 1"
// ⇒ 该函数恒返回 nil ⇒ 「改了分组/排序后作废对应套餐的订阅与 EPG 缓存」
// 这条链路**整条静默失效**（用户看到的却是刷屏的错误日志）。
//
// 这里的判据是"该命中的套餐一个不落、该不命中的一个不多"。

// setupMealCatDB 建一个干净的测试库（套餐表为空）。
func setupMealCatDB(t *testing.T) {
	t.Helper()

	if !dao.InitDB(filepath.Join(t.TempDir(), "iptv.db")) {
		t.Fatal("初始化测试数据库失败")
	}
	// sqlite 在 Windows 上会锁住库文件 ⇒ t.TempDir 的清理会失败。
	// 用例结束前主动关连接，把锁放开。
	t.Cleanup(func() {
		if sqlDB, err := dao.DB.DB(); err == nil {
			sqlDB.Close()
		}
	})
	if _, err := dao.MigrateAll("test"); err != nil {
		t.Fatalf("建表失败: %v", err)
	}
}

// newMealCat 建一个套餐，返回它的 id。
func newMealCat(t *testing.T, name, content string, status bool) int64 {
	t.Helper()
	m := models.IptvMeals{Name: name, Content: content, Status: status}
	if err := dao.DB.Create(&m).Error; err != nil {
		t.Fatalf("建套餐失败: %v", err)
	}
	return m.ID
}

// mealCatIDSet 把 id 列表转成集合，方便比较。
func mealCatIDSet(ids []int64) map[int64]bool {
	m := make(map[int64]bool, len(ids))
	for _, id := range ids {
		m[id] = true
	}
	return m
}

// TestMealIdsReferencingCategoriesMatchesEveryPosition
//
// 套餐的 content 是**逗号分隔的分组 id 列表**，目标分组可能出现在
// 任何一个位置：单元素 / 开头 / 中间 / 结尾。四种位置都要能命中。
func TestMealIdsReferencingCategoriesMatchesEveryPosition(t *testing.T) {
	setupMealCatDB(t)

	single := newMealCat(t, "单元素", "5", true)
	head := newMealCat(t, "开头", "5,7", true)
	middle := newMealCat(t, "中间", "3,5,9", true)
	tail := newMealCat(t, "结尾", "3,9,5", true)

	got := mealCatIDSet(mealIdsReferencingCategories([]int64{5}))
	want := map[int64]bool{single: true, head: true, middle: true, tail: true}

	if len(got) != len(want) {
		t.Fatalf("命中数量不对：期望 %d 个，实际 %d 个", len(want), len(got))
	}
	for id := range want {
		if !got[id] {
			t.Errorf("套餐 %d 应当命中（content 里含分组 5）", id)
		}
	}
}

// TestMealIdsReferencingCategoriesSkipsNonMatches
//
// 反向判据：不含目标分组的、下线的、以及**前缀碰巧相同**的
// （content="15" 不是分组 5）都不能命中。
func TestMealIdsReferencingCategoriesSkipsNonMatches(t *testing.T) {
	setupMealCatDB(t)

	other := newMealCat(t, "不含", "3,9", true)
	prefix := newMealCat(t, "前缀相同", "15", true)
	offline := newMealCat(t, "已下线", "5", false)

	got := mealCatIDSet(mealIdsReferencingCategories([]int64{5}))
	if len(got) != 0 {
		t.Fatalf("不该命中任何套餐，实际命中 %d 个", len(got))
	}
	for _, id := range []int64{other, prefix, offline} {
		if got[id] {
			t.Errorf("套餐 %d 不该命中", id)
		}
	}
}

// TestMealIdsReferencingCategoriesMatchBoundaries
//
// 逐个 content 单独判定（按套餐 id 认领，不看整体命中数），
// 把逗号分隔列表的匹配边界钉死 —— 尤其是"数字前缀相同"的陷阱：
// content="15"/"35"/"3,15" 都**不是**分组 5。
func TestMealIdsReferencingCategoriesMatchBoundaries(t *testing.T) {
	setupMealCatDB(t)

	cases := []struct {
		content string
		wantHit bool
	}{
		{"5", true}, {"5,7", true}, {"3,5,9", true}, {"3,9,5", true},
		{"1,5", true}, {"5,1", true}, {"1,5,1", true}, {"5,", true}, {",5,", true},
		{"15", false}, {"35", false}, {"5x", false}, {"x5", false},
		{"3,15", false}, {"15,3", false}, {"", false},
	}

	for i, c := range cases {
		id := newMealCat(t, "边界用例", c.content, true)
		hit := false
		for _, r := range mealIdsReferencingCategories([]int64{5}) {
			if r == id {
				hit = true
			}
		}
		if hit != c.wantHit {
			t.Errorf("用例#%d content=%q 期望命中=%v，实际=%v", i, c.content, c.wantHit, hit)
		}
	}
}

// TestMealIdsReferencingCategoriesMatchesAnyOfGivenIds
//
// 传多个分组时，命中其中任意一个的套餐都要被返回。
func TestMealIdsReferencingCategoriesMatchesAnyOfGivenIds(t *testing.T) {
	setupMealCatDB(t)

	only5 := newMealCat(t, "只含5", "5", true)
	only9 := newMealCat(t, "只含9", "9", true)
	both := newMealCat(t, "都含", "5,9", true)
	neither := newMealCat(t, "都不含", "3,7", true)

	got := mealCatIDSet(mealIdsReferencingCategories([]int64{5, 9}))
	want := map[int64]bool{only5: true, only9: true, both: true}

	if len(got) != len(want) {
		t.Fatalf("命中数量不对：期望 %d 个，实际 %d 个", len(want), len(got))
	}
	for id := range want {
		if !got[id] {
			t.Errorf("套餐 %d 应当命中", id)
		}
	}
	if got[neither] {
		t.Error("套餐既不含 5 也不含 9，不该命中")
	}
}

// TestMealIdsReferencingCategoriesEmptyInput 空输入直接返回，不查库。
func TestMealIdsReferencingCategoriesEmptyInput(t *testing.T) {
	setupMealCatDB(t)

	if ids := mealIdsReferencingCategories(nil); ids != nil {
		t.Fatalf("空输入应返回 nil，实际返回 %v", ids)
	}
	if ids := mealIdsReferencingCategories([]int64{}); ids != nil {
		t.Fatalf("空输入应返回 nil，实际返回 %v", ids)
	}
}
