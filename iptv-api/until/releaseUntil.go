package until

import (
	"encoding/json"
	"errors"
	"fmt"
	"log"
	"strings"
	"time"
)

// 发布位读取（api 侧）。
//
// 定制分支只保留 **mytv 编译基底** 的在线检查/升级（见 until/mytvOnline.go）：
// api 与引擎的在线升级（检查 → 下载 → 交给启动器应用）已整体删除，
// 那两个产物的更新一律走"换镜像"。所以这里只剩"拉发布列表 + 挑版本最高的一版"
// 这一层共用管道 —— 定制包不发公共发布位，多留一条链路只会让人误点。
//
// 发布仓里同时躺着 api(vX.Y.Z) / 引擎(engine-vX.Y.Z) / mytv(mytv-vX.Y.Z) 三条序列，
// 靠标签前缀 + 资产构成区分（见 mytvOnline.go 的 mytvTagRe / isMytvBaseRelease）。

const (
	releaseOwner = "wz1st"
	releaseRepo  = "go-iptv"
)

// errNoMatchingRelease：**拉取成功了**，但列表里没有符合条件的正式版本。
var errNoMatchingRelease = errors.New("发布仓库里没有符合条件的新版本")

// IsNoMatchingRelease 判断错误是不是"拉取成功、只是没有符合条件的版本"。
// 调用方要把它与"连不上"分开处理：前者是"已是最新"，后者才是故障。
func IsNoMatchingRelease(err error) bool { return errors.Is(err, errNoMatchingRelease) }

// releasePerPage / releaseMaxPages：发布位保留历史（三条序列都发在同一仓），
// 列表会一直增长。GitHub 的 releases 接口默认只回 30 条，不显式取满一页，
// 新版本迟早被挤出首页 —— 症状就是"明明发新版了却检查不到更新"。
const (
	releasePerPage  = 100
	releaseMaxPages = 3
)

// releaseAPIURL 是发布列表接口。直连还是走国内加速、以及"直连太慢就换"，
// 全部交给 ghnet.go 统一决定，这里只给出正式地址。
func releaseAPIURL() string {
	return fmt.Sprintf("https://api.github.com/repos/%s/%s/releases?per_page=%d",
		releaseOwner, releaseRepo, releasePerPage)
}

// releaseAsset 是发布资产。具名而不是匿名内嵌，好让测试直接构造带资产的发布
// （资产构成是判定发布身份的依据，测试必须能造出来）。
type releaseAsset struct {
	Name               string `json:"name"`
	BrowserDownloadURL string `json:"browser_download_url"`
}

type githubRelease struct {
	TagName     string         `json:"tag_name"`
	Prerelease  bool           `json:"prerelease"`
	PublishedAt time.Time      `json:"published_at"`
	CreatedAt   time.Time      `json:"created_at"`
	Assets      []releaseAsset `json:"assets"`
}

// fetchLatestStableRelease 取发布列表里「版本最高的、正式的、keep 认可」的那一个。
// keep 把同一个发布位里的三条序列区分开 —— 只认标签不够，详见 isMytvBaseRelease。
func fetchLatestStableRelease(keep func(*githubRelease) bool) (*githubRelease, error) {
	releases, err := fetchAllReleases()
	if err != nil {
		return nil, err
	}
	return pickLatestStable(releases, keep)
}

// collectReleasePages 反复取页直到某页不满一页为止，最多 releaseMaxPages 页。
// 拆成"传入取页函数"是为了能在测试里喂假数据，不必真连 GitHub。
// 第 2 页起失败只降级（返回已取到的部分）而不是整体报错：盘点比"完全没有"有用，
// 调用方本来就把"没有匹配项"当正常情况处理。
func collectReleasePages(fetch func(page int) ([]byte, error)) ([]githubRelease, error) {
	var all []githubRelease
	for page := 1; page <= releaseMaxPages; page++ {
		body, err := fetch(page)
		if err != nil {
			if page == 1 {
				return nil, err
			}
			log.Printf("拉取发布列表第 %d 页失败(%v)，只按已取到的 %d 条判断", page, err, len(all))
			break
		}
		var batch []githubRelease
		if err := json.Unmarshal(body, &batch); err != nil {
			if page == 1 {
				return nil, fmt.Errorf("解析发布列表失败: %v", err)
			}
			log.Printf("解析发布列表第 %d 页失败(%v)，只按已取到的 %d 条判断", page, err, len(all))
			break
		}
		all = append(all, batch...)
		if len(batch) < releasePerPage {
			break
		}
	}
	return all, nil
}

// fetchAllReleases 拉发布列表。失败与"延迟过大"的链路切换在 ghGetJSON 里做。
func fetchAllReleases() ([]githubRelease, error) {
	return collectReleasePages(func(page int) ([]byte, error) {
		body, _, err := ghGetJSON(fmt.Sprintf("%s&page=%d", releaseAPIURL(), page))
		return body, err
	})
}

// pickLatestStable 从发布列表里挑出「版本最高的、正式的、keep 认可的」那一个。
//
// 判据是**版本号**而不是发布时间：发布位保留历史（旧版客户端可能还指着旧资产，
// 删掉就等于打断它的升级路径），补发/重跑旧 tag 会让"发布最晚"≠"版本最高"，
// 按时间挑就会把客户端按回旧版本 —— 表现为"明明发新版了却检查不到更新"。
// 版本号相同时才用发布时间兜底（同一 tag 被重发过）。
//
// keep 收整个 release 而不只是标签：光看标签认不准身份（见 isMytvBaseRelease）。
func pickLatestStable(releases []githubRelease, keep func(*githubRelease) bool) (*githubRelease, error) {
	var latest *githubRelease
	var latestVer [3]int
	for i := range releases {
		r := &releases[i]
		if r.Prerelease || !keep(r) {
			continue
		}
		v := tagVersion(r.TagName)
		if latest != nil {
			cmp := cmpVersion(v, latestVer)
			if cmp < 0 || (cmp == 0 && !r.PublishedAt.After(latest.PublishedAt)) {
				continue
			}
		}
		latest, latestVer = r, v
	}
	if latest == nil {
		return nil, errNoMatchingRelease
	}
	return latest, nil
}

// hasAsset 精确判断 release 里有没有这个资产。
// 必须精确相等：清单名之间只差前后缀（SHA256SUMS.txt / SHA256SUMSEngine.txt），
// 前缀匹配会让它们互相命中。
func hasAsset(rel *githubRelease, name string) bool {
	for _, a := range rel.Assets {
		if a.Name == name {
			return true
		}
	}
	return false
}

// 版本比较

// versionParts 把版本号裁成 3 段整数（大版本 / 大改动 / 小改动），缺位补 0。
// 存量安装是 4 段（v3.0.2.9），第 4 段是构建号，直接丢弃。
func versionParts(v string) [3]int {
	var out [3]int
	parts := strings.Split(strings.TrimPrefix(v, "v"), ".")
	for i := 0; i < 3 && i < len(parts); i++ {
		fmt.Sscanf(parts[i], "%d", &out[i])
	}
	return out
}

// tagVersion 把发布标签归一到可比的三段版本号。
//
// 三条序列的前缀不同（api 无前缀 / engine-v / mytv-v），统一把 "<名字>-v" 剥掉再比。
// **只剥某一个前缀是错的**：mytv-v1.2.3 剥不掉时会变成 [0,2,3]（"mytv-v1" 解不出整数），
// 于是 mytv-v1.2.3 被判得比 mytv-v2.0.0 高 —— 大版本升级时挑错版本，界面上表现为
// "检测更新"报的版本比远端实际最新版旧。
func tagVersion(tag string) [3]int {
	if i := strings.Index(tag, "-v"); i >= 0 {
		tag = tag[i+2:]
	}
	return versionParts(tag)
}

// cmpVersion 逐段比大小，返回 -1 / 0 / 1。
func cmpVersion(a, b [3]int) int {
	for i := 0; i < 3; i++ {
		if a[i] != b[i] {
			if a[i] > b[i] {
				return 1
			}
			return -1
		}
	}
	return 0
}

// assetURLs 把 release 的资产名映射成下载地址。
func assetURLs(rel *githubRelease) map[string]string {
	m := map[string]string{}
	for _, a := range rel.Assets {
		m[a.Name] = a.BrowserDownloadURL
	}
	return m
}
