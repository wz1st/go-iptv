package until

import (
	"os"
	"path/filepath"
	"regexp"
	"strings"
	"testing"
)

// TestEngineConfigKeepsServerUrlLt 是**跨仓逐字对齐**的守卫。
//
// 背景（2026-10-14 修的逻辑错误）：两个壳的 APK 连接地址曾经共用一个
// `server_url`，于是「在骆驼壳页改地址会把清和壳的地址也改掉」。
// 修法是新增 `server_url_lt` 单独存骆驼壳那份 —— 而**引擎会整份重写
// config.yml**，只在一侧声明的键会被静默丢掉（症状：授权失效一次，
// 骆驼壳的地址就没了，下次编译出来连不上，而日志里一条错都没有）。
//
// 为什么必须写成测试而不是写进注释：`dao.Config` 是全量覆盖写盘，
// 「两侧字段是否一致」这件事在编译期与运行期都看不出来，只有
// 把两边的源码并排读一遍才知道。
//
// 判据用**字段声明本身**（mapstructure 标签 + Go 字段名）而不是
// YAML 往返 —— 后者会因为 Config 的零值处理而把「键存在但为空」判成通过。

// 收集某个 dto.Config 里 `key_name` → Go 字段名 的映射。
// 只抓顶层字段（缩进恰好一个 Tab），嵌套结构由各自的测试负责。
func collectTopLevelKeys(t *testing.T, src string) map[string]string {
	t.Helper()
	// 形如：\tServerUrlLt string `mapstructure:"server_url_lt" ...`
	re := regexp.MustCompile("(?m)^\t([A-Z]\\w*)\\s+\\S+\\s+`mapstructure:\"([^\"]+)\"")
	out := map[string]string{}
	for _, m := range re.FindAllStringSubmatch(src, -1) {
		out[m[2]] = m[1]
	}
	if len(out) == 0 {
		t.Fatalf("没从源码里解析出任何顶层字段（文件格式变了？）")
	}
	return out
}

// 引擎侧 dto 在本仓之外的路径（两仓是独立 module，不能互相 import）。
//
// ★ 候选路径 + 环境变量 `IPTV_ENGINE_DIR` 两者都试：
//   - 本机：两仓平级于 E:/test/iptv/，go test 的 cwd 是包目录 iptv-api/until/ ⇒ `../../..`
//   - 构建机：容器里两仓各挂在一个挂载点（实测 /src 与 /eng），相对路径全不通
var engineDtoCandidates = []string{
	filepath.FromSlash("../../../iptv-engine/dto/configDto.go"),
	filepath.FromSlash("../../../../iptv-engine/dto/configDto.go"),
	filepath.FromSlash("../../iptv-engine/dto/configDto.go"),
	// 容器里常见的绝对挂载点
	"/eng/dto/configDto.go",
	"/home/test/iptv-build/iptv-engine/dto/configDto.go",
}

// engineConfigSrc 取引擎侧 dto 源码；取不到时**跳过**这条测试。
//
// ★ 为什么是 Skip 而不是 Fail（2026-10-14 修正）：
// 这条测试住在 **api 仓**里，而两仓是独立 module。CI 跑 api 仓的流水线时
// 工作区**只有 api 一个仓**（引擎仓是另一个仓库，由另一个 workflow checkout），
// 所以"读不到引擎 dto"是**常态**，不是代码有问题。
// 之前写成 Fatal 的后果是：api 仓的 CI 每次都红，而红的原因与代码无关 ——
// 那等于把守卫变成了噪声，真出事时反而没人看它。
//
// ★ 仍然 Fail 的那条（不能退化）：**两侧都在时字段必须逐字一致**。
// 那才是真正要拦的事故（引擎整份重写 config.yml 会把单侧声明的键抹掉）。
//
// 想让这条在本地/CI 里真的生效就把引擎仓放到候选路径之一，
// 或设 `IPTV_ENGINE_DIR=/path/to/iptv-engine`（build_results.sh 已挂）。
func engineConfigSrc(t *testing.T) string {
	t.Helper()
	// 显式指定优先（构建机上用它，因为那里两仓不在同一目录树下）
	if dir := os.Getenv("IPTV_ENGINE_DIR"); dir != "" {
		engineDtoCandidates = append([]string{
			filepath.Join(dir, "dto", "configDto.go"),
		}, engineDtoCandidates...)
	}
	var tried []string
	for _, p := range engineDtoCandidates {
		if b, err := os.ReadFile(p); err == nil {
			return string(b)
		}
		tried = append(tried, p)
	}
	t.Skipf("读不到引擎 dto（试过 %v）—— 跳过跨仓对齐检查。"+
		"这在 api 仓的 CI 里是常态（两仓是独立 module，引擎仓不在同一个工作区）。"+
		"想让这条真的生效：把 iptv-engine 放到这些路径之一，或设 IPTV_ENGINE_DIR。",
		tried)
	return ""
}

// TestConfigFieldsAlignedAcrossRepos 钉住「api 与引擎的 dto.Config 顶层字段逐字一致」。
//
// 两边**必须完全相同**（不只是都包含某几个键）：多出来的键同样危险 ——
// 它在 api 侧存在、在引擎侧不存在 ⇒ 引擎重写时把它抹掉。
func TestConfigFieldsAlignedAcrossRepos(t *testing.T) {
	apiSrc, err := os.ReadFile(filepath.FromSlash("../dto/configDto.go"))
	if err != nil {
		t.Fatalf("读 api dto 失败: %v", err)
	}
	api := collectTopLevelKeys(t, string(apiSrc))
	eng := collectTopLevelKeys(t, engineConfigSrc(t))

	// 只比 yaml 键 —— Go 字段名在两侧可能有意不同（比如 mytv 侧叫别的），
	// 但写盘的键名必须一致才是真的。
	for k, v := range api {
		if _, ok := eng[k]; !ok {
			t.Errorf("引擎 dto.Config 缺字段 %q（api 侧 Go 字段 %s）—— "+
				"引擎会整份重写 config.yaml，这个键会被静默抹掉", k, v)
		}
	}
	for k, v := range eng {
		if _, ok := api[k]; !ok {
			t.Errorf("引擎 dto.Config 多出字段 %q（引擎侧 Go 字段 %s），api 侧没有 —— "+
				"引擎写进去的值永远读不出来", k, v)
		}
	}
	if t.Failed() {
		t.Log("改任何一侧的 Config 时，另一侧必须同步改（mapstructure 标签逐字一致）")
	}
}

// TestServerUrlLtIsSeparateFromServerUrl 是本轮那个逻辑错误的直接守卫：
// 两个壳的地址**必须是两个不同的字段**，不能又变回共用一个。
//
// 这条单测存在的意义：它不依赖另一侧仓库，纯靠"字段名不同 + yaml 键不同"就能判。
// 将来有人为了省事把骆驼壳改回读 cfg.ServerUrl，这条立刻红。
func TestServerUrlLtIsSeparateFromServerUrl(t *testing.T) {
	src, err := os.ReadFile(filepath.FromSlash("../dto/configDto.go"))
	if err != nil {
		t.Fatalf("读 dto 失败: %v", err)
	}
	s := string(src)

	// 键必须都在，且互不相同
	if !strings.Contains(s, `mapstructure:"server_url"`) {
		t.Error("dto.Config 缺 server_url（清和壳的地址）")
	}
	if !strings.Contains(s, `mapstructure:"server_url_lt"`) {
		t.Error("dto.Config 缺 server_url_lt（骆驼壳的地址）")
	}
	// 反向断言：骆驼壳的字段名不能又是 ServerUrl（那样就是同一个字段）
	re := regexp.MustCompile(`ServerUrlLt\s+\S+\s+\x60mapstructure:"([^"]+)"`)
	m := re.FindStringSubmatch(s)
	if m == nil {
		t.Fatal("找不到 ServerUrlLt 字段声明")
	}
	if m[1] == "server_url" {
		t.Fatalf("ServerUrlLt 的 mapstructure 键是 server_url —— 与清和壳共用同一个键，" +
			"两个壳的地址会互相覆盖")
	}
	if m[1] != "server_url_lt" {
		t.Fatalf("ServerUrlLt 的 mapstructure 键是 %q，期望 server_url_lt", m[1])
	}
}

// engineRequiredKeys 是**引擎 dto.Config 必须声明**的键（yaml/mapstructure 名）。
//
// 背景：引擎会在授权失效时把 dto.Config **整份重写**回 config.yml，
// 只在 api 侧声明的键会被静默抹掉 —— 症状是"授权失效一次，配置就没了"，
// 而且日志里一条错都没有。
//
// ★为什么需要这份清单（而不是只靠 TestConfigFieldsAlignedAcrossRepos）：
// 跨仓比对那条在 api 仓 CI 里读不到引擎仓 ⇒ 会 Skip（两仓是独立 module，
// 引擎仓不在同一个工作区，这是常态）。那就意味着**CI 里没有任何东西
// 拦"新增配置段忘了同步引擎"**。这条清单不依赖引擎仓，恒跑：
// 新增配置段的人只要动了 Config，就必须同步更新这个清单（而清单里的键
// 会被跨仓那条在能对照时逐字校验）。
//
// ★别把它当成"引擎该有哪些字段"的完整列表 —— 它只列**跨仓对齐的关键项**
// （引擎不消费、但整份重写时不能丢的那些）。引擎自己用的字段不在这里。
var engineRequiredKeys = []struct {
	yamlKey string
	why     string
}{
	{"build_lt", "骆驼壳的编译参数（应用名/版本号）；漏了则授权失效后骆驼壳参数被清空"},
	{"server_url_lt", "骆驼壳的 APK 连接地址（与清和壳各存一份）；漏了则授权失效后地址被清空，编出来的包连不上"},
	{"mytv", "MyTV 客户端的独立配置段（引擎要用）；漏了则整份重写会把 mytv 段抹掉"},
	{"out_proxy", "出网代理（协议/地址/端口/账密/作用范围，中转取流用 use_relay）；漏了则授权失效后代理配置被清空"},
}

// TestEngineRequiredKeysDeclaredInAPI 钉住 api 侧 dto.Config 声明了上面这些键。
//
// 读不到 api 侧源码就 Fail（那是本仓自己的文件，读不到说明 checkout 不完整）。
func TestEngineRequiredKeysDeclaredInAPI(t *testing.T) {
	src, err := os.ReadFile(filepath.FromSlash("../dto/configDto.go"))
	if err != nil {
		t.Fatalf("读 api dto 失败: %v", err)
	}
	keys := collectTopLevelKeys(t, string(src))
	for _, req := range engineRequiredKeys {
		if _, ok := keys[req.yamlKey]; !ok {
			t.Errorf("api dto.Config 缺字段 %q —— %s。"+
				"★它必须同时在 iptv-engine/dto/configDto.go 里声明，否则引擎整份重写"+
				" config.yml 时会把它静默抹掉。",
				req.yamlKey, req.why)
		}
	}
}
