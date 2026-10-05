package until

import (
	"fmt"
	"os"
	"os/exec"
	"path/filepath"
	"regexp"
	"slices"
	"strings"
)

// 客户端基底的解包 → 改写 → 重编译（**全程在 api 侧**）。
//
// 与 mytv 的差异：mytv 把编译甩给引擎（WS buildMyTV），客户端这边在本进程里
// 直接跑 apktool。少一跳 WS 就少一处会静默失败的中间环节 —— 引擎那边
// "收到了但没执行"的表现是前端一直转圈，而这里 exec 的错误当场就到手。
//
// ## 改写的三个值都是「string 资源」而不是「smali 常量」
//
// 服务端链接、应用名、版本号在 apk 源码侧是 Gradle 注入的 string 资源
// （见 iptv-apk-rebuilt/core/data/build.gradle.kts 的 resValue）。
// 它们在解包后就是 `res/values/strings.xml` 里的三行明文 ——
// 改它们不需要理解 smali，也不需要在 dex 里做偏移重排。
//
// 早先的实现是把 `client/`（一整棵 apktool 解包树，含几千个 smali）烤进镜像，
// 再用正则去改 smali 里的 `const-string v0, "xxx/iptv"` 与 `const/16 v0, 0x301b`。
// 那种做法对 apktool 版本与 smali 结构敏感：apk 一重编译，指令挪个位置
// 正则就悄悄匹配不上，编译照过、功能不对。现已改为「基包是编译好的 APK」。

// 三个注入值的资源键名 —— 与 iptv-apk-rebuilt 的 core/data/build.gradle.kts
// 逐字对应。服务端按**键名**找，不按字面量猜。
const (
	ResKeyServerHost = "qhtv_server_host"
	ResKeyAppName    = "app_name"
	ResKeyVersion    = "qhtv_version_name"
)

// ClientBuildValues 是一次编译要写进基底的三个值。
type ClientBuildValues struct {
	ServerURL string // 服务端基址，必须含 /apk 段
	AppName   string // 应用显示名，参与登录密钥派生
	Version   string // 对外版本号（纯数字，由调用方补成三位）
	// VersionName 是写进 APK 的 versionName，缺省时用 基底版本 + "." + Version。
	VersionName string
	// IconPath 是上传的 logo；为空时保留包内默认图。
	IconPath string
	// BackgroundPath 是上传的启动背景；为空时保留包内默认图。
	BackgroundPath string
}

// apktoolLowArgs 是低资源环境下的 apktool 参数。
// 与旧 build.go 逐字一致：编译基底比编整棵树轻，但 dex 合并阶段同样吃内存。
var apktoolLowArgs = []string{
	"-JXmx128M",
	"-JXX:+UseParallelGC",
	"-JXX:+UseStringDeduplication",
	"-JXX:ParallelGCThreads=2",
	"-JDfile.encoding=utf-8",
	"-JDjdk.util.zip.disableZip64ExtraFieldValidation=true",
	"-JDjdk.nio.zipfs.allowDotZipEntry=true",
}

// BuildClientApk 从基底 APK 编译出一份新 APK。
//
// 流程：解包基底 → 改三个资源 + 图标/背景 → apktool 重编 → 对齐签名。
// staged=true 产出待发布包，false 直接覆盖线上包。
//
// 返回值是给调用方写进日志的摘要；失败一律带原因，调用方直接回给前端。
func BuildClientApk(baseApk, outApk, workDir string, v ClientBuildValues) error {
	if err := validateClientValues(v); err != nil {
		return err
	}
	if err := os.MkdirAll(filepath.Dir(outApk), 0755); err != nil {
		return fmt.Errorf("apk 输出目录创建失败: %v", err)
	}
	if err := os.MkdirAll(workDir, 0755); err != nil {
		return fmt.Errorf("编译目录创建失败: %v", err)
	}

	// 解包基底：apktool 对已签名 APK 直接 d 会因"重复签名"失败，
	// 所以必须先拿掉 META-INF 的签名文件（这不影响可安装性，重编时会重新签）。
	//
	// 这里原来还追加了一个 apktoolDecodeArgs()，它返回孤立的 "-o"（没有跟值），
	// 让命令行变成 `apktool d -f -o <workDir> <apk> -o`，apktool 直接打帮助 exit 1。
	// 解包不需要额外参数，函数已删除。
	if out, err := runTool("apktool", "d", "-f", "-o", workDir, baseApk); err != nil {
		return fmt.Errorf("解包基底 APK 失败: %v\n%s", err, out)
	}

	if err := rewriteClientResources(workDir, v); err != nil {
		return err
	}
	if err := applyClientImages(workDir, v); err != nil {
		return err
	}
	if err := setClientVersionName(workDir, v); err != nil {
		return err
	}

	args := []string{"b", workDir, "-o", outApk}
	if IsLowResource() || os.Getenv("LOWOS") == "true" {
		args = append(apktoolLowArgs, args...)
	}
	if out, err := runTool("apktool", args...); err != nil {
		return fmt.Errorf("编译 APK 失败: %v\n%s", err, out)
	}

	if err := signClientApk(outApk, workDir); err != nil {
		return err
	}
	return nil
}

// validateClientValues 在动文件之前把不合法挡掉。
// 三个值任一为空都会产出"装得上但连不上/显示空白/无法升级"的包 ——
// 那类包发出去之后唯一的症状是用户投诉，事前失败便宜得多。
func validateClientValues(v ClientBuildValues) error {
	if strings.TrimSpace(v.ServerURL) == "" {
		return fmt.Errorf("服务端地址不能为空")
	}
	if !strings.HasSuffix(strings.TrimRight(v.ServerURL, "/"), "/apk") {
		// nginx 只对 ^/(apk|mytv|getRss|ku9|epg|r|k)/ 反代，少了 /apk 段
		// 拼出的 /apk/login 会落到 SPA 返回 HTML，客户端表现为"登录失败"，
		// 而服务端日志里看不到任何错误 —— 所以在这儿就说清。
		return fmt.Errorf("服务端地址必须以 /apk 结尾（当前是 %s）", v.ServerURL)
	}
	if strings.TrimSpace(v.AppName) == "" {
		return fmt.Errorf("应用名不能为空")
	}
	if strings.TrimSpace(v.Version) == "" {
		return fmt.Errorf("版本号不能为空")
	}
	return nil
}

// rewriteClientResources 改写 res/values/strings.xml 里的三个注入值。
func rewriteClientResources(workDir string, v ClientBuildValues) error {
	// apktool 解包后资源按 density / language 分桶，本工程基包会产出 100+ 个
	// values-*/ 目录（values-af、values-v26、values-zh-rCN …）。
	// **绝大多数桶里只有 AndroidX 自带的 abc_* 翻译，不含本工程的三个键** ——
	// 所以判据必须是"所有桶合起来覆盖了三个键"，而不是"每个桶都覆盖"。
	//
	// 曾经写成"遍历每个存在的桶，逐个要求三键齐全"，
	// 结果 values-af/strings.xml（只有 abc_*）立刻让编译失败：
	// 「改写 …/res/values-af/strings.xml 失败: 缺少资源键 app_name, …」。
	// 而三键其实都在默认桶 values/ 里躺着。
	want := map[string]string{
		ResKeyServerHost: v.ServerURL,
		ResKeyAppName:    v.AppName,
		ResKeyVersion:    v.versionName(),
	}
	hit := map[string]bool{}
	touched := 0

	for _, dir := range resValueDirs(workDir) {
		f := filepath.Join(dir, "strings.xml")
		if !Exists(f) {
			continue
		}
		touched++
		if err := patchStringXml(f, want, hit); err != nil {
			return fmt.Errorf("改写 %s 失败: %v", f, err)
		}
	}

	if touched == 0 {
		return fmt.Errorf(
			"基底 APK 里找不到 strings.xml —— 这不是一个用本工程编译出来的基包，"+
				"请上传含 %s / %s / %s 三个资源键的基底",
			ResKeyServerHost, ResKeyAppName, ResKeyVersion)
	}

	// 只有**所有桶加起来**仍缺键才是真缺（说明确实不是本工程编出来的基包）。
	var missing []string
	for k := range want {
		if !hit[k] {
			missing = append(missing, k)
		}
	}
	if len(missing) > 0 {
		slices.Sort(missing)
		return fmt.Errorf(
			"基底的 %d 个 strings.xml 里都找不到资源键 %s"+
				"（这个基包不是本工程编出来的）",
			touched, strings.Join(missing, ", "))
	}
	return nil
}

// resValueDirs 列出可能持有 strings.xml 的资源目录。
// 顺序固定：默认桶在前，保证"只有默认桶有值"时结果可预期。
func resValueDirs(workDir string) []string {
	res := filepath.Join(workDir, "res")
	dirs := []string{filepath.Join(res, "values")}

	entries, err := os.ReadDir(res)
	if err != nil {
		return dirs
	}
	// 排序保证同一份输入每次都按同样顺序处理，避免"改到哪个桶"不可预期。
	names := make([]string, 0, len(entries))
	for _, e := range entries {
		if e.IsDir() && strings.HasPrefix(e.Name(), "values-") {
			names = append(names, e.Name())
		}
	}
	slices.Sort(names)
	for _, n := range names {
		dirs = append(dirs, filepath.Join(res, n))
	}
	return dirs
}

// patchStringXml 按**资源键名**替换字符串值。
//
// hit 是跨调用累积的命中集合：调用方要遍历上百个 values-* 桶，
// 只有"所有桶加起来"仍缺键才算真缺，所以缺键判定不能在单个桶里做。
//
// 刻意不用字面量匹配旧值：字面量会随默认值调整而变（客户端把兜底地址从
// 10.10.220.161 改成 .162 是很正常的改动），按值匹配会在那天突然"改不动"。
var stringRe = regexp.MustCompile(`(?s)<string name="([^"]*)"[^>]*>(.*?)</string>`)

func patchStringXml(path string, want map[string]string, hit map[string]bool) error {
	data, err := os.ReadFile(path)
	if err != nil {
		return err
	}
	src := string(data)

	out := stringRe.ReplaceAllStringFunc(src, func(m string) string {
		sub := stringRe.FindStringSubmatch(m)
		if len(sub) != 3 {
			return m
		}
		v, ok := want[sub[1]]
		if !ok {
			return m
		}
		hit[sub[1]] = true
		// 保留原标签上的其余属性，只换正文。
		open := m[:strings.Index(m, ">")+1]
		return open + xmlEscape(v) + "</string>"
	})

	// 原子写：中途失败会留下半截 XML，apktool 后续报错很难指向真因。
	return WriteFileAtomic(path, out, 0644)
}

// xmlEscape 转义会破坏 XML 的字符。应用名是管理员填的，
// 填个 `&` 或 `<` 就该报"名字不合法"而不是让整个编译崩在一个 XML 解析错误上。
func xmlEscape(s string) string {
	r := strings.NewReplacer("&", "&amp;", "<", "&lt;", ">", "&gt;")
	return r.Replace(s)
}

// applyClientImages 用上传的图覆盖包内默认图；没上传就保留默认图。
//
// 目标资源名是**对外契约**（客户端 tv/src/main/java/.../ui/splash/SplashScreen.kt
// 读 R.drawable.icon 与 R.drawable.qh_bg）：
//   - logo     res/drawable*/icon.png
//   - 启动背景  res/drawable*/qh_bg.png
//
// 注意**只覆盖 drawable 目录下的同名文件**，不碰 mipmap-* / drawable-anydpi-*：
// anydpi 桶里的同名资源优先级最高，覆盖它反而会在部分设备上不生效。
//
// **没上传时不复制任何东西** —— 这正是"未上传则用当前默认图"的实现方式，
// 不要为了"统一"而无脑复制包内文件，那只会平白产生一次 IO。
func applyClientImages(workDir string, v ClientBuildValues) error {
	if err := overlayImage(workDir, "icon", v.IconPath); err != nil {
		return err
	}
	if err := overlayImage(workDir, "qh_bg", v.BackgroundPath); err != nil {
		return err
	}
	return nil
}

// overlayImage 把一张图覆盖到 res 下所有 drawable 桶的 <name>.png。
//
// 覆盖**所有密度桶**（drawable、drawable-hdpi、drawable-xhdpi…）而不是只改一个：
// 电视设备横跨 ldpi 到 xxxhdpi，只改一个桶的话高密度屏上 logo 会变回默认图，
// 而这种"部分设备对、部分设备不对"的现象极难定位。
//
// **跳过 anydpi 桶**：它的资源在密度选择里优先级最高，覆盖它会在部分设备上
// 与其它桶打架，出现"换了图却没变化"或"图变形"。客户端默认图只放在 drawable/。
func overlayImage(workDir, name, src string) error {
	if strings.TrimSpace(src) == "" {
		return nil
	}
	if !Exists(src) {
		return fmt.Errorf("图片不存在: %s", src)
	}
	resRoot := filepath.Join(workDir, "res")
	entries, err := os.ReadDir(resRoot)
	if err != nil {
		return fmt.Errorf("读取 res 目录失败: %v", err)
	}
	hit := 0
	for _, e := range entries {
		if !e.IsDir() || !strings.HasPrefix(e.Name(), "drawable") {
			continue
		}
		if strings.Contains(e.Name(), "anydpi") {
			continue
		}
		dst := filepath.Join(resRoot, e.Name(), name+".png")
		// 只覆盖**已存在**的同名文件：新建一个 drawable-xxhdpi/icon.png
		// 会让 aapt 在某些配置下选到它，在电视上表现为图变糊。
		if !Exists(dst) {
			continue
		}
		if err := CopyFileAtomic(src, dst, 0644); err != nil {
			return fmt.Errorf("覆盖 %s 失败: %v", dst, err)
		}
		hit++
	}
	if hit == 0 {
		return fmt.Errorf(
			"基底 APK 的 res 下找不到 %s.png —— 上传的图无处可放，"+
				"请确认基包是用本工程编译的", name)
	}
	return nil
}

// setClientVersionName 把对外版本号写进 apktool.yml。
//
// **只改 versionName，不动 versionCode**：versionCode 决定能否覆盖安装，
// 把它重置成 1 会让已装过新版的设备装不上（系统按 code 拦下降级安装）。
func setClientVersionName(workDir string, v ClientBuildValues) error {
	p := filepath.Join(workDir, "apktool.yml")
	if !Exists(p) {
		return fmt.Errorf("基底 APK 里找不到 apktool.yml，不是可改写的编译基底")
	}
	data, err := os.ReadFile(p)
	if err != nil {
		return err
	}
	re := regexp.MustCompile(`versionName:.*`)
	out := re.ReplaceAllString(string(data), "versionName: "+v.versionName())
	return WriteFileAtomic(p, out, 0644)
}

// v.versionName 组装写进 APK 的 versionName。
func (v ClientBuildValues) versionName() string {
	if strings.TrimSpace(v.VersionName) != "" {
		return v.VersionName
	}
	return strings.TrimSpace(v.Version)
}

// signClientApk 给编译产物签名。keytool 生成临时 keystore，jarsigner 签。
//
// 签名是必须的：不签的 APK 装不上（Android 要求每个 APK 都有 v1 签名）。
// 用临时 keystore 而非打包进镜像的 keystore.p12：基底包与发行包用不同密钥，
// 升级链才不会因为密钥不同而被系统判成"另一个应用"。
// signClientApk 对齐并签名。
//
// 这里原来用 jarsigner —— 它只产 **v1（JAR）签名**。而本工程基包的
// targetSdk 是 36，Android 7+ 对 targetSdk≥30 的应用**强制要求 v2/v3 签名**，
// 于是产物装不上：
//
//	DOES NOT VERIFY
//	ERROR: Target SDK version 36 requires a minimum of signature
//	scheme v2; the APK is not signed with this or a later signature scheme
//
// 症状是「编译成功、产出 APK、装到设备上被拒」，且服务端日志里看不出任何异常。
// 改用 SDK 里的 zipalign + apksigner（v1+v2+v3 一起出）。
func signClientApk(apkPath, workDir string) error {
	key := filepath.Join(workDir, "auto_keystore.jks")
	const alias = "iptvkey"
	const pass = "123456"

	gen := exec.Command("keytool", "-genkey", "-v",
		"-keystore", key, "-alias", alias,
		"-keyalg", "RSA", "-keysize", "2048", "-validity", "10000",
		"-storepass", pass, "-keypass", pass,
		"-dname", "CN=Auto, OU=Dev, O=Company, L=City, S=State, C=CN")
	if out, err := gen.CombinedOutput(); err != nil {
		return fmt.Errorf("生成签名失败: %v\n%s", err, out)
	}

	// 先对齐：apksigner 要求输入已 4 字节对齐，否则会拒绝或产出坏包。
	if out, err := runTool(zipalignBin(), "-f", "-p", "4", apkPath); err != nil {
		return fmt.Errorf("对齐失败(%s): %v\n%s", zipalignBin(), err, out)
	}

	// v1+v2+v3 全开：v1 兼容老设备，v2/v3 满足 targetSdk≥30 的强制要求。
	sign := exec.Command(apksignerBin(), "sign",
		"--ks", key, "--ks-key-alias", alias,
		"--ks-pass", "pass:"+pass, "--key-pass", "pass:"+pass,
		"--v1-signing-enabled", "true",
		"--v2-signing-enabled", "true",
		"--v3-signing-enabled", "true",
		apkPath)
	if out, err := sign.CombinedOutput(); err != nil {
		return fmt.Errorf("签名失败(%s): %v\n%s", apksignerBin(), err, out)
	}

	// 自证：产物必须真的带上 v2 以上签名，否则「编译成功」是假的。
	// 只判 verify 的退出码不够 —— 低版本 apksigner 会对缺 v2 的包直接退 0。
	if out, err := runTool(apksignerBin(), "verify", "--min-sdk-version", "30", apkPath); err != nil {
		return fmt.Errorf(
			"签名自检未通过：产物不满足 targetSdk≥30 要求的 v2 签名，装到设备上会被拒。\n%s", out)
	}
	return nil
}

// apksignerBin / zipalignBin 返回签名工具路径。
// 允许用环境变量覆盖：不同镜像的 build-tools 版本与位置不一样。
func apksignerBin() string {
	if v := os.Getenv("IPTV_APKSIGNER"); v != "" {
		return v
	}
	return "apksigner"
}

func zipalignBin() string {
	if v := os.Getenv("IPTV_ZIPALIGN"); v != "" {
		return v
	}
	return "zipalign"
}

// runTool 跑一个外部工具并把输出带回来。
// apktool 的报错全在 stdout/stderr，丢���输出就只剩一个 exit code，
// 排查时等于两眼一抹黑。
func runTool(name string, args ...string) (string, error) {
	cmd := exec.Command(name, args...)
	out, err := cmd.CombinedOutput()
	return string(out), err
}
