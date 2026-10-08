package dao

import (
	"fmt"
	"strings"
	"sync"
	"testing"
	"time"
)

// 文件缓存的三个"静默失效"点

func newTestCache(t *testing.T) *FileCache {
	t.Helper()
	c, err := NewFileCache(t.TempDir(), false)
	if err != nil {
		t.Fatalf("创建缓存失败: %v", err)
	}
	return c
}

func TestGetJSONRejectsNonPointer(t *testing.T) {
	c := newTestCache(t)

	payload := map[string]string{"a": "b"}
	if err := c.SetJSON("k", payload); err != nil {
		t.Fatalf("SetJSON 失败: %v", err)
	}

	// 传值：必须**显式报错**，而不是让调用方以为"缓存未命中"。
	var m map[string]string
	if err := c.GetJSON("k", m); err == nil {
		t.Fatal("传非指针应返回错误（这正是改造前缓存永不命中的原因）")
	} else if !strings.Contains(err.Error(), "指针") {
		t.Fatalf("错误信息应说明需要指针，实际: %v", err)
	}

	// 传 nil 也要拦。
	if err := c.GetJSON("k", nil); err == nil {
		t.Fatal("传 nil 应返回错误")
	}
	// 传空指针同样拦。
	var ptr *map[string]string
	if err := c.GetJSON("k", ptr); err == nil {
		t.Fatal("传空指针应返回错误")
	}

	// 正确的用法必须能读回来 —— 否则"报了错但功能还是坏的"。
	if err := c.GetJSON("k", &m); err != nil {
		t.Fatalf("传指针应读取成功，实际: %v", err)
	}
	if m["a"] != "b" {
		t.Fatalf("读回的内容不对: %v", m)
	}
}

func TestGetStructRejectsNonPointer(t *testing.T) {
	c := newTestCache(t)

	type item struct{ N int }
	if err := c.SetStruct("s", &item{N: 7}); err != nil {
		t.Fatalf("SetStruct 失败: %v", err)
	}
	if err := c.GetStruct("s", item{}); err == nil {
		t.Fatal("GetStruct 传非指针应返回错误")
	}
	var got item
	if err := c.GetStruct("s", &got); err != nil {
		t.Fatalf("GetStruct 传指针应成功，实际: %v", err)
	}
	if got.N != 7 {
		t.Fatalf("读回内容不对: %+v", got)
	}
}

// TestCNTVCacheKeyIsCaseAndSpaceInsensitive 缓存键必须与调用方传入的大小写无关。
func TestCNTVCacheKeyIsCaseAndSpaceInsensitive(t *testing.T) {
	want := "cntv_cctv1"
	for _, in := range []string{"cctv1", "CCTV1", "Cctv1", "  cctv1  ", "\tcctv1"} {
		if got := CNTVCacheKey(in); got != want {
			t.Errorf("CNTVCacheKey(%q) = %q，应为 %q", in, got, want)
		}
	}
	// 不同频道不能撞键。
	if CNTVCacheKey("cctv1") == CNTVCacheKey("cctv13") {
		t.Fatal("不同频道不应得到相同缓存键")
	}
}

// TestCacheSetIsAtomicConcurrentRead 并发读不应读到半截 JSON。
func TestCacheSetIsAtomicConcurrentRead(t *testing.T) {
	c := newTestCache(t)
	key := "cntv_big"

	small := []byte(`{"a":1}`)
	big := []byte(`{"a":"` + strings.Repeat("x", 8192) + `"}`)

	if err := c.Set(key, big); err != nil {
		t.Fatal(err)
	}

	stop := make(chan struct{})
	var wg sync.WaitGroup
	bad := make(chan string, 1)

	wg.Add(1)
	go func() {
		defer wg.Done()
		for i := 0; ; i++ {
			select {
			case <-stop:
				return
			default:
			}
			d := small
			if i%2 == 0 {
				d = big
			}
			if err := c.Set(key, d); err != nil {
				return
			}
		}
	}()

	for i := 0; i < 400; i++ {
		b, err := c.Get(key)
		if err != nil {
			continue
		}
		if string(b) != string(small) && string(b) != string(big) {
			select {
			case bad <- fmt.Sprintf("读到了半截缓存内容（长度 %d）", len(b)):
			default:
			}
			break
		}
	}
	close(stop)
	wg.Wait()

	select {
	case msg := <-bad:
		t.Fatalf("缓存写入不是原子的: %s", msg)
	default:
	}
}

// TestCacheDeleteByPattern 保持 Delete 的 glob 语义（有调用方依赖）。
func TestCacheDeleteByPattern(t *testing.T) {
	c := newTestCache(t)
	for _, k := range []string{"epgXmlFrom_a", "epgXmlFrom_b", "cntv_cctv1"} {
		if err := c.Set(k, []byte("x")); err != nil {
			t.Fatal(err)
		}
	}
	if err := c.Delete("epgXmlFrom_*"); err != nil {
		t.Fatalf("Delete 失败: %v", err)
	}
	if c.Exists("epgXmlFrom_a") || c.Exists("epgXmlFrom_b") {
		t.Fatal("epgXmlFrom_* 应被删除")
	}
	if !c.Exists("cntv_cctv1") {
		t.Fatal("不匹配的键不该被删掉")
	}
}

// TestFreshRejectsStaleEntry Fresh 必须按 TTL 拒绝陈旧条目。
//
// 这条判据对应真实故障：CNTV 同一份响应里 program 数组当天不变，
// 而 isLive/liveSt 每分钟都在变。原来按天缓存，simple 接口整天返回
// 早上的那条（实测 09:15 仍回 06:00 朝闻天下）。
func TestFreshRejectsStaleEntry(t *testing.T) {
	c := newTestCache(t)
	key := "cntv_cctv1"
	if err := c.Set(key, []byte(`{"isLive":"朝闻天下"}`)); err != nil {
		t.Fatal(err)
	}

	// 刚写入：TTL 内必须放行，否则缓存等于没用。
	if !c.Fresh(key, time.Minute) {
		t.Fatal("刚写入的条目在 TTL 内应判定为新鲜")
	}

	// TTL 设为 0：任何条目都算过期。这条是"过期必拒"的正面用例，
	// 少写 time.Since 比较就会让它永远为真。
	if c.Fresh(key, 0) {
		t.Fatal("TTL=0 时任何条目都不该算新鲜")
	}

	// 负 TTL 同样必须拒，不能因为比较式反向而放行。
	if c.Fresh(key, -time.Minute) {
		t.Fatal("负 TTL 不该放行")
	}

	// 不存在的键永远不新鲜。
	if c.Fresh("cntv_never_written", time.Hour) {
		t.Fatal("不存在的键不该算新鲜")
	}
}

// TestFreshIgnoresExpireAtZeroWhenDisabled newTestCache 关闭了按天过期，
// 本条钉住 Fresh 与 Exists 在"未过期"时的一致性，避免两条判据分叉。
func TestFreshMatchesExistsWithinTTL(t *testing.T) {
	c := newTestCache(t)
	key := "cntv_cctv13"
	if err := c.Set(key, []byte("x")); err != nil {
		t.Fatal(err)
	}
	if c.Exists(key) != c.Fresh(key, time.Hour) {
		t.Fatalf("Exists=%v 与 Fresh(1h)=%v 应一致", c.Exists(key), c.Fresh(key, time.Hour))
	}
}

// TestExpiredAtMidnightUsesBeijingTime 钉住「当天 0 点 = 东八区 0 点」。
//
// 背景：容器跑 UTC，早期实现用 time.Now() 的本地时区算午夜，
// 于是"今天 0 点"变成北京 08:00 —— 北京 00:00~08:00 会被当成"昨天"。
// 实测症状：北京 13:34 查 CCTV1 仍在播表接口拿到 `06:00 朝闻天下`。
func TestExpiredAtMidnightUsesBeijingTime(t *testing.T) {
	// 北京时间 2026-10-08 01:30（= UTC 2026-10-07 17:30）。
	// 选 01:30 是因为它落在错位区间正中：此时 UTC 还停在"10-07"，
	// 用UTC 午夜算会把 10-08 01:00 写的缓存误判成"未过期"。
	now := time.Date(2026, 10, 8, 1, 30, 0, 0, epgLoc)

	// 北京 10-08 01:00 写入：按东八区是"今天"⇒ 不该过期。
	if expiredAtMidnightSince(time.Date(2026, 10, 8, 1, 0, 0, 0, epgLoc), now) {
		t.Fatal("北京 01:00 写入、01:30 判定：同一天不该过期")
	}
	// 北京 10-08 01:20 写入：同一天⇒ 不该过期。
	if expiredAtMidnightSince(time.Date(2026, 10, 8, 1, 20, 0, 0, epgLoc), now) {
		t.Fatal("北京 01:20 写入、01:30 判定：同一天不该过期")
	}
	// 北京 10-07 23:00 写入：已跨天 ⇒ 过期。
	if !expiredAtMidnightSince(time.Date(2026, 10, 7, 23, 0, 0, 0, epgLoc), now) {
		t.Fatal("前一天 23:00 写入的缓存应判为过期")
	}
	// 边界：北京 00:00 整应算今天（00:00 之前才算昨天）。
	if expiredAtMidnightSince(time.Date(2026, 10, 8, 0, 0, 0, 0, epgLoc), now) {
		t.Fatal("北京当日 00:00 写入的不该判为过期")
	}
	// 边界前一秒：23:59:59 必须算昨天。
	if !expiredAtMidnightSince(time.Date(2026, 10, 7, 23, 59, 59, 0, epgLoc), now) {
		t.Fatal("北京前日 23:59:59 写入的必须判为过期")
	}
}

// TestExpiredAtMidnightRejectsUTCMidnight 是反向用例：
// 同一时刻改用 UTC 午夜算，结论必须与东八区相反 ——
// 这正是线上那个 bug（判错导致该重拉时没重拉）。
// 没有它的话，把实现改成任何"永远返回 false"的实现都能通过上面那组断言。
func TestExpiredAtMidnightRejectsUTCMidnight(t *testing.T) {
	now := time.Date(2026, 10, 8, 1, 30, 0, 0, epgLoc)    // 北京 01:30
	modTime := time.Date(2026, 10, 8, 1, 0, 0, 0, epgLoc) // 北京 01:00 写入

	// 东八区（正确）："今天"从北京 00:00 起⇒ 未过期。
	got := expiredAtMidnightSince(modTime, now)
	if got {
		t.Fatal("东八区口径下北京 01:00 写入、01:30 判定应为未过期")
	}

	// UTC（错误）：此刻 UTC 是 10-07 17:30，"UTC 今天午夜"= 10-07 00:00，
	// 10-08 01:00 晚于它 ⇒ 同样判未过期。两个口径在这里结论相同，
	// 所以这个时刻不足以鉴别 —— 换成北京 00:30 判定、北京 23:50（前一天）写入。
	now2 := time.Date(2026, 10, 8, 0, 30, 0, 0, epgLoc)
	modTime2 := time.Date(2026, 10, 7, 23, 50, 0, 0, epgLoc)
	if !expiredAtMidnightSince(modTime2, now2) {
		t.Fatal("东八区口径下北京 00:30 判定、前一天 23:50 写入应判过期")
	}

	utcNow2 := now2.UTC() // 10-07 16:30 UTC
	utcMidnight := time.Date(utcNow2.Year(), utcNow2.Month(), utcNow2.Day(), 0, 0, 0, 0, time.UTC)
	utcSays := modTime2.UTC().Before(utcMidnight)
	if utcSays {
		t.Fatal("反向用例前提不成立：UTC 口径本应判为未过期")
	}
	// 两口径结论必须相反，否则回归用例失去鉴别力。
	if expiredAtMidnightSince(modTime2, now2) == utcSays {
		t.Fatal("东八区与 UTC 两种口径结论相同 —— 回归用例失去鉴别力")
	}
}
