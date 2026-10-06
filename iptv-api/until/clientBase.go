package until

import (
	"os"
	"path/filepath"
	"strings"
	"sync"
)

// 客户端编译基底（与 mytv 同一套机制，但**流程全在 api 侧**，不经引擎）。
//
// 与 mytv 的差异只有一处，且是刻意的：mytv 的编译由引擎执行（WS `buildMyTV`），
// 客户端这边直接在本进程里跑 apktool —— 客户端没有"引擎"这个依赖，
// 少一跳 WS 就少一处可能静默失败的中间环节。
//
// 基底构成（两个文件，与 CI 逐字一致）：
//   - Client.apk        编译基底 APK
//   - Version_client    基底版本，形如 1.0.0（从 APK 的 versionName 前三段取）
//
// 远端发布序列是 client-vX.Y.Z（见 .github/workflows/client-release.yml），
// 与 api 的 vX.Y.Z、引擎的 engine-vX.Y.Z、mytv 的 mytv-vX.Y.Z 互不干扰。

// ClientDir 是客户端基包在镜像里的出厂落点。
const ClientDir = "/app/client"

// ClientUserDir 是**用户上传**的基包落点，放在持久卷里。
const ClientUserDir = "/config/client"

// 基底的两个资产文件名。**这是与 CI 的逐字契约，改名会让在线升级静默失效**
// （下载阶段才报"缺资产"，表现为"点在线升级没反应"）。
const (
	clientBaseAsset    = "Client.apk"
	clientVersionAsset = "Version_client"
)

// PubClientBaseFile 记录"线上包编译时所用的基底版本"。
func PubClientBaseFile() string { return ClientUserDir + "/PubBase" }

var (
	clientFactoryPkgOnce sync.Once
	clientFactoryPkg     string
)

// ClientBaseDir 返回当前生效的基底目录：用户上传的优先，没有才用镜像自带的。
func ClientBaseDir() string {
	if ReadFile(ClientUserDir+"/"+clientVersionAsset) != "" &&
		Exists(ClientUserDir+"/"+clientBaseAsset) {
		return ClientUserDir
	}
	return ClientDir
}

// GetClientBaseVersion 读基底版本号（用户上传目录优先，回落镜像）。
func GetClientBaseVersion() string {
	return strings.TrimSpace(ReadFile(ClientBaseDir() + "/" + clientVersionAsset))
}

// FormatClientVersion 拼客户端对外版本号：基底版本 + "." + 三位编译号。
// 与 mytv 的 FormatMytvVersion 同一形状，但**各自独立** —— 两条版本序列
// 互不干涉（基底换版不需要重新编译客户端，反之亦然）。
//
// buildNo 必须是**纯编译号**（001）。这里对"传进来的是完整版本号"做归一，
// 因为线上曾出现过 8 段的 `1.0.0.1.0.0.001`：前端把完整串当编译号传进来，
// 这里再拼一次基底就多叠一层，**每点一次编译多叠一层**，且不报错。
// 归一后取末段数字（001），存量脏数据不会被继续放大。
func FormatClientVersion(base, buildNo string) string {
	if base == "" || strings.TrimSpace(buildNo) == "" {
		return ""
	}
	no := strings.TrimSpace(buildNo)
	// 只取结尾那一段数字：兼容误传完整版本号（1.0.0.001 → 001）。
	if idx := strings.LastIndex(no, "."); idx >= 0 {
		no = no[idx+1:]
	}
	return base + "." + PadBuildNo(no)
}

// ClientPublishedBase 返回线上包所用的基底版本；没有记录时回落当前基底。
func ClientPublishedBase() string {
	if v := ReadFile(PubClientBaseFile()); v != "" {
		return v
	}
	return GetClientBaseVersion()
}

// SetClientPublishedBase 记录线上包用的是哪版基底（发布时写一次）。
func SetClientPublishedBase(base string) error {
	if base == "" {
		return nil
	}
	if err := os.MkdirAll(ClientUserDir, 0755); err != nil {
		return err
	}
	return WriteFileAtomic(PubClientBaseFile(), base+"\n", 0644)
}

// ClientApkPath 返回客户端产物在持久卷里的路径。
// staged=true 取待发布包（编译产物），false 取线上包。
func ClientApkPath(name string, staged bool) string {
	suffix := ".apk"
	if staged {
		suffix = "-new.apk"
	}
	return filepath.Join("/config/app", name+suffix)
}

// IsApkName 判断文件名是不是一个 APK（上传接口用）。
func IsApkName(name string) bool {
	return strings.EqualFold(filepath.Ext(name), ".apk")
}

// BaseVersionFromRelease 从一个 APK 的 versionName 里取基底版本。
//
// 与 mytv 的 BaseVersionFromVersionName **规则不同**：mytv 的 versionName 是
// `基底.三位编译号`（1.2.2.001），所以要剥掉末段；客户端的 versionName 就是
// 基底版本本身（1.0.0），直接用。写成同一个函数加参数只会让调用处
// 传错一个 bool，而传错的后果是"版本号显示成 1.0.0.001"这类看不懂的东西。
func BaseVersionFromRelease(versionName string) string {
	v := strings.TrimSpace(versionName)
	if v == "" {
		return ""
	}
	// 允许发布者写成 1.0.0.001 这种四段（与 mytv 习惯一致），取前三段。
	if parts := strings.Split(v, "."); len(parts) > 3 {
		v = strings.Join(parts[:3], ".")
	}
	if !isThreeNumericSegments(v) {
		return ""
	}
	return v
}

// ClientFactoryPackage 返回镜像出厂基包（/app/client/Client.apk）的包名。
// 上传基包时用它做准入校验 —— **只接受指定包名**，否则编译出来的包
// 与服务端 `until.FixedPackage` 的密钥派生契约对不上，登录会解出乱码。
//
// 与 MytvFactoryPackage 同构：探测一次就缓存。出厂基包在镜像里不变，
// 每次上传都跑一遍 aapt2 纯属浪费（探测本身要起进程）。
func ClientFactoryPackage() string {
	clientFactoryPkgOnce.Do(func() {
		info, err := ProbeApk(ClientDir + "/" + clientBaseAsset)
		if err != nil {
			return
		}
		clientFactoryPkg = info.Package
	})
	return clientFactoryPkg
}
