package until

import (
	"os"
	"strings"
	"testing"
)

// TestClientApkPath_UsesAppName 钉住骆驼壳的**产物路径口径**。
//
// 真实缺陷（2026-10-13 实测，docker 验证容器 iptv-lt-verify）：ClientLtApkPath
// 曾硬编码常量 "Client_lt"，而编译侧 BuildLuotuoAPK 落的是
// bootstrap.OfficialAPKPath(cfg.BuildLt.Name)。只要后台「应用名」不叫 Client_lt
// （那是常态，例如「骆驼电视」），整条发布链就断掉，而每一步的返回值看上去都"正常"：
//
//	编译日志   : 骆驼壳客户端APK编译完成: /config/app/骆驼电视-new.apk   ← 包真在（18,327,752 B）
//	buildStatus: newExists=false / newSize="0 MB" / newUrl=/app/Client_lt-new.apk  ← 读错文件
//	publish    : {"code":0,"msg":"待发布的安装包不存在，请重新编译"}      ← 永远发不出去
//
// 前端 `applyBuildStatus()` 又拿 newExists 去禁用「发布」按钮，于是用户看到的是
// 「编译完成」+ 按钮点不动，没有任何报错指向路径。
func TestClientLtApkPath_UsesAppName(t *testing.T) {
	cases := []struct {
		name   string
		staged bool
		want   string
	}{
		{"骆驼电视", false, "/config/app/骆驼电视-lt.apk"},
		{"骆驼电视", true, "/config/app/骆驼电视-lt-new.apk"},
		// 应用名恰好就是 Client_lt 时，也只是名字的一部分 —— 壳标记照旧带上。
		{"Client_lt", false, "/config/app/Client_lt-lt.apk"},
		{"Client_lt", true, "/config/app/Client_lt-lt-new.apk"},
	}
	for _, c := range cases {
		if got := ClientLtApkPath(c.name, c.staged); got != c.want {
			t.Fatalf("ClientLtApkPath(%q,%v) = %q, want %q", c.name, c.staged, got, c.want)
		}
	}
}

// TestClientApkPath_Qinghe 清和壳一侧的同一组口径。
func TestClientApkPath_Qinghe(t *testing.T) {
	cases := []struct {
		name   string
		staged bool
		want   string
	}{
		{"清和电视", false, "/config/app/清和电视-qh.apk"},
		{"清和电视", true, "/config/app/清和电视-qh-new.apk"},
	}
	for _, c := range cases {
		if got := ClientApkPath(c.name, c.staged); got != c.want {
			t.Fatalf("ClientApkPath(%q,%v) = %q, want %q", c.name, c.staged, got, c.want)
		}
	}
}

// ★ 编译结果与下载必须**按壳分开**（需求：两边可能同名）。
//
// 两个壳的应用名是用户各自填的，没有任何约束保证不重名 —— 都叫「电视」是常态。
// 不带壳标记时，两个壳在 /config/app 下写的是同一个文件：
//
//	先编清和壳 → /config/app/电视.apk；再编骆驼壳 → 同一个路径，**直接覆盖**。
//	下载页两个按钮 url 相同，用户点哪个都是同一个包；"线上包是哪个壳的"再也说不清。
//
// 所以这里用**完全相同的应用名**做输入，断言四条口径（落盘路径、待发布路径、
// 下载地址、浏览器存盘名）两两都不相等 —— 只要壳标记得以实现，四条一起成立。
func TestTwoShellsNeverCollideWithSameAppName(t *testing.T) {
	const both = "电视"

	// 先用**逐字期望值**钉住命名形状（不带版本号，只看落点与地址）。
	wantQh := map[bool]string{false: "/config/app/电视-qh.apk", true: "/config/app/电视-qh-new.apk"}
	wantLt := map[bool]string{false: "/config/app/电视-lt.apk", true: "/config/app/电视-lt-new.apk"}
	for _, staged := range []bool{false, true} {
		if got := ClientApkPath(both, staged); got != wantQh[staged] {
			t.Fatalf("清和壳落点(%v) = %q，期望 %q", staged, got, wantQh[staged])
		}
		if got := ClientLtApkPath(both, staged); got != wantLt[staged] {
			t.Fatalf("骆驼壳落点(%v) = %q，期望 %q", staged, got, wantLt[staged])
		}
		if got := ClientApkURL(both, staged); got != "/app/"+wantQh[staged][len("/config/app/"):] {
			t.Fatalf("清和壳下载地址(%v) = %q", staged, got)
		}
		if got := ClientLtApkURL(both, staged); got != "/app/"+wantLt[staged][len("/config/app/"):] {
			t.Fatalf("骆驼壳下载地址(%v) = %q", staged, got)
		}
	}

	// 再断言"四条口径两两不等"——这是需求本身（同名也必须分开）。
	// 存盘名用**同一个版本号**，把差异唯一地归因到壳标记上。
	const ver = "1.0.0"
	if a, b := ClientApkPath(both, false), ClientLtApkPath(both, false); a == b {
		t.Fatalf("同名时线上包落点相同：%q == %q —— 后编的壳会覆盖先编的", a, b)
	}
	if a, b := ClientApkPath(both, true), ClientLtApkPath(both, true); a == b {
		t.Fatalf("同名时待发布包落点相同：%q == %q", a, b)
	}
	if a, b := ClientApkURL(both, false), ClientLtApkURL(both, false); a == b {
		t.Fatalf("同名时下载地址相同：%q == %q —— 下载页两个按钮指向同一个包", a, b)
	}
	if a, b := ClientApkSaveName(both, ShellQh, ver), ClientApkSaveName(both, ShellLt, ver); a == b {
		t.Fatalf("同名同时存盘名相同：%q == %q", a, b)
	}
}

// TestClientApkPath_MatchesCompileDrop 反向断言：产物路径必须与编译侧落盘点
// **同一个函数**，不许再出现第二份拼法。
//
// 这条以前是"逐字复刻 bootstrap.OfficialAPKPath 的实现来比"，那本身就是漏洞：
// 两份实现只要有一份改了就对不上。现在 bootstrap 那份已经删掉、直接调
// until.ClientApkPathOf，所以这里改成钉住**通用形式与便捷入口一致**。
func TestClientApkPath_MatchesCompileDrop(t *testing.T) {
	for _, name := range []string{"骆驼电视", "电视", "任意名", "a b"} {
		if got, want := ClientApkPath(name, false), ClientApkPathOf(name, ShellQh, false); got != want {
			t.Fatalf("ClientApkPath 与 ClientApkPathOf(ShellQh) 不一致：%q vs %q", got, want)
		}
		if got, want := ClientLtApkPath(name, false), ClientApkPathOf(name, ShellLt, false); got != want {
			t.Fatalf("ClientLtApkPath 与 ClientApkPathOf(ShellLt) 不一致：%q vs %q", got, want)
		}

		// 落盘目录必须是静态路由映射的那个（router.go: r.Static("/app", "/config/app")）。
		for _, p := range []string{ClientApkPath(name, true), ClientLtApkPath(name, true)} {
			if !strings.HasPrefix(p, "/config/app/") {
				t.Fatalf("产物落盘路径 %q 不在 /config/app 下", p)
			}
		}

		// 下载地址必须与落盘文件**同名** —— 地址多一段/少一段，静态目录就找不到。
		for _, c := range []struct {
			url, path string
		}{
			{ClientApkURL(name, false), ClientApkPath(name, false)},
			{ClientApkURL(name, true), ClientApkPath(name, true)},
			{ClientLtApkURL(name, false), ClientLtApkPath(name, false)},
			{ClientLtApkURL(name, true), ClientLtApkPath(name, true)},
		} {
			if got, want := c.url, "/app/"+strings.TrimPrefix(c.path, "/config/app/"); got != want {
				t.Fatalf("下载地址与落盘名不同口径：%q vs %q", got, want)
			}
		}
	}
}

// TestClientLtNameConstRemoved 反向断言：那个硬编码常量不许再回来。
//
// 常量本身没错，错在"路径函数不知道该用哪个名字"时拿常量兜底。一旦有人为了
// 少传一个参数把它接回 ClientLtApkPath，口径立刻又分叉。
func TestClientLtNameConstRemoved(t *testing.T) {
	src, err := os.ReadFile("clientBase.go")
	if err != nil {
		t.Fatalf("读不到 clientBase.go: %v", err)
	}
	if strings.Contains(string(src), "ClientLtName") {
		t.Fatal("clientBase.go 里又出现了 ClientLtName —— 骆驼壳产物名必须取 cfg.BuildLt.Name，" +
			"否则编译落点(/config/app/<应用名>-lt-new.apk)与发布查找点会再度分叉")
	}
}
