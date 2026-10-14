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
//
// 只写死一个会在另一边报"读不到"，而"守卫悄悄失效"正是它本来要防的那类事故
// —— 所以宁可多试几条，也不要让它悄悄跳过。
var engineDtoCandidates = []string{
	filepath.FromSlash("../../../iptv-engine/dto/configDto.go"),
	filepath.FromSlash("../../../../iptv-engine/dto/configDto.go"),
	filepath.FromSlash("../../iptv-engine/dto/configDto.go"),
	// 容器里常见的绝对挂载点
	"/eng/dto/configDto.go",
	"/home/test/iptv-build/iptv-engine/dto/configDto.go",
}

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
	// ★ 这里必须 Fail 而不是 Skip：Skip 会让这条守卫"看起来通过了"，
	// 而"守卫没生效"正是它本来要防的事故（引擎少一个字段 → 静默丢配置）。
	t.Fatalf("读不到引擎 dto（试过 %v；也可用环境变量 IPTV_ENGINE_DIR 指定）。"+
		"这条测试的作用是拦住「引擎整份重写 config.yml 时把字段抹掉」，"+
		"读不到就等于放弃了这道闸门。",
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
