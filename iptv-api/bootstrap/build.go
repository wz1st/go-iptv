package bootstrap

import (
	"fmt"
	"iptv-api/dao"
	"iptv-api/until"
	"log"
	"os"
	"path/filepath"
	"slices"
	"strings"
	"sync/atomic"
	"time"
)

// 上传素材（图标 / 启动背景）的目录**不在这里定义**：两个壳各有一套，口径统一
// 在 until.ClientIconDir / until.ClientBgDir（连同对外 URL 前缀与包内资源名）。
// 曾经这里是单个 `const clientBgDir = "/config/images/bj"`，被两个壳共用 ——
// 那正是「上传的背景图同时进了两个壳」的根因。

// 两个壳各有一份**独立**的编译状态。
//
// 曾经是单个全局值，后果有两个，都属于"把无关的东西绑在一起"：
//  1. 骆驼壳编译期间，清和壳的设置页也跟着显示「正在打包中」—— 用户以为清和壳在编；
//  2. 两个壳互相拒绝发起编译（闸门 `== 1` 是同一个数）。
//
// 而两个壳的产物、基底、版本号本来就是各自独立的一整条链
// （见 until.ClientApkPath / ClientLtApkPath、dto.Config.Build / BuildLt），
// 状态没有理由共用。
//
// 命名上 Set/GetBuildStatus 保持**清和壳**的语义（历史调用点最多），
// 骆驼壳一律走 Set/GetBuildStatusLt。
var (
	buildStatusQh atomic.Value // 清和壳（Client.apk）
	buildStatusLt atomic.Value // 骆驼壳（Client_lt.apk）
)

func statusOf(v *atomic.Value) int64 {
	if x := v.Load(); x != nil {
		return x.(int64)
	}
	return 0 // 没有值时默认返回 0
}

func SetBuildStatus(status int64) { buildStatusQh.Store(status) }

func GetBuildStatus() int64 { return statusOf(&buildStatusQh) }

// SetBuildStatusLt / GetBuildStatusLt 是**骆驼壳**的编译状态。
func SetBuildStatusLt(status int64) { buildStatusLt.Store(status) }

func GetBuildStatusLt() int64 { return statusOf(&buildStatusLt) }

// FixedPackage 已下沉到 until 包（until.FixedPackage）。

// 产物落点**不再在这里定义**：OfficialAPKPath / StagedAPKPath / APKDownloadName
// 曾经是 bootstrap 自己拼的一份 `/config/app/<名>.apk`，而 service 层另有一份
// until.ClientApkPath —— 两份口径就是"编译成功、发布找不到包"那类事故的温床
// （2026-10-13 实测事故正是如此）。文件名的唯一定义处是 until.ClientApkFileName，
// 这里与 api/service 都调它。

// BuildAPK 编译客户端 APK。
//
// **编译基底是一份编译好的 APK**（镜像内 /app/client/Client.apk，或用户上传到
// /config/client 的那份），流程是「解包 → 改三个注入值 + 图标/背景 → 重编 → 签名」，
// 全部在本进程内完成，**不经引擎**。
//
// 早先的实现是把一整棵 apktool 解包树（`/client`，56MB）烤进镜像，再用正则去改
// smali 里的 const-string 与 const/16。那种做法对 smali 结构敏感：apk 一重编译，
// 指令挪个位置正则就悄悄匹配不上 —— 编译照过、功能不对。现已换成改 string 资源，
// 见 until/clientBuild.go。
func BuildAPK(staged bool) bool {
	SetBuildStatus(1) // 编译中
	defer SetBuildStatus(0)

	log.Println("开始编译客户端APK ...")
	cfg := dao.GetConfig()

	buildNo := cfg.Build.Version
	apkPath := until.ClientApkPath(cfg.Build.Name, false)
	if staged {
		buildNo = cfg.Build.NewVersion
		apkPath = until.ClientApkPath(cfg.Build.Name, true)
	}
	if buildNo == "" {
		log.Println("版本号为空，跳过编译")
		return false
	}

	baseApk := until.ClientBaseDir() + "/Client.apk"
	if !until.Exists(baseApk) {
		log.Println("找不到编译基底:", baseApk, "，请先上传或在线升级基底")
		return false
	}

	// 先把旧产物挪走：apktool 写失败时会留下半截 APK，
	// 而它会顶替掉线上包的位置 —— 用户下一次点下载拿到的是编坏的包。
	_ = os.Remove(apkPath)

	base := until.GetClientBaseVersion()
	workDir := filepath.Join(os.TempDir(), fmt.Sprintf("client_build_%d", time.Now().UnixNano()))
	values := until.ClientBuildValues{
		ServerURL:   clientApkHost(cfg.ServerUrl),
		AppName:     cfg.Build.Name,
		Version:     buildNo,
		VersionName: until.FormatClientVersion(base, buildNo),
		// 没上传 logo / 背景时传空串，编译侧就保留包内默认图。
		// 素材目录与包内资源名都按**清和壳**取 —— 与骆驼壳各一套。
		IconPath:       clientIconPath(until.ShellQh),
		BackgroundPath: clientBackgroundPath(until.ShellQh),
		BgDrawable:     until.ClientBgDrawable(until.ShellQh),
	}

	err := until.BuildClientApk(baseApk, apkPath, workDir, values)
	// 工作目录一定要清：apktool 的中间产物能到几百 MB，
	// 容器磁盘被塞满会让后面所有写盘失败（连日志都写不进去）。
	defer os.RemoveAll(workDir)
	if err != nil {
		log.Println("客户端APK编译失败:", err)
		return false
	}

	log.Println("客户端APK编译完成:", apkPath)
	return true
}

// BuildLuotuoAPK 编译「骆驼壳」客户端 APK —— 与 BuildAPK 同构，但基底、产品名、
// 版本号各自独立（见 until.ClientLt* / dto.Config.BuildLt）。
//
// **编译接口（BuildClientApk）是两套壳共用的**：只换基底文件与注入值，解包→改写
// →重编→签名的流程一字不改。这就是"仅 apk 的接口共用"的含义。
//
// 唯一的差异是**地址注入点**：清和壳的地址是 Gradle 写进 strings.xml 的资源键，
// 而骆驼壳（ez 壳）把它写成 smali 的 const-string —— 所以这里要多传
// HostInSmali: true，由 BuildClientApk 走 patchClientHostInSmali。
func BuildLuotuoAPK(staged bool) bool {
	SetBuildStatusLt(1) // 编译中（骆驼壳自己的那一份，不挡清和壳）
	defer SetBuildStatusLt(0)

	log.Println("开始编译骆驼壳客户端APK ...")
	cfg := dao.GetConfig()

	buildNo := cfg.BuildLt.Version
	apkPath := until.ClientLtApkPath(cfg.BuildLt.Name, false)
	if staged {
		buildNo = cfg.BuildLt.NewVersion
		apkPath = until.ClientLtApkPath(cfg.BuildLt.Name, true)
	}
	if buildNo == "" {
		log.Println("骆驼壳版本号为空，跳过编译")
		return false
	}

	baseApk := until.ClientLtBaseDir() + "/Client_lt.apk"
	if !until.Exists(baseApk) {
		log.Println("找不到骆驼壳编译基底:", baseApk, "，请先上传或在线升级基底")
		return false
	}

	// 先把旧产物挪走：apktool 写失败时会留下半截 APK，而它会顶替掉线上包的位置。
	_ = os.Remove(apkPath)

	base := until.GetClientLtBaseVersion()
	workDir := filepath.Join(os.TempDir(), fmt.Sprintf("luotuo_build_%d", time.Now().UnixNano()))
	values := until.ClientBuildValues{
		// 骆驼壳的基址比清和壳多一层 /lt —— 它是**路由级的身份标识**，
		// 服务端据此认出调用方、挑对应的登录密钥（见 api.isLuotuoShell）。
		ServerURL:      clientApkHostLt(cfg.ServerUrl),
		AppName:        cfg.BuildLt.Name,
		Version:        buildNo,
		VersionName:    until.FormatClientVersion(base, buildNo),
		IconPath:       clientIconPath(until.ShellLt),
		BackgroundPath: clientBackgroundPath(until.ShellLt),
		// 背景资源名是**按壳分**的：骆驼壳基底里叫 ez_bg，没有清和壳那个 qh_bg。
		// 写成同一个名字的后果不是"图不对"，而是 overlayImage 找不到同名文件
		// 直接报错 ⇒ 只要后台上传过背景图，骆驼壳就再也编不出来。
		BgDrawable: until.ClientBgDrawable(until.ShellLt),
		// 骆驼壳（ez 壳）的地址写在 smali 的 const-string 里，不是 string 资源 ——
		// 基底里根本没有 qhtv_server_host / qhtv_version_name 两个键。
		HostInSmali: true,
	}

	err := until.BuildClientApk(baseApk, apkPath, workDir, values)
	defer os.RemoveAll(workDir)
	if err != nil {
		log.Println("骆驼壳客户端APK编译失败:", err)
		return false
	}

	log.Println("骆驼壳客户端APK编译完成:", apkPath)
	return true
}

// clientApkHost 把配置里的站点基址归一成客户端要的那个地址。
//
// 两个字段语义不同，不能直接共用：
//   - cfg.ServerUrl 是**站点根**（如 http://host:8090），服务端自己拼 "/apk/channels"；
//   - 注入客户端的 qhtv_server_host 必须是**站点上的 apk 路径**（带 /apk 段），
//     客户端在这后面直接接 /login、/getver。
//
// 之前是把 cfg.ServerUrl 原样传下去，于是只有"配置里手写了 /apk"时才编得过；
// 而配置一旦带 /apk，服务端自己拼出来的 dataurl 就变成 /apk/apk/channels 直接 404。
// 两头互斥 ⇒ 只能在这里归一：缺就补，已有就不重复加。
func clientApkHost(serverURL string) string {
	trimmed := strings.TrimRight(strings.TrimSpace(serverURL), "/")
	if trimmed == "" {
		return ""
	}
	if strings.HasSuffix(trimmed, "/apk") {
		return trimmed
	}
	return trimmed + "/apk"
}

// clientApkHostLt 是骆驼壳的基址：在 clientApkHost 之上再挂一层 /lt。
//
// 这一层不是装饰：两个壳的登录密钥不同（应用名 + 包名都不同），服务端必须能
// **只从路由**认出调用方。`/apk/lt` 这个段就是那个标识（见 api.isLuotuoShell）。
//
// 前缀挂在最后而不是塞成查询参数，是因为骆驼壳那边还会自己接 `/login`、
// `/getver`、`/getepg`、`/weather`，前缀式的拼法天然对；而查询参数在
// `n + "/login"` 这种拼法里加不进去（旧包就是靠 `?shell=lt` 兜着的）。
func clientApkHostLt(serverURL string) string {
	trimmed := strings.TrimRight(strings.TrimSpace(serverURL), "/")
	if trimmed == "" {
		return ""
	}
	// 幂等：配置里若已经手写了 /apk/lt，就不要再叠一层（会得到 /apk/lt/apk/lt，
	// 客户端拿到的是 SPA 的 HTML，表现为"登录失败"而服务端日志无异常）。
	if strings.HasSuffix(trimmed, "/apk/lt") {
		return trimmed
	}
	return clientApkHost(trimmed) + "/lt"
}

// clientIconPath 返回某个壳上传的 logo；没上传返回空串（保留包内默认图）。
func clientIconPath(shell string) string {
	p := until.ClientIconFile(shell)
	if !until.Exists(p) {
		return ""
	}
	return p
}

// clientBackgroundPath 返回某个壳要打进包的启动背景；没上传返回空串。
//
// **按壳取目录**：两个壳的背景图池是分开的（until.ClientBgDir），这里只读自己
// 那一份 —— 否则用户在清和壳上传的图会出现在骆驼壳的包里。
//
// 刻意**不**在这里随机挑图（运行期下发背景走 service.GetBg 的随机策略）：
// 打进包里的那张必须是稳定的一张，否则同一版 APK 在不同机器上 logo/背景不一致，
// 用户会当成"发了不同的版本"。
func clientBackgroundPath(shell string) string {
	dir := until.ClientBgDir(shell)
	if !until.Exists(dir) {
		return ""
	}
	picks, err := filepath.Glob(filepath.Join(dir, "*.png"))
	if err != nil || len(picks) == 0 {
		return ""
	}
	// 按文件名排序取第一个：与 GetBg 的随机策略相反，编译期要的是可复现。
	slices.Sort(picks)
	return picks[0]
}
