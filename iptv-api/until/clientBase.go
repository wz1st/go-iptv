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
//
// 读出来就**归一成三段**（走 BaseVersionFromRelease），不原样返回。
// 这不是洁癖：磁盘上已经躺过被污染的基底 —— 线上出现过 6 段的
// `1.1.0.1.1.0`，成因是早期把完整版本号当基底写进了 Version_client。
// 原样返回会让它一路拼进每个对外版本号（1.1.0.1.1.0.001），且**每点一次
// 编译再多叠一层**，界面上看着像随机出错。
//
// 归一后污染值当场退成 1.1.0，与镜像里出厂那份（CI 有「标签与 Version_client
// 逐字比对」门禁，写的一定是三段）重新对齐。
// 归一不了时返回空串 —— 调用方会退回到"从 APK 的 versionName 反推"那条路，
// 而那也返回空时就是真出问题了，宁可空着也不要返回一个会被继续叠的脏串。
func GetClientBaseVersion() string {
	return BaseVersionFromRelease(ReadFile(ClientBaseDir() + "/" + clientVersionAsset))
}

// FormatClientVersion 拼客户端对外版本号：基底版本 + "." + 三位编译号。
// 与 mytv 的 FormatMytvVersion 同一形状，但**基底与序列各自独立** ——
// 两条版本序列互不干涉（换基底不需要重新编译客户端，反之亦然）。
//
// buildNo 必须是**纯编译号**（001）。这里对"传进来的是完整版本号"做归一，
// 因为线上曾出现过 8 段的 `1.0.0.1.0.0.001`：前端把完整串当编译号传进来，
// 这里再拼一次基底就多叠一层，**每点一次编译多叠一层**，且不报错。
// 归一逻辑与 mytv 共用 PadBuildNo（同一入口），避免两条链路各修一次。
func FormatClientVersion(base, buildNo string) string {
	if base == "" || strings.TrimSpace(buildNo) == "" {
		return ""
	}
	no := PadBuildNo(buildNo)
	if no == "" {
		return ""
	}
	return base + "." + no
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

// 两个客户端壳的**文件名标记**。产物、下载地址、浏览器存盘名一律按
// `<应用名>-<壳>[-new][-<版本>].apk` 拼 —— 与 MyTV 早就在用的
// `<名>-mytv.apk` / `<名>-mytv-new.apk` 是同一套形状。
//
// 为什么**必须**带壳标记：两个壳的「应用名」是用户在后台各自填的，没有任何约束
// 保证不重名（都叫「电视」是常态）。不带标记时两个壳的产物在 /config/app 下就是
// 同一个文件 —— 后编的壳直接覆盖先编的，下载页两个按钮指向同一个包，
// 而"线上那个包到底是哪个壳的"再也说不清。编译与下载各自独立这条承诺，
// 只有文件名分开才真正成立。
const (
	ShellQh = "qh" // 清和壳：基底 client/Client.apk（包名 xyz.qingh.qhtv）
	ShellLt = "lt" // 骆驼壳：基底 client/Client_lt.apk（包名 cn.dsmtv.player）
)

// ClientApkFileName 是产物的**落盘文件名**（也是 /app 静态目录下的对外文件名）：
// `<应用名>-<壳>.apk`，待发布包为 `<应用名>-<壳>-new.apk`。
func ClientApkFileName(name, shell string, staged bool) string {
	suffix := "-" + shell + ".apk"
	if staged {
		suffix = "-" + shell + "-new.apk"
	}
	return name + suffix
}

// ClientApkSaveName 是浏览器**存盘**用的文件名：`<应用名>-<壳>[-<版本>].apk`。
//
// 与落盘名刻意不同（多带版本号，方便用户区分先后），但**壳标记必须一致** ——
// 否则两个壳在用户本地又变回同名文件。
func ClientApkSaveName(name, shell, version string) string {
	if version == "" {
		return name + "-" + shell + ".apk"
	}
	return name + "-" + shell + "-" + version + ".apk"
}

// ClientApkLabel 是下载按钮上给用户**看**的文案：`<应用名>[-<版本>].apk`，
// **不带壳标记**。
//
// 与 ClientApkSaveName 只差一个 `-<壳>` 段，但两者服务的是不同的东西：
//   - 存盘名（:download / 浏览器另存）必须带壳标记 —— 两个壳重名时，
//     用户本地才不会出现两个同名文件，也才看得出下的是哪一个壳；
//   - 按钮文案不带 —— 用户在这一屏关心的是"这个包是什么版本"，
//     而不是壳的内部代号；`清和电视-qh-1.3.2.001.apk` 这种一串代号摆在按钮上
//     是把内部命名泄漏给了用户。
//
// 壳本身已经由按钮上的「（清和壳）/（骆驼壳）」和按钮分组说清楚了。
func ClientApkLabel(name, version string) string {
	if version == "" {
		return name + ".apk"
	}
	return name + "-" + version + ".apk"
}

// ClientApkURL / ClientLtApkURL 是产物的对外下载路径（路由把 /app 映射到 /config/app）。
func ClientApkURL(name string, staged bool) string {
	return "/app/" + ClientApkFileName(name, ShellQh, staged)
}

func ClientLtApkURL(name string, staged bool) string {
	return "/app/" + ClientApkFileName(name, ShellLt, staged)
}

// ClientApkPathOf / ClientApkURLOf 是上面四个的通用形式：壳标记是**变量**时用
// （例如公开下载页要按同一个函数拼两个壳的项）。
func ClientApkPathOf(name, shell string, staged bool) string {
	return filepath.Join("/config/app", ClientApkFileName(name, shell, staged))
}

func ClientApkURLOf(name, shell string, staged bool) string {
	return "/app/" + ClientApkFileName(name, shell, staged)
}

// ClientApkPath 返回**清和壳**产物在持久卷里的路径。
// staged=true 取待发布包（编译产物），false 取线上包。
//
// 这里是文件名的**唯一定义处**：编译侧（bootstrap.BuildAPK）与发布/轮询侧
// （service.ClientApkInfo）都调它，不再各自拼字符串 —— 两边一旦分叉，
// 症状是"编译成功但发布说包不存在"，每一步的返回值看上去都正常。
func ClientApkPath(name string, staged bool) string {
	return ClientApkPathOf(name, ShellQh, staged)
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

// ============================================================================
// 骆驼壳（独立客户端基底，与 清和壳 两套资产互不干涉）
//
// 刻意不复用上面的 清和壳 函数：两者资产名、版本文件、发布标签前缀都不一样，
// 抽成"带 shell 参数的公共实现"后调用方要多传参数，而参数传错就是**静默选错基底**
// （表现为"在线升级装了个别的壳"）。各自一份、逐字对照，比省下的重复更安全。
//
// 资产名（与 CI 逐字契约）：
//   - Client_lt.apk      编译基底 APK
//   - Version_client_lt  基底版本，形如 1.0.0
// 发布标签前缀：luotuo-vX.Y.Z（见 until/clientOnline.go）。
// 产品名固定 Client_lt（见 bootstrap.BuildLuotuoAPK），下载地址 /app/Client_lt.apk。
// ============================================================================

const (
	clientLtBaseAsset    = "Client_lt.apk"
	clientLtVersionAsset = "Version_client_lt"
)

// PubClientLtBaseFile 记录"线上骆驼壳包编译时所用的基底版本"。
func PubClientLtBaseFile() string { return ClientUserDir + "/PubBase_lt" }

var (
	clientLtFactoryPkgOnce sync.Once
	clientLtFactoryPkg     string
)

// ClientLtBaseDir 返回骆驼壳当前生效的基底目录：用户上传优先，没有才用镜像自带。
func ClientLtBaseDir() string {
	if ReadFile(ClientUserDir+"/"+clientLtVersionAsset) != "" &&
		Exists(ClientUserDir+"/"+clientLtBaseAsset) {
		return ClientUserDir
	}
	return ClientDir
}

// GetClientLtBaseVersion 读骆驼壳基底版本号（用户上传目录优先，回落镜像）。
func GetClientLtBaseVersion() string {
	return BaseVersionFromRelease(ReadFile(ClientLtBaseDir() + "/" + clientLtVersionAsset))
}

// ClientPublishedLtBase 返回线上骆驼壳包所用的基底版本；没有记录时回落当前基底。
func ClientPublishedLtBase() string {
	if v := ReadFile(PubClientLtBaseFile()); v != "" {
		return v
	}
	return GetClientLtBaseVersion()
}

// SetClientPublishedLtBase 记录线上骆驼壳包用的是哪版基底（发布时写一次）。
func SetClientPublishedLtBase(base string) error {
	if base == "" {
		return nil
	}
	if err := os.MkdirAll(ClientUserDir, 0755); err != nil {
		return err
	}
	return WriteFileAtomic(PubClientLtBaseFile(), base+"\n", 0644)
}

// ClientLtApkPath 返回骆驼壳产物在持久卷里的路径。staged=true 取待发布包。
//
// 文件名取 cfg.BuildLt.Name（后台「应用名」）+ `-lt` 标记，与清和壳的
// ClientApkPath 同口径（同走 ClientApkFileName）—— 编译侧 BuildLuotuoAPK
// 落的就是它，两边必须是同一个名字。
//
// 早先这里硬编码常量 "Client_lt"：只要应用名不是 Client_lt（那是常态，例如
// 「骆驼电视」），就会编译成功却**发布不了** —— 产物落在
// /config/app/骆驼电视-new.apk，而发布去找 /config/app/Client_lt-new.apk，
// 报「待发布的安装包不存在」；轮询那张卡片也一并读成 0 MB / 未编译。
func ClientLtApkPath(name string, staged bool) string {
	return ClientApkPathOf(name, ShellLt, staged)
}

// ClientLtFactoryPackage 返回镜像出厂骆驼壳基包（/app/client/Client_lt.apk）的包名。
func ClientLtFactoryPackage() string {
	clientLtFactoryPkgOnce.Do(func() {
		info, err := ProbeApk(ClientDir + "/" + clientLtBaseAsset)
		if err != nil {
			return
		}
		clientLtFactoryPkg = info.Package
	})
	return clientLtFactoryPkg
}
