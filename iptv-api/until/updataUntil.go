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

// apiSumsName / engineSumsName 是两个序列各自的校验清单名。
//
// 它们不只是下载后对哈希用的 —— 更是**判定 release 身份**的依据：清单由发布流程
// 无条件产出，比标签前缀更能说明"这个 release 里装的到底是谁的产物"。
// 名字必须与 CI（Dockerfile 的 cp、docker-image.yml 的 sha256sum、引擎仓 CI 的
// sha256sum）逐字一致；两处只差一个后缀，所以比较一律精确相等，不许前缀匹配。
const (
	apiSumsName    = "SHA256SUMS.txt"
	engineSumsName = "SHA256SUMSEngine.txt"
)

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

// CheckUpdateArch 确认本机架构在发布产物里。发布只出 amd64：
// 非 amd64 机器上继续拼 iptv_arm64 / engine_arm64 只会得到
// "发布 vX.Y.Z 里没有资产 iptv_arm64" 这种看不懂的报错，这里直接说清。
func CheckUpdateArch(arch string) error {
	if arch != "amd64" {
		return fmt.Errorf("本机架构 %s 不在发布产物里（只发 amd64），不支持在线升级，请更新镜像", arch)
	}
	return nil
}

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

// fetchLatestStableRelease 取发布列表里「版本最高的、正式的、keep 认可」的那一个。
// keep 把同一个发布位里的 api / 引擎 / mytv 三条序列区分开 —— 只认标签不够，
// 详见 isApiRelease 的说明。
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
// 判据是**版本号**而不是发布时间：发布位保留历史（旧版 api 可能还指着旧引擎，
// 删掉就等于打断它的升级路径），补发/重跑旧 tag 会让"发布最晚"≠"版本最高"，
// 按时间挑就会把客户端按回旧版本 —— 表现为"明明发新版了却检查不到更新"。
// 版本号相同时才用发布时间兜底（同一 tag 被重发过）。
//
// keep 收整个 release 而不只是标签：光看标签认不准身份（见 isApiRelease 的说明）。
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
// 必须精确相等：两个清单名只差一个后缀（SHA256SUMS.txt / SHA256SUMSEngine.txt），
// 前缀匹配会让它们互相命中。
func hasAsset(rel *githubRelease, name string) bool {
	for _, a := range rel.Assets {
		if a.Name == name {
			return true
		}
	}
	return false
}

// isApiRelease / isEngineRelease 判断一个 release 是不是本序列的正式发布。
//
// 两层判据缺一不可：标签形状（只认三段式正式号）+ 资产构成（带自己的校验清单、
// 且**不带对方的**）。第二层是必须的 —— 发布位里真有过脏数据：
//   - engine-v3.0.1 里混着 api 的 iptv_amd64 / iptv_arm64 / SHA256SUMS.txt / Version；
//   - v4.0.1 干脆一个资产都没有。
//
// 只看标签就会把它们当候选：轻则"检查更新"报出误导性的版本号（v4.0.1 比线上高
// 一个中版本，界面会提示"跨大版本、请更新镜像"），重则一路走到下载阶段才报
// "发布里没有资产 iptv_<arch>"。按资产构成认身份，这类脏数据在挑选阶段就出局。
func isApiRelease(r *githubRelease) bool {
	return appTagRe.MatchString(r.TagName) && hasAsset(r, apiSumsName) && !hasAsset(r, engineSumsName)
}

func isEngineRelease(r *githubRelease) bool {
	return engineTagRe.MatchString(r.TagName) && hasAsset(r, engineSumsName) && !hasAsset(r, apiSumsName)
}

func latestAppRelease() (*githubRelease, error) {
	return fetchLatestStableRelease(isApiRelease)
}

func latestEngineRelease() (*githubRelease, error) {
	return fetchLatestStableRelease(isEngineRelease)
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

// CheckNewVerWebAndFront 检查「管理系统 + 前端」整包是否有新版本。
// 返回 up / newVer / frontMissing / err：
//   - frontMissing=true 表示发布里缺前端整包 webdist.tar.gz，此时即便 api 有
//     新版也无法做到「api 与前端同时更新」，必须提示用户更新镜像。
func CheckNewVerWebAndFront(local string) (bool, string, bool, error) {
	rel, err := latestAppRelease()
	if errors.Is(err, errNoMatchingRelease) {
		// 仓库里还没有三段版本号的正式发布：对当前安装来说就是"没有更新"，
		// 不是错误。前端会显示"当前已是最新版本"。
		return false, "", false, nil
	}
	if err != nil {
		log.Println("连接Github 检查失败，请检查网络连接")
		return false, "", false, fmt.Errorf("连接Github 检查失败，请检查网络连接")
	}
	up, err := isNewer(rel.TagName, local)
	if !up {
		return false, rel.TagName, false, nil
	}
	if err != nil {
		// 跨大版本/大改动：不能在线升级。
		return true, rel.TagName, false, err
	}
	return true, rel.TagName, assetURLs(rel)[frontAssetName] == "", nil
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

// 下载

// SilentCheckUpdates 登录后静默盘点各组件是否有新版本，供前端在菜单/标签上挂红点。
// 与手动「检测更新」不同：这里**不写任何 Docker 日志** —— 成功路径本来就没有日志，
// 网络探测失败也直接当作"无更新"吞掉（不记 log、不报红），只在最坏情况下少亮一个红点，
// 不会污染 docker logs。各组件的判定复用既有的"取远端最新发布 + 版本比较"原语，
// 因此结果与手动检测完全一致（含跨大版本只能换镜像、基底可在线换这两种口径）。
func SilentCheckUpdates() map[string]bool {
	out := map[string]bool{
		"web":    false,
		"engine": false,
		"qh":     false,
		"lt":     false,
		"mytv":   false,
	}

	// 管理系统 + 前端整包（api 与前端随同一发布标签发布，一并覆盖）。
	if rel, err := latestAppRelease(); err == nil {
		// isNewer 返回 up=true 即"存在更新"；第二参 err 只表达"能否在线升级
		// （跨大版本需换镜像）"，不影响"有没有新版本"这一事实，故忽略。
		if up, _ := isNewer(rel.TagName, GetVersion()); up {
			out["web"] = true
		}
	}

	// 引擎（标签带 engine- 前缀，先剥掉再比）。
	if rel, err := latestEngineRelease(); err == nil {
		ver := strings.TrimPrefix(rel.TagName, engineTagPrefix)
		if up, _ := isNewer(ver, EngineVersion()); up {
			out["engine"] = true
		}
	}

	// 清和壳基底（client-vX.Y.Z 序列）。
	if rel, err := LatestClientBaseRelease(); err == nil {
		out["qh"] = BaseNewer(rel.Version, GetClientBaseVersion())
	}

	// 骆驼壳基底（luotuo-vX.Y.Z 序列）。
	if rel, err := LatestLuotuoBaseRelease(); err == nil {
		out["lt"] = BaseNewer(rel.Version, GetClientLtBaseVersion())
	}

	// MyTV 基底（mytv-vX.Y.Z 序列）。
	if rel, err := LatestMytvBaseRelease(); err == nil {
		out["mytv"] = BaseNewer(rel.Version, GetMytvVersion())
	}

	return out
}

// downloadFile 下载资产。走直连还是国内加速由 ghnet.go 决定，失败或延迟过大会自动切换。
func downloadFile(urlStr, dst string) error {
	return downloadFileWith(urlStr, dst, nil)
}

// downloadFileWith 带进度回调的下载。onProgress 为 nil 时行为与原来一致。
func downloadFileWith(urlStr, dst string, onProgress func(done, total int64)) error {
	if urlStr == "" {
		return fmt.Errorf("下载URL为空")
	}
	if _, err := ghDownloadProgress(urlStr, dst, 0644, onProgress); err != nil {
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

// stageUpdata 下载多个资产 → 按同一份校验清单校验 → 落到 /config/updata。
// sumsName 是校验清单资产名；pairs 为 [原始资产名, 落地名] 序列。
// 落地名是 iptv / engine 这类可执行二进制时才补可执行位；webdist.tar.gz 等
// 整包保持默认权限即可（启动器按文件名识别、解包应用）。
func stageUpdata(kind string, rel *githubRelease, assets map[string]string, sumsName string, pairs [][2]string) (bool, string, error) {
	// 先确认资产都在。这一步单独做，是为了让「CI 改了资产名」这种失误
	// 报成一句能直接看懂的话，而不是后面某处"文件不存在"。
	for _, p := range pairs {
		if assets[p[0]] == "" {
			err := fmt.Errorf("发布 %s 里没有资产 %s", rel.TagName, p[0])
			SetUpdataFailed(kind, err.Error())
			return false, "", err
		}
	}
	if assets[sumsName] == "" {
		err := fmt.Errorf("发布 %s 里没有资产 %s", rel.TagName, sumsName)
		SetUpdataFailed(kind, err.Error())
		return false, "", err
	}

	downDir := downloadDir()
	upDir := updataDir()
	os.MkdirAll(downDir, 0755)
	os.MkdirAll(upDir, 0755)

	// 目标版本（引擎链路的标签先剥 engine- 前缀，后面比对与记录都用它）。
	target := updataTargetVersion(kind, rel.TagName)

	// 开下载的第一件事就是把"这次出网走没走代理"说清楚。之前所有日志里
	// 只有"直连 / gh-proxy.org"这种链路名，用户开完 useUp 只能靠猜 ——
	// 这一行让"代理到底有没有参与在线升级"在日志里一眼可见。
	log.Printf("在线升级开始：链路=%s 目标=%s %s", kind, rel.TagName, ghOutProxyDesc())

	// 「已下载未安装」复用：待安装区里已经有这一版的完整产物且哈希对得上，
	// 就不必再下一遍 30MB。判据见 reusableStaged —— 逐个文件重算 sha256，
	// 文件被截断/覆盖/改动都会在这里被否掉。
	if why := reusableStaged(kind, target, rel.TagName, pairs); why != "" {
		log.Printf("复用已下载产物，跳过下载：%s", why)
		SetUpdataProgress(kind, UpdataPhaseReady, 95, "升级包已就绪（复用已下载的同一版本），确认后开始安装")
		SetUpdataTarget(kind, target)
		return true, rel.TagName, nil
	}

	// 进度分段：0-8 取校验清单，8-88 下载资产（按字节加权），88-95 校验与落盘，
	// 剩下的 5% 留给"替换文件 + 重启进程"（Updata 之后由启动阶段收尾）。
	//
	// 刻意不追求精确到字节：清单与资产是**串行**下载的，且重试会让百分比回退，
	// 报一个近似值比报一个抖动的精确值更可信。
	SetUpdataProgress(kind, UpdataPhaseFetch, 2, "正在获取升级包信息…")

	localSums := filepath.Join(downDir, sumsName)
	if err := downloadFile(assets[sumsName], localSums); err != nil {
		SetUpdataFailed(kind, "获取校验清单失败："+err.Error())
		return false, "", err
	}
	sums := loadSums(localSums)

	// 逐项下载 + 校验（先全部下完再落地，坏一个不污染待安装区）。
	for i, p := range pairs {
		local := filepath.Join(downDir, p[0])
		base := 8 + (80*i)/len(pairs)
		span := (80 / len(pairs))
		if i == len(pairs)-1 {
			span = 88 - base
		}
		label := p[0]
		SetUpdataProgress(kind, UpdataPhaseFetch, base, "正在下载 "+label+"…")
		// 单个文件的百分比换算到全局区间：只在这一层做换算，
		// 免得每个调用点各写一遍区间公式（写错一次就是进度条乱跳）。
		onProgress := func(done, total int64) {
			pct := base
			if total > 0 {
				pct = base + int((int64(span)*done)/total)
			}
			reportUpdataProgress(kind, UpdataPhaseFetch, pct, "正在下载 "+label+"…")
		}
		if err := downloadFileWith(assets[p[0]], local, onProgress); err != nil {
			SetUpdataFailed(kind, "下载 "+label+" 失败："+err.Error())
			return false, "", err
		}
		SetUpdataProgress(kind, UpdataPhaseVerify, base+span, "正在校验 "+label+"…")
		if !verifySHA(local, sums) {
			SetUpdataFailed(kind, label+" 校验失败")
			return false, "", fmt.Errorf("%s 校验失败", p[0])
		}
	}

	// 先删旧再落新：旧文件在时启动器可能读到半新半旧的组合。
	for _, p := range pairs {
		os.Remove(filepath.Join(upDir, p[1]))
	}
	for _, p := range pairs {
		dst := filepath.Join(upDir, p[1])
		if err := copyFile(filepath.Join(downDir, p[0]), dst); err != nil {
			SetUpdataFailed(kind, "写入待安装文件失败："+err.Error())
			return false, "", err
		}
		// 只有可执行二进制（iptv / engine）需要可执行位；整包保持默认权限。
		if p[1] == "iptv" || p[1] == "engine" {
			if err := os.Chmod(dst, 0755); err != nil {
				SetUpdataFailed(kind, "设置可执行权限失败："+err.Error())
				return false, "", err
			}
		}
	}

	SetUpdataProgress(kind, UpdataPhaseReady, 95, "升级包已下载完成，确认后开始安装")
	// 记下这轮的目标版本与各产物哈希：下次同一版本再来时校验通过就能直接
	// 复用，不必重下（判据见 reusableStaged）。
	SetUpdataTarget(kind, target)
	rememberStaged(kind, target, rel.TagName, pairs, sums)
	return true, rel.TagName, nil
}

// updataTargetVersion 把 release 标签归一成"版本号"形态。
//
// 引擎链路的标签是 engine-vX.Y.Z，而引擎自报的是 X.Y.Z（至多带个 v）——
// 两边直接比字符串永远不相等，所以这里先把前缀剥掉。
func updataTargetVersion(kind, tag string) string {
	if kind == "engine" {
		return strings.TrimPrefix(tag, engineTagPrefix)
	}
	return tag
}

// reportUpdataProgress 带节流地写状态。
//
// 下载字节回调每秒能触发几十次，每次都写一次 JSON 是在**跟磁盘过不去**；
// 而前端 1s 轮询一次，300ms 一写完全够用。
func reportUpdataProgress(kind, phase string, percent int, msg string) {
	now := time.Now().UnixMilli()
	updataMu.Lock()
	defer updataMu.Unlock()
	// 距离上次落盘不到 300ms 就跳过：前端 1s 轮询一次，写再密也是白写磁盘。
	if now-updataCache.updatedMs < 300 && updataCache.Percent == percent && updataCache.Phase == phase {
		return
	}
	// 进度只许前进：换链路重试会让字节回调从 0 重新计数，
	// 百分比一回落就说明用户看到"进度条往回走"，比不精确更糟。
	if percent < updataCache.Percent && phase == updataCache.Phase {
		return
	}
	writeUpdataStateLocked(updataState{
		Kind: kind, Phase: phase, Percent: percent, Msg: msg,
	})
}

// failUpdataFetch 收掉"下载请求已受理"这个状态。
//
// 为什么要收：下载请求一进来，状态就被置成 check（=进行中），前端据此显示
// 下载遮罩与进度。若这一步失败却不收尾，状态会永远停在"进行中" ——
// 前端的下载遮罩（认 check/fetch/verify 三个阶段）撤不掉，只能等 10 分钟
// 后的陈旧判定兜底；用户看到的现象是"报错了但遮罩还挂着"。
//
// 两种结局分开处理：
//   - "发布位里没有合格的新版本"**不是故障**（前端会显示"当前已是最新版本"，
//     提示是 info 而不是 danger），状态回到"空闲"即可，别报成失败；
//   - 其余是真故障，记下原因。
func failUpdataFetch(kind string, err error) {
	if err == nil {
		return
	}
	if IsNoMatchingRelease(err) {
		SetUpdataProgress(kind, UpdataPhaseIdle, 0, "")
		return
	}
	SetUpdataFailed(kind, err.Error())
}

// DownloadAndVerifyWeb 下载「管理系统(api) + 前端(webdist)」整包到待安装区。
// 两者随同一发布标签发布，在线升级时一起更新：
//   - iptv_<arch> / SHA256SUMS.txt ⇒ 落地 iptv
//   - webdist.tar.gz / SHA256SUMS.txt ⇒ 落地 webdist.tar.gz
//
// 缺前端整包时说明发布不完整，无法做到「api 与前端同时更新」，提示更新镜像。
func DownloadAndVerifyWeb(arch string) (bool, string, error) {
	// 一进来就报"正在获取升级包信息"：拉发布列表要走 GitHub API，
	// 慢的时候好几秒。这段时间里服务端状态还是上一轮留下的 ready ——
	// 前端据此判断"现在到底在不在下载"，没有这一句就会误判。
	SetUpdataProgress("web", UpdataPhaseCheck, 1, "正在获取升级包信息…")
	rel, err := latestAppRelease()
	if err != nil {
		failUpdataFetch("web", err)
		logCheckErr(err)
		return false, "", err
	}
	assets := assetURLs(rel)
	if assets[frontAssetName] == "" {
		err := fmt.Errorf("发布 %s 未提供前端产物 %s，请更新镜像", rel.TagName, frontAssetName)
		failUpdataFetch("web", err)
		return false, "", err
	}
	binary := "iptv_" + arch
	return stageUpdata("web", rel, assets, apiSumsName, [][2]string{
		{binary, "iptv"},
		{frontAssetName, frontAssetName},
	})
}

// DownloadAndVerifyEngine 下载引擎新版本到待安装区。
// 资产：engine_<arch> / SHA256SUMSEngine.txt ⇒ 落地 engine。
func DownloadAndVerifyEngine(arch string) (bool, string, error) {
	// 同 DownloadAndVerifyWeb：从请求进来那一刻起状态就是真的。
	SetUpdataProgress("engine", UpdataPhaseCheck, 1, "正在获取升级包信息…")
	rel, err := latestEngineRelease()
	if err != nil {
		failUpdataFetch("engine", err)
		logCheckErr(err)
		return false, "", err
	}
	binary := "engine_" + arch
	return stageUpdata("engine", rel, assetURLs(rel), engineSumsName, [][2]string{{binary, "engine"}})
}

// logCheckErr 只对真正的故障打"连接失败"。
// "列表拉到了、只是没有合格版本"（errNoMatchingRelease）现在成了常见情况 ——
// 发布位里可能只有脏发布，跳过之后就没有候选了。把它写成"请检查网络连接"
// 会把人往错的方向带。
func logCheckErr(err error) {
	if !errors.Is(err, errNoMatchingRelease) {
		log.Println("连接Github 检查失败，请检查网络连接")
	}
}
