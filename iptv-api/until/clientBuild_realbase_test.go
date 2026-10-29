package until

import (
	"os"
	"path/filepath"
	"regexp"
	"testing"
)

// TestPatchClientHostInSmali_RealBase 拿真实骆驼壳基底（apktool 解包后的 smali）
// 跑一遍 patchClientHostInSmali，钉住「真实基底能正常注入地址、不会 hits==0」。
//
// 这是 0.32.1 编译失败的直接回归：当时 0.32.1 基底的地址因串索引越过 0xFFFF
// 被 apktool 解码成 const-string/jumbo，旧 replace 正则不认 jumbo ⇒ 命中 0 ⇒
// 报错「找不到服务端地址字面量」。本测试在能拿到真实基底的环境里真跑一遍
// （开发基底多为非 jumbo 的短地址，能覆盖「正则仍是超集、不回归」）；jumbo 的
// 具体形态由 TestPatchClientHostInSmali_JumboVariantIsRewritten 钉死。
//
// 拿不到真实基底时跳过（CI 没有，属常态）。
func TestPatchClientHostInSmali_RealBase(t *testing.T) {
	base := os.Getenv("E2E_SMALI_DIR")
	if base == "" {
		base = "/home/test/iptv-build/client_qh/smali"
	}
	if fi, err := os.Stat(base); err != nil || !fi.IsDir() {
		t.Skipf("真实基底 smali 目录不存在（%s），跳过", base)
	}
	tmp := t.TempDir()
	smaliDst := filepath.Join(tmp, "smali")
	if err := os.MkdirAll(smaliDst, 0o755); err != nil {
		t.Fatal(err)
	}
	if err := os.CopyFS(smaliDst, os.DirFS(base)); err != nil {
		t.Fatalf("复制基底失败: %v", err)
	}
	// 基底里没有「站点地址」字面量（例如某些源码树从未带地址）⇒ 不是真实
	// 未注入基底，patch 必然 hits==0，这种情形下跳过而不是误报失败。
	if !baseHasHostLiteral(smaliDst) {
		t.Skipf("基底 %s 里找不到 /apk/lt 或 /iptv 地址字面量，跳过（非真实未注入基底）", base)
	}
	if err := patchClientHostInSmali(tmp, "http://10.10.220.162:18098/apk/lt"); err != nil {
		t.Fatalf("真实基底 patch 失败（这正是不修 jumbo 时编不过的根因）: %v", err)
	}
}

// baseHasHostLiteral 扫一遍 smali 树，看有没有「站点地址」字面量
// （http(s)://.../(apk/lt|iptv)），用来判断这是不是一份真实待注入的基底。
func baseHasHostLiteral(dir string) bool {
	re := regexp.MustCompile(`https?://[^\s"]*?/(?:iptv|apk/lt)`)
	found := false
	_ = filepath.WalkDir(dir, func(p string, d os.DirEntry, err error) error {
		if err != nil || d.IsDir() || filepath.Ext(p) != ".smali" {
			return nil
		}
		b, _ := os.ReadFile(p)
		if re.Match(b) {
			found = true
		}
		return nil
	})
	return found
}

// firstHostLiteral 取树里第一条站点地址字面量（不含 /getepg 之类子路径）。
func firstHostLiteral(dir string) string {
	re := regexp.MustCompile(`https?://[^\s"]*?/(?:iptv|apk/lt)`)
	out := ""
	_ = filepath.WalkDir(dir, func(p string, d os.DirEntry, err error) error {
		if out != "" || err != nil || d.IsDir() || filepath.Ext(p) != ".smali" {
			return nil
		}
		b, _ := os.ReadFile(p)
		if m := re.Find(b); m != nil {
			out = string(m)
		}
		return nil
	})
	return out
}

// ★ 同址注入（注入地址 = 基底里已写死的那个地址）在**真实基底**上必须成功。
//
// 基底是 CI 打好地址的成品包，生产页面上填的又常是同一个站点，于是替换是
// 恒等变换、字节一个不变；按「字节是否变化」计命中的旧实现会报
// 「找不到服务端地址字面量」，并把排查方向误导到「换基底」上
// （2026-10-20 生产 v4.7.1 + 0.33.0 基底 + 填 https://iptv.qingh.xyz 即此坑）。
func TestPatchClientHostInSmali_RealBaseSameAddress(t *testing.T) {
	base := os.Getenv("E2E_SMALI_DIR")
	if base == "" {
		base = "/home/test/iptv-build/client_qh/smali"
	}
	if fi, err := os.Stat(base); err != nil || !fi.IsDir() {
		t.Skipf("真实基底 smali 目录不存在（%s），跳过", base)
	}
	tmp := t.TempDir()
	smaliDst := filepath.Join(tmp, "smali")
	if err := os.MkdirAll(smaliDst, 0o755); err != nil {
		t.Fatal(err)
	}
	if err := os.CopyFS(smaliDst, os.DirFS(base)); err != nil {
		t.Fatalf("复制基底失败: %v", err)
	}
	lit := firstHostLiteral(smaliDst)
	if lit == "" {
		t.Skipf("基底 %s 里找不到站点地址字面量，跳过", base)
	}
	if err := patchClientHostInSmali(tmp, lit); err != nil {
		t.Fatalf("同址注入（注入地址就是基底原地址 %s）必须成功，不能报找不到注入点: %v", lit, err)
	}
}
