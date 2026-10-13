package until

import (
	"fmt"
	"os"
	"os/exec"
	"strings"
)

// 客户端编译产物的**固定签名密钥**。
//
// ## 为什么必须是"固定"的
//
// 早先每次编译都在工作目录里 `keytool -genkey` 现生成一个临时 keystore，
// 于是**每编译一次签名就变一次**。后果不是"多点一次多一个包"这么简单，
// 而是整条在线升级链断死：
//
//	签名不同 → 系统按签名认应用 → INSTALL_FAILED_UPDATE_INCOMPATIBLE
//	          → 客户端只能"卸载后重装"，于是"在线升级"永远失败
//
// 而且失败方式很安静：服务端日志显示"编译完成、发布成功"，用户点更新后
// 系统弹一句"应用未安装"或"与已安装应用签名不一致"。
//
// ## 与引擎那份密钥无关
//
// `/app/keystore.p12`（常量 ImageKeystore）是**引擎 mytv 专用**的，
// 口令与别名都由引擎自己管理。客户端编译**不读、不复制、不假设**那份存在 ——
// 两边各用各的，免得改一边连带另一边，也免得把引擎的凭据带进客户端这条链。
// 这里保留这个常量只是**用来提醒别搞混**。
//
// ## 三个值：代码里有默认，容器部署时可自定义
//
// 默认值写在下面（口令/别名是产品指定的），部署方用环境变量覆盖即可 ——
// docker compose 的 `environment:` 或 `docker run -e` 都行。
//
//	IPTV_KEYSTORE_PASS    签名口令        默认 Qh#iptv
//	IPTV_KEYSTORE_ALIAS   密钥别名        默认 Qhiptv
//	IPTV_KEYSTORE_DIR     keystore 落点   默认 /config/client（持久卷）
//
// ⚠️ 覆盖要**成对**：口令与别名决定签名，改了就等于换了一把钥匙，存量设备
// 升不了级且不报任何错。换口令时必须把旧 keystore 文件一起删掉重建。
const (
	// ImageKeystore 是**引擎专用**那份密钥。客户端**不用它**。
	ImageKeystore = "/app/keystore.p12"

	// 默认签名身份：两个壳共用同一组口令/别名，keystore 文件仍按壳分开放。
	keystoreDefaultAlias = "Qhiptv"
	keystoreDefaultPass  = "Qh#iptv"
	keystoreDefaultDir   = ClientUserDir // /config/client

	// 容器部署时的覆盖项。
	keystorePassEnv  = "IPTV_KEYSTORE_PASS"
	keystoreAliasEnv = "IPTV_KEYSTORE_ALIAS"
	keystoreDirEnv   = "IPTV_KEYSTORE_DIR"
)

// ClientKeystoreDir 返回 keystore 落点目录：环境变量优先，否则用默认的持久卷。
func ClientKeystoreDir() string {
	if v := strings.TrimSpace(os.Getenv(keystoreDirEnv)); v != "" {
		return strings.TrimRight(v, "/")
	}
	return keystoreDefaultDir
}

// clientKeystoreAlias / clientKeystorePass 解析签名身份：环境变量优先，
// 否则用代码里的默认值。两个壳共用同一组值。
func clientKeystoreAlias() string {
	if v := strings.TrimSpace(os.Getenv(keystoreAliasEnv)); v != "" {
		return v
	}
	return keystoreDefaultAlias
}

func clientKeystorePass() string {
	if v := os.Getenv(keystorePassEnv); v != "" {
		return v
	}
	return keystoreDefaultPass
}

// ClientKeystorePath 返回某个壳的固定 keystore 落点。
func ClientKeystorePath(shell string) string {
	if shell == "" {
		shell = ShellQh
	}
	return ClientKeystoreDir() + "/keystore_" + shell + ".p12"
}

// EnsureClientKeystore 返回该壳可用的固定 keystore 路径与别名，
// 没有就固定一份新的。
//
// 幂等：已存在时直接返回，**不重复生成**（重复生成会让签名变化，
// 等于把升级链又断一次）。
func EnsureClientKeystore(shell string) (string, string, error) {
	p := ClientKeystorePath(shell)
	alias := clientKeystoreAlias()

	if info, err := os.Stat(p); err == nil && info.Size() > 0 {
		return p, alias, nil
	}

	if err := os.MkdirAll(ClientKeystoreDir(), 0700); err != nil {
		return "", "", fmt.Errorf("创建密钥目录失败: %v", err)
	}

	pass := clientKeystorePass()
	gen := exec.Command("keytool", "-genkeypair", "-v",
		"-keystore", p, "-storetype", "PKCS12", "-alias", alias,
		"-keyalg", "RSA", "-keysize", "2048", "-validity", "10000",
		"-storepass", pass, "-keypass", pass,
		"-dname", "CN=IPTV Client, OU=Self, O=Self, L=City, S=State, C=CN")
	if out, err := gen.CombinedOutput(); err != nil {
		os.Remove(p)
		return "", "", fmt.Errorf("生成固定密钥失败: %v\n%s", err, out)
	}
	if err := os.Chmod(p, 0600); err != nil {
		return "", "", fmt.Errorf("收紧密钥权限失败: %v", err)
	}
	return p, alias, nil
}

// ClientKeystoreCertSHA 返回该壳固定密钥的**证书 SHA-256 指纹**（小写十六进制）。
//
// 用来判"线上那个包是不是这套密钥签的"：指纹不同 ⇒ 用户点在线升级会被系统
// 以签名不一致拒掉。取不到时返回空串。
func ClientKeystoreCertSHA(shell string) string {
	p := ClientKeystorePath(shell)
	if !Exists(p) {
		return ""
	}
	out, err := runTool("keytool", "-list", "-v",
		"-keystore", p, "-storetype", "PKCS12",
		"-storepass", clientKeystorePass(), "-alias", clientKeystoreAlias())
	if err != nil {
		return ""
	}
	return firstCertSHA(out)
}

// ApkCertSHA 返回一个已签名 APK 的证书 SHA-256 指纹（取**第一张**签名证书）。
// 取不到（未签名/工具缺失）时返回空串。
func ApkCertSHA(apkPath string) string {
	if !Exists(apkPath) {
		return ""
	}
	out, err := runTool(apksignerBin(), "verify", "--print-certs", apkPath)
	if err != nil {
		return ""
	}
	return firstCertSHA(out)
}

// firstCertSHA 从 apksigner verify --print-certs 的输出里抠出第一张证书的
// SHA-256 指纹。输出形如：
//
//	Signer #1 certificate SHA-256 digest: abcdef...
func firstCertSHA(out string) string {
	for _, line := range strings.Split(out, "\n") {
		i := strings.Index(line, "SHA-256 digest:")
		if i < 0 {
			continue
		}
		v := strings.TrimSpace(line[i+len("SHA-256 digest:"):])
		v = strings.TrimSpace(strings.SplitN(v, " ", 2)[0])
		if len(v) == 64 {
			return strings.ToLower(v)
		}
	}
	return ""
}

// KeystoreFingerprintShort 把指纹缩到便于人眼比对的前 12 位。
func KeystoreFingerprintShort(sha string) string {
	s := strings.ToLower(strings.TrimSpace(sha))
	if len(s) < 12 {
		return s
	}
	return s[:12]
}
