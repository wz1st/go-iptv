package until

import (
	"encoding/hex"
	"testing"
)

// 登录密钥是**对称约定**：服务端用它加密登录响应，客户端用它解密。
// 公式已经反推清楚（见 AesKeyOf 的说明），这里把两端共用的那几个固定值
// 钉成黄金值 —— 公式里任何一个输入被改动（签名、盐、叠 md5 的层数、拼接顺序），
// 这些值都会变，测试当场失败。
//
// 期望值由 python 独立算过一遍（不是从本实现里打印出来的），
// 所以它能抓住"实现和推导同时写错"的情况：
//
//	md5(md5("12315" + 名称 + 包名 + "AD80F93B542B") + 名称 + 包名)
func TestAesKeyOf_GoldenValues(t *testing.T) {
	cases := []struct {
		name, pkg, want string
		why             string
	}{
		{
			name: "清和电视", pkg: FixedPackage,
			want: "f8f90183c701cb86a3433973d9ce9946",
			why:  "清和壳：包名就是 FixedPackage(Client.apk 的 xyz.qingh.qhtv)",
		},
		{
			name: "骆驼电视", pkg: FixedPackageLt,
			want: "cb83addc58c1d3f8d79a9e76c03f0212",
			why:  "骆驼壳：包名是基包自己的 cn.dsmtv.player",
		},
	}
	for _, c := range cases {
		if got := AesKeyOf(c.name, c.pkg); got != c.want {
			t.Errorf("%s\nAesKeyOf(%q, %q) = %s，期望 %s", c.why, c.name, c.pkg, got, c.want)
		}
	}
}

// 密钥必须是 32 位十六进制：调用方一律 `key[5:21]` 取切片，
// 长度不足会**当场 panic**（把整个 /login 打成 500），而不是给一个错的密钥。
func TestAesKeyOf_AlwaysUsableSlice(t *testing.T) {
	names := []string{"清和电视", "骆驼电视", "a", ""}
	pkgs := []string{FixedPackage, FixedPackageLt, ""}
	for _, n := range names {
		for _, p := range pkgs {
			got := AesKeyOf(n, p)
			if len(got) != 32 {
				t.Errorf("AesKeyOf(%q, %q) 长度 %d，期望 32（hex md5）", n, p, len(got))
			}
			if _, err := hex.DecodeString(got); err != nil {
				t.Errorf("AesKeyOf(%q, %q) 不是合法 hex: %v", n, p, err)
			}
		}
	}
}

// 两个壳的密钥必须真的不同 —— 这正是"必须按壳分流"的理由。
// 若哪天有人把 FixedPackageLt 改回 FixedPackage、或让两者共用应用名，
// 这条会失败，提醒"分流的必要性正在消失"（那时判据可以简化，但不是现在）。
func TestAesKeyOf_TwoShellsDiffer(t *testing.T) {
	qh := AesKeyOf("清和电视", FixedPackage)
	lt := AesKeyOf("骆驼电视", FixedPackageLt)
	if qh == lt {
		t.Fatal("两个壳的密钥算成了同一个 —— 按壳分流的前提被破坏")
	}
	// 即便应用名相同，包名不同也必须产出不同密钥（两个壳可以同名，包名一定不同）。
	if same := AesKeyOf("同名", FixedPackage); same == AesKeyOf("同名", FixedPackageLt) {
		t.Fatal("同名不同包名不该得到同一个密钥")
	}
}

// 包名常量必须与基包一致：清和壳是 FixedPackage，骆驼壳是 FixedPackageLt。
// 这条把"基包包名"和"服务端公式输入"绑在一起 —— 换基包（client/Client_lt.apk）
// 而忘了改常量时，只有这条测试会先叫。
func TestFixedPackageLt_MatchesLuotuoBase(t *testing.T) {
	if FixedPackageLt == FixedPackage {
		t.Fatal("骆驼壳的包名不该等于清和壳的包名")
	}
	// 骆驼壳基包的包名来自 client/apktool.yml 的 renameManifestPackage，
	// 与 client/Client_lt.apk 的 AndroidManifest 一致（已用 AXML 解析核对）。
	if FixedPackageLt != "cn.dsmtv.player" {
		t.Fatalf("FixedPackageLt = %q，与骆驼壳基包（cn.dsmtv.player）对不上", FixedPackageLt)
	}
}
