package until

import (
	"sync/atomic"
	"testing"

	"iptv-api/dao"
)

const sampleCntvJson = `{"cctv1":{"isLive":"朝闻天下","liveSt":1767225600,"channelName":"CCTV1","program":[{"t":"朝闻天下","st":1767225600,"et":1767229200}]}}`

// withFakeCntv 把 CNTV 抓取注入点换成计数版。
func withFakeCntv(t *testing.T, body string) *int32 {
	t.Helper()

	var hits int32
	old := fetchCntvData
	fetchCntvData = func(url string) string {
		atomic.AddInt32(&hits, 1)
		return body
	}
	t.Cleanup(func() { fetchCntvData = old })
	return &hits
}

// TestGetEpgCntvUsesStageWhenCacheUnavailable
//
// 缓存不可用 + 有暂存 ⇒ 不重复下载。
func TestGetEpgCntvUsesStageWhenCacheUnavailable(t *testing.T) {
	useTempStage(t)

	hits := withFakeCntv(t, sampleCntvJson)

	old := dao.Cache
	dao.Cache = nil
	t.Cleanup(func() { dao.Cache = old })

	ch, err := GetEpgCntv("cctv1")
	if err != nil {
		t.Fatalf("首次应成功: %v", err)
	}
	if ch.IsLive != "朝闻天下" {
		t.Fatalf("内容不对: %+v", ch)
	}
	if atomic.LoadInt32(hits) != 1 {
		t.Fatalf("首次应下载 1 次，实际 %d", hits)
	}

	// 再来一次：缓存仍不可用，但有暂存 ⇒ 不再下载。
	ch, err = GetEpgCntv("cctv1")
	if err != nil {
		t.Fatalf("第二次应成功: %v", err)
	}
	if ch.IsLive != "朝闻天下" {
		t.Fatalf("暂存内容应能解析: %+v", ch)
	}
	if atomic.LoadInt32(hits) != 1 {
		t.Fatalf("有暂存时不应再次下载，实际下载 %d 次", hits)
	}
}
