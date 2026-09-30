package until

import (
	"errors"
	"fmt"
	"strings"
	"testing"
	"time"
)

// pageJSON 造一页 n 条的发布列表 JSON。
func pageJSON(n int) []byte {
	var b strings.Builder
	b.WriteString("[")
	for i := 0; i < n; i++ {
		if i > 0 {
			b.WriteString(",")
		}
		fmt.Fprintf(&b, `{"tag_name":"v1.0.%d","prerelease":false}`, i)
	}
	b.WriteString("]")
	return []byte(b.String())
}

// mkRel 造一条发布记录。at 为空则不设时间；assets 是资产名。
// 资产构成是判定发布身份的依据（见 isMytvBaseRelease），所以测试必须能造出资产组合。
func mkRel(tag string, pre bool, at string, assets ...string) githubRelease {
	r := githubRelease{TagName: tag, Prerelease: pre}
	if at != "" {
		r.PublishedAt, _ = time.Parse(time.RFC3339, at)
	}
	for _, a := range assets {
		r.Assets = append(r.Assets, releaseAsset{Name: a, BrowserDownloadURL: "https://example.invalid/" + a})
	}
	return r
}

// mkBase 造一条干净的 mytv 基底发布（两个契约资产齐全）。
func mkBase(tag, at string) githubRelease {
	return mkRel(tag, false, at, mytvBaseAsset, mytvVersionAsset)
}

// 版本号

func TestVersionPartsPadsShort(t *testing.T) {
	if got := versionParts("v1.2"); got != [3]int{1, 2, 0} {
		t.Fatalf("缺位应补 0，实际 %v", got)
	}
	if got := versionParts("3.0.2.9"); got != [3]int{3, 0, 2} {
		t.Fatalf("第 4 段应被丢弃，实际 %v", got)
	}
	if got := versionParts("local"); got != [3]int{0, 0, 0} {
		t.Fatalf("不可解析的版本号应全 0，实际 %v", got)
	}
}

// TestTagVersionNormalizesPrefixes 归一化要把三条序列的前缀都剥掉。
// mytv-v 这一条是**实打实踩过**的：只剥 engine-v 时 "mytv-v1" 解不出整数，
// 首段恒 0，于是 mytv-v1.9.0 会被判得比 mytv-v2.0.0 高。
func TestTagVersionNormalizesPrefixes(t *testing.T) {
	for _, c := range []struct {
		tag  string
		want [3]int
	}{
		{"v1.2.3", [3]int{1, 2, 3}},
		{"engine-v3.2.18", [3]int{3, 2, 18}},
		{"mytv-v1.2.3", [3]int{1, 2, 3}},
		{"mytv-v2.0.0", [3]int{2, 0, 0}},
		{"v3.0.2.9", [3]int{3, 0, 2}},
	} {
		if got := tagVersion(c.tag); got != c.want {
			t.Fatalf("%s 应归一为 %v，实际 %v", c.tag, c.want, got)
		}
	}
}

// 拉列表

// TestReleaseAPIURLRequestsFullPage 发布位保留历史后，默认 30 条一页会把
// 较旧的 release 挤出首页 —— 表现就是"明明发新版了却检查不到更新"。
func TestReleaseAPIURLRequestsFullPage(t *testing.T) {
	u := releaseAPIURL()
	if !strings.Contains(u, fmt.Sprintf("per_page=%d", releasePerPage)) {
		t.Fatalf("必须显式取满一页（per_page=%d），实际 %s", releasePerPage, u)
	}
	if !strings.Contains(u, "wz1st/go-iptv") {
		t.Fatalf("发布仓应为 wz1st/go-iptv，实际 %s", u)
	}
}

// TestCollectReleasePagesStopsAtShortPage 不满一页说明到底了，不该再多取。
func TestCollectReleasePagesStopsAtShortPage(t *testing.T) {
	calls := 0
	got, err := collectReleasePages(func(page int) ([]byte, error) {
		calls++
		return pageJSON(2), nil
	})
	if err != nil {
		t.Fatalf("不应报错：%v", err)
	}
	if calls != 1 || len(got) != 2 {
		t.Fatalf("不满一页应只取 1 次、拿到 2 条，实际 calls=%d len=%d", calls, len(got))
	}
}

// TestCollectReleasePagesWalksFullPages 首页满页时必须继续取第二页。
func TestCollectReleasePagesWalksFullPages(t *testing.T) {
	calls := 0
	got, err := collectReleasePages(func(page int) ([]byte, error) {
		calls++
		switch page {
		case 1:
			return pageJSON(releasePerPage), nil
		case 2:
			return pageJSON(1), nil
		}
		t.Fatalf("不该取到第 %d 页", page)
		return nil, nil
	})
	if err != nil {
		t.Fatalf("不应报错：%v", err)
	}
	if calls != 2 || len(got) != releasePerPage+1 {
		t.Fatalf("应取 2 页共 %d 条，实际 calls=%d len=%d", releasePerPage+1, calls, len(got))
	}
}

// TestCollectReleasePagesRespectsMaxPages 页数必须封顶，否则一次检查会打很多请求。
func TestCollectReleasePagesRespectsMaxPages(t *testing.T) {
	calls := 0
	got, err := collectReleasePages(func(page int) ([]byte, error) {
		calls++
		return pageJSON(releasePerPage), nil
	})
	if err != nil {
		t.Fatalf("不应报错：%v", err)
	}
	if calls != releaseMaxPages {
		t.Fatalf("页数应封顶在 %d，实际取了 %d 页", releaseMaxPages, calls)
	}
	if len(got) != releasePerPage*releaseMaxPages {
		t.Fatalf("应累计 %d 条，实际 %d", releasePerPage*releaseMaxPages, len(got))
	}
}

// TestCollectReleasePagesToleratesLaterPageFailure 第 2 页起失败要降级：
// 首页已经拿到的候选仍然有效，整体报错会让"检查更新"白跑。
func TestCollectReleasePagesToleratesLaterPageFailure(t *testing.T) {
	got, err := collectReleasePages(func(page int) ([]byte, error) {
		if page == 1 {
			return pageJSON(releasePerPage), nil
		}
		return nil, errors.New("第二页炸了")
	})
	if err != nil {
		t.Fatalf("后续页失败应降级而不是整体报错，实际 %v", err)
	}
	if len(got) != releasePerPage {
		t.Fatalf("应保留首页的 %d 条，实际 %d", releasePerPage, len(got))
	}
}

// TestCollectReleasePagesFirstPageError 首页失败必须冒泡：
// 调用方要靠它区分"连不上"（故障）与"没有匹配版本"（已是最新）。
func TestCollectReleasePagesFirstPageError(t *testing.T) {
	if _, err := collectReleasePages(func(page int) ([]byte, error) {
		return nil, errors.New("连不上")
	}); err == nil {
		t.Fatal("首页失败必须报错")
	}
}

// 挑版本

// TestPickLatestStablePicksHighestVersion 挑版本的判据是**版本号**而不是发布时间。
// 发布位保留历史后，补发/重跑旧 tag 会让发布时间更晚，按时间挑就会把客户端按回旧版本
// （症状是"明明发新版了却检查不到更新"）。顺带覆盖序列过滤与 prerelease 过滤。
func TestPickLatestStablePicksHighestVersion(t *testing.T) {
	list := []githubRelease{
		mkBase("mytv-v1.2.2", "2025-01-01T00:00:00Z"),
		mkBase("engine-v9.9.9", "2025-06-01T00:00:00Z"),                                     // 别的序列：不算
		mkRel("mytv-v1.2.9", true, "2025-07-01T00:00:00Z", mytvBaseAsset, mytvVersionAsset), // 版本最高但预发布：不算
		mkBase("mytv-v1.2.1", "2025-08-01T00:00:00Z"),                                       // 时间更晚但版本更旧
	}
	got, err := pickLatestStable(list, isMytvBaseRelease)
	if err != nil {
		t.Fatalf("应挑出 mytv-v1.2.2，实际报错 %v", err)
	}
	if got.TagName != "mytv-v1.2.2" {
		t.Fatalf("应挑出 mytv-v1.2.2（版本最高），实际 %s", got.TagName)
	}
}

// TestPickLatestStableVersionSortIsNumeric 版本比较必须按数值而不是字符串：
// v3.10.0 > v3.9.9（字符串序反过来），"-v" 前缀也要能正确归一。
func TestPickLatestStableVersionSortIsNumeric(t *testing.T) {
	list := []githubRelease{
		mkBase("mytv-v1.2.3", "2026-09-20T00:00:00Z"),
		mkBase("mytv-v1.9.9", "2026-09-01T00:00:00Z"),
		mkBase("mytv-v1.10.0", "2026-08-01T00:00:00Z"), // 发布时间最早、版本最高
	}
	got, err := pickLatestStable(list, isMytvBaseRelease)
	if err != nil {
		t.Fatalf("应挑出 mytv-v1.10.0，实际报错 %v", err)
	}
	if got.TagName != "mytv-v1.10.0" {
		t.Fatalf("应按数值挑出 mytv-v1.10.0，实际 %s", got.TagName)
	}
}

// TestPickLatestStableNoMatchIsSentinel 「拉到了列表但一个都不匹配」必须回哨兵：
// 调用方据此显示"当前已是最新版本"，而不是报"连接失败"。
func TestPickLatestStableNoMatchIsSentinel(t *testing.T) {
	list := []githubRelease{
		mkRel("mytv-v1.2.3", false, "", mytvBaseAsset), // 少版本号文件
		mkRel("engine-v3.2.17", false, "", "engine_amd64", "SHA256SUMSEngine.txt"),
	}
	_, err := pickLatestStable(list, isMytvBaseRelease)
	if err == nil {
		t.Fatal("没有匹配标签时应报错")
	}
	if !errors.Is(err, errNoMatchingRelease) {
		t.Fatalf("必须是哨兵 errNoMatchingRelease（决定要不要重试代理），实际 %v", err)
	}
	if _, err := pickLatestStable(nil, func(*githubRelease) bool { return true }); !errors.Is(err, errNoMatchingRelease) {
		t.Fatalf("空列表同样应回哨兵，实际 %v", err)
	}
}

// TestPickLatestStableSkipsDirtyReleases 脏发布在挑选阶段就出局 ——
// 版本号最高的空发布不能让"检查更新"报出有新版本。
func TestPickLatestStableSkipsDirtyReleases(t *testing.T) {
	list := []githubRelease{
		mkRel("mytv-v9.9.9", false, "2026-09-27T00:00:00Z"), // 零资产，但版本号最高
		mkBase("mytv-v1.2.3", "2026-09-26T00:00:00Z"),
	}
	got, err := pickLatestStable(list, isMytvBaseRelease)
	if err != nil {
		t.Fatalf("应跳过零资产的 mytv-v9.9.9，实际报错 %v", err)
	}
	if got.TagName != "mytv-v1.2.3" {
		t.Fatalf("应挑出 mytv-v1.2.3，实际 %s", got.TagName)
	}

	// 全是脏发布时回哨兵：调用方据此显示"当前已是最新版本"，而不是报出 mytv-v9.9.9
	only := []githubRelease{mkRel("mytv-v9.9.9", false, "")}
	if _, err := pickLatestStable(only, isMytvBaseRelease); !errors.Is(err, errNoMatchingRelease) {
		t.Fatalf("只有脏发布时应回哨兵，实际 %v", err)
	}
}

// 发布身份

// TestIsMytvBaseReleaseRequiresContractAssets 基底发布的两个契约资产必须同时在场；
// 顺带钉住 hasAsset 是**精确相等**而不是前缀匹配（清单名互为前缀）。
func TestIsMytvBaseReleaseRequiresContractAssets(t *testing.T) {
	for _, c := range []struct {
		name string
		rel  githubRelease
		want bool
	}{
		{"两个契约资产齐全", mkRel("mytv-v1.2.3", false, "", mytvBaseAsset, mytvVersionAsset), true},
		{"只有 APK", mkRel("mytv-v1.2.3", false, "", mytvBaseAsset), false},
		{"只有版本号文件", mkRel("mytv-v1.2.3", false, "", mytvVersionAsset), false},
		{"标签是别家的序列", mkRel("engine-v3.2.17", false, "", "engine_amd64", "SHA256SUMSEngine.txt"), false},
	} {
		if got := isMytvBaseRelease(&c.rel); got != c.want {
			t.Fatalf("%s：应 %v，实际 %v", c.name, c.want, got)
		}
	}

	// 两个清单名只差一个后缀，必须精确比对，不能互相命中
	rel := mkRel("mytv-v1.2.3", false, "", "SHA256SUMS.txt")
	if hasAsset(&rel, "SHA256SUMSEngine.txt") {
		t.Fatal("含 SHA256SUMS.txt 的发布不该命中 SHA256SUMSEngine.txt")
	}
}
