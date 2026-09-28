package until

import (
	"errors"
	"fmt"
	"os"
	"path/filepath"
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

// 在线升级的版本判定

func TestIsNewerPatchOnlyAllowsOnlineUpgrade(t *testing.T) {
	up, err := isNewer("v1.2.4", "v1.2.3")
	if !up || err != nil {
		t.Fatalf("仅小改动变化应允许在线升级，实际 up=%v err=%v", up, err)
	}
}

func TestIsNewerBigChangeBlocksOnlineUpgrade(t *testing.T) {
	for _, nv := range []string{"v1.3.0", "v1.5.9"} {
		up, err := isNewer(nv, "v1.2.3")
		if !up || err == nil {
			t.Fatalf("大改动变化（%s）应判为有新版本但不支持在线升级，实际 up=%v err=%v", nv, up, err)
		}
	}
}

func TestIsNewerMajorBlocksOnlineUpgrade(t *testing.T) {
	up, err := isNewer("v2.0.0", "v1.9.9")
	if !up || err == nil {
		t.Fatalf("大版本变化应判为有新版本但不支持在线升级，实际 up=%v err=%v", up, err)
	}
}

func TestIsNewerDowngradeAndSame(t *testing.T) {
	if up, err := isNewer("v1.2.2", "v1.2.3"); up || err != nil {
		t.Fatalf("旧版本不应被判为新版本，实际 up=%v err=%v", up, err)
	}
	if up, err := isNewer("v1.2.3", "v1.2.3"); up || err != nil {
		t.Fatalf("同版本不应被判为新版本，实际 up=%v err=%v", up, err)
	}
}

// TestIsNewerLegacyFourPartLocal 存量安装的版本号是 4 段（v3.0.2.9），
// 第 4 段是构建号，比较时必须丢掉 —— 否则老装机会永远"检查不到更新"。
func TestIsNewerLegacyFourPartLocal(t *testing.T) {
	up, err := isNewer("v3.0.3", "v3.0.2.9")
	if !up || err != nil {
		t.Fatalf("4 段存量版本按前 3 段比较后应支持在线升级，实际 up=%v err=%v", up, err)
	}
}

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

// TestTagFilters 引擎与 api 同发在一个仓库，靠标签前缀区分。
// 判错的表现是"检查管理系统更新"拿回一个引擎版本号。
func TestTagFilters(t *testing.T) {
	if !appTagRe.MatchString("v1.2.3") {
		t.Fatal("v1.2.3 应被识别为 api 标签")
	}
	for _, bad := range []string{"engine-v1.2.3", "v3.0.2.9", "v1.2", "beta-v1.2.3"} {
		if appTagRe.MatchString(bad) {
			t.Fatalf("%s 不该被识别为 api 标签", bad)
		}
	}
}

// TestEngineTagRe 引擎标签必须严格三段：beta 只编 amd64 且标了 prerelease，
// 但万一漏标，前三段相同会把客户端引到一个不存在的产物上。
func TestEngineTagRe(t *testing.T) {
	if !engineTagRe.MatchString("engine-v3.2.18") {
		t.Fatal("engine-v3.2.18 应被识别为引擎正式标签")
	}
	for _, bad := range []string{
		"engine-v3.2.18-beta", "engine-v3.2", "v3.2.18", "engine-v3.0.2.9", "engine-v",
	} {
		if engineTagRe.MatchString(bad) {
			t.Fatalf("%s 不该被识别为引擎正式标签", bad)
		}
	}
}

// TestLoadSumsParsesSHA256SumOutput 校验清单的解析格式。
func TestLoadSumsParsesSHA256SumOutput(t *testing.T) {
	dir := t.TempDir()
	p := filepath.Join(dir, "SHA256SUMS.txt")
	content := "aaaa  iptv_amd64\nbbbb  iptv_arm64\ncccc  Version\n"
	if err := os.WriteFile(p, []byte(content), 0644); err != nil {
		t.Fatal(err)
	}

	sums := loadSums(p)
	if len(sums) != 3 {
		t.Fatalf("应解析出 3 条，实际 %d：%v", len(sums), sums)
	}
	if sums["iptv_amd64"] != "aaaa" {
		t.Fatalf("iptv_amd64 的哈希应为 aaaa，实际 %q", sums["iptv_amd64"])
	}
	if _, ok := sums["engine_amd64"]; ok {
		t.Fatal("只含 iptv_* 的清单不该有 engine_amd64 条目")
	}
}

// TestLoadSumsMissingFileIsEmpty 清单文件不存在时返回空映射而不是 panic。
func TestLoadSumsMissingFileIsEmpty(t *testing.T) {
	sums := loadSums(filepath.Join(t.TempDir(), "不存在.txt"))
	if len(sums) != 0 {
		t.Fatalf("文件不存在时应返回空映射，实际 %v", sums)
	}
}

// TestReleaseAPIURLRequestsFullPage 发布位保留历史后，默认 30 条一页会把
// 较旧的引擎 release 挤出首页 —— 表现就是"明明发新版了却检查不到引擎更新"。
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

// TestPickLatestStablePicksHighestVersion 挑版本的判据是**版本号**而不是发布时间。
// 发布位保留历史后，补发/重跑旧 tag 会让发布时间更晚，按时间挑就会把客户端按回旧版本
// （症状是"明明发新版了却检查不到更新"）。顺带覆盖前缀过滤与 prerelease 过滤。
func TestPickLatestStablePicksHighestVersion(t *testing.T) {
	mk := func(tag string, pre bool, at string) githubRelease {
		ts, _ := time.Parse(time.RFC3339, at)
		return githubRelease{TagName: tag, Prerelease: pre, PublishedAt: ts}
	}
	list := []githubRelease{
		mk("v1.2.2", false, "2025-01-01T00:00:00Z"),
		mk("engine-v9.9.9", false, "2025-06-01T00:00:00Z"), // 前缀不符：不算
		mk("v1.2.9", true, "2025-07-01T00:00:00Z"),         // 版本最高但是预发布：不算
		mk("v1.2.1", false, "2025-08-01T00:00:00Z"),        // 时间更晚但版本更旧：不能赢
	}
	got, err := pickLatestStable(list, func(tag string) bool { return appTagRe.MatchString(tag) })
	if err != nil {
		t.Fatalf("应挑出 v1.2.2，实际报错 %v", err)
	}
	if got.TagName != "v1.2.2" {
		t.Fatalf("应挑出 v1.2.2（版本最高），实际 %s", got.TagName)
	}
}

// TestPickLatestStableVersionSortIsNumeric 版本比较必须按数值而不是字符串：
// v3.10.0 > v3.9.9（字符串序反过来），引擎的 engine-v 前缀也要能正确归一。
func TestPickLatestStableVersionSortIsNumeric(t *testing.T) {
	mk := func(tag, at string) githubRelease {
		ts, _ := time.Parse(time.RFC3339, at)
		return githubRelease{TagName: tag, PublishedAt: ts}
	}
	list := []githubRelease{
		mk("engine-v3.2.17", "2026-09-20T00:00:00Z"),
		mk("engine-v3.9.9", "2026-09-01T00:00:00Z"),
		mk("engine-v3.10.0", "2026-08-01T00:00:00Z"), // 发布时间最早、版本最高
	}
	got, err := pickLatestStable(list, func(tag string) bool { return strings.HasPrefix(tag, engineTagPrefix) })
	if err != nil {
		t.Fatalf("应挑出 engine-v3.10.0，实际报错 %v", err)
	}
	if got.TagName != "engine-v3.10.0" {
		t.Fatalf("应按数值挑出 engine-v3.10.0，实际 %s", got.TagName)
	}
}

// TestTagVersionNormalizesPrefixes 归一化：api 与引擎、以及存量 4 段号都要能比。
func TestTagVersionNormalizesPrefixes(t *testing.T) {
	for _, c := range []struct {
		tag  string
		want [3]int
	}{
		{"v1.2.3", [3]int{1, 2, 3}},
		{"engine-v3.2.18", [3]int{3, 2, 18}},
		{"v3.0.2.9", [3]int{3, 0, 2}},
	} {
		if got := tagVersion(c.tag); got != c.want {
			t.Fatalf("%s 应归一为 %v，实际 %v", c.tag, c.want, got)
		}
	}
}

// TestPickLatestStableNoMatchIsSentinel 「拉到了列表但一个都不匹配」必须回
func TestPickLatestStableNoMatchIsSentinel(t *testing.T) {
	list := []githubRelease{{TagName: "v3.0.2.5"}, {TagName: "v3.0.1.9"}}
	_, err := pickLatestStable(list, func(tag string) bool { return appTagRe.MatchString(tag) })
	if err == nil {
		t.Fatal("没有匹配标签时应报错")
	}
	if !errors.Is(err, errNoMatchingRelease) {
		t.Fatalf("必须是哨兵 errNoMatchingRelease（决定要不要重试代理），实际 %v", err)
	}
	if _, err := pickLatestStable(nil, func(string) bool { return true }); !errors.Is(err, errNoMatchingRelease) {
		t.Fatalf("空列表同样应回哨兵，实际 %v", err)
	}
}

// TestStageUpdataReportsMissingAsset 资产名是**跨仓契约**：CI 发布的名字与这里
func TestStageUpdataReportsMissingAsset(t *testing.T) {
	rel := &githubRelease{TagName: "v1.2.3"}
	for _, names := range [][]string{
		{"iptv_amd64", "SHA256SUMS.txt", "iptv"},
		{frontAssetName, "SHA256SUMS.txt", frontAssetName},
		{"engine_amd64", "SHA256SUMSEngine.txt", "engine"},
	} {
		_, _, err := stageUpdata(rel, map[string]string{}, names)
		if err == nil {
			t.Fatalf("资产缺失时应报错（%s）", names[0])
		}
		if !strings.Contains(err.Error(), names[0]) {
			t.Fatalf("错误信息应点出缺失的资产名 %s，实际：%v", names[0], err)
		}
	}
}

// TestFrontAssetNameIsContract 前端整包的资产名出现在**三处**，任一处改名
func TestFrontAssetNameIsContract(t *testing.T) {
	if frontAssetName != "webdist.tar.gz" {
		t.Fatalf("前端资产名被改成了 %q，三处引用必须同步修改", frontAssetName)
	}
}
