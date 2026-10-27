package until

import (
	"strings"
	"sync/atomic"
	"testing"

	"iptv-api/dao"
)

// 暂存层存在的核心理由：**缓存失效时，节目单生成不能重复下载同一个源**。
//
// 节目单是按套餐聚合的：N 个套餐引用同一个 EPG 源 ⇒ 聚合要走 N 遍。
// 缓存是 /tmp/cache，每次启动就被清空；没有暂存的话，每次重建都会把
// 同一个源下载 N 遍（源站慢一点就是几十秒起步）。

// withFakeSource 把抓取注入点换成计数版，返回下载次数。
func withFakeSource(t *testing.T, body string) *int32 {
	t.Helper()

	var hits int32
	old := fetchEpgSource
	fetchEpgSource = func(url string) string {
		atomic.AddInt32(&hits, 1)
		return body
	}
	t.Cleanup(func() { fetchEpgSource = old })
	return &hits
}

const sampleEpgXml = `<?xml version="1.0" encoding="UTF-8"?>
<tv>
  <channel id="CCTV1"><display-name>CCTV1</display-name></channel>
  <programme start="20260101000000 +0800" stop="20260101010000 +0800" channel="CCTV1">
    <title lang="zh">测试节目</title>
  </programme>
</tv>`

// TestGetEpgListXmlUsesStageWhenCacheUnavailable
//
// 缓存不可用 + 已有暂存 ⇒ 不下载，且能解出内容。
func TestGetEpgListXmlUsesStageWhenCacheUnavailable(t *testing.T) {
	useTempStage(t)

	hits := withFakeSource(t, sampleEpgXml)

	old := dao.Cache
	dao.Cache = nil
	t.Cleanup(func() { dao.Cache = old })

	// 第一次：没有暂存 ⇒ 下载一次并暂存。
	tv := GetEpgListXml("源A", "http://x/e.xml")
	if atomic.LoadInt32(hits) != 1 {
		t.Fatalf("首次应下载 1 次，实际 %d", hits)
	}
	if len(tv.Channels) != 1 {
		t.Fatalf("应解析出 1 个频道，实际 %d", len(tv.Channels))
	}

	// 第二次：缓存仍不可用，但有暂存 ⇒ **不再下载**。
	tv = GetEpgListXml("源A", "http://x/e.xml")
	if atomic.LoadInt32(hits) != 1 {
		t.Fatalf("有暂存时不应再次下载，实际下载 %d 次", hits)
	}
	if len(tv.Channels) != 1 {
		t.Fatalf("暂存内容应能解析出频道，实际 %d", len(tv.Channels))
	}
}

// TestGetEpgListXmlStageSurvivesCacheClear
//
// 缓存被清空（模拟 /tmp/cache 每次启动被清）⇒ 暂存仍在，不重复下载。
func TestGetEpgListXmlStageSurvivesCacheClear(t *testing.T) {
	useTempStage(t)

	hits := withFakeSource(t, sampleEpgXml)

	old := dao.Cache
	c, err := dao.NewFileCache(t.TempDir(), false)
	if err != nil {
		t.Fatalf("建缓存失败: %v", err)
	}
	dao.Cache = c
	t.Cleanup(func() { dao.Cache = old })

	GetEpgListXml("源A", "http://x/e.xml")
	if atomic.LoadInt32(hits) != 1 {
		t.Fatalf("首次应下载 1 次，实际 %d", hits)
	}

	// 清空缓存（= 重启后的常态）。
	if err := dao.Cache.Clear(); err != nil {
		t.Fatalf("清缓存失败: %v", err)
	}

	GetEpgListXml("源A", "http://x/e.xml")
	if atomic.LoadInt32(hits) != 1 {
		t.Fatalf("缓存清空后应走暂存、不再下载，实际下载 %d 次", hits)
	}
}

// TestGetEpgListXmlStageReusedAcrossManyMeals
//
// 模拟真实场景：8 个套餐引用同一个源，缓存全程不可用
// ⇒ 只能下载 1 次（而不是 8 次）。
func TestGetEpgListXmlStageReusedAcrossManyMeals(t *testing.T) {
	useTempStage(t)

	hits := withFakeSource(t, sampleEpgXml)

	old := dao.Cache
	dao.Cache = nil
	t.Cleanup(func() { dao.Cache = old })

	for i := 0; i < 8; i++ {
		tv := GetEpgListXml("源A", "http://x/e.xml")
		if len(tv.Channels) != 1 {
			t.Fatalf("第 %d 次应解析出频道", i)
		}
	}
	if got := atomic.LoadInt32(hits); got != 1 {
		t.Fatalf("8 个套餐应只下载 1 次，实际下载 %d 次", got)
	}
}

// TestGetEpgListXmlStageRejectedWhenUrlChanged
//
// 源地址改了 ⇒ 旧暂存物不能用（内容对不上）⇒ 必须重新下载。
func TestGetEpgListXmlStageRejectedWhenUrlChanged(t *testing.T) {
	useTempStage(t)

	hits := withFakeSource(t, sampleEpgXml)

	old := dao.Cache
	dao.Cache = nil
	t.Cleanup(func() { dao.Cache = old })

	GetEpgListXml("源A", "http://old/e.xml")
	if atomic.LoadInt32(hits) != 1 {
		t.Fatalf("首次应下载 1 次，实际 %d", hits)
	}

	GetEpgListXml("源A", "http://new/e.xml")
	if atomic.LoadInt32(hits) != 2 {
		t.Fatalf("URL 变了应重新下载，实际下载 %d 次", hits)
	}
}

// TestGetEpgListXmlStageRefreshedOnSourceUpdate
//
// 源更新（= 重新下载并暂存）⇒ 暂存物被替换成新内容。
func TestGetEpgListXmlStageRefreshedOnSourceUpdate(t *testing.T) {
	useTempStage(t)

	old := fetchEpgSource
	var body atomic.Value
	body.Store(sampleEpgXml)
	fetchEpgSource = func(url string) string {
		return body.Load().(string)
	}
	t.Cleanup(func() { fetchEpgSource = old })

	oldCache := dao.Cache
	dao.Cache = nil
	t.Cleanup(func() { dao.Cache = oldCache })

	// 第一次下载 → 暂存旧内容。
	GetEpgListXml("源A", "http://x/e.xml")
	staged, ok := LoadEpgSourceStage("源A", "http://x/e.xml")
	if !ok || !strings.Contains(string(staged), "测试节目") {
		t.Fatalf("暂存物内容不对: %q", string(staged))
	}

	// 源更新 ⇒ 新内容（频道数不同）。
	newBody := `<?xml version="1.0" encoding="UTF-8"?>
<tv>
  <channel id="CCTV1"><display-name>CCTV1</display-name></channel>
  <channel id="CCTV2"><display-name>CCTV2</display-name></channel>
  <programme start="20260101000000 +0800" stop="20260101010000 +0800" channel="CCTV1">
    <title lang="zh">新节目</title>
  </programme>
</tv>`
	body.Store(newBody)

	// 模拟 UpdataEpgListOne 的行为：下载后暂存（覆盖）。
	raw := []byte(fetchEpgSource("http://x/e.xml"))
	if err := StageEpgSource("源A", "http://x/e.xml", raw); err != nil {
		t.Fatalf("暂存失败: %v", err)
	}

	staged, ok = LoadEpgSourceStage("源A", "http://x/e.xml")
	if !ok || !strings.Contains(string(staged), "新节目") {
		t.Fatalf("暂存物应被更新为新内容，实际: %q", string(staged))
	}
}
