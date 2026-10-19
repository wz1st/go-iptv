package until

import (
	"bytes"
	"fmt"
	"iptv-api/dto"
	"log"
	"os"
	"os/exec"
	"path/filepath"
	"regexp"
	"slices"
	"strings"
)

// LuotuoServerURL 返回骆驼壳该用的站点根。
//
// ★ 两个壳的地址**各存一份**（Config.ServerUrlLt / Config.ServerUrl）——
// 两个壳的用户群常常不同，一个填内网、另一个填外网是常态；共用一个字段
// 会出现「在骆驼壳页改地址，把清和壳的地址也改掉」，编出来的清和壳包里
// 带着骆驼壳的地址，客户端连不上。
//
// **空值回退到 ServerUrl**：加这个键之前的老配置只有一份，直接判空会让
// 升级后骆驼壳编译出空地址。这个回退口径是**编译与页面显示共用的唯一实现**
// （bootstrap 与 spaDataApi 都调它）—— 两边各写一份就会出现「页面显示 A、
// 编译用 B」，用户看着"我明明填对了"却连不上。
func LuotuoServerURL(cfg *dto.Config) string {
	if cfg == nil {
		return ""
	}
	if strings.TrimSpace(cfg.ServerUrlLt) != "" {
		return cfg.ServerUrlLt
	}
	return cfg.ServerUrl
}

// 客户端基底的解包 → 改写 → 重编译（**全程在 api 侧**）。
//
// 与 mytv 的差异：mytv 把编译甩给引擎（WS buildMyTV），客户端这边在本进程里
// 直接跑 apktool。少一跳 WS 就少一处会静默失败的中间环节 —— 引擎那边
// "收到了但没执行"的表现是前端一直转圈，而这里 exec 的错误当场就到手。
//
// ## 改写点：清和壳走 string 资源，骆驼壳的地址只能在 smali 上改
//
// 清和壳（Kotlin 壳）的服务端链接、应用名、版本号在源码侧是 Gradle 注入的
// string 资源（见 iptv-apk-rebuilt/core/data/build.gradle.kts 的 resValue）。
// 解包后就是 `res/values/strings.xml` 里的三行明文 —— 改它们不需要理解 smali，
// 也不需要在 dex 里做偏移重排。
//
// 骆驼壳（ez 壳，来源 client/ 的 apktool 解包树）不同：它只有 `app_name` 是
// string 资源，地址是 SplashActivity 的 const-string 字面量。所以对它**必须**
// 改 smali（见 patchClientHostInSmali）。这是无法回避的 —— 该基底里根本没有
// qhtv_server_host 这个键。
//
// 早先的实现是把 `client/`（一整棵 apktool 解包树，含几千个 smali）烤进镜像，
// 再用正则去改 smali 里的 `const-string v0, "xxx/iptv"` 与 `const/16 v0, 0x301b`，
// 且**不判命中数**：正则匹配不上时编译照过、包指向写死的地址。
// 现在两套壳都改成「基包是编译好的 APK」，且任何替换都必须命中才放行。

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
	// BgDrawable 是**包内**要被 BackgroundPath 覆盖掉的资源名 —— 两个壳不同
	// （清和壳 qh_bg、骆驼壳 ez_bg），所以必须由调用方按壳传进来，不能在这里写死。
	// 取 until.ClientBgDrawable(shell)。
	//
	// BackgroundPath 非空而本字段为空时，编译会**当场失败**而不是静默跳过：
	// overlayImage 用的是"只覆盖已存在的同名文件"策略，名字缺失的后果是
	// 「上传了图、包里没换」，那类问题只能靠用户投诉才发现。
	BgDrawable string
	// HostInSmali 说明这份基底的服务端地址**不在 string 资源里**，
	// 而在 smali 的 const-string 字面量里（骆驼壳 = ez 壳就属于这种）。
	//
	// 两个壳的注入点不同，是因为基底来源不同：
	//   - 清和壳（Kotlin 壳，来源 iptv-apk 仓）用 Gradle resValue 把地址写进
	//     `res/values/strings.xml` 的 qhtv_server_host，改资源即可；
	//   - 骆驼壳（ez 壳，来源 client/ 的 apktool 解包树）地址是
	//     SplashActivity 的静态字段，只能改 smali。
	//
	// 为 true 时：资源侧只注入 app_name，地址改由 patchClientHostInSmali 处理，
	// 版本号仍走 apktool.yml（两条路都不依赖 string 资源）。
	HostInSmali bool
	// Shell 标明这是哪个壳（qh / lt，见 ShellQh / ShellLt）。
	//
	// 它决定两件事：签名用**哪一套固定 keystore**（见 ClientKeystorePath），
	// 以及日志/诊断时怎么称呼这次编译。留空按清和壳处理 ——
	// 两个壳的应用名允许重名，所以不能靠"名字像不像"去推断是哪个壳。
	Shell string
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

	// 编译前先算资源预算（可用内存 / CPU 占用率 / 核数）。
	// apktool 与 apksigner 都是 JVM，不设上限时堆上限按物理内存的 1/4 算 ——
	// 小内存机器上这一步会把系统可用内存抽干，连本服务一起被 OOM Killer 干掉，
	// 表现为「点了编译按钮、整个后台没响应」。算法见 buildBudget.go。
	budget := PlanBuildBudget(IsLowResource() || os.Getenv("LOWOS") == "true")
	log.Printf("%s", budget)
	if !budget.Ok() {
		return fmt.Errorf("系统内存不足，已终止编译：%s", budget.Reason)
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
	// 骆驼壳的地址在 smali 里，资源改写够不着它 —— 这一步必须跑，
	// 且命中数为 0 时直接失败（见 patchClientHostInSmali 的说明）。
	if v.HostInSmali {
		if err := patchClientHostInSmali(workDir, v.ServerURL); err != nil {
			return err
		}
	}
	if err := applyClientImages(workDir, v); err != nil {
		return err
	}
	if err := setClientVersionName(workDir, v); err != nil {
		return err
	}

	if out, err := runToolEnv(budget.JavaEnv(), "apktool", "b", workDir, "-o", outApk); err != nil {
		return fmt.Errorf("编译 APK 失败: %v\n%s", err, out)
	}

	if err := signClientApk(outApk, v.Shell, budget); err != nil {
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
	if !hasApkRoutePrefix(v.ServerURL) {
		// nginx 只对 ^/(apk|mytv|getRss|ku9|epg|r|k)/ 反代，少了 /apk 段
		// 拼出的 /apk/login 会落到 SPA 返回 HTML，客户端表现为"登录失败"，
		// 而服务端日志里看不到任何错误 —— 所以在这儿就说清。
		//
		// 两个壳都满足这个前缀，只是骆驼壳多一层 /lt（它是路由级的身份标识，
		// 服务端据此挑登录密钥，见 api.isLuotuoShell），所以判据是"两选一"。
		return fmt.Errorf("服务端地址必须以 /apk 或 /apk/lt 结尾（当前是 %s）", v.ServerURL)
	}
	if strings.TrimSpace(v.AppName) == "" {
		return fmt.Errorf("应用名不能为空")
	}
	if strings.TrimSpace(v.Version) == "" {
		return fmt.Errorf("版本号不能为空")
	}
	return nil
}

// hasApkRoutePrefix 判断基址是否落在客户端接口的路由前缀上。
//
// 两个壳各自的前缀：清和壳 `<站点>/apk`，骆驼壳 `<站点>/apk/lt`。
// 写成**后缀匹配**而不是 `strings.Contains(url, "/apk")`：后者会让
// `…/apk2`、`…/x/apk/` 这类地址也放过去，而它们同样会落到 SPA 上。
func hasApkRoutePrefix(serverURL string) bool {
	trimmed := strings.TrimRight(strings.TrimSpace(serverURL), "/")
	return strings.HasSuffix(trimmed, "/apk") || strings.HasSuffix(trimmed, "/apk/lt")
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
	//
	// 「该有哪些键」按壳区分：骆驼壳的地址与版本号都不走 string 资源
	// （见 ClientBuildValues.HostInSmali），它只有 app_name 必须命中。
	required := []string{ResKeyServerHost, ResKeyAppName, ResKeyVersion}
	if v.HostInSmali {
		required = []string{ResKeyAppName}
	}
	var missing []string
	for _, k := range required {
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

// patchClientHostInSmali 把解包树里 smali 的服务端地址换成 v。只有骆驼壳用得上。
//
// ## 为什么必须替换 smali
//
// ez 壳（骆驼壳）的地址不是 string 资源：它是 SplashActivity 的静态字段 `p`/`n`
// 以及 EPG、天气两处的字面量，三处都是 `const-string vN, "…/iptv…"`。
// Gradle 那套 resValue 注入在它身上不存在，改 strings.xml 一个字都到不了。
//
// ## 注入点怎么认：整条串必须**就是一个站点地址**
//
// 早期正则只写 `(const-string\s+[vp]\d+,\s*").*/iptv`，靠「以 /iptv 结尾」认地址。
// 骆驼壳基底的地址早已改成 `<站点>/apk/lt`（后面再接 /getepg、/weather），
// 于是那条正则一个真地址都匹配不到，转而命中了 `PlayerActivity$50` 里
// 「我在使用清和iptv管理系统,感觉非常好用 https://github.com/wz1st/iptv」
// 这条**分享文案** —— 命中数 1 ≠ 0，闸门放行，编出来的包仍指向基底里写死的
// 旧地址。表现是「编译成功、装得上、连不上」，而服务端日志毫无异常。
//
// 所以现在要求整条字面量满足两条：①以 `http://` 或 `https://` 开头（分享文案
// 以中文开头）；②路径以 `/iptv`（历史基址形态）或 `/apk/lt`（现行形态）结尾。
// 只认 `/iptv` 是历史兼容，仍可能有旧基底在用。
//
// ## 为什么替换后还要再扫一遍
//
// 替换正则认 `const-string` 与 `const-string/jumbo` 两种宽度（长地址在 dex 里
// 常被解码成 jumbo）。但基底地址仍可能以本函数没覆盖到的写法出现（例如换了
// 路径规则、或 apktool 用了别的解码形态），一旦这里没跟上，就会退化成
// 「命中 0 或命中错串」。所以替换后再用 findUnpatchedHostLiterals 全量扫一遍
// （它才是超集）：还有形如地址却没被换掉、且不以新 host 打头的 const-string 就
// 直接报错，把「编出一个指向别处的包」挡在编译阶段。
func patchClientHostInSmali(workDir, serverURL string) error {
	host := strings.TrimRight(strings.TrimSpace(serverURL), "/")
	if host == "" {
		return fmt.Errorf("服务端地址为空，无法注入骆驼壳的 smali 地址")
	}
	// 替换串里的 `$` 在 regexp 展开里有特殊含义，先转义。
	repl := strings.ReplaceAll(host, "$", "$$")
	// ${1} 是 const-string 的寄存器与引号部分；地址本体整条换成 host，
	// 后面跟的 /getepg、/weather 之类后缀原样保留。
	//
	// ★ 必须同时认 `const-string` 与 `const-string/jumbo`：长地址在 dex 里常被
	// 解码成 jumbo 指令（串索引越过 0xFFFF 时 apktool 即吐 jumbo），若只认
	// const-string 就会一个真地址都匹配不到、命中数 0 ⇒ 编译失败。反向断言那
	// 条正则（findUnpatchedHostLiterals）本来就认 jumbo，这里也必须跟上，否则
	// 替换面比扫描面窄，正好漏掉 jumbo 形态的真地址。
	re := regexp.MustCompile(`(const-string(?:/jumbo)?\s+[vp]\d+,\s*")https?://[^\s"]*?/(?:iptv|apk/lt)`)
	smaliDir := filepath.Join(workDir, "smali")
	hits := 0
	err := filepath.WalkDir(smaliDir, func(path string, d os.DirEntry, err error) error {
		if err != nil {
			return err
		}
		if d.IsDir() || filepath.Ext(path) != ".smali" {
			return nil
		}
		data, err := os.ReadFile(path)
		if err != nil {
			return err
		}
		out := re.ReplaceAll(data, []byte("${1}"+repl))
		if bytes.Equal(out, data) {
			return nil
		}
		hits++
		return os.WriteFile(path, out, 0644)
	})
	if err != nil {
		return err
	}
	if hits == 0 {
		return fmt.Errorf(
			"骆驼壳基底的 smali 里找不到服务端地址字面量（注入点应形如 " +
				"const-string v0, \"https://站点/apk/lt\"，历史形态为 \"…/iptv\"），" +
				"这不是一份可从 smali 注入地址的骆驼壳基底")
	}
	// 反向断言：还有「像地址却没被换掉」的 const-string，说明地址形态与本函数
	// 不同步 —— 这种包能编译、能安装，只是连的不是这个服务端。
	leftover := findUnpatchedHostLiterals(smaliDir, host)
	if len(leftover) > 0 {
		return fmt.Errorf(
			"骆驼壳基底的 smali 里还有 %d 处地址字面量没被替换成 %s，例如 %s；"+
				"这会编出指向别处的包", len(leftover), host, leftover[0])
	}
	return nil
}

// findUnpatchedHostLiterals 找「是站点地址、却不是以 host 打头」的 const-string。
//
// 判定用 `HasPrefix(lit, host)` 而不是 `lit == host`：骆驼壳的地址常带子路径
// （`<host>/getepg`、`<host>/weather`），那是**正确形态**，不是残留。
//
// 扫描用的正则是替换用的**超集**（多认 `const-string/jumbo`）。这一点是这道
// 断言的全部价值：只要扫得到、却没被替换成 host 打头的字面量，就说明基底的
// 地址写法超出了本函数的处理能力 —— 那张包能编译、能安装，只是连向别处。
func findUnpatchedHostLiterals(smaliDir, host string) []string {
	re := regexp.MustCompile(`const-string(?:/jumbo)?\s+[vp]\d+,\s*"(https?://[^\s"]*?/(?:iptv|apk/lt)[^"]*)"`)
	var out []string
	_ = filepath.WalkDir(smaliDir, func(path string, d os.DirEntry, err error) error {
		if err != nil || d.IsDir() || filepath.Ext(path) != ".smali" {
			return nil
		}
		data, err := os.ReadFile(path)
		if err != nil {
			return nil
		}
		for _, m := range re.FindAllSubmatch(data, -1) {
			if lit := string(m[1]); !strings.HasPrefix(lit, host) {
				out = append(out, lit)
			}
		}
		return nil
	})
	return out
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
// 目标资源名是**按壳分**的契约（见 ClientBuildValues.BgDrawable）：
//   - logo     res/drawable*/icon.png     （两壳同名）
//   - 启动背景  res/drawable*/<BgDrawable>.png
//     清和壳 qh_bg（SplashScreen.kt 读 R.drawable.qh_bg），
//     骆驼壳 ez_bg（styles.xml 的 android:windowBackground）。
//
// 注意**只覆盖 drawable 目录下的同名文件**，不碰 mipmap-* / drawable-anydpi-*：
// anydpi 桶里的同名资源优先级最高，覆盖它反而会在部分设备上不生效。
//
// **没上传时不复制任何东西** —— 这正是"未上传则用当前默认图"的实现方式，
// 不要为了"统一"而无脑复制包内文件，那只会平白产生一次 IO。
func applyClientImages(workDir string, v ClientBuildValues) error {
	if err := overlayImage(workDir, clientIconDrawable, v.IconPath); err != nil {
		return err
	}
	if strings.TrimSpace(v.BackgroundPath) == "" {
		return nil
	}
	if strings.TrimSpace(v.BgDrawable) == "" {
		return fmt.Errorf(
			"编译参数缺少启动背景资源名（ClientBuildValues.BgDrawable）——" +
				"两个壳的背景资源名不同（清和壳 qh_bg / 骆驼壳 ez_bg），" +
				"必须由调用方按壳传；传空会让上传的背景图无处可放")
	}
	return overlayImage(workDir, v.BgDrawable, v.BackgroundPath)
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

// signClientApk 给编译产物签名。
//
// ## 签名必须是**固定**的（见 clientKeystore.go 的完整说明）
//
// 早先这里是"每次编译现生成一个临时 keystore"，于是每编译一次签名就变一次。
// 表面看只是"多点一次多一个包"，实际后果是**在线升级整条链断死**：
// 签名不同 ⇒ 系统按签名认应用 ⇒ 客户端装新包被拒
// （INSTALL_FAILED_UPDATE_INCOMPATIBLE），只能卸载重装。
// 而且失败很安静：服务端日志写着"编译完成、发布成功"。
//
// 现在统一走该壳的固定 keystore（持久卷 /config/client/keystore_<shell>.p12），
// 缺则在安装/首次编译时固定一份，之后所有编译签名一致 ⇒ 覆盖安装成立。
func signClientApk(apkPath, shell string, budget BuildBudget) error {
	ks, alias, err := EnsureClientKeystore(shell)
	if err != nil {
		return err
	}

	// 先对齐：apksigner 要求输入已 4 字节对齐，否则会拒绝或产出坏包。
	//
	// **zipalign 的用法是 `zipalign [flags] <align> infile outfile` —— 必须给两个路径**，
	// 原地覆盖同一个文件会直接打 usage 并 exit 2（容器里是 2009 年那版，
	// 不支持 `-c` 之外的原地模式）。所以对齐到临时文件再换回来。
	aligned := apkPath + ".aligned"
	if out, err := runTool(zipalignBin(), "-f", "-p", "4", apkPath, aligned); err != nil {
		os.Remove(aligned)
		return fmt.Errorf("对齐失败(%s): %v\n%s", zipalignBin(), err, out)
	}
	// 换回原名：apksigner 与后续使用都按原路径找文件。
	if err := os.Rename(aligned, apkPath); err != nil {
		// 跨设备时 Rename 会失败（EXDEV），退回复制。
		if out, cerr := runTool("cp", "-f", aligned, apkPath); cerr != nil {
			return fmt.Errorf("对齐产物换回失败: %v / %v\n%s", err, cerr, out)
		}
		os.Remove(aligned)
	}

	// v1+v2+v3 全开：v1 兼容老设备，v2/v3 满足 targetSdk≥30 的强制要求。
	//
	// 口令/别名来自 clientKeystore.go 的「默认值 + 环境变量覆盖」，
	// 两者决定签名，必须长期稳定：改一次等于换一把钥匙，存量设备升不了级
	// 且不报任何错。
	pass := clientKeystorePass()
	if pass == "" {
		return fmt.Errorf("客户端签名口令为空：默认值与 %s 都没给出可用值", keystorePassEnv)
	}
	sign := exec.Command(apksignerBin(), "sign",
		"--ks", ks, "--ks-type", "PKCS12", "--ks-key-alias", alias,
		"--ks-pass", "pass:"+pass, "--key-pass", "pass:"+pass,
		"--v1-signing-enabled", "true",
		"--v2-signing-enabled", "true",
		"--v3-signing-enabled", "true",
		apkPath)
	// apksigner 同样是 JVM，堆上限必须跟着预算走 —— 只限制 apktool 的话，
	// 签名阶段照样能把系统内存抽干，前面留的 256M 余量等于没留。
	// 走 JAVA_TOOL_OPTIONS（HotSpot 直接读），不依赖 apksigner 脚本认哪个变量。
	if env := budget.JavaEnv(); env != nil {
		sign.Env = append(os.Environ(), env...)
	}
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
	return runToolEnv(nil, name, args...)
}

// runToolEnv 与 runTool 相同，但额外注入环境变量 —— 用来给 JVM 进程
// 传堆上限（JAVA_TOOL_OPTIONS 是 HotSpot 自己读的，不依赖被调程序怎么转发参数）。
func runToolEnv(env []string, name string, args ...string) (string, error) {
	cmd := exec.Command(name, args...)
	if len(env) > 0 {
		cmd.Env = append(os.Environ(), env...)
	}
	out, err := cmd.CombinedOutput()
	return string(out), err
}
