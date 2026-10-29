package until

import (
	"path/filepath"
	"strings"
	"testing"

	"iptv-api/dao"
	"iptv-api/models"
)

// 「自动绑定 / 清空绑定」的数据库级回归测试。
//
// 这两条是本次改动的主体（2026-10-29）：
//   - 自动绑定：遍历**全部**频道名，按规则命中就绑；已有绑定则更改，没有则更新；
//     判定**不再受 caID（分组认领）限制**。
//   - 清空绑定：既清 EPG 表里的手动绑定名单，也清频道上的 epg_id（真正解绑）。

// setupBindDB 建一个干净的测试库（频道表 + 分组表 + EPG 表都是空的）。
func setupBindDB(t *testing.T) {
	t.Helper()

	// 收尾动作在单测里没有意义（要碰 dao.Cache 与引擎连接）。
	notifyChannelWrite = func(int64) {}
	t.Cleanup(func() { notifyChannelWrite = realNotifyChannelWrite })

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

// newBindCategory 建一个分组，返回 id。
func newBindCategory(t *testing.T, name, typ string, enable bool) int64 {
	t.Helper()
	ca := models.IptvCategory{Name: name, Enable: enable, Type: typ, Sort: 1}
	if err := dao.DB.Create(&ca).Error; err != nil {
		t.Fatalf("建分组失败: %v", err)
	}
	return ca.ID
}

// newBindChannel 建一条频道，返回 id。
func newBindChannel(t *testing.T, caID int64, name string, epgID int64) int64 {
	t.Helper()
	ch := models.IptvChannel{
		Name: name, Url: "http://x/" + name, Status: true,
		CategoryID: caID, EpgID: epgID,
	}
	if err := dao.DB.Create(&ch).Error; err != nil {
		t.Fatalf("建频道失败: %v", err)
	}
	return ch.ID
}

// newBindEpg 建一条 EPG，返回 id。
func newBindEpg(t *testing.T, name, remarks, content string) int64 {
	t.Helper()
	epg := models.IptvEpg{Name: name, Remarks: remarks, Content: content, Status: true}
	if err := dao.DB.Create(&epg).Error; err != nil {
		t.Fatalf("建EPG失败: %v", err)
	}
	return epg.ID
}

// channelEpgID 读某条频道当前的 epg_id。
func channelEpgID(t *testing.T, id int64) int64 {
	t.Helper()
	var ch models.IptvChannel
	if err := dao.DB.First(&ch, "id = ?", id).Error; err != nil {
		t.Fatalf("读频道失败: %v", err)
	}
	return ch.EpgID
}

// TestBindChannelIgnoresCategoryClaim 守住"取消 caID 限制"。
//
// EPG 没有"认领分组"这回事（cas 字段已整体删除）—— 以前要求 EPG 认领该分组，
// 不认领就永远绑不上任何频道。现在判定只看频道名，它照样能绑。
func TestBindChannelIgnoresCategoryClaim(t *testing.T) {
	setupBindDB(t)

	caID := newBindCategory(t, "央视", "add", true)
	epgID := newBindEpg(t, "CCTV1", "CCTV1|CCTV-1", "")
	chID := newBindChannel(t, caID, "CCTV-1", 0)

	BindChannel()

	if got := channelEpgID(t, chID); got != epgID {
		t.Fatalf("频道 epg_id = %d，期望 %d（不认领分组也要能绑上）", got, epgID)
	}
}

// TestBindChannelUpdatesExistingBinding 守住"已有绑定则更改"。
//
// 频道原先挂在 EPG-A 上，但规则（手动绑定名单）现在指向 EPG-B ⇒ 应当改绑到 B。
func TestBindChannelUpdatesExistingBinding(t *testing.T) {
	setupBindDB(t)

	caID := newBindCategory(t, "央视", "add", true)
	epgA := newBindEpg(t, "EPG-A", "CCTV1", "")
	epgB := newBindEpg(t, "EPG-B", "", "CCTV1")
	chID := newBindChannel(t, caID, "CCTV1", epgA)

	BindChannel()

	if got := channelEpgID(t, chID); got != epgB {
		t.Fatalf("频道 epg_id = %d，期望 %d（已有绑定应被改判到手动绑定的 EPG）", got, epgB)
	}
}

// TestBindChannelFillsUnbound 守住"没有则更新"。
//
// 频道还没绑 EPG，但频道名命中某条规则 ⇒ 应当补上绑定。
func TestBindChannelFillsUnbound(t *testing.T) {
	setupBindDB(t)

	caID := newBindCategory(t, "央视", "add", true)
	epgID := newBindEpg(t, "CCTV1", "CCTV1|CCTV-1", "")
	chID := newBindChannel(t, caID, "CCTV1", 0)

	BindChannel()

	if got := channelEpgID(t, chID); got != epgID {
		t.Fatalf("频道 epg_id = %d，期望 %d（未绑定的频道应被补绑）", got, epgID)
	}
}

// TestBindChannelSkipsAutoCategory 守住"api 绑定 EPG 不考虑 auto 分组"。
//
// 聚合分组（type like 'auto%'）里的频道由引擎侧按 EPG 聚合反推，
// api 不去改它们的 epg_id。
func TestBindChannelSkipsAutoCategory(t *testing.T) {
	setupBindDB(t)

	autoCa := newBindCategory(t, "聚合", "autoRe", true)
	newBindEpg(t, "CCTV1", "CCTV1|CCTV-1", "")
	chID := newBindChannel(t, autoCa, "CCTV1", 0)

	BindChannel()

	if got := channelEpgID(t, chID); got != 0 {
		t.Fatalf("聚合分组里的频道 epg_id = %d，期望 0（api 不碰 auto 分组）", got)
	}
}

// TestBindChannelKeepsUnmatchedChannel 守住"没有规则命中就不动它"。
//
// 频道名不命中任何规则 ⇒ 保持原样（不主动解绑）。
// 解绑是「清空绑定」的活儿，不该在自动绑定时顺手做。
func TestBindChannelKeepsUnmatchedChannel(t *testing.T) {
	setupBindDB(t)

	caID := newBindCategory(t, "央视", "add", true)
	epgID := newBindEpg(t, "CCTV1", "CCTV1|CCTV-1", "")
	chID := newBindChannel(t, caID, "完全不匹配的台名", epgID)

	BindChannel()

	if got := channelEpgID(t, chID); got != epgID {
		t.Fatalf("频道 epg_id = %d，期望 %d（未命中规则的频道保持原样）", got, epgID)
	}
}

// TestBindChannelCrossesCategories 守住"遍历全部频道名"。
//
// 同名频道分布在**不同分组**里 —— 取消 caID 限制后，它们都该绑到同一个 EPG，
// 不再是"只有被 EPG 认领的那个分组才绑得上"。
func TestBindChannelCrossesCategories(t *testing.T) {
	setupBindDB(t)

	caA := newBindCategory(t, "分组A", "add", true)
	caB := newBindCategory(t, "分组B", "add", true)
	epgID := newBindEpg(t, "CCTV1", "CCTV1|CCTV-1", "")
	chA := newBindChannel(t, caA, "CCTV1", 0)
	chB := newBindChannel(t, caB, "CCTV1", 0)

	BindChannel()

	if got := channelEpgID(t, chA); got != epgID {
		t.Fatalf("分组A 的频道 epg_id = %d，期望 %d", got, epgID)
	}
	if got := channelEpgID(t, chB); got != epgID {
		t.Fatalf("分组B 的频道 epg_id = %d，期望 %d（跨分组同样要绑上）", got, epgID)
	}
}

// epgBoundNames 读某条 EPG 当前记录的 bound_names（自动绑定的结果清单）。
func epgBoundNames(t *testing.T, id int64) string {
	t.Helper()
	var epg models.IptvEpg
	if err := dao.DB.First(&epg, "id = ?", id).Error; err != nil {
		t.Fatalf("读 EPG 失败: %v", err)
	}
	return epg.BoundNames
}

// epgManualNames 读某条 EPG 当前记录的 content（用户手动绑定的名单）。
func epgManualNames(t *testing.T, id int64) string {
	t.Helper()
	var epg models.IptvEpg
	if err := dao.DB.First(&epg, "id = ?", id).Error; err != nil {
		t.Fatalf("读 EPG 失败: %v", err)
	}
	return epg.Content
}

// TestBindChannelWritesBackContent 守住"绑定成功的频道名要记进 bound_names"。
//
// 管理端 EPG 列表有一列「绑定频道」，显示的就是"这个 EPG 当前绑着哪些台"。
// 自动绑定以前只改 iptv_channels.epg_id，哪儿都没记 ⇒ 那一列永远是「-」。
func TestBindChannelWritesBackContent(t *testing.T) {
	setupBindDB(t)

	caID := newBindCategory(t, "央视", "add", true)
	epgID := newBindEpg(t, "CCTV1", "CCTV1|CCTV-1", "")
	newBindChannel(t, caID, "CCTV1", 0)
	newBindChannel(t, caID, "CCTV-1", 0)

	BindChannel()

	got := epgBoundNames(t, epgID)
	if !strings.Contains(got, "CCTV1") || !strings.Contains(got, "CCTV-1") {
		t.Fatalf("bound_names = %q，期望包含绑定成功的两个频道名", got)
	}
}

// TestWriteBackDoesNotTouchManualNames 守住"回写不动手动绑定的名单"。
//
// content = 用户手动指定的名单（参与判定、优先级最高）；
// bound_names = 自动绑定的结果（只展示）。两者分开存，回写只碰后者。
func TestWriteBackDoesNotTouchManualNames(t *testing.T) {
	setupBindDB(t)

	caID := newBindCategory(t, "央视", "add", true)
	epgID := newBindEpg(t, "CCTV1", "CCTV1", "手动指定的台子")
	newBindChannel(t, caID, "CCTV1", 0)

	BindChannel()

	if got := epgManualNames(t, epgID); got != "手动指定的台子" {
		t.Fatalf("content = %q，期望原样保留手动指定的名单", got)
	}
	got := epgBoundNames(t, epgID)
	if !strings.Contains(got, "CCTV1") {
		t.Fatalf("bound_names = %q，期望包含自动绑定上的 CCTV1", got)
	}
}

// TestWriteBackContentIsFullRewrite 守住"回写是全量重写，不是追加"。
//
// 频道改判到别的 EPG 后，它必须从原 EPG 的名单里消失 —— 追加会留下旧记录，
// 名单与实际绑定就对不上了。
func TestWriteBackContentIsFullRewrite(t *testing.T) {
	setupBindDB(t)

	caID := newBindCategory(t, "央视", "add", true)
	epgA := newBindEpg(t, "CCTV1", "CCTV1", "")
	epgB := newBindEpg(t, "湖南卫视", "湖南卫视|CCTV1", "")
	newBindChannel(t, caID, "CCTV1", 0)

	// 两条规则等价 ⇒ 取 ID 最小的 epgA。
	BindChannel()
	if got := epgBoundNames(t, epgA); !strings.Contains(got, "CCTV1") {
		t.Fatalf("epgA 的 bound_names = %q，期望包含 CCTV1", got)
	}

	// 把 epgA 下线 ⇒ CCTV1 只能落到 epgB。
	// 注意：下线的 EPG 不参与重算（BindChannel 只认启用中的），所以它的名单
	// 保持原样（上线后还能用）—— 这里要断言的是**启用中的** epgB 拿到了 CCTV1。
	dao.DB.Model(&models.IptvEpg{}).Where("id = ?", epgA).Update("status", 0)
	BindChannel()

	if got := epgBoundNames(t, epgB); !strings.Contains(got, "CCTV1") {
		t.Fatalf("epgB 的 bound_names = %q，期望包含 CCTV1", got)
	}
	if got := epgBoundNames(t, epgA); !strings.Contains(got, "CCTV1") {
		t.Fatalf("epgA 已下线，bound_names = %q，期望保留原值（不上线就不该被清）", got)
	}
}

// TestWriteBackDoesNotFreezeRules 守住"回写不会把规则钉死"。
//
// 这是最容易踩的坑：如果把自动绑定的结果写回 content（手动名单），它就会
// 变成"手动指定"，用户改了别名/新增了 EPG 之后，旧结果会把频道死死按在
// 老 EPG 上 —— 规则改了不生效。
//
// 解法：自动结果单独存 bound_names，不参与判定；content 仍是纯手动名单。
func TestWriteBackDoesNotFreezeRules(t *testing.T) {
	setupBindDB(t)

	caID := newBindCategory(t, "央视", "add", true)
	epgA := newBindEpg(t, "CCTV1", "CCTV1", "")
	chID := newBindChannel(t, caID, "CCTV1", 0)

	BindChannel()
	if got := epgBoundNames(t, epgA); !strings.Contains(got, "CCTV1") {
		t.Fatalf("bound_names = %q，期望包含 CCTV1", got)
	}

	// 让 epgA **彻底**不再认 CCTV1，同时新增一条认 CCTV1 的 EPG。
	// ⚠️ 必须连 Name 一起改：EPG 名进的是 exact 桶，优先级高于 alias 桶，
	//    只清 remarks 的话 CCTV1 仍然命中 epgA 的 exact —— 那是正常的优先级
	//    行为，不是"被旧结果钉死"，测不出东西。
	dao.DB.Model(&models.IptvEpg{}).Where("id = ?", epgA).
		Updates(map[string]interface{}{"name": "台子A", "remarks": ""})
	epgB := newBindEpg(t, "央视一套", "央视一套|CCTV1", "")

	BindChannel()

	if got := channelEpgID(t, chID); got != epgB {
		t.Fatalf("频道 epg_id = %d，期望 %d（改了规则就该改判，不能被旧结果钉死）", got, epgB)
	}
	if got := epgBoundNames(t, epgA); strings.Contains(got, "CCTV1") {
		t.Fatalf("epgA 的 bound_names = %q，期望不再包含 CCTV1", got)
	}
}

// TestMergeBoundChannelNames 守住展示层的合并：手动 ∪ 自动，去重且顺序稳定。
func TestMergeBoundChannelNames(t *testing.T) {
	got := MergeBoundChannelNames("CCTV1,湖南卫视", "CCTV1,央视一套")
	want := "CCTV1,湖南卫视,央视一套"
	if got != want {
		t.Fatalf("MergeBoundChannelNames = %q，期望 %q", got, want)
	}

	if got := MergeBoundChannelNames("", ""); got != "" {
		t.Fatalf("MergeBoundChannelNames = %q，期望空串", got)
	}
	// 空项要丢掉，不能出现 "a,,b"
	if got := MergeBoundChannelNames("a,,b", ""); got != "a,b" {
		t.Fatalf("MergeBoundChannelNames = %q，期望 %q", got, "a,b")
	}
}

// TestBlacklistBlocksBinding 守住"黑名单里的台不绑到这个 EPG"。
//
// 黑名单是 per-EPG 的：这个 EPG 排除这个台，别的 EPG 仍可以绑。
func TestBlacklistBlocksBinding(t *testing.T) {
	setupBindDB(t)

	caID := newBindCategory(t, "央视", "add", true)
	epgA := newBindEpg(t, "CCTV1", "CCTV1", "")
	chID := newBindChannel(t, caID, "CCTV1", 0)

	BindChannel()
	if got := channelEpgID(t, chID); got != epgA {
		t.Fatalf("频道 epg_id = %d，期望 %d（先正常绑上）", got, epgA)
	}

	// 把 CCTV1 拉进 epgA 的黑名单 ⇒ 重算后要解绑。
	dao.DB.Model(&models.IptvEpg{}).Where("id = ?", epgA).Update("blacklist", "CCTV1")
	BindChannel()

	if got := channelEpgID(t, chID); got != 0 {
		t.Fatalf("频道 epg_id = %d，期望 0（拉黑后要解绑）", got)
	}
}

// TestBlacklistIsPerEpg 守住"黑名单只影响它所属的那个 EPG"。
//
// epgA 拉黑了 CCTV1，但 epgB 的规则也认 CCTV1 ⇒ CCTV1 仍该绑到 epgB。
func TestBlacklistIsPerEpg(t *testing.T) {
	setupBindDB(t)

	caID := newBindCategory(t, "央视", "add", true)
	epgA := newBindEpg(t, "台子A", "台子A|CCTV1", "")
	epgB := newBindEpg(t, "台子B", "台子B|CCTV1", "")
	chID := newBindChannel(t, caID, "CCTV1", 0)

	dao.DB.Model(&models.IptvEpg{}).Where("id = ?", epgA).Update("blacklist", "CCTV1")
	BindChannel()

	if got := channelEpgID(t, chID); got != epgB {
		t.Fatalf("频道 epg_id = %d，期望 %d（epgA 拉黑不该影响 epgB）", got, epgB)
	}
}

// TestBlacklistBeatsManualList 守住"黑名单压过手动绑定名单"。
//
// 手动名单（content）是最高优先级，但用户主动把它拉黑了 ⇒ 依然不绑。
func TestBlacklistBeatsManualList(t *testing.T) {
	setupBindDB(t)

	caID := newBindCategory(t, "央视", "add", true)
	epgID := newBindEpg(t, "台子A", "台子A", "CCTV1")
	chID := newBindChannel(t, caID, "CCTV1", 0)

	dao.DB.Model(&models.IptvEpg{}).Where("id = ?", epgID).Update("blacklist", "CCTV1")
	BindChannel()

	if got := channelEpgID(t, chID); got != 0 {
		t.Fatalf("频道 epg_id = %d，期望 0（黑名单压过手动名单）", got)
	}
}

// TestBlacklistAllowsFutureChannel 守住"黑名单能先录库里还没有的频道名"。
//
// 用户先录一个还没导入的台名，等频道导入后它就该被排除。
func TestBlacklistAllowsFutureChannel(t *testing.T) {
	setupBindDB(t)

	caID := newBindCategory(t, "央视", "add", true)
	epgID := newBindEpg(t, "台子A", "台子A|将来才有的台", "")
	chID := newBindChannel(t, caID, "将来才有的台", 0)

	dao.DB.Model(&models.IptvEpg{}).Where("id = ?", epgID).Update("blacklist", "将来才有的台")
	BindChannel()

	if got := channelEpgID(t, chID); got != 0 {
		t.Fatalf("频道 epg_id = %d，期望 0（预先拉黑的台导入后也不该绑）", got)
	}
}

// TestBlacklistNotInBoundNames 守住"拉黑的台不出现在绑定名单里"。
//
// ⚠️ 拉黑是按**归一化**的名字匹配的（与绑定判定同一个 NormalizeChannelKey）：
// "CCTV-1" 归一化后是 "CCTV1"，跟 "CCTV1" 是同一个名字 ⇒ 拉黑 "CCTV-1"
// 会连带排除 "CCTV1"。所以这里用两个归一化后**不同**的名字来验。
func TestBlacklistNotInBoundNames(t *testing.T) {
	setupBindDB(t)

	caID := newBindCategory(t, "央视", "add", true)
	epgID := newBindEpg(t, "央视一套", "央视一套|湖南卫视", "")
	newBindChannel(t, caID, "央视一套", 0)
	newBindChannel(t, caID, "湖南卫视", 0)

	dao.DB.Model(&models.IptvEpg{}).Where("id = ?", epgID).Update("blacklist", "湖南卫视")
	BindChannel()

	got := epgBoundNames(t, epgID)
	if strings.Contains(got, "湖南卫视") {
		t.Fatalf("bound_names = %q，期望不含被拉黑的 湖南卫视", got)
	}
	if !strings.Contains(got, "央视一套") {
		t.Fatalf("bound_names = %q，期望仍含 央视一套", got)
	}
}

// TestBlacklistFollowsNormalizedName 守住"拉黑按归一化名生效"。
//
// "CCTV-1" 与 "CCTV1" 归一化后同名 ⇒ 拉黑一个等于拉黑另一个。
// 这与绑定判定用的归一化保持一致 —— 否则会出现"名单里没有它却照样绑上"，
// 用户会发现黑名单形同虚设。
func TestBlacklistFollowsNormalizedName(t *testing.T) {
	setupBindDB(t)

	caID := newBindCategory(t, "央视", "add", true)
	epgID := newBindEpg(t, "CCTV1", "CCTV1|CCTV-1", "")
	chID := newBindChannel(t, caID, "CCTV1", 0)

	// 拉黑的是 "CCTV-1"，频道名却是 "CCTV1"。
	dao.DB.Model(&models.IptvEpg{}).Where("id = ?", epgID).Update("blacklist", "CCTV-1")
	BindChannel()

	if got := channelEpgID(t, chID); got != 0 {
		t.Fatalf("频道 epg_id = %d，期望 0（CCTV-1 与 CCTV1 归一化后同名）", got)
	}
}
