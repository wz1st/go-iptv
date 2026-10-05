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

// clientBgDir 是上传的启动背景图目录；编译期会挑其中一张打进包内。
const clientBgDir = "/config/images/bj"

var BuildStatus atomic.Value

func SetBuildStatus(status int64) {
	BuildStatus.Store(status)
}

func GetBuildStatus() int64 {
	v := BuildStatus.Load()
	if v == nil {
		return 0 // 没有值时默认返回 0
	}
	return v.(int64)
}

// FixedPackage 已下沉到 until 包（until.FixedPackage）。

// apk 的两个落点。
func OfficialAPKPath(name string) string { return "/config/app/" + name + ".apk" }

func StagedAPKPath(name string) string { return "/config/app/" + name + "-new.apk" }

// APK 的下载名（浏览器存盘用）与真实文件路径**刻意不同**。
func APKDownloadName(name, version string) string {
	if version == "" {
		return name + ".apk"
	}
	return name + "-" + version + ".apk"
}

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
	apkPath := OfficialAPKPath(cfg.Build.Name)
	if staged {
		buildNo = cfg.Build.NewVersion
		apkPath = StagedAPKPath(cfg.Build.Name)
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
		IconPath:       clientIconPath(),
		BackgroundPath: clientBackgroundPath(),
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

// clientIconPath 返回上传的 logo；没上传返回空串（保留包内默认图）。
func clientIconPath() string {
	p := "/config/images/icon/icon.png"
	if !until.Exists(p) {
		return ""
	}
	return p
}

// clientBackgroundPath 返回要打进包的启动背景；没上传返回空串。
//
// 刻意**不**在这里随机挑图（until.GetBg 会随机）：
// 打进包里的那张必须是稳定的一张，否则同一版 APK 在不同机器上 logo/背景不一致，
// 用户会当成"发了不同的版本"。
func clientBackgroundPath() string {
	if !until.Exists(clientBgDir) {
		return ""
	}
	picks, err := filepath.Glob(filepath.Join(clientBgDir, "*.png"))
	if err != nil || len(picks) == 0 {
		return ""
	}
	// 按文件名排序取第一个：与 GetBg 的随机策略相反，编译期要的是可复现。
	slices.Sort(picks)
	return picks[0]
}
