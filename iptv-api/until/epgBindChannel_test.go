package until

import (
	"path/filepath"
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
// EPG 的 cas（认领分组）为空 —— 以前这种 EPG 永远绑不上任何频道。
// 现在判定只看频道名，它照样能绑。
func TestBindChannelIgnoresCategoryClaim(t *testing.T) {
	setupBindDB(t)

	caID := newBindCategory(t, "央视", "add", true)
	epgID := newBindEpg(t, "CCTV1", "CCTV1|CCTV-1", "")
	chID := newBindChannel(t, caID, "CCTV-1", 0)

	BindChannel()

	if got := channelEpgID(t, chID); got != epgID {
		t.Fatalf("频道 epg_id = %d，期望 %d（cas 为空也要能绑上）", got, epgID)
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
