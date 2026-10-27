package until

import (
	"context"
	"fmt"
	"net/http"
	"net/http/httptest"
	"os"
	"path/filepath"
	"strings"
	"sync/atomic"
	"testing"
	"time"

	"iptv-api/dao"
	"iptv-api/dto"
)

// GitHub 测速记录：顺延范围、作废时机、出网条件指纹。
//
// 这组测试守的是一条用户可见的口径：**"连接Github 检查失败"必须在已记录的
// 候选全部试完之后才报**。早先的实现固定重试 2 次（拉列表）/ 3 次（下载），
// 记录里明明还剩几条没试过就报错 —— 用户看到的是"明明有源能用却说连不上"。

// ghReset 清空测速相关的全部全局状态（含指纹），让每个用例从零开始。
func ghReset(t *testing.T) {
	t.Helper()
	ghCacheMu.Lock()
	ghRecords = map[string][]*ghRoute{}
	ghRecordAt = map[string]time.Time{}
	ghDead = map[string]time.Time{}
	ghSpeedFP = ""
	ghCacheMu.Unlock()
	t.Cleanup(func() {
		ghCacheMu.Lock()
		ghRecords = map[string][]*ghRoute{}
		ghRecordAt = map[string]time.Time{}
		ghDead = map[string]time.Time{}
		ghSpeedFP = ""
		ghCacheMu.Unlock()
	})
}

// ghSeedRecords 直接往记录里塞一批候选，绕过真实测速。
//
// 顺序即延迟升序（记录本来就是这个语义）：route[0] 最快。
func ghSeedRecords(t *testing.T, host string, n int) {
	t.Helper()
	ghCacheMu.Lock()
	defer ghCacheMu.Unlock()
	list := make([]*ghRoute, 0, n)
	for i := 0; i < n; i++ {
		list = append(list, &ghRoute{
			Label: fmt.Sprintf("src-%d", i),
			Delay: time.Duration(i) * time.Millisecond,
		})
	}
	ghRecords[host] = list
	ghRecordAt[host] = time.Now()
	// 指纹对齐当前出网条件，否则 ghPick 一进来就判定"条件变了"把记录清掉。
	ghSpeedFP = ghOutboundFingerprint()
}

// ghRecordCount 看某个 host 现在还剩几个候选。
func ghRecordCount(host string) int {
	ghCacheMu.Lock()
	defer ghCacheMu.Unlock()
	return len(ghRecords[host])
}

// ghDeadPresent 看某个 host 的"一个源都不可用"结论是否被记着。
func ghDeadPresent(host string) bool {
	ghCacheMu.Lock()
	defer ghCacheMu.Unlock()
	_, ok := ghDead[host]
	return ok
}

// ghSetProxy 换一份出网代理配置，返回恢复函数。
func ghSetProxy(t *testing.T, p dto.OutProxy) {
	t.Helper()
	old := dao.GetConfig()
	cfg := &dto.Config{}
	if old != nil {
		*cfg = *old
	}
	cfg.OutProxy = p
	dao.GlobalConfig.Store(cfg)
	t.Cleanup(func() {
		if old != nil {
			dao.GlobalConfig.Store(old)
		} else {
			dao.GlobalConfig.Store(&dto.Config{})
		}
	})
}

// 场景：已记录 5 个候选，全部失败。
// 期望：5 个都试过（不是 2 次就报错），且报错后记录被作废。
func TestGhFailoverTriesAllRecordedCandidates(t *testing.T) {
	ghReset(t)
	const host = "api.github.com"
	ghSeedRecords(t, host, 5)

	tried := make([]string, 0, 5)
	err := ghFailover("https://api.github.com/x", 0, func(r *ghRoute) error {
		tried = append(tried, r.Label)
		return fmt.Errorf("这条不通")
	})
	if err == nil {
		t.Fatal("全部候选都失败时应当报错")
	}
	if len(tried) != 5 {
		t.Fatalf("应当顺延完已记录的 5 个候选，实际试了 %d 个：%v", len(tried), tried)
	}
	// 顺延顺序 = 记录顺序（延迟升序）。
	for i, label := range tried {
		if want := fmt.Sprintf("src-%d", i); label != want {
			t.Fatalf("第 %d 个候选应是 %s，实际是 %s", i+1, want, label)
		}
	}
	// 全失败 ⇒ 记录作废 ⇒ 下次用 GitHub 时重新测速。
	if n := ghRecordCount(host); n != 0 {
		t.Fatalf("全部候选失败后记录应当作废，实际还剩 %d 条", n)
	}
}

// 场景：已记录 5 个候选，第 3 个成功。
// 期望：前 2 个被除名，第 3 个成功即返回，**不报错**，且不继续试后面的。
func TestGhFailoverStopsAtFirstSuccess(t *testing.T) {
	ghReset(t)
	const host = "api.github.com"
	ghSeedRecords(t, host, 5)

	tried := make([]string, 0, 5)
	err := ghFailover("https://api.github.com/x", 0, func(r *ghRoute) error {
		tried = append(tried, r.Label)
		if r.Label == "src-2" {
			return nil
		}
		return fmt.Errorf("这条不通")
	})
	if err != nil {
		t.Fatalf("第 3 个候选成功时不该报错：%v", err)
	}
	if len(tried) != 3 {
		t.Fatalf("成功即停，实际试了 %d 个：%v", len(tried), tried)
	}
	// 成功的候选要留在记录里（下次还能用），失败的两条被除名。
	if n := ghRecordCount(host); n != 3 {
		t.Fatalf("成功后应剩 3 条记录（5 - 2 条失败的），实际 %d 条", n)
	}
}

// 场景：记录里只剩 1 个候选且它失败了。
// 期望：只试 1 次就报错 —— 顺延范围是"已记录的"，不是固定的 5 次。
func TestGhFailoverHonorsRecordedCount(t *testing.T) {
	ghReset(t)
	const host = "api.github.com"
	ghSeedRecords(t, host, 1)

	calls := 0
	err := ghFailover("https://api.github.com/x", 0, func(r *ghRoute) error {
		calls++
		return fmt.Errorf("这条不通")
	})
	if err == nil {
		t.Fatal("唯一候选失败时应当报错")
	}
	if calls != 1 {
		t.Fatalf("只记了 1 个候选时应当只试 1 次，实际试了 %d 次", calls)
	}
}

// 场景：出网条件指纹变了（拨了 useUp 开关 / 换了代理地址）。
// 期望：旧记录当场作废，下次选路重新测速。
func TestGhSpeedRecordsInvalidatedOnFingerprintChange(t *testing.T) {
	ghReset(t)
	const host = "api.github.com"

	ghSetProxy(t, dto.OutProxy{Type: ProxyTypeHttp, Host: "10.0.0.1", Port: 8080, UseUp: 1})
	ghSeedRecords(t, host, 5)
	if n := ghRecordCount(host); n != 5 {
		t.Fatalf("前置条件：应有 5 条记录，实际 %d 条", n)
	}

	// 换个代理地址 ⇒ 指纹变了。
	ghSetProxy(t, dto.OutProxy{Type: ProxyTypeHttp, Host: "10.0.0.2", Port: 8080, UseUp: 1})

	var measured int
	old := ghSpeedTestFn
	ghSpeedTestFn = func(raw string) ([]*ghRoute, error) {
		measured++
		return []*ghRoute{{Label: "after-change"}}, nil
	}
	t.Cleanup(func() { ghSpeedTestFn = old })

	route, err := ghPick("https://api.github.com/x")
	if err != nil {
		t.Fatalf("选路失败：%v", err)
	}
	if measured != 1 {
		t.Fatalf("出网条件变了应当重新测速，实际测了 %d 次", measured)
	}
	if route.Label != "after-change" {
		t.Fatalf("应当用重新测出来的源：%s", route.Label)
	}
}

// 场景：显式作废（拨 useUp 开关走这条路）。
// 期望：记录清空，下次选路重新测速。
func TestInvalidateGhSpeedRecordsClearsEverything(t *testing.T) {
	ghReset(t)
	const host = "api.github.com"
	ghSeedRecords(t, host, 5)

	InvalidateGhSpeedRecords()
	if n := ghRecordCount(host); n != 0 {
		t.Fatalf("作废后应剩 0 条记录，实际 %d 条", n)
	}

	var measured int
	old := ghSpeedTestFn
	ghSpeedTestFn = func(raw string) ([]*ghRoute, error) {
		measured++
		return []*ghRoute{{Label: "remeasured"}}, nil
	}
	t.Cleanup(func() { ghSpeedTestFn = old })

	if _, err := ghPick("https://api.github.com/x"); err != nil {
		t.Fatalf("选路失败：%v", err)
	}
	if measured != 1 {
		t.Fatalf("作废后应当重新测速，实际测了 %d 次", measured)
	}
}

// 场景：useUp 开关从 0 拨到 1。
// 期望：指纹变化（GitHub 本体从直连变成走代理）⇒ 旧测速结论作废。
func TestGhFingerprintFollowsUseUpSwitch(t *testing.T) {
	ghReset(t)

	ghSetProxy(t, dto.OutProxy{Type: ProxyTypeHttp, Host: "10.0.0.1", Port: 8080, UseUp: 0})
	off := ghOutboundFingerprint()

	ghSetProxy(t, dto.OutProxy{Type: ProxyTypeHttp, Host: "10.0.0.1", Port: 8080, UseUp: 1})
	on := ghOutboundFingerprint()

	if off == on {
		t.Fatalf("useUp 从 0 拨到 1 后指纹应当变化：%s", off)
	}
	if off == "" || on == "" {
		t.Fatal("指纹不该为空")
	}
}

// 场景：useEpg / useSrc / useRelay 这三个与 GitHub 无关的开关被拨动。
// 期望：指纹不变 —— 拨它们不该让 GitHub 重新测速。
func TestGhFingerprintIgnoresNonGitHubScopes(t *testing.T) {
	ghReset(t)

	base := dto.OutProxy{Type: ProxyTypeHttp, Host: "10.0.0.1", Port: 8080, UseUp: 1}
	ghSetProxy(t, base)
	before := ghOutboundFingerprint()

	for _, key := range []string{"UseEpg", "UseSrc", "UseRelay"} {
		p := base
		switch key {
		case "UseEpg":
			p.UseEpg = 1
		case "UseSrc":
			p.UseSrc = 1
		case "UseRelay":
			p.UseRelay = 1
		}
		ghSetProxy(t, p)
		if got := ghOutboundFingerprint(); got != before {
			t.Fatalf("拨 %s 不该影响 GitHub 出网指纹：%s → %s", key, before, got)
		}
	}
}

// 场景：出网条件没变。
// 期望：指纹稳定 —— 否则每次选路都会把记录清掉，等于永远在测速。
func TestGhFingerprintStableWhenOutboundUnchanged(t *testing.T) {
	ghReset(t)
	ghSetProxy(t, dto.OutProxy{Type: ProxyTypeHttp, Host: "10.0.0.1", Port: 8080, UseUp: 1})
	first := ghOutboundFingerprint()
	second := ghOutboundFingerprint()
	if first != second {
		t.Fatalf("出网条件未变时指纹应当稳定：%s → %s", first, second)
	}
}

// 场景：代理地址里粘了 scheme 和端口（用户从别处复制来的常见写法）。
// 期望：指纹按**归一后**的地址算（端口取地址里的），而不是按原样填的。
func TestGhFingerprintUsesNormalizedProxyAddr(t *testing.T) {
	ghReset(t)

	ghSetProxy(t, dto.OutProxy{Type: ProxyTypeHttp, Host: "10.0.0.1", Port: 8080, UseUp: 1})
	plain := ghOutboundFingerprint()

	ghSetProxy(t, dto.OutProxy{Type: ProxyTypeHttp, Host: "http://10.0.0.1:8080", Port: 0, UseUp: 1})
	pasted := ghOutboundFingerprint()

	if plain != pasted {
		t.Fatalf("归一后应当等价：%s → %s", plain, pasted)
	}
}

// 场景：环境变量 PROXY 变了。
// 期望：指纹跟着变 —— 它是"不用配置里的代理"时唯一的出网影响因素。
func TestGhFingerprintFollowsProxyEnv(t *testing.T) {
	ghReset(t)
	ghSetProxy(t, dto.OutProxy{Type: ProxyTypeNone})

	os.Unsetenv("PROXY")
	without := ghOutboundFingerprint()

	t.Setenv("PROXY", "http://127.0.0.1:1080")
	with := ghOutboundFingerprint()

	if without == with {
		t.Fatalf("PROXY 环境变量变了指纹应当变化：%s", without)
	}
}

// 场景：走配置里的代理时，凭据不该原样出现在指纹里。
// 期望：指纹是哈希，口令本身查不到。
func TestGhFingerprintHidesCredentials(t *testing.T) {
	ghReset(t)
	const pwd = "s3cr3t-pass"
	ghSetProxy(t, dto.OutProxy{
		Type: ProxyTypeHttp, Host: "10.0.0.1", Port: 8080,
		AuthOn: 1, User: "alice", Pwd: pwd, UseUp: 1,
	})
	fp := ghOutboundFingerprint()
	if fp == "" {
		t.Fatal("指纹不该为空")
	}
	if strings.Contains(fp, pwd) || strings.Contains(fp, "alice") {
		t.Fatalf("指纹不该包含明文凭据：%s", fp)
	}
}

// 场景：测速记录未过期。
// 期望：直接复用当前记录，**不重新测速**（用户点"检测更新"时不该又等一轮）。
func TestGhPickReusesFreshRecords(t *testing.T) {
	ghReset(t)
	const host = "api.github.com"
	ghSeedRecords(t, host, 5)

	var measured int
	old := ghSpeedTestFn
	ghSpeedTestFn = func(raw string) ([]*ghRoute, error) {
		measured++
		return nil, fmt.Errorf("不该被调用")
	}
	t.Cleanup(func() { ghSpeedTestFn = old })

	route, err := ghPick("https://api.github.com/x")
	if err != nil {
		t.Fatalf("选路失败：%v", err)
	}
	if measured != 0 {
		t.Fatalf("记录未过期时不该重新测速，实际测了 %d 次", measured)
	}
	if route.Label != "src-0" {
		t.Fatalf("应当用记录里的第一个（最快的）：%s", route.Label)
	}
}

// 场景：测速记录已过期（超过 10 分钟）。
// 期望：重新测速 —— 结论过期了就该刷新。
func TestGhPickRemeasuresWhenRecordsExpired(t *testing.T) {
	ghReset(t)
	const host = "api.github.com"
	ghSeedRecords(t, host, 5)

	// 替换测速实现：记录过期时应当被调用，且返回一批新候选。
	var measured int
	old := ghSpeedTestFn
	ghSpeedTestFn = func(raw string) ([]*ghRoute, error) {
		measured++
		return []*ghRoute{{Label: "fresh-0"}}, nil
	}
	t.Cleanup(func() { ghSpeedTestFn = old })

	// 把测速时刻推到 10 分钟前 ⇒ 记录过期。
	ghCacheMu.Lock()
	ghRecordAt[host] = time.Now().Add(-ghSpeedTTL - time.Minute)
	ghCacheMu.Unlock()

	route, err := ghPick("https://api.github.com/x")
	if err != nil {
		t.Fatalf("选路失败：%v", err)
	}
	if measured != 1 {
		t.Fatalf("记录过期后应当重新测速一次，实际测了 %d 次", measured)
	}
	if route.Label != "fresh-0" {
		t.Fatalf("应当用新测出来的源：%s", route.Label)
	}
}

// 场景：测速记录未过期。
// 期望：**不重新测速** —— 用户点"检测更新"时不该又等一轮测速。
func TestGhPickDoesNotRemeasureWhenRecordsFresh(t *testing.T) {
	ghReset(t)
	const host = "api.github.com"
	ghSeedRecords(t, host, 5)

	var measured int
	old := ghSpeedTestFn
	ghSpeedTestFn = func(raw string) ([]*ghRoute, error) {
		measured++
		return nil, fmt.Errorf("不该被调用")
	}
	t.Cleanup(func() { ghSpeedTestFn = old })

	if _, err := ghPick("https://api.github.com/x"); err != nil {
		t.Fatalf("选路失败：%v", err)
	}
	if measured != 0 {
		t.Fatalf("记录未过期时不该重新测速，实际测了 %d 次", measured)
	}
}

// 场景：已记录的候选全失败。
// 期望：逐 host 作废记录（下次重新测速），但**不**写 dead 结论 ——
// dead 是"连测速都不做、直接报错"，与"下次重新测速"相冲突。
func TestGhFailoverInvalidatesRecordsWithoutDead(t *testing.T) {
	ghReset(t)
	const host = "api.github.com"
	ghSeedRecords(t, host, 3)

	err := ghFailover("https://api.github.com/x", 0, func(r *ghRoute) error {
		return fmt.Errorf("这条不通")
	})
	if err == nil {
		t.Fatal("全部失败时应当报错")
	}
	if n := ghRecordCount(host); n != 0 {
		t.Fatalf("记录应当作废，实际还剩 %d 条", n)
	}
	if ghDeadPresent(host) {
		t.Fatal("ghFailover 不该写 dead 结论：dead 会让下次连测速都不做")
	}
}

// 场景：已记录的候选全失败 ⇒ 下次用 GitHub 会重新测速。
// 期望：作废之后 ghPick 真的去测速一轮（而不是拿旧记录或直接报错）。
func TestGhFailoverLeavesNextPickRemeasuring(t *testing.T) {
	ghReset(t)
	const host = "api.github.com"
	ghSeedRecords(t, host, 3)

	_ = ghFailover("https://api.github.com/x", 0, func(r *ghRoute) error {
		return fmt.Errorf("这条不通")
	})

	var measured int
	old := ghSpeedTestFn
	ghSpeedTestFn = func(raw string) ([]*ghRoute, error) {
		measured++
		return []*ghRoute{{Label: "fresh-0"}}, nil
	}
	t.Cleanup(func() { ghSpeedTestFn = old })

	if _, err := ghPick("https://api.github.com/x"); err != nil {
		t.Fatalf("选路失败：%v", err)
	}
	if measured != 1 {
		t.Fatalf("记录作废后应当重新测速一次，实际测了 %d 次", measured)
	}
}

// 场景：并发调用下记录不会被写坏。
// 期望：不 panic，且最终状态自洽。
func TestGhConcurrentPickIsSafe(t *testing.T) {
	ghReset(t)
	const host = "api.github.com"
	ghSeedRecords(t, host, 5)

	var ok int32
	done := make(chan struct{})
	for i := 0; i < 8; i++ {
		go func() {
			defer func() { done <- struct{}{} }()
			for j := 0; j < 20; j++ {
				if _, err := ghPick("https://api.github.com/x"); err == nil {
					atomic.AddInt32(&ok, 1)
				}
			}
		}()
	}
	for i := 0; i < 8; i++ {
		<-done
	}
	if atomic.LoadInt32(&ok) == 0 {
		t.Fatal("并发选路应当至少成功一次")
	}
}

// —— 假源（200 + 占位内容）——
//
// 实测有些加速源对 api.github.com 的 API 地址返回 HTTP 200 + body "ok"
// （2 字节 text/plain）。只看状态码的话它会被当成"可用源"，还因延迟低
// 排到最前面；真去拉列表时 json 解析才失败 —— 用户看到"连接Github 检查失败"，
// 而别的源明明是好的。

// 场景：拉列表时某条源返回 200 + body "ok"。
// 期望：这条源判失败 ⇒ **顺延下一条**（而不是把垃圾交给上层解析后才报错）。
func TestGhGetJSONFailsOverOnPlaceholderBody(t *testing.T) {
	ghReset(t)

	bad := httptest.NewServer(http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		w.WriteHeader(http.StatusOK)
		w.Write([]byte("ok"))
	}))
	defer bad.Close()
	good := httptest.NewServer(http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		w.WriteHeader(http.StatusOK)
		w.Write([]byte(`[{"tag_name":"v1.0.0"}]`))
	}))
	defer good.Close()

	// 两条候选：先试假源，再试真源。
	ghCacheMu.Lock()
	ghRecords["api.github.com"] = []*ghRoute{
		{Label: "bad", Prefix: bad.URL + "/", Form: ghFormPrefix},
		{Label: "good", Prefix: good.URL + "/", Form: ghFormPrefix},
	}
	ghRecordAt["api.github.com"] = time.Now()
	ghSpeedFP = ghOutboundFingerprint()
	ghCacheMu.Unlock()

	body, used, err := ghGetJSON("https://api.github.com/x")
	if err != nil {
		t.Fatalf("应当顺延到真源并成功：%v", err)
	}
	if used == nil || used.Label != "good" {
		t.Fatalf("应当用 good 这条源，实际是 %v", used)
	}
	if !strings.Contains(string(body), "v1.0.0") {
		t.Fatalf("拿到的内容不对：%q", body)
	}
	// 假源被除名。
	if n := ghRecordCount("api.github.com"); n != 1 {
		t.Fatalf("假源应当被除名，实际还剩 %d 条", n)
	}
}

// 场景：拉列表时**所有**候选都返回占位内容。
// 期望：报错（"连接Github 检查失败"的来源），而不是把垃圾 body 返回给上层。
func TestGhGetJSONFailsWhenAllSourcesGivePlaceholder(t *testing.T) {
	ghReset(t)

	bad := httptest.NewServer(http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		w.WriteHeader(http.StatusOK)
		w.Write([]byte("ok"))
	}))
	defer bad.Close()

	ghCacheMu.Lock()
	ghRecords["api.github.com"] = []*ghRoute{
		{Label: "bad-1", Prefix: bad.URL + "/", Form: ghFormPrefix},
		{Label: "bad-2", Prefix: bad.URL + "/", Form: ghFormPrefix},
	}
	ghRecordAt["api.github.com"] = time.Now()
	ghSpeedFP = ghOutboundFingerprint()
	ghCacheMu.Unlock()

	if _, _, err := ghGetJSON("https://api.github.com/x"); err == nil {
		t.Fatal("全部候选都返回占位内容时应当报错")
	}
}

// 场景：源返回的 JSON 数组被截断。
// 期望：判失败 ⇒ 顺延下一条（半截内容比报错更危险）。
func TestGhGetJSONFailsOverOnTruncatedJSON(t *testing.T) {
	ghReset(t)

	bad := httptest.NewServer(http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		w.WriteHeader(http.StatusOK)
		w.Write([]byte(`[{"tag_name":"v1.0.0"`))
	}))
	defer bad.Close()
	good := httptest.NewServer(http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		w.WriteHeader(http.StatusOK)
		w.Write([]byte(`[{"tag_name":"v1.0.0"}]`))
	}))
	defer good.Close()

	ghCacheMu.Lock()
	ghRecords["api.github.com"] = []*ghRoute{
		{Label: "truncated", Prefix: bad.URL + "/", Form: ghFormPrefix},
		{Label: "good", Prefix: good.URL + "/", Form: ghFormPrefix},
	}
	ghRecordAt["api.github.com"] = time.Now()
	ghSpeedFP = ghOutboundFingerprint()
	ghCacheMu.Unlock()

	_, used, err := ghGetJSON("https://api.github.com/x")
	if err != nil {
		t.Fatalf("应当顺延到真源并成功：%v", err)
	}
	if used == nil || used.Label != "good" {
		t.Fatalf("应当用 good 这条源，实际是 %v", used)
	}
}

// 场景：源返回的是 API 错误对象（{"message":"..."}），不是数组。
// 期望：判失败 ⇒ 顺延下一条（这种 body 上层反序列化成切片会失败）。
func TestGhGetJSONFailsOverOnErrorObject(t *testing.T) {
	ghReset(t)

	bad := httptest.NewServer(http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		w.WriteHeader(http.StatusOK)
		w.Write([]byte(`{"message":"Not Found"}`))
	}))
	defer bad.Close()
	good := httptest.NewServer(http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		w.WriteHeader(http.StatusOK)
		w.Write([]byte(`[]`))
	}))
	defer good.Close()

	ghCacheMu.Lock()
	ghRecords["api.github.com"] = []*ghRoute{
		{Label: "errobj", Prefix: bad.URL + "/", Form: ghFormPrefix},
		{Label: "good", Prefix: good.URL + "/", Form: ghFormPrefix},
	}
	ghRecordAt["api.github.com"] = time.Now()
	ghSpeedFP = ghOutboundFingerprint()
	ghCacheMu.Unlock()

	_, used, err := ghGetJSON("https://api.github.com/x")
	if err != nil {
		t.Fatalf("应当顺延到真源并成功：%v", err)
	}
	if used == nil || used.Label != "good" {
		t.Fatalf("应当用 good 这条源，实际是 %v", used)
	}
}

// 场景：测速探针碰到返回占位内容的源。
// 期望：这条源判不可用 ⇒ 不进"可用源"记录（否则它会因延迟低排到最前面）。
func TestGhProbeRejectsPlaceholderBody(t *testing.T) {
	bad := httptest.NewServer(http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		w.WriteHeader(http.StatusOK)
		w.Write([]byte("ok"))
	}))
	defer bad.Close()
	good := httptest.NewServer(http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		w.WriteHeader(http.StatusOK)
		w.Write([]byte(`[{"tag_name":"v1.0.0"}]`))
	}))
	defer good.Close()

	// raw 的 host 必须是 api.github.com 才会验内容（ghHost 取的是 raw 的 host）。
	raw := "https://api.github.com/x"
	src := ghSource{Label: "bad", Base: bad.URL + "/", Form: ghFormPrefix}
	if _, err := ghProbe(context.Background(), src, raw, 5*time.Second); err == nil {
		t.Fatal("返回占位内容的源在探针阶段就该判不可用")
	}

	src = ghSource{Label: "good", Base: good.URL + "/", Form: ghFormPrefix}
	if _, err := ghProbe(context.Background(), src, raw, 5*time.Second); err != nil {
		t.Fatalf("正常返回 JSON 数组的源不该被判不可用：%v", err)
	}
}

// 场景：资产下载时某条源给的是假内容（哈希对不上）。
// 期望：这条源判失败 ⇒ **顺延下一条重下**，而不是直接终止整个升级。
func TestGhDownloadVerifiedFailsOverOnBadContent(t *testing.T) {
	ghReset(t)

	bad := httptest.NewServer(http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		w.WriteHeader(http.StatusOK)
		w.Write([]byte("ok"))
	}))
	defer bad.Close()
	good := httptest.NewServer(http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		w.WriteHeader(http.StatusOK)
		w.Write([]byte("REAL-CONTENT"))
	}))
	defer good.Close()

	ghCacheMu.Lock()
	ghRecords["github.com"] = []*ghRoute{
		{Label: "bad", Prefix: bad.URL + "/", Form: ghFormPrefix},
		{Label: "good", Prefix: good.URL + "/", Form: ghFormPrefix},
	}
	ghRecordAt["github.com"] = time.Now()
	ghSpeedFP = ghOutboundFingerprint()
	ghCacheMu.Unlock()

	dst := filepath.Join(t.TempDir(), "asset.bin")
	verify := func(path string) error {
		b, err := os.ReadFile(path)
		if err != nil {
			return err
		}
		if string(b) != "REAL-CONTENT" {
			return fmt.Errorf("内容不对：%q", b)
		}
		return nil
	}
	used, err := ghDownloadVerified("https://github.com/x/y", dst, 0644, nil, verify)
	if err != nil {
		t.Fatalf("应当顺延到真源并成功：%v", err)
	}
	if used == nil || used.Label != "good" {
		t.Fatalf("应当用 good 这条源，实际是 %v", used)
	}
	b, err := os.ReadFile(dst)
	if err != nil {
		t.Fatalf("读落盘文件失败：%v", err)
	}
	if string(b) != "REAL-CONTENT" {
		t.Fatalf("落盘内容不对：%q", b)
	}
}

// 场景：所有候选的资产内容都不对。
// 期望：报错（升级终止），且不会留下半截文件冒充成功。
func TestGhDownloadVerifiedFailsWhenAllContentBad(t *testing.T) {
	ghReset(t)

	bad := httptest.NewServer(http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		w.WriteHeader(http.StatusOK)
		w.Write([]byte("ok"))
	}))
	defer bad.Close()

	ghCacheMu.Lock()
	ghRecords["github.com"] = []*ghRoute{
		{Label: "bad-1", Prefix: bad.URL + "/", Form: ghFormPrefix},
		{Label: "bad-2", Prefix: bad.URL + "/", Form: ghFormPrefix},
	}
	ghRecordAt["github.com"] = time.Now()
	ghSpeedFP = ghOutboundFingerprint()
	ghCacheMu.Unlock()

	dst := filepath.Join(t.TempDir(), "asset.bin")
	verify := func(path string) error { return fmt.Errorf("内容不对") }
	if _, err := ghDownloadVerified("https://github.com/x/y", dst, 0644, nil, verify); err == nil {
		t.Fatal("全部候选内容都不对时应当报错")
	}
}
