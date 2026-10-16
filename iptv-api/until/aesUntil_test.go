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
			want: "9d08d3933e9dd7e0d67591a69ebccb3c",
			why:  "骆驼壳：包名是基包自己的 xyz.qingh.lutuo",
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
	if FixedPackageLt != "xyz.qingh.lutuo" {
		t.Fatalf("FixedPackageLt = %q，与骆驼壳基包（xyz.qingh.lutuo）对不上", FixedPackageLt)
	}
}

// AesKeyForShell：密钥公式里的应用名用**上报值**，不再用 config.yml 的 build.name。
// 这正是 18098 验证容器骆驼壳"登录错误"的根因修复 —— 基包 app_name="骆驼"、
// 后台 build_lt.name="骆驼电视"，服务端若用后者会算出一把客户端解不开的钥匙
// （客户端用 getApplicationLabel() 当密钥输入 E，两侧必须逐字一致）。
func TestAesKeyForShell_UsesReportedAppName(t *testing.T) {
	// 骆驼壳：上报 "骆驼" 必须得到 AesKeyOf("骆驼", FixedPackageLt)，与客户端自己算的逐字一致。
	if got, want := AesKeyForShell("骆驼", true), AesKeyOf("骆驼", FixedPackageLt); got != want {
		t.Fatalf("AesKeyForShell(%q,true)=%s，期望 AesKeyOf(%q,FixedPackageLt)=%s", "骆驼", got, "骆驼", want)
	}
	// 关键回归：用上报名与用后台名必须得到**不同**的钥匙（否则说明又在用 config 名）。
	if AesKeyForShell("骆驼", true) == AesKeyOf("骆驼电视", FixedPackageLt) {
		t.Fatal("AesKeyForShell 退回了 config.yml 的应用名 —— 上报值没被用上")
	}
	// 清和壳同理：上报名进公式，包名取 FixedPackage。
	if got, want := AesKeyForShell("清和电视", false), AesKeyOf("清和电视", FixedPackage); got != want {
		t.Fatalf("AesKeyForShell(%q,false)=%s，期望 %s", "清和电视", got, want)
	}
	// 两个壳即便上报同一个应用名，也必须因包名不同而得到不同密钥。
	if AesKeyForShell("同名", true) == AesKeyForShell("同名", false) {
		t.Fatal("同名不同壳得到了同一把密钥 —— 按壳分流的前提被破坏")
	}
}

// IsLuotuoPackage：包名是壳标识的**主判据**；空串 / 异包都不得误判为骆驼。
func TestIsLuotuoPackage(t *testing.T) {
	cases := []struct {
		in   string
		want bool
	}{
		{FixedPackageLt, true},
		{" " + FixedPackageLt + " ", true}, // 前后空白要 TrimSpace
		{FixedPackage, false},              // 清和壳包名不是骆驼
		{"", false},                        // 未上报
		{"com.eztv.powerful", false},       // 基包原始包名（未改 applicationId 前）
		{"xyz.qingh.lutuo.evil", false},    // 前缀相同但不是整串相等
	}
	for _, c := range cases {
		if got := IsLuotuoPackage(c.in); got != c.want {
			t.Errorf("IsLuotuoPackage(%q)=%v，期望 %v", c.in, got, c.want)
		}
	}
}
