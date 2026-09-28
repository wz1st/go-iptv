package until

import (
	"bufio"
	"crypto/sha256"
	"encoding/hex"
	"encoding/json"
	"errors"
	"fmt"
	"io"
	"log"
	"net/http"
	"os"
	"path/filepath"
	"regexp"
	"strings"
	"time"
)

// 发布仓库：引擎与 api 的产物都发在这里，用标签前缀区分。
const (
	releaseOwner    = "wz1st"
	releaseRepo     = "go-iptv"
	engineTagPrefix = "engine-v"
)

// frontAssetName 是前端整包的发布资产名，必须与 CI（docker-image.yml）
// 以及启动器 until/webBundleName 逐字一致 —— 三处任一处改名就是"下载不到"。
const frontAssetName = "webdist.tar.gz"

// appTagRe 只匹配 api/镜像的标签，engine-vX.Y.Z 不会命中。
var appTagRe = regexp.MustCompile(`^v\d+\.\d+\.\d+$`)

// engineTagRe 只匹配引擎的正式标签。必须与 Dockerfile 的 ENGINE_TAG_RE、
// go-iptv CI 的筛选正则逐字一致 —— 三处松一处，beta 就会被当成正式引擎。
var engineTagRe = regexp.MustCompile(`^engine-v\d+\.\d+\.\d+$`)

// errNoMatchingRelease：**拉取成功了**，但列表里没有符合前缀的正式版本。
var errNoMatchingRelease = errors.New("发布仓库里没有符合条件的新版本")

// IsNoMatchingRelease 判断错误是不是"拉取成功、只是没有符合条件的版本"。
// 调用方要把它与"连不上"分开处理：前者是"已是最新"，后者才是故障。
func IsNoMatchingRelease(err error) bool { return errors.Is(err, errNoMatchingRelease) }

// releasePerPage / releaseMaxPages：发布位保留历史（api、引擎、mytv 三个序列
// 都发在同一仓），列表会一直增长。GitHub 的 releases 接口默认只回 30 条，
// 不显式取满一页，新引擎迟早被挤出首页 —— 症状就是"明明发新版了却检查不到更新"。
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

type githubRelease struct {
	TagName     string    `json:"tag_name"`
	Prerelease  bool      `json:"prerelease"`
	PublishedAt time.Time `json:"published_at"`
	CreatedAt   time.Time `json:"created_at"`
	Assets      []struct {
		Name               string `json:"name"`
		BrowserDownloadURL string `json:"browser_download_url"`
	} `json:"assets"`
}

// UpdateSignal 通知启动器应用 /config/updata 里已下载好的升级包。
func UpdateSignal() error {
	time.Sleep(3 * time.Second)
	res, err := http.Get("http://127.0.0.1:82/update")
	if err != nil {
		return err
	}
	defer res.Body.Close()

	if res.StatusCode != http.StatusOK {
		return fmt.Errorf("更新请求失败，状态码: %d", res.StatusCode)
	}
	return nil
}

// 拉取 release

// fetchLatestStableRelease 取发布列表里「版本最高的、正式的、标签满足 keep」的那一个。
// keep 用来把同一仓库里的 api / 引擎 / mytv 三个序列区分开。
func fetchLatestStableRelease(keep func(string) bool) (*githubRelease, error) {
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

// pickLatestStable 从发布列表里挑出「版本最高的、正式的、标签满足 keep」的那一个。
//
// 判据是**版本号**而不是发布时间：发布位保留历史（旧版 api 可能还指着旧引擎，
// 删掉就等于打断它的升级路径），补发/重跑旧 tag 会让"发布最晚"≠"版本最高"，
// 按时间挑就会把客户端按回旧版本 —— 表现为"明明发新版了却检查不到更新"。
// 版本号相同时才用发布时间兜底（同一 tag 被重发过）。
func pickLatestStable(releases []githubRelease, keep func(string) bool) (*githubRelease, error) {
	var latest *githubRelease
	var latestVer [3]int
	for i := range releases {
		r := &releases[i]
		if r.Prerelease || !keep(r.TagName) {
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

func latestAppRelease() (*githubRelease, error) {
	return fetchLatestStableRelease(func(tag string) bool { return appTagRe.MatchString(tag) })
}

func latestEngineRelease() (*githubRelease, error) {
	return fetchLatestStableRelease(func(tag string) bool { return engineTagRe.MatchString(tag) })
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

// tagVersion 把发布标签归一到可比的三段版本号：api 的 vX.Y.Z 与引擎的
// engine-vX.Y.Z 都裁成 X.Y.Z（versionParts 顺带丢掉存量 4 段号的第 4 段）。
func tagVersion(tag string) [3]int {
	return versionParts(strings.TrimPrefix(tag, engineTagPrefix))
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

// isNewer 判断 newVer 是否比 oldVer 新，并同时给出「能否在线升级」的结论：
func isNewer(newVer, oldVer string) (bool, error) {
	if newVer == oldVer {
		return false, nil
	}
	np, op := versionParts(newVer), versionParts(oldVer)
	for i := 0; i < 3; i++ {
		if np[i] > op[i] {
			if i <= 1 {
				return true, fmt.Errorf("新版本 %s 与当前 %s 存在大版本或大改动差异，"+
					"不支持在线升级，请更新镜像", newVer, oldVer)
			}
			return true, nil
		}
		if np[i] < op[i] {
			return false, nil
		}
	}
	return false, nil
}

func CheckNewVerWeb(local string) (bool, string, error) {
	rel, err := latestAppRelease()
	if errors.Is(err, errNoMatchingRelease) {
		// 仓库里还没有三段版本号的正式发布：对当前安装来说就是"没有更新"，
		// 不是错误。前端会显示"当前已是最新版本"。
		return false, "", nil
	}
	if err != nil {
		log.Println("连接Github 检查失败，请检查网络连接")
		return false, "", fmt.Errorf("连接Github 检查失败，请检查网络连接")
	}
	up, err := isNewer(rel.TagName, local)
	return up, rel.TagName, err
}

func CheckNewVerEngine(local string) (bool, string, error) {
	rel, err := latestEngineRelease()
	if errors.Is(err, errNoMatchingRelease) {
		return false, "", nil
	}
	if err != nil {
		log.Println("连接Github 检查失败，请检查网络连接")
		return false, "", fmt.Errorf("连接Github 检查失败，请检查网络连接")
	}
	ver := strings.TrimPrefix(rel.TagName, engineTagPrefix)
	up, err := isNewer(ver, local)
	return up, ver, err
}

// CheckNewVerFront 检查前端产物（webdist）是否有新版本。
func CheckNewVerFront(local string) (bool, string, error) {
	rel, err := latestAppRelease()
	if errors.Is(err, errNoMatchingRelease) {
		return false, "", nil
	}
	if err != nil {
		log.Println("连接Github 检查失败，请检查网络连接")
		return false, "", fmt.Errorf("连接Github 检查失败，请检查网络连接")
	}

	up, err := isNewer(rel.TagName, local)
	if err != nil || !up {
		return up, rel.TagName, err
	}
	if assetURLs(rel)[frontAssetName] == "" {
		return true, rel.TagName, fmt.Errorf("发布 %s 未提供前端产物 %s，"+
			"不支持在线升级，请更新镜像", rel.TagName, frontAssetName)
	}
	return true, rel.TagName, nil
}

// 下载

// downloadFile 下载资产。走直连还是国内加速由 ghnet.go 决定，失败或延迟过大会自动切换。
func downloadFile(urlStr, dst string) error {
	if urlStr == "" {
		return fmt.Errorf("下载URL为空")
	}
	if _, err := ghDownload(urlStr, dst, 0644); err != nil {
		return fmt.Errorf("下载失败: %v", err)
	}
	return nil
}

// 校验

func fileSHA256(path string) (string, error) {
	f, err := os.Open(path)
	if err != nil {
		return "", err
	}
	defer f.Close()

	h := sha256.New()
	io.Copy(h, f)
	return hex.EncodeToString(h.Sum(nil)), nil
}

// loadSums 解析 sha256sum 格式的清单（"哈希  文件名"，两空格）。
func loadSums(file string) map[string]string {
	r := map[string]string{}

	f, err := os.Open(file)
	if err != nil {
		return r
	}
	defer f.Close()

	sc := bufio.NewScanner(f)
	for sc.Scan() {
		p := strings.Fields(sc.Text())
		if len(p) == 2 {
			r[p[1]] = p[0]
		}
	}
	return r
}

func verifySHA(p string, sums map[string]string) bool {
	h, _ := fileSHA256(p)
	return strings.EqualFold(h, sums[filepath.Base(p)])
}

func copyFile(src, dst string) error {
	in, err := os.Open(src)
	if err != nil {
		return err
	}
	defer in.Close()

	out, err := os.Create(dst)
	if err != nil {
		return err
	}
	defer out.Close()

	_, err = io.Copy(out, in)
	return err
}

// 主逻辑

// assetURLs 把 release 的资产名映射成下载地址。
func assetURLs(rel *githubRelease) map[string]string {
	m := map[string]string{}
	for _, a := range rel.Assets {
		m[a.Name] = a.BrowserDownloadURL
	}
	return m
}

func downloadDir() string { return "/tmp/down" }

// stageUpdata 下载 → 按清单校验 → 落到 /config/updata。
func stageUpdata(rel *githubRelease, assets map[string]string, names []string) (bool, string, error) {
	// 先确认资产都在。这一步单独做，是为了让「CI 改了资产名」这种失误
	// 报成一句能直接看懂的话，而不是后面某处"文件不存在"。
	for _, n := range []string{names[0], names[1]} {
		if assets[n] == "" {
			return false, "", fmt.Errorf("发布 %s 里没有资产 %s", rel.TagName, n)
		}
	}

	downDir := downloadDir()
	upDir := "/config/updata"
	os.MkdirAll(downDir, 0755)
	os.MkdirAll(upDir, 0755)

	localBin := filepath.Join(downDir, names[0])
	localSums := filepath.Join(downDir, names[1])
	if err := downloadFile(assets[names[0]], localBin); err != nil {
		return false, "", err
	}
	if err := downloadFile(assets[names[1]], localSums); err != nil {
		return false, "", err
	}
	if !verifySHA(localBin, loadSums(localSums)) {
		return false, "", fmt.Errorf("%s 校验失败", names[0])
	}

	// 先删旧再落新：旧文件在时启动器可能读到半新半旧的组合。
	os.Remove(filepath.Join(upDir, names[2]))
	dst := filepath.Join(upDir, names[2])
	if err := copyFile(localBin, dst); err != nil {
		return false, "", err
	}
	// 升级包里的二进制要能被执行 —— 启动器要跑 `-version` 读它的版本号，
	// 生效时也是直接 replace 到运行目录后执行。丢可执行位等于"下载成功但用不了"。
	if err := os.Chmod(dst, 0755); err != nil {
		return false, "", err
	}

	return true, rel.TagName, nil
}

// DownloadAndVerifyWeb 下载管理系统（api）新版本到待安装区。
// 资产：iptv_<arch> / SHA256SUMS.txt ⇒ 落地 iptv。
func DownloadAndVerifyWeb(arch string) (bool, string, error) {
	rel, err := latestAppRelease()
	if err != nil {
		log.Println("连接Github 检查失败，请检查网络连接")
		return false, "", err
	}
	binary := "iptv_" + arch
	return stageUpdata(rel, assetURLs(rel), []string{binary, "SHA256SUMS.txt", "iptv"})
}

// DownloadAndVerifyEngine 下载引擎新版本到待安装区。
// 资产：engine_<arch> / SHA256SUMSEngine.txt ⇒ 落地 engine。
func DownloadAndVerifyEngine(arch string) (bool, string, error) {
	rel, err := latestEngineRelease()
	if err != nil {
		log.Println("连接Github 检查失败，请检查网络连接")
		return false, "", err
	}
	binary := "engine_" + arch
	return stageUpdata(rel, assetURLs(rel), []string{binary, "SHA256SUMSEngine.txt", "engine"})
}

// DownloadAndVerifyFront 下载前端产物整包到待安装区。
func DownloadAndVerifyFront() (bool, string, error) {
	rel, err := latestAppRelease()
	if err != nil {
		log.Println("连接Github 检查失败，请检查网络连接")
		return false, "", err
	}
	if assetURLs(rel)[frontAssetName] == "" {
		return false, "", fmt.Errorf("发布 %s 未提供 %s，请更新镜像", rel.TagName, frontAssetName)
	}
	return stageUpdata(rel, assetURLs(rel),
		[]string{frontAssetName, "SHA256SUMS.txt", frontAssetName})
}
