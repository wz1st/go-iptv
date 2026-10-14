package until

import (
	"os"
	"path/filepath"
	"strings"
	"testing"
)

// 两个壳的「启动图素材」口径测试。
//
// 这一组断言钉的是三件事，每一件都对应一个真实踩过的坑：
//  1. 背景**包内资源名**必须按壳不同（qh_bg / ez_bg）——
//     写死同一个名字时，骆驼壳的编译会直接失败（overlayImage 找不到同名文件）；
//  2. 目录与 URL 前缀必须**成套**且按壳分 —— 只改一边就是"上传成功但预览裂图"；
//  3. 骆驼壳的 URL 前缀**不能**落在清和壳的 alias 底下（/images/ 指向
//     /config/images/bj），否则实际取到的是 /config/images/bj/lt/xxx.png（404）。

func TestClientBgDrawable_DiffersPerShell(t *testing.T) {
	qh := ClientBgDrawable(ShellQh)
	lt := ClientBgDrawable(ShellLt)

	// 钉住具体值：这两个名字是与各壳源码的逐字契约，改了就是静默失效
	// （清和壳 SplashScreen.kt 读 R.drawable.qh_bg；骆驼壳 styles.xml 的
	// android:windowBackground 指向 @drawable/ez_bg）。
	if qh != "qh_bg" {
		t.Errorf("清和壳背景资源名应为 qh_bg，实际 %q", qh)
	}
	if lt != "ez_bg" {
		t.Errorf("骆驼壳背景资源名应为 ez_bg，实际 %q", lt)
	}
	if qh == lt {
		t.Errorf("两个壳的背景资源名不能相同（都是 %q）——"+
			"overlayImage 只覆盖已存在的同名文件，骆驼壳基底里没有 qh_bg，"+
			"后果是上传过背景图之后骆驼壳再也编不出来", qh)
	}
}

func TestClientAssetDirs_DifferPerShell(t *testing.T) {
	if ClientIconDir(ShellQh) == ClientIconDir(ShellLt) {
		t.Errorf("两个壳的图标目录不能相同：%q", ClientIconDir(ShellQh))
	}
	if ClientBgDir(ShellQh) == ClientBgDir(ShellLt) {
		t.Errorf("两个壳的背景目录不能相同：%q", ClientBgDir(ShellQh))
	}
	// 清和壳必须留在历史路径上：线上已经有人传过图，换目录等于把用户素材丢掉。
	if ClientIconDir(ShellQh) != "/config/images/icon" {
		t.Errorf("清和壳图标目录应保持历史路径 /config/images/icon，实际 %q", ClientIconDir(ShellQh))
	}
	if ClientBgDir(ShellQh) != "/config/images/bj" {
		t.Errorf("清和壳背景目录应保持历史路径 /config/images/bj，实际 %q", ClientBgDir(ShellQh))
	}
	// 两个目录不能只差一个斜杠这类"看起来不同"的形态。
	if !strings.HasPrefix(ClientBgDir(ShellLt), "/config/images/lt/") {
		t.Errorf("骆驼壳背景目录应落在 /config/images/lt/ 下，实际 %q", ClientBgDir(ShellLt))
	}
}

// 目录与 URL 前缀必须对应到同一份文件：这条断言把"配对"写死，
// 防止以后有人只改其中一边（那正是"上传成功、预览 404"的成因）。
func TestClientAssetURLPrefix_MatchesDir(t *testing.T) {
	cases := []struct {
		shell   string
		bgDir   string
		bgURL   string
		iconDir string
		iconURL string
	}{
		{ShellQh, "/config/images/bj", "/images/", "/config/images/icon", "/icon/"},
		{ShellLt, "/config/images/lt/bj", "/lt/images/", "/config/images/lt/icon", "/lt/icon/"},
	}
	for _, c := range cases {
		if got := ClientBgDir(c.shell); got != c.bgDir {
			t.Errorf("[%s] ClientBgDir = %q，期望 %q", c.shell, got, c.bgDir)
		}
		if got := ClientBgURLPrefix(c.shell); got != c.bgURL {
			t.Errorf("[%s] ClientBgURLPrefix = %q，期望 %q", c.shell, got, c.bgURL)
		}
		if got := ClientIconDir(c.shell); got != c.iconDir {
			t.Errorf("[%s] ClientIconDir = %q，期望 %q", c.shell, got, c.iconDir)
		}
		if got := ClientIconURLPrefix(c.shell); got != c.iconURL {
			t.Errorf("[%s] ClientIconURLPrefix = %q，期望 %q", c.shell, got, c.iconURL)
		}
		if got := ClientIconFile(c.shell); got != c.iconDir+"/icon.png" {
			t.Errorf("[%s] ClientIconFile = %q，期望 %q", c.shell, got, c.iconDir+"/icon.png")
		}
	}
}

// 骆驼壳的 URL 前缀**不能**落在清和壳的 alias 底下。
//
// nginx 的 `location ^~ /images/ { alias /config/images/bj/; }` 与后端
// `r.Static("/images", …)` 都是"吃掉 /images/ 前缀再拼目录"，所以
// /images/lt/x.png 会去取 /config/images/bj/lt/x.png —— 404。
// Go 侧的静态路由同样如此（r.Static("/lt/images", …) 是并列的另一条）。
func TestClientURLPrefixes_DoNotNest(t *testing.T) {
	qhBg := ClientBgURLPrefix(ShellQh)
	ltBg := ClientBgURLPrefix(ShellLt)
	if strings.HasPrefix(ltBg, qhBg) {
		t.Errorf("骆驼壳背景前缀 %q 落在清和壳的 %q 之下 —— "+
			"会被清和壳的 alias 吃掉，实际取到 /config/images/bj/…（404）", ltBg, qhBg)
	}
	if strings.HasPrefix(ClientIconURLPrefix(ShellLt), ClientIconURLPrefix(ShellQh)) {
		t.Errorf("骆驼壳图标前缀 %q 落在清和壳的 %q 之下", ClientIconURLPrefix(ShellLt), ClientIconURLPrefix(ShellQh))
	}
	if ltBg == qhBg || ClientIconURLPrefix(ShellLt) == ClientIconURLPrefix(ShellQh) {
		t.Error("两个壳的 URL 前缀不能相同")
	}
}

// applyClientImages 必须按 BgDrawable 指的资源名去覆盖，而不是写死 qh_bg。
//
// 用两个假的 drawable 桶搭一个最小 apktool 解包结果：
//   - 有 ez_bg.png 的桶：BgDrawable=ez_bg 时该被覆盖；
//   - 只有 qh_bg.png 的桶：BgDrawable=ez_bg 时必须**报错**（找不到同名文件），
//     且错误信息要能指向真因 —— 这正是"上传过背景图后骆驼壳编不出来"的现场。
func TestApplyClientImages_BackgroundNameFollowsShell(t *testing.T) {
	newWork := func(names ...string) string {
		work := t.TempDir()
		dir := filepath.Join(work, "res", "drawable-hdpi")
		if err := os.MkdirAll(dir, 0o755); err != nil {
			t.Fatal(err)
		}
		for _, n := range names {
			if err := os.WriteFile(filepath.Join(dir, n), []byte("OLD"), 0o644); err != nil {
				t.Fatal(err)
			}
		}
		return work
	}
	src := filepath.Join(t.TempDir(), "new.png")
	if err := os.WriteFile(src, []byte("NEW"), 0o644); err != nil {
		t.Fatal(err)
	}

	// 骆驼壳基底：有 ez_bg.png（真实基底就是只有 drawable-hdpi 这一桶）
	work := newWork("ez_bg.png")
	if err := applyClientImages(work, ClientBuildValues{
		BackgroundPath: src, BgDrawable: ClientBgDrawable(ShellLt),
	}); err != nil {
		t.Fatalf("骆驼壳背景覆盖失败: %v", err)
	}
	got, _ := os.ReadFile(filepath.Join(work, "res", "drawable-hdpi", "ez_bg.png"))
	if string(got) != "NEW" {
		t.Errorf("ez_bg.png 没有被覆盖，内容 %q", got)
	}

	// 拿清和壳的名字去覆盖骆驼壳的树：必须报错，且错误里点名资源名
	work2 := newWork("ez_bg.png")
	err := applyClientImages(work2, ClientBuildValues{
		BackgroundPath: src, BgDrawable: ClientBgDrawable(ShellQh),
	})
	if err == nil {
		t.Fatal("资源名对不上时必须报错，否则是'上传了图、包里没换'的静默失效")
	}
	if !strings.Contains(err.Error(), "qh_bg") {
		t.Errorf("报错应点名缺失的资源名 qh_bg，实际: %v", err)
	}

	// BgDrawable 缺省：有背景图却不知道往哪个资源名放 ⇒ 当场失败
	work3 := newWork("ez_bg.png")
	err = applyClientImages(work3, ClientBuildValues{BackgroundPath: src})
	if err == nil || !strings.Contains(err.Error(), "BgDrawable") {
		t.Errorf("缺 BgDrawable 且带了背景图时应报缺参数，实际: %v", err)
	}

	// 没传背景图：即使没有桶、没有资源名也必须成功（保留包内默认图）
	work4 := t.TempDir()
	if err := applyClientImages(work4, ClientBuildValues{}); err != nil {
		t.Errorf("未上传图标/背景时不该报错，实际: %v", err)
	}
}
