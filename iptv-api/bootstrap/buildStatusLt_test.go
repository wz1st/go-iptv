package bootstrap

import (
	"os"
	"strings"
	"testing"
)

// 两个壳的编译状态必须**各自独立**（需求2）。
//
// 背景：安装流程（api/spaSiteApi.go 的 InstallData）在装完后会 `go BuildAPK(false)`
// 自动编一次**清和壳**，这个过程能持续 ~2 分钟。早先两个壳共用同一个 buildStatus
// 原子量，于是：
//
//	用户刚装完 → 进「客户端设置 → 骆驼壳」→ 状态显示"正在编译中" → 按钮全灰
//	点「编译」→ 请求被 service 层的 `bootstrapStatus() == 1` 挡掉
//	     {"code":0,"msg":"正在打包中，请稍后再试"}
//
// 而用户根本没编过骆驼壳。状态量一分叉，这个假"占用"就消失了。
func TestBuildStatusLtIndependent(t *testing.T) {
	SetBuildStatus(0)
	SetBuildStatusLt(0)

	// 模拟"安装期自动编译清和壳"
	SetBuildStatus(1)
	if got := GetBuildStatusLt(); got != 0 {
		t.Fatalf("清和壳在编（GetBuildStatus=1），骆驼壳状态却是 %d —— "+
			"两个壳共用状态量时，安装期的自动编译会把骆驼壳的编译/发布入口整体锁死", got)
	}

	// 反过来：骆驼壳编译中不许影响清和壳
	SetBuildStatusLt(1)
	if got := GetBuildStatus(); got != 1 {
		t.Fatalf("骆驼壳编译中把清和壳状态改成了 %d（应为 1，因为清和壳本来就在编）", got)
	}

	// 骆驼壳编完，清和壳必须还保持"在编"
	SetBuildStatusLt(0)
	if got := GetBuildStatus(); got != 1 {
		t.Fatalf("骆驼壳编译结束（SetBuildStatusLt(0)）把清和壳的状态也清了：GetBuildStatus=%d", got)
	}

	SetBuildStatus(0)
	if GetBuildStatus() != 0 || GetBuildStatusLt() != 0 {
		t.Fatal("复位失败，测试自身有副作用")
	}
}

// 源码契约：骆驼壳那条链路**必须**全程用 Lt 版本的状态量。
//
// 这条防的是"改了一半"：编译侧写 Lt、服务层读通用 —— 于是骆驼壳永远读到 0
// （按钮常亮、可并发编译），或者反过来永远读到 1（按钮全灰）。两种都很难从界面
// 上看出来是状态量串了。
func TestBuildLuotuoAPKWritesOwnStatus(t *testing.T) {
	src := readSource(t, "build.go")

	if !strings.Contains(src, "SetBuildStatusLt(1)") {
		t.Error("BuildLuotuoAPK 未写 SetBuildStatusLt(1) —— 骆驼壳的编译期不会被任何入口看到")
	}
	if !strings.Contains(src, "defer SetBuildStatusLt(0)") {
		t.Error("BuildLuotuoAPK 未在 defer 里复位 SetBuildStatusLt(0) —— 编译结束状态不复位，按钮会永久变灰")
	}

	// 反向断言：把 BuildLuotuoAPK 的函数体切出来，里面不许再出现通用的 SetBuildStatus。
	body := funcBody(src, "func BuildLuotuoAPK")
	if body == "" {
		t.Fatal("定位不到 BuildLuotuoAPK 函数体（源码结构变了，请同步更新本测试）")
	}
	if strings.Contains(body, "SetBuildStatus(") {
		t.Error("BuildLuotuoAPK 里出现了通用的 SetBuildStatus —— " +
			"骆驼壳的编译状态又和清和壳搅在一起了")
	}
}

// readSource 读本目录下的源码文件。第二层判据只能读源码：缺陷在
// "写哪个状态量"这一行的**选择**上，纯函数层看不到调用点。
func readSource(t *testing.T, rel string) string {
	t.Helper()
	b, err := os.ReadFile(rel)
	if err != nil {
		t.Fatalf("读不到 %s：%v", rel, err)
	}
	return string(b)
}

// funcBody 返回以 sig 开头的那个顶层函数的函数体（到下一个顶层 func 为止）。
// gofmt 之后顶层 func 一定从第 0 列开始，所以按列 0 的 "func " 切就够用。
func funcBody(src, sig string) string {
	i := strings.Index(src, sig)
	if i < 0 {
		return ""
	}
	rest := src[i:]
	if j := strings.Index(rest[1:], "\nfunc "); j >= 0 {
		return rest[:j+1]
	}
	return rest
}
