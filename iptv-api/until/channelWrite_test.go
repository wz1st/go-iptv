package until

import (
	"fmt"
	"path/filepath"
	"strings"
	"sync"
	"sync/atomic"
	"testing"
	"time"

	"iptv-api/dao"
	"iptv-api/models"
)

// 频道列表写入（解析 / 比对 / 落库）与收尾调度的回归测试

// ────────────────────────────────────────────────────────────────────────────

func TestParseChannelListHandlesRealPlaylistShapes(t *testing.T) {
	// 真实 txt 列表里能同时出现：分组头、注释、带空格的 URL、停用前缀、
	// 一个名字挂多个备用源（# 分隔）、以及 emoji/换行残留。
	raw := strings.Join([]string{
		"CCTV,#genre#",
		"#EXTVLCOPT:http-user-agent=Mozilla",
		"CCTV1,http://a/x.m3u8",
		"0|CCTV2高清, http://b/y.m3u8",
		"CCTV3,http://c/1.m3u8#http://c/2.m3u8",
		"",
		"湖南卫视,http://d/z.m3u8",
	}, "\n")

	got := ParseChannelList(raw)

	type want struct {
		Name   string
		Url    string
		Status bool
	}
	wants := []want{
		{"CCTV1", "http://a/x.m3u8", true},
		{"CCTV2高清", "http://b/y.m3u8", false}, // `0|` = 停用，且名字里不能留前缀
		{"CCTV3", "http://c/1.m3u8", true},    // # 多源展开成两条，共用状态
		{"CCTV3", "http://c/2.m3u8", true},
		{"湖南卫视", "http://d/z.m3u8", true},
	}
	if len(got) != len(wants) {
		t.Fatalf("解析出 %d 条，期望 %d 条：%+v", len(got), len(wants), got)
	}
	for i, w := range wants {
		if got[i].Name != w.Name || got[i].Url != w.Url || got[i].Status != w.Status {
			t.Errorf("第 %d 条 = %+v，期望 %+v", i, got[i], w)
		}
	}
}

func TestParseChannelListSkipsHeaderOnlyLines(t *testing.T) {
	// 分组头行（`分组名,#genre#`）清洗后只剩名字，**没有逗号** → 必须被丢掉，
	// 否则会变成一条名叫"分组名"、URL 为空的行。
	got := ParseChannelList("电影,#genre#\nCCTV1,http://a\nCCTV6电影,http://b")
	if len(got) != 2 {
		t.Fatalf("解析出 %d 条，期望 2 条：%+v", len(got), got)
	}
	for _, e := range got {
		if e.Url == "" {
			t.Fatalf("解析出了空 URL 的条目：%+v", e)
		}
	}
}

// ────────────────────────────────────────────────────────────────────────────

func oldRow(id int64, name, url string, sort int64, status bool) models.IptvChannel {
	return models.IptvChannel{ID: id, Name: name, Url: url, Sort: sort, Status: status, CategoryID: 5, EpgID: 0}
}

// 提交顺序就是最终顺序：库里 a/b/c，提交 c/a/b → 三行的 sort 全都要改。
func TestPlanReordersBySubmittedOrder(t *testing.T) {
	old := []models.IptvChannel{
		oldRow(11, "CCTV1", "http://a", 1, true),
		oldRow(12, "CCTV2", "http://b", 2, true),
		oldRow(13, "CCTV3", "http://c", 3, true),
	}
	entries := []submittedChannel{
		{Name: "CCTV3", Url: "http://c", Status: true},
		{Name: "CCTV1", Url: "http://a", Status: true},
		{Name: "CCTV2", Url: "http://b", Status: true},
	}

	plan := planChannelWrite(entries, old, 5, 0, false, nil)
	if len(plan.Insert) != 0 || len(plan.Delete) != 0 {
		t.Fatalf("只应改顺序：插入 %d / 删除 %d", len(plan.Insert), len(plan.Delete))
	}
	if len(plan.Patch) != 3 {
		t.Fatalf("应有 3 条原地更新，实际 %d: %+v", len(plan.Patch), plan.Patch)
	}
	// patch 的顺序跟随提交顺序，且 id 必须落在正确的行上
	byID := map[int64]channelRowPatch{}
	for _, p := range plan.Patch {
		byID[p.ID] = p
	}
	if p := byID[13]; p.Sort != 1 {
		t.Errorf("CCTV3(13) 的 sort = %d，期望 1", p.Sort)
	}
	if p := byID[11]; p.Sort != 2 {
		t.Errorf("CCTV1(11) 的 sort = %d，期望 2", p.Sort)
	}
	if p := byID[12]; p.Sort != 3 {
		t.Errorf("CCTV2(12) 的 sort = %d，期望 3", p.Sort)
	}
}

// 位置本来就对的行不发 UPDATE（"顺序没变就不写"）。
func TestPlanSkipsRowsWhosePositionIsUnchanged(t *testing.T) {
	old := []models.IptvChannel{
		oldRow(11, "CCTV1", "http://a", 1, true),
		oldRow(12, "CCTV2", "http://b", 2, true),
		oldRow(13, "CCTV3", "http://c", 3, true),
	}
	// 逆序提交：c 从 3 挪到 1、a 从 1 挪到 3，而 b 恰好还在 2 号位
	entries := []submittedChannel{
		{Name: "CCTV3", Url: "http://c", Status: true},
		{Name: "CCTV2", Url: "http://b", Status: true},
		{Name: "CCTV1", Url: "http://a", Status: true},
	}

	plan := planChannelWrite(entries, old, 5, 0, false, nil)
	if len(plan.Patch) != 2 {
		t.Fatalf("应只更新位置真的变了的 2 行，实际 %d: %+v", len(plan.Patch), plan.Patch)
	}
	for _, p := range plan.Patch {
		if p.ID == 12 {
			t.Errorf("CCTV2(12) 的位置没变，不该被改写：%+v", p)
		}
	}
}

// 内容没变 → 一条 SQL 都不该发（"顺序不变就不写"）。
func TestPlanIsEmptyWhenNothingChanged(t *testing.T) {
	old := []models.IptvChannel{
		oldRow(11, "CCTV1", "http://a", 1, true),
		oldRow(12, "CCTV2", "http://b", 2, false),
	}
	entries := []submittedChannel{
		{Name: "CCTV1", Url: "http://a", Status: true},
		{Name: "CCTV2", Url: "http://b", Status: false},
	}
	plan := planChannelWrite(entries, old, 5, 0, false, nil)
	if plan.Changed() {
		t.Fatalf("内容与顺序都没变，却产生了写动作：%+v", plan)
	}
}

// 改名必须**原地改**：id 不变（Resolution/ResTime/Speed 跟着留下），
// 并按新名字重新参与 EPG 绑定（epg_id 归零由 SQL 侧的 Rename 分支负责）。
func TestPlanRenameInPlaceKeepsRowIdentity(t *testing.T) {
	old := []models.IptvChannel{
		{ID: 21, Name: "CCTV2", Url: "http://b", Sort: 2, Status: true, CategoryID: 5, EpgID: 33},
	}
	entries := []submittedChannel{{Name: "CCTV2高清", Url: "http://b", Status: true}}

	plan := planChannelWrite(entries, old, 5, 0, false, nil)
	if len(plan.Patch) != 1 {
		t.Fatalf("应有 1 条原地更新，实际 %+v", plan.Patch)
	}
	p := plan.Patch[0]
	if p.ID != 21 {
		t.Errorf("id = %d，期望 21（改名不该换行）", p.ID)
	}
	if !p.Rename || p.Name != "CCTV2高清" {
		t.Errorf("patch 没有带上改名：%+v", p)
	}
	if len(plan.Insert) != 0 || len(plan.Delete) != 0 {
		t.Errorf("改名不该产生插入/删除：插入 %d / 删除 %d", len(plan.Insert), len(plan.Delete))
	}
}

// 启停变化走同一条原地更新（sort 没变时也要改 status）。
func TestPlanUpdatesStatusOnly(t *testing.T) {
	old := []models.IptvChannel{oldRow(31, "CCTV1", "http://a", 1, true)}
	entries := []submittedChannel{{Name: "CCTV1", Url: "http://a", Status: false}}

	plan := planChannelWrite(entries, old, 5, 0, false, nil)
	if len(plan.Patch) != 1 || plan.Patch[0].Status != false || plan.Patch[0].Rename {
		t.Fatalf("应有一条只改状态的更新，实际 %+v", plan.Patch)
	}
}

// 文本里没出现的旧行 → 删除（"文本即真值"）。
func TestPlanDeletesRowsMissingFromText(t *testing.T) {
	old := []models.IptvChannel{
		oldRow(41, "CCTV1", "http://a", 1, true),
		oldRow(42, "CCTV2", "http://b", 2, true),
		oldRow(43, "CCTV3", "http://c", 3, true),
	}
	entries := []submittedChannel{{Name: "CCTV1", Url: "http://a", Status: true}}

	plan := planChannelWrite(entries, old, 5, 0, false, nil)
	if len(plan.Delete) != 2 {
		t.Fatalf("应删除 2 行，实际 %v", plan.Delete)
	}
	for _, id := range []int64{42, 43} {
		found := false
		for _, d := range plan.Delete {
			if d == id {
				found = true
			}
		}
		if !found {
			t.Errorf("第 %d 行应被删除，实际删除 %v", id, plan.Delete)
		}
	}
}

// 同一份文本里同一个 URL 出现两次 → 先到先得，只落一条，并计入"重复"。
func TestPlanDedupesWithinOneSubmit(t *testing.T) {
	entries := []submittedChannel{
		{Name: "CCTV1", Url: "http://a", Status: true},
		{Name: "CCTV1备用", Url: "http://a", Status: true},
	}
	plan := planChannelWrite(entries, nil, 5, 0, false, nil)

	if len(plan.Insert) != 1 {
		t.Fatalf("同一个 URL 只能落一行，实际 %d 行：%+v", len(plan.Insert), plan.Insert)
	}
	if plan.Insert[0].Name != "CCTV1" {
		t.Errorf("应保留第一次出现的名字，实际 %q", plan.Insert[0].Name)
	}
	if plan.Repeat != 1 {
		t.Errorf("Repeat = %d，期望 1", plan.Repeat)
	}
	if plan.RawCount != 2 {
		t.Errorf("RawCount = %d，期望 2（原始条目数，去重前）", plan.RawCount)
	}
}

// 开了去重（doRepeat）时，命中手工分组里已有的 URL → 本分组的这条要删掉。
func TestPlanHandDedupRemovesLocalRow(t *testing.T) {
	old := []models.IptvChannel{oldRow(51, "CCTV1", "http://a", 1, true)}
	entries := []submittedChannel{{Name: "CCTV1", Url: "http://a", Status: true}}
	hand := map[string]string{"http://a": "手工分组里的CCTV1"}

	plan := planChannelWrite(entries, old, 5, 0, true, hand)
	if len(plan.Delete) != 1 || plan.Delete[0] != 51 {
		t.Fatalf("手工分组已有的 URL，本分组的行应被删除，实际 %+v", plan)
	}
	if len(plan.Insert) != 0 || len(plan.Patch) != 0 {
		t.Errorf("不该插入或更新：%+v", plan)
	}
	if plan.Repeat != 1 {
		t.Errorf("Repeat = %d，期望 1", plan.Repeat)
	}
}

// doRepeat=false 时不去重（同一个 URL 在手工分组和本分组里各留一条）。
func TestPlanKeepsRowWhenDedupDisabled(t *testing.T) {
	old := []models.IptvChannel{oldRow(61, "CCTV1", "http://a", 1, true)}
	entries := []submittedChannel{{Name: "CCTV1", Url: "http://a", Status: true}}

	plan := planChannelWrite(entries, old, 5, 0, false, nil)
	if plan.Changed() {
		t.Fatalf("没开去重、内容也没变，不该有写动作：%+v", plan)
	}
}

// 库里有重复行（历史遗留）→ 保留第一行，其余删掉。
func TestPlanHealsDuplicateRows(t *testing.T) {
	old := []models.IptvChannel{
		oldRow(71, "CCTV1", "http://a", 1, true),
		oldRow(72, "CCTV1", "http://a", 2, true), // 同一个 URL 的第二行
	}
	entries := []submittedChannel{{Name: "CCTV1", Url: "http://a", Status: true}}

	plan := planChannelWrite(entries, old, 5, 0, false, nil)
	if len(plan.Delete) != 1 || plan.Delete[0] != 72 {
		t.Fatalf("应删掉重复的第二行 72，实际 %+v", plan.Delete)
	}
}

// 删除清单必须去重：一个 URL 既被"手工去重"打上、又出现在"库里有重复行"时
// 不应把同一个 id 采集两次（会变成同一行删两遍）。
func TestPlanDeleteIDsAreUnique(t *testing.T) {
	old := []models.IptvChannel{
		oldRow(81, "CCTV1", "http://a", 1, true),
		oldRow(82, "CCTV1", "http://a", 2, true),
	}
	entries := []submittedChannel{{Name: "CCTV1", Url: "http://a", Status: true}}
	plan := planChannelWrite(entries, old, 5, 0, true, map[string]string{"http://a": "x"})

	seen := map[int64]int{}
	for _, id := range plan.Delete {
		seen[id]++
	}
	for id, n := range seen {
		if n > 1 {
			t.Errorf("id %d 在删除清单里出现 %d 次：%v", id, n, plan.Delete)
		}
	}
}

// ────────────────────────────────────────────────────────────────────────────

// realNotifyChannelWrite 是收尾钩子的生产实现。用例结束时恢复它，
// 免得上一个用例替换的计数回调被下一个用例当成"原始值"存下来、越传越偏。
var realNotifyChannelWrite = notifyChannelWrite

func setupChannelDB(t *testing.T) {
	t.Helper()

	// 收尾动作（清缓存 + 引擎重绑）在单测里没有意义，且要碰 dao.Cache 与引擎连接。
	// 换成空实现 —— 于是这些用例**不会**去碰合并调度器（那是下面两个用例的事）。
	notifyChannelWrite = func(int64) {}
	t.Cleanup(func() { notifyChannelWrite = realNotifyChannelWrite })

	if !dao.InitDB(filepath.Join(t.TempDir(), "iptv.db")) {
		t.Fatal("初始化测试数据库失败")
	}
	if _, err := dao.MigrateAll("test"); err != nil {
		t.Fatalf("建表失败: %v", err)
	}
	if err := dao.DB.Exec("DELETE FROM iptv_channels").Error; err != nil {
		t.Fatalf("清空频道表失败: %v", err)
	}
	if err := dao.DB.Exec("DELETE FROM iptv_category").Error; err != nil {
		t.Fatalf("清空分组表失败: %v", err)
	}
}

func newTestCategory(t *testing.T, name string) int64 {
	t.Helper()
	ca := models.IptvCategory{Name: name, Enable: true, Type: "add", Sort: 1}
	if err := dao.DB.Create(&ca).Error; err != nil {
		t.Fatalf("建分组失败: %v", err)
	}
	return ca.ID
}

func loadChannels(t *testing.T, caID int64) []models.IptvChannel {
	t.Helper()
	var rows []models.IptvChannel
	if err := dao.DB.Where("category_id = ?", caID).Order("sort asc, id asc").Find(&rows).Error; err != nil {
		t.Fatalf("读频道失败: %v", err)
	}
	return rows
}

func TestAddChannelListEndToEnd(t *testing.T) {
	setupChannelDB(t)
	caID := newTestCategory(t, "端到端")

	if _, err := AddChannelList("CCTV1,http://a\nCCTV2,http://b\nCCTV3,http://c", caID, 9, false); err != nil {
		t.Fatalf("首次导入失败: %v", err)
	}

	// 给 CCTV2 补上"探测结果 + 手工 EPG 绑定"，用来验证改名不会把它们清掉
	if err := dao.DB.Exec("UPDATE iptv_channels SET epg_id = 33, resolution = '1080P', res_time = 15, speed = '1.2MB/s' WHERE url = 'http://b'").Error; err != nil {
		t.Fatalf("准备数据失败: %v", err)
	}
	var before models.IptvChannel
	if err := dao.DB.Where("url = ?", "http://b").First(&before).Error; err != nil {
		t.Fatalf("读取 CCTV2 失败: %v", err)
	}

	// 一次把三种情况都覆盖：换序 + 改名 + 停用 + 新增 + 删除
	submit := strings.Join([]string{
		"CCTV3,http://c",     // 挪到第 1
		"0|CCTV2高清,http://b", // 改名 + 停用
		"CCTV9,http://new",   // 新增
		"CCTV1,http://a",     // 挪到第 4
	}, "\n")
	repeat, err := AddChannelList(submit, caID, 9, false)
	if err != nil {
		t.Fatalf("二次导入失败: %v", err)
	}
	if repeat != 0 {
		t.Errorf("repeat = %d，期望 0", repeat)
	}

	rows := loadChannels(t, caID)
	if len(rows) != 4 {
		t.Fatalf("应有 4 行（旧的 http://b 之外的都被换掉），实际 %d：%+v", len(rows), rows)
	}

	byUrl := map[string]models.IptvChannel{}
	for _, r := range rows {
		byUrl[r.Url] = r
	}
	if _, gone := byUrl["http://b"]; !gone {
		t.Fatal("http://b 应该还在（只是改名了）")
	}

	type want struct {
		url    string
		name   string
		sort   int64
		status bool
	}
	for _, w := range []want{
		{"http://c", "CCTV3", 1, true},
		{"http://b", "CCTV2高清", 2, false},
		{"http://new", "CCTV9", 3, true},
		{"http://a", "CCTV1", 4, true},
	} {
		r, ok := byUrl[w.url]
		if !ok {
			t.Errorf("%s 缺失", w.url)
			continue
		}
		if r.Name != w.name || r.Sort != w.sort || r.Status != w.status {
			t.Errorf("%s = {name:%q sort:%d status:%v}，期望 {name:%q sort:%d status:%v}",
				w.url, r.Name, r.Sort, r.Status, w.name, w.sort, w.status)
		}
	}

	// 改名是**原地**做的：id 不变、探测结果留下、EPG 绑定归零等重算
	renamed := byUrl["http://b"]
	if renamed.ID != before.ID {
		t.Errorf("改名后 id 变成 %d，期望仍是 %d", renamed.ID, before.ID)
	}
	if renamed.Resolution != "1080P" || renamed.ResTime != 15 || renamed.Speed != "1.2MB/s" {
		t.Errorf("改名把探测结果弄丢了：resolution=%q resTime=%d speed=%q",
			renamed.Resolution, renamed.ResTime, renamed.Speed)
	}
	if renamed.EpgID != 0 {
		t.Errorf("改名后 epg_id = %d，期望归零（交给 BindChannel 按新名字重算）", renamed.EpgID)
	}

	// raw_count 写回的是"文本里的原始条目数"
	var ca models.IptvCategory
	if err := dao.DB.First(&ca, caID).Error; err != nil {
		t.Fatalf("读分组失败: %v", err)
	}
	if ca.RawCount != 4 {
		t.Errorf("raw_count = %d，期望 4", ca.RawCount)
	}
}

// 空文本 = 清空该分组。
func TestAddChannelListEmptyClearsCategory(t *testing.T) {
	setupChannelDB(t)
	caID := newTestCategory(t, "清空")
	otherID := newTestCategory(t, "别的分组")

	if _, err := AddChannelList("CCTV1,http://a\nCCTV2,http://b", caID, 0, false); err != nil {
		t.Fatalf("导入失败: %v", err)
	}
	if _, err := AddChannelList("CCTV1,http://x", otherID, 0, false); err != nil {
		t.Fatalf("导入另一个分组失败: %v", err)
	}

	if _, err := AddChannelList("", caID, 0, false); err != nil {
		t.Fatalf("清空失败: %v", err)
	}
	if rows := loadChannels(t, caID); len(rows) != 0 {
		t.Fatalf("该分组应被清空，实际还有 %d 行", len(rows))
	}
	if rows := loadChannels(t, otherID); len(rows) != 1 {
		t.Fatalf("别的分组不该受影响，实际 %d 行", len(rows))
	}
}

// 跨分块：250 行重排 → 2 块 CASE WHEN，每一行都必须真的被改到
// （分块拼错时 ELSE 会把没写进去的行原样留着，SQL 不报错）。
func TestAddChannelListPatchesAcrossBatches(t *testing.T) {
	setupChannelDB(t)
	caID := newTestCategory(t, "分块")

	const n = 250
	var sb strings.Builder
	for i := 0; i < n; i++ {
		fmt.Fprintf(&sb, "CH%03d,http://h/%d\n", i, i)
	}
	if _, err := AddChannelList(sb.String(), caID, 0, false); err != nil {
		t.Fatalf("导入失败: %v", err)
	}

	// 逆序提交：每一行的 sort 都要变 → 全部进 Patch，必跨 channelPatchBatch
	var rev strings.Builder
	for i := n - 1; i >= 0; i-- {
		fmt.Fprintf(&rev, "CH%03d,http://h/%d\n", i, i)
	}
	if _, err := AddChannelList(rev.String(), caID, 0, false); err != nil {
		t.Fatalf("逆序提交失败: %v", err)
	}

	rows := loadChannels(t, caID)
	if len(rows) != n {
		t.Fatalf("行数 = %d，期望 %d", len(rows), n)
	}
	for i, r := range rows {
		wantName := fmt.Sprintf("CH%03d", n-1-i)
		if r.Name != wantName {
			t.Fatalf("第 %d 位是 %s，期望 %s（sort 没被整体改写）", i, r.Name, wantName)
		}
		if r.Sort != int64(i+1) {
			t.Fatalf("%s 的 sort = %d，期望 %d", r.Name, r.Sort, i+1)
		}
	}

	// 再验证一次状态也被分块改到了：全部停用
	var dis strings.Builder
	for i := n - 1; i >= 0; i-- {
		fmt.Fprintf(&dis, "0|CH%03d,http://h/%d\n", i, i)
	}
	if _, err := AddChannelList(dis.String(), caID, 0, false); err != nil {
		t.Fatalf("停用提交失败: %v", err)
	}
	for _, r := range loadChannels(t, caID) {
		if r.Status {
			t.Fatalf("%s 仍是启用，分块 CASE 漏了这一行", r.Name)
		}
	}
}

// 收尾只触发一次：一次提交不管改了多少行，notifyChannelWrite 只该走一次。
func TestAddChannelListNotifiesOncePerSubmit(t *testing.T) {
	setupChannelDB(t)
	caID := newTestCategory(t, "通知")

	var hits int64
	notifyChannelWrite = func(int64) { atomic.AddInt64(&hits, 1) }

	if _, err := AddChannelList("CCTV1,http://a\nCCTV2,http://b", caID, 0, false); err != nil {
		t.Fatalf("导入失败: %v", err)
	}
	if hits != 1 {
		t.Fatalf("首次导入应触发 1 次收尾，实际 %d", hits)
	}

	// 幂等提交（内容完全没变）不该再触发
	if _, err := AddChannelList("CCTV1,http://a\nCCTV2,http://b", caID, 0, false); err != nil {
		t.Fatalf("幂等提交失败: %v", err)
	}
	if hits != 1 {
		t.Fatalf("无变化时不该触发收尾，实际 %d 次", hits)
	}
}

// ────────────────────────────────────────────────────────────────────────────

func TestRequestChannelRefreshMergesBurst(t *testing.T) {
	oldDelay := channelRefreshDelay
	oldClean := channelRefreshClean
	oldBind := channelRefreshBind
	oldEpg := channelRefreshEpg
	t.Cleanup(func() {
		channelRefreshDelay = oldDelay
		channelRefreshClean = oldClean
		channelRefreshBind = oldBind
		channelRefreshEpg = oldEpg
	})

	channelRefreshDelay = 20 * time.Millisecond

	var rounds int64
	done := make(chan struct{}, 8)
	channelRefreshClean = func() {}
	channelRefreshEpg = func() {}
	channelRefreshBind = func() bool {
		n := atomic.AddInt64(&rounds, 1)
		select {
		case done <- struct{}{}:
		default:
		}
		return n > 0
	}

	// 一轮"自动更新"按 #genre# 拆出几十个分组，每个分组结束时都会请求一次
	for i := 0; i < 50; i++ {
		RequestChannelRefresh()
	}

	select {
	case <-done:
	case <-time.After(2 * time.Second):
		t.Fatal("收尾任务没有在窗口后执行")
	}
	// 给"跑完再补一轮"留出观察时间
	time.Sleep(150 * time.Millisecond)

	if got := atomic.LoadInt64(&rounds); got != 1 {
		t.Fatalf("50 次突发请求应合并成 1 轮重绑，实际 %d 轮", got)
	}
}

// 跑到一半又来了请求 → 跑完必须补一轮，不能把那次请求吞掉
// （吞掉的表现是"保存了但绑定一直没更新"，且没有任何报错）。
func TestRequestChannelRefreshRunsAgainWhenDirty(t *testing.T) {
	oldDelay := channelRefreshDelay
	oldClean := channelRefreshClean
	oldBind := channelRefreshBind
	oldEpg := channelRefreshEpg
	t.Cleanup(func() {
		channelRefreshDelay = oldDelay
		channelRefreshClean = oldClean
		channelRefreshBind = oldBind
		channelRefreshEpg = oldEpg
	})

	channelRefreshDelay = 10 * time.Millisecond

	var rounds int64
	release := make(chan struct{})
	first := make(chan struct{})
	channelRefreshClean = func() {}
	channelRefreshEpg = func() {}
	channelRefreshBind = func() bool {
		n := atomic.AddInt64(&rounds, 1)
		if n == 1 {
			close(first)
			<-release // 卡住第一轮，模拟"全表重绑要跑一会儿"
		}
		return true
	}

	RequestChannelRefresh()
	select {
	case <-first:
	case <-time.After(2 * time.Second):
		t.Fatal("第一轮没有启动")
	}

	// 第一轮还在跑的时候又来一批请求
	for i := 0; i < 10; i++ {
		RequestChannelRefresh()
	}
	close(release)

	deadline := time.Now().Add(2 * time.Second)
	for time.Now().Before(deadline) {
		if atomic.LoadInt64(&rounds) >= 2 {
			break
		}
		time.Sleep(10 * time.Millisecond)
	}
	if got := atomic.LoadInt64(&rounds); got != 2 {
		t.Fatalf("运行期间的请求应合并成 1 轮补跑（共 2 轮），实际 %d 轮", got)
	}
}

// 收尾必须是「失效聚合缓存 → 重算绑定 → 重算套餐聚合节目单」这三步，且顺序不能换。
func TestRequestChannelRefreshOrderCleanBindEpg(t *testing.T) {
	oldDelay := channelRefreshDelay
	oldClean := channelRefreshClean
	oldBind := channelRefreshBind
	oldEpg := channelRefreshEpg
	t.Cleanup(func() {
		channelRefreshDelay = oldDelay
		channelRefreshClean = oldClean
		channelRefreshBind = oldBind
		channelRefreshEpg = oldEpg
	})

	channelRefreshDelay = 10 * time.Millisecond

	var mu sync.Mutex
	var order []string
	done := make(chan struct{}, 8)
	// 三步都记录进 order，并在最后一步（epg）结束后通知观察者。
	channelRefreshClean = func() {
		mu.Lock()
		order = append(order, "clean")
		mu.Unlock()
	}
	channelRefreshBind = func() bool {
		mu.Lock()
		order = append(order, "bind")
		mu.Unlock()
		return true
	}
	channelRefreshEpg = func() {
		mu.Lock()
		order = append(order, "epg")
		mu.Unlock()
		select {
		case done <- struct{}{}:
		default:
		}
	}

	RequestChannelRefresh()

	select {
	case <-done:
	case <-time.After(2 * time.Second):
		t.Fatal("收尾任务没有在窗口后执行")
	}
	time.Sleep(80 * time.Millisecond) // 等可能的补跑轮结束

	mu.Lock()
	got := append([]string(nil), order...)
	mu.Unlock()

	if len(got) != 3 {
		t.Fatalf("一轮收尾应恰好跑三步（clean/bind/epg），实际 %d 步: %v", len(got), got)
	}
	want := []string{"clean", "bind", "epg"}
	for i := range want {
		if got[i] != want[i] {
			t.Fatalf("收尾顺序应为 %v，实际 %v（第三步必须排在绑定之后，否则等于拿旧绑定重算节目单）", want, got)
		}
	}
}
