package until

import (
	"os"
	"os/exec"
	"path/filepath"
	"strings"
	"testing"
)

// TestBuildClientApk_Luotuo_E2E 是**端到端**回归：真实解包骆驼壳基底 → 注入
// 地址/应用名/版本号 → apktool 重编 → 对齐签名，再解开产物逐条反证。
//
// 它默认跳过（`go test ./...` 的闸门环境里没有 apktool / keytool / apksigner），
// 只在显式给了基底路径时跑：
//
//	IPTV_E2E_BASE_APK=/path/Client_lt.apk \
//	IPTV_E2E_OUT_APK=/tmp/out.apk \
//	go test ./until/ -run TestBuildClientApk_Luotuo_E2E -v -count=1
//
// 为什么要这条：`HostInSmali` 那条路走的是**正则改 smali**。
// 命中数为 0 时我们已经会报错，但「命中错了地方」「注入值根本没进产物」
// 这类问题只有真编一次、再解开发产物才看得见 —— 编译成功不等于注入成功。
func TestBuildClientApk_Luotuo_E2E(t *testing.T) {
	base := os.Getenv("IPTV_E2E_BASE_APK")
	if base == "" {
		t.Skip("未设 IPTV_E2E_BASE_APK，跳过端到端编译（需要容器内的 apktool/keytool/apksigner）")
	}
	out := os.Getenv("IPTV_E2E_OUT_APK")
	if out == "" {
		out = filepath.Join(t.TempDir(), "out.apk")
	}

	const (
		wantHost = "http://10.10.220.162:8095/apk"
		wantName = "骆驼电视"
		wantVer  = "0.25.5.001"
	)

	work := filepath.Join(t.TempDir(), "work")
	v := ClientBuildValues{
		ServerURL:   wantHost,
		AppName:     wantName,
		Version:     "001",
		VersionName: wantVer,
		HostInSmali: true,
	}
	if err := BuildClientApk(base, out, work, v); err != nil {
		t.Fatalf("骆驼壳端到端编译失败: %v", err)
	}

	// 解开产物做反证。用独立目录，免得和 work 里的解包树混在一起。
	dec := filepath.Join(t.TempDir(), "dec")
	if b, err := exec.Command("apktool", "d", "-f", "-o", dec, out).CombinedOutput(); err != nil {
		t.Fatalf("解开产物失败: %v\n%s", err, b)
	}

	// 1) 地址：三处 /iptv 字面量都换成了新地址，且没有旧兜底地址残留。
	smaliBlob := readTree(t, filepath.Join(dec, "smali"))
	for _, want := range []string{
		`"` + wantHost + `"`,
		`"` + wantHost + `/getepg"`,
		`"` + wantHost + `/weather"`,
	} {
		if !strings.Contains(smaliBlob, want) {
			t.Errorf("产物 smali 里缺少 %s", want)
		}
	}
	if strings.Contains(smaliBlob, "10.10.220.161") {
		t.Error("产物里仍残留基底写死的兜底地址")
	}

	// 2) 应用名：写进了 strings.xml。
	if !strings.Contains(readTree(t, filepath.Join(dec, "res")), wantName) {
		t.Errorf("产物资源里没有应用名 %q", wantName)
	}

	// 3) 版本号：写进了 apktool.yml。
	yml, err := os.ReadFile(filepath.Join(dec, "apktool.yml"))
	if err != nil {
		t.Fatal(err)
	}
	if !strings.Contains(string(yml), wantVer) {
		t.Errorf("产物 apktool.yml 里没有版本号 %q\n%s", wantVer, yml)
	}

	// 4) 签名：产物必须带 v2 以上签名，否则 targetSdk≥30 装不上。
	if b, err := exec.Command("apksigner", "verify", "--min-sdk-version", "30", out).CombinedOutput(); err != nil {
		t.Errorf("产物签名自检未过: %v\n%s", err, b)
	}
}

// readTree 把一棵目录下的所有文件拼成一坨文本（反证用，不需要保序）。
func readTree(t *testing.T, root string) string {
	t.Helper()
	var sb strings.Builder
	err := filepath.WalkDir(root, func(path string, d os.DirEntry, err error) error {
		if err != nil || d.IsDir() {
			return err
		}
		b, err := os.ReadFile(path)
		if err != nil {
			return err
		}
		sb.Write(b)
		sb.WriteByte('\n')
		return nil
	})
	if err != nil {
		t.Fatal(err)
	}
	return sb.String()
}
