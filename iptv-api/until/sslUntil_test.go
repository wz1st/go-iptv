package until

import (
	"crypto/ecdsa"
	"crypto/elliptic"
	"crypto/rand"
	"crypto/rsa"
	"crypto/x509"
	"crypto/x509/pkix"
	"encoding/pem"
	"math/big"
	"os"
	"path/filepath"
	"strings"
	"testing"
	"time"

	"iptv-api/dto"
)

// SSL 证书模块的判据。
//
// 分两层：
//   - **纯函数层**：渲染出来的 nginx 片段、nginx 版本比较、PEM 解析、证书信息；
//   - **真实落盘层**：把 sslCertPath / sslKeyPath 指到临时目录，真写文件再核对权限位 ——
//     私钥必须 0600 是硬要求（/config 是宿主机可见目录），必须在测试里钉住。
//
// 不做"读取 nginx.conf 文本"的断言：那是组装仓（go-iptv）的文件，
// 在 api 的编译树里根本不存在，写这种断言等于给自己挖一个远端必红的坑。

// sslSrcOf 读源码文本，供「契约层」判据使用（渲染顺序等无法从返回值观察的性质）。
func sslSrcOf(t *testing.T, rel string) string {
	t.Helper()
	b, err := os.ReadFile(rel)
	if err != nil {
		t.Fatalf("读源码 %s 失败: %v", rel, err)
	}
	return string(b)
}

// sslUseTempDirs 把证书/私钥目录指到临时目录，返回还原函数。
// 变量是包级的，测试串行执行（没有 t.Parallel），改完必须还原。
func sslUseTempDirs(t *testing.T) (string, func()) {
	t.Helper()
	base := t.TempDir()
	oldDir, oldCert, oldKey := sslDirPath, sslCertPath, sslKeyPath
	sslDirPath = filepath.Join(base, "cert")
	sslCertPath = filepath.Join(sslDirPath, SSLCertName)
	sslKeyPath = filepath.Join(sslDirPath, SSLKeyName)
	return base, func() {
		sslDirPath, sslCertPath, sslKeyPath = oldDir, oldCert, oldKey
	}
}

// sslMakeCert 造一张 RSA 2048 自签证书（私钥是 PKCS#1），返回 PEM 与解析结果。
func sslMakeCert(t *testing.T, cn string, notBefore, notAfter time.Time) (certPEM, keyPEM []byte, cert *x509.Certificate, key *rsa.PrivateKey) {
	t.Helper()
	key, err := rsa.GenerateKey(rand.Reader, 2048)
	if err != nil {
		t.Fatalf("生成 RSA 私钥失败: %v", err)
	}
	tmpl := &x509.Certificate{
		SerialNumber: big.NewInt(time.Now().UnixNano()),
		Subject:      pkix.Name{CommonName: cn},
		// 自签：Issuer 与 Subject 逐字节相同（SelfSigned 判据就是比这两个）
		Issuer:      pkix.Name{CommonName: cn},
		NotBefore:   notBefore,
		NotAfter:    notAfter,
		DNSNames:    []string{"example.com"},
		KeyUsage:    x509.KeyUsageDigitalSignature | x509.KeyUsageKeyEncipherment,
		ExtKeyUsage: []x509.ExtKeyUsage{x509.ExtKeyUsageServerAuth},
	}
	der, err := x509.CreateCertificate(rand.Reader, tmpl, tmpl, &key.PublicKey, key)
	if err != nil {
		t.Fatalf("签发自签证书失败: %v", err)
	}
	cert, err = x509.ParseCertificate(der)
	if err != nil {
		t.Fatalf("解析刚生成的证书失败: %v", err)
	}
	certPEM = pem.EncodeToMemory(&pem.Block{Type: "CERTIFICATE", Bytes: der})
	keyPEM = pem.EncodeToMemory(&pem.Block{Type: "RSA PRIVATE KEY",
		Bytes: x509.MarshalPKCS1PrivateKey(key)})
	return certPEM, keyPEM, cert, key
}

// sslMakeCertWithKey 用**已有的私钥**再签一张证书（可换 CN），
// 用于验证「只换证书、不换私钥」这条路径。
func sslMakeCertWithKey(t *testing.T, cn string, key *rsa.PrivateKey, notBefore, notAfter time.Time) []byte {
	t.Helper()
	tmpl := &x509.Certificate{
		SerialNumber: big.NewInt(time.Now().UnixNano()),
		Subject:      pkix.Name{CommonName: cn},
		Issuer:       pkix.Name{CommonName: cn},
		NotBefore:    notBefore,
		NotAfter:     notAfter,
	}
	der, err := x509.CreateCertificate(rand.Reader, tmpl, tmpl, &key.PublicKey, key)
	if err != nil {
		t.Fatalf("用已有私钥签证书失败: %v", err)
	}
	return pem.EncodeToMemory(&pem.Block{Type: "CERTIFICATE", Bytes: der})
}

// sslMakeECCert 造一张 ECDSA P-256 自签证书，覆盖 EC 私钥那条分支（PKCS#1 之外）。
func sslMakeECCert(t *testing.T, cn string) (certPEM, keyPEM []byte) {
	t.Helper()
	key, err := ecdsa.GenerateKey(elliptic.P256(), rand.Reader)
	if err != nil {
		t.Fatalf("生成 EC 私钥失败: %v", err)
	}
	now := time.Now()
	tmpl := &x509.Certificate{
		SerialNumber: big.NewInt(now.UnixNano()),
		Subject:      pkix.Name{CommonName: cn},
		Issuer:       pkix.Name{CommonName: cn},
		NotBefore:    now.Add(-time.Hour),
		NotAfter:     now.Add(24 * time.Hour),
	}
	der, err := x509.CreateCertificate(rand.Reader, tmpl, tmpl, &key.PublicKey, key)
	if err != nil {
		t.Fatalf("签发 EC 自签证书失败: %v", err)
	}
	certPEM = pem.EncodeToMemory(&pem.Block{Type: "CERTIFICATE", Bytes: der})
	derKey, err := x509.MarshalECPrivateKey(key)
	if err != nil {
		t.Fatalf("序列化 EC 私钥失败: %v", err)
	}
	keyPEM = pem.EncodeToMemory(&pem.Block{Type: "EC PRIVATE KEY", Bytes: derKey})
	return certPEM, keyPEM
}

// ---------------- 渲染（纯函数） ----------------

func TestRenderHTTPSConfPinsPortAndPaths(t *testing.T) {
	got := RenderHTTPSConf(0, false) // 0 → 443
	for _, want := range []string{
		"listen       443 ssl;",
		"listen       [::]:443 ssl;",
		// 证书路径是 nginx 配置里的**死路径**，不能随部署漂
		"ssl_certificate     /config/cert/server.crt;",
		"ssl_certificate_key /config/cert/server.key;",
		// 站点本体与 80 共用同一份 location 规则
		"include /etc/nginx/conf.d/site.inc;",
		"ssl_protocols       TLSv1.2 TLSv1.3;",
	} {
		if !strings.Contains(got, want) {
			t.Errorf("HTTPS 片段缺少 %q\n--- 实际 ---\n%s", want, got)
		}
	}

	// 反向：http2=false 时**不能**出现这条指令 —— 老 nginx 上它是 unknown directive，
	// 整个进程直接起不来。
	if strings.Contains(got, "http2") {
		t.Errorf("http2=false 时不该写 http2 指令\n%s", got)
	}

	// 0 / 越界端口都回落到 443
	if h := RenderHTTPSConf(70000, false); !strings.Contains(h, "listen       443 ssl;") {
		t.Errorf("越界端口应回落 443\n%s", h)
	}
	if h := RenderHTTPSConf(-1, false); !strings.Contains(h, "listen       443 ssl;") {
		t.Errorf("负数端口应回落 443\n%s", h)
	}

	// 自定义端口 + http2
	h := RenderHTTPSConf(8443, true)
	if !strings.Contains(h, "listen       8443 ssl;") || !strings.Contains(h, "http2        on;") {
		t.Errorf("8443 + http2 渲染不对\n%s", h)
	}
}

// sslDirectives 去掉整行注释，只留 nginx 指令。
//
// 判据要看的是"指令有没有写出去"；注释里提到某条指令是**解释**，不该被当成违规
// —— 本判据第一版直接对全文做子串匹配，就被生成器自己的注释判成假红。
func sslDirectives(s string) string {
	var b strings.Builder
	for _, line := range strings.Split(s, "\n") {
		if strings.HasPrefix(strings.TrimSpace(line), "#") {
			continue
		}
		b.WriteString(line)
		b.WriteByte('\n')
	}
	return b.String()
}

func TestRenderRedirect80HasLoopbackExemption(t *testing.T) {
	off := RenderRedirect80(443, false)
	if strings.Contains(sslDirectives(off), "return 301") {
		t.Errorf("关闭时不该写 return 301 指令\n%s", off)
	}
	if !strings.Contains(off, "#") {
		t.Errorf("关闭时应留下说明性注释，而不是空文件\n%q", off)
	}

	on := RenderRedirect80(443, true)
	if !strings.Contains(on, "return 301 https://$host$request_uri;") {
		t.Errorf("开启时应 301 到 https\n%s", on)
	}
	// 环回豁免：容器的 HEALTHCHECK 是 `wget -qO- http://127.0.0.1/version`，
	// 少了这条判断，开了强制跳转后容器会一直 unhealthy
	// —— 「容器状态」和「HTTPS 通不通」是两件事，不该互相牵连。
	if !strings.Contains(on, `if ($remote_addr != "127.0.0.1")`) {
		t.Errorf("缺少环回豁免，开了强制跳转会拖垮 HEALTHCHECK\n%s", on)
	}

	if p := RenderRedirect80(8443, true); !strings.Contains(p, "return 301 https://$host:8443$request_uri;") {
		t.Errorf("非 443 端口的跳转目标应带端口号\n%s", p)
	}
	// 端口越界时跳转目标按 443 写（不带端口号）
	if p := RenderRedirect80(0, true); !strings.Contains(p, "return 301 https://$host$request_uri;") {
		t.Errorf("越界端口应落到 443 的写法\n%s", p)
	}
}

func TestSupportsHTTP2Boundaries(t *testing.T) {
	cases := []struct {
		version string
		want    bool
		why     string
	}{
		{"1.24.9", false, "1.25.1 之前没有 `http2 on;` 指令"},
		{"1.25.0", false, "差一个补丁号也不行"},
		{"1.25.1", true, "恰好是引入版本"},
		{"1.26.2", true, "当前镜像版本"},
		{"1.27.0", true, "更高"},
		{"2.0.0", true, "大版本更高"},
		{"", false, "取不到版本"},
		{"garbage", false, "解析不出段数"},
		{"nginx/1.26.2", false, "不是纯版本号，宁可返回 false"},
		{"1.25.1-rc1", true, "预发布后缀只取数字前缀"},
	}
	for _, c := range cases {
		if got := SupportsHTTP2(c.version); got != c.want {
			t.Errorf("SupportsHTTP2(%q) = %v，期望 %v（%s）", c.version, got, c.want, c.why)
		}
	}
}

// ---------------- 证书解析 ----------------

func TestParseCertPEMCountsChainAndPairsKeys(t *testing.T) {
	now := time.Now()
	certA, keyA, _, _ := sslMakeCert(t, "a.example.com", now.Add(-time.Hour), now.Add(365*24*time.Hour))
	certB, keyB, _, _ := sslMakeCert(t, "b.example.com", now.Add(-time.Hour), now.Add(365*24*time.Hour))

	leaf, chain, err := ParseCertPEM(certA)
	if err != nil {
		t.Fatalf("解析单张证书失败: %v", err)
	}
	if chain != 1 {
		t.Errorf("单张证书 chainLen 应为 1，实际 %d", chain)
	}
	if leaf.Subject.CommonName != "a.example.com" {
		t.Errorf("取到的不是叶子证书: %s", leaf.Subject.CommonName)
	}

	// 两张拼成链：叶子仍是第 1 张，chainLen = 2
	chainPEM := append(append([]byte{}, certA...), certB...)
	leaf2, chain2, err := ParseCertPEM(chainPEM)
	if err != nil {
		t.Fatalf("解析证书链失败: %v", err)
	}
	if chain2 != 2 || leaf2.Subject.CommonName != "a.example.com" {
		t.Errorf("证书链解析不对: chain=%d leaf=%s", chain2, leaf2.Subject.CommonName)
	}

	// 空内容 / 非证书内容要报错，不能"静默返回一张空证书"
	if _, _, err := ParseCertPEM([]byte("这不是证书\n")); err == nil {
		t.Error("非证书内容应当报错")
	}
	if _, _, err := ParseCertPEM(nil); err == nil {
		t.Error("空内容应当报错")
	}

	ka, err := ParsePrivateKeyPEM(keyA)
	if err != nil {
		t.Fatalf("解析 PKCS#1 私钥失败: %v", err)
	}
	if !KeyMatchesCert(leaf, ka) {
		t.Error("自己的私钥应当判定为匹配")
	}
	kb, err := ParsePrivateKeyPEM(keyB)
	if err != nil {
		t.Fatalf("解析另一把私钥失败: %v", err)
	}
	// 这条判据是 `key values mismatch` 的前置拦截 —— nginx 直到 reload 才会报，
	// 那时站点已经在重启路上了。
	if KeyMatchesCert(leaf, kb) {
		t.Error("别人的私钥不该判定为匹配")
	}
	if got := KeyDescribe(ka); got != "RSA 2048" {
		t.Errorf("私钥描述应为 RSA 2048，实际 %q", got)
	}
}

func TestParseECPrivateKey(t *testing.T) {
	certPEM, keyPEM := sslMakeECCert(t, "ec.example.com")
	cert, _, err := ParseCertPEM(certPEM)
	if err != nil {
		t.Fatalf("解析 EC 证书失败: %v", err)
	}
	key, err := ParsePrivateKeyPEM(keyPEM)
	if err != nil {
		t.Fatalf("解析 EC 私钥失败: %v", err)
	}
	if !KeyMatchesCert(cert, key) {
		t.Error("EC 证书与私钥应判定为匹配")
	}
	if got := KeyDescribe(key); got != "ECDSA P-256" {
		t.Errorf("私钥描述应为 ECDSA P-256，实际 %q", got)
	}
	if got := describePublicKey(cert.PublicKey); got != "ECDSA P-256" {
		t.Errorf("公钥描述应为 ECDSA P-256，实际 %q", got)
	}
}

func TestCertInfoFlags(t *testing.T) {
	now := time.Now()

	// 还没生效
	futurePEM, _, _, _ := sslMakeCert(t, "future.example.com", now.Add(48*time.Hour), now.Add(96*time.Hour))
	c, _, err := ParseCertPEM(futurePEM)
	if err != nil {
		t.Fatal(err)
	}
	info := CertInfoFrom(c, 1)
	if !info.OK || !info.NotYetValid || info.Expired {
		t.Errorf("未生效证书标记不对: %+v", info)
	}
	if info.SelfSigned != true {
		t.Error("自签证书应被标记为 SelfSigned")
	}
	if info.DNSNames == nil || len(info.DNSNames) != 1 || info.DNSNames[0] != "example.com" {
		t.Errorf("DNSNames 应原样带出: %v", info.DNSNames)
	}
	// IPAddresses 必须是空切片而不是 nil —— 前端直接 .length，nil 会变成 null
	if info.IPAddresses == nil {
		t.Error("IPAddresses 应为空切片（JSON 里是 [] 而不是 null）")
	}

	// 已过期：DaysLeft 必须是负数
	expiredPEM, _, _, _ := sslMakeCert(t, "expired.example.com", now.Add(-72*time.Hour), now.Add(-24*time.Hour))
	c2, _, err := ParseCertPEM(expiredPEM)
	if err != nil {
		t.Fatal(err)
	}
	info2 := CertInfoFrom(c2, 1)
	if !info2.Expired || info2.DaysLeft >= 0 {
		t.Errorf("过期证书标记不对: expired=%v daysLeft=%d", info2.Expired, info2.DaysLeft)
	}
	// 过期就不该再说"快到期了"，否则界面上会出现两条互相打架的提示
	if info2.ExpiringSoon {
		t.Error("已过期的证书不该同时标记 ExpiringSoon")
	}

	// 14 天内到期 → 标红
	soonPEM, _, _, _ := sslMakeCert(t, "soon.example.com", now.Add(-time.Hour), now.Add(5*24*time.Hour))
	c3, _, err := ParseCertPEM(soonPEM)
	if err != nil {
		t.Fatal(err)
	}
	info3 := CertInfoFrom(c3, 1)
	if !info3.ExpiringSoon || info3.DaysLeft > 14 {
		t.Errorf("5 天后到期应标记 ExpiringSoon: %+v", info3)
	}
	if info3.Fingerprint == "" || len(info3.Fingerprint) != 64 {
		t.Errorf("SHA-256 指纹应为 64 位十六进制，实际 %q", info3.Fingerprint)
	}
}

// ---------------- 真实落盘 ----------------

func TestSaveSSLCertWritesTightPermissions(t *testing.T) {
	_, restore := sslUseTempDirs(t)
	defer restore()

	now := time.Now()
	certPEM, keyPEM, _, _ := sslMakeCert(t, "saved.example.com", now.Add(-time.Hour), now.Add(24*time.Hour))
	info, err := SaveSSLCert(certPEM, keyPEM)
	if err != nil {
		t.Fatalf("保存证书失败: %v", err)
	}
	if !info.OK || !info.KeyMatches {
		t.Fatalf("保存后返回的信息不对: %+v", info)
	}

	ci, err := os.Stat(sslCertPath)
	if err != nil {
		t.Fatalf("证书没落盘: %v", err)
	}
	if ci.Mode().Perm() != 0o644 {
		t.Errorf("证书权限应为 0644，实际 %v", ci.Mode().Perm())
	}
	ki, err := os.Stat(sslKeyPath)
	if err != nil {
		t.Fatalf("私钥没落盘: %v", err)
	}
	// /config 是宿主机直接可见的目录（用户要备份/替换证书），私钥不能是 0644
	if ki.Mode().Perm() != 0o600 {
		t.Errorf("私钥权限应为 0600，实际 %v", ki.Mode().Perm())
	}

	// 再读回来：LoadSSLCertInfo 是页面「证书信息」那一栏的唯一来源
	got := LoadSSLCertInfo()
	if !got.OK || got.Error != "" {
		t.Fatalf("回读失败: %+v", got)
	}
	if !got.KeyMatches || got.KeyError != "" {
		t.Fatalf("回读时私钥应判定为匹配: %+v", got)
	}
	if got.ChainLen != 1 {
		t.Errorf("chainLen 应为 1，实际 %d", got.ChainLen)
	}
	if !strings.Contains(got.Subject, "saved.example.com") {
		t.Errorf("Subject 应含 CN，实际 %q", got.Subject)
	}
	if got.KeyType != "RSA 2048" {
		t.Errorf("KeyType 应为 RSA 2048，实际 %q", got.KeyType)
	}
}

func TestSaveSSLCertRejectsMismatchBeforeTouchingDisk(t *testing.T) {
	base, restore := sslUseTempDirs(t)
	defer restore()

	now := time.Now()
	certPEM, _, _, _ := sslMakeCert(t, "x.example.com", now.Add(-time.Hour), now.Add(time.Hour))
	_, otherKeyPEM, _, _ := sslMakeCert(t, "y.example.com", now.Add(-time.Hour), now.Add(time.Hour))

	if _, err := SaveSSLCert(certPEM, otherKeyPEM); err == nil {
		t.Fatal("证书与私钥不是一对时应当报错")
	}
	// 「校验不过一个字节都不写」：出错后连目录都不该建起来，
	// 否则一次误传就会把线上正在用的证书覆盖掉一半。
	if entries, err := os.ReadDir(filepath.Join(base, "cert")); err == nil && len(entries) != 0 {
		t.Errorf("校验失败后不该落盘，实际有 %d 个条目", len(entries))
	}

	// 垃圾输入同理
	if _, err := SaveSSLCert([]byte("not a cert"), otherKeyPEM); err == nil {
		t.Error("非证书内容应当报错")
	}
	if _, err := SaveSSLCert(certPEM, []byte("not a key")); err == nil {
		t.Error("非私钥内容应当报错")
	}
}

func TestClearSSLCertRemovesBothFiles(t *testing.T) {
	_, restore := sslUseTempDirs(t)
	defer restore()

	now := time.Now()
	certPEM, keyPEM, _, _ := sslMakeCert(t, "clear.example.com", now.Add(-time.Hour), now.Add(time.Hour))
	if _, err := SaveSSLCert(certPEM, keyPEM); err != nil {
		t.Fatal(err)
	}
	if !Exists(sslCertPath) || !Exists(sslKeyPath) {
		t.Fatal("前置条件不成立：两个文件应当都在")
	}
	if err := ClearSSLCert(); err != nil {
		t.Fatalf("清除证书失败: %v", err)
	}
	if Exists(sslCertPath) || Exists(sslKeyPath) {
		t.Error("清除后两个文件都不该在")
	}
	// 幂等：没文件时再清一次不该报错（后台连点两下「清除」很正常）
	if err := ClearSSLCert(); err != nil {
		t.Errorf("重复清除应当幂等，实际报错: %v", err)
	}
	// 清完之后证书信息应回到"还没上传"，而不是崩
	if got := LoadSSLCertInfo(); got.OK || got.Error == "" {
		t.Errorf("清完后应是「还没上传」状态: %+v", got)
	}
}

func TestEnabledHTTPSNeedsSwitchAndBothFiles(t *testing.T) {
	_, restore := sslUseTempDirs(t)
	defer restore()

	if EnabledHTTPS(nil) {
		t.Error("配置为 nil 时不该认为 HTTPS 可用")
	}

	cfg := &dto.Config{}
	cfg.SSL.Enable = true
	// 证书不全时必须为假：nginx 解析到指向不存在文件的 ssl_certificate 会
	// **整个进程起不来**（连 80 一起白屏），比"HTTPS 没生效"严重得多。
	if EnabledHTTPS(cfg) {
		t.Fatal("证书文件不存在时不该认为 HTTPS 可用")
	}

	now := time.Now()
	certPEM, keyPEM, _, _ := sslMakeCert(t, "enabled.example.com", now.Add(-time.Hour), now.Add(time.Hour))
	if _, err := SaveSSLCert(certPEM, keyPEM); err != nil {
		t.Fatal(err)
	}
	if !EnabledHTTPS(cfg) {
		t.Fatal("开关开着且证书私钥齐全，应当为真")
	}

	cfg.SSL.Enable = false
	if EnabledHTTPS(cfg) {
		t.Fatal("开关关掉后不该为真")
	}
	cfg.SSL.Enable = true
	if err := os.Remove(sslKeyPath); err != nil {
		t.Fatal(err)
	}
	if EnabledHTTPS(cfg) {
		t.Fatal("私钥缺失时不该为真")
	}
}

func TestSSLPortFallback(t *testing.T) {
	if got := SSLPort(nil); got != DefaultHTTPSPort {
		t.Errorf("nil 配置应回落 %d，实际 %d", DefaultHTTPSPort, got)
	}
	if got := SSLPort(&dto.Config{}); got != DefaultHTTPSPort {
		t.Errorf("端口为 0 应回落 %d，实际 %d", DefaultHTTPSPort, got)
	}
	if got := SSLPort(&dto.Config{SSL: dto.SSL{Port: 8443}}); got != 8443 {
		t.Errorf("配置了 8443 应原样返回，实际 %d", got)
	}
	if got := SSLPort(&dto.Config{SSL: dto.SSL{Port: 70000}}); got != DefaultHTTPSPort {
		t.Errorf("越界端口应回落 %d，实际 %d", DefaultHTTPSPort, got)
	}
}

func TestSSLFileStatFormatting(t *testing.T) {
	_, restore := sslUseTempDirs(t)
	defer restore()

	if s, m := SSLFileStat(sslCertPath); s != "" || m != "" {
		t.Errorf("文件不存在时应返回空串，实际 %q / %q", s, m)
	}

	now := time.Now()
	certPEM, keyPEM, _, _ := sslMakeCert(t, "stat.example.com", now.Add(-time.Hour), now.Add(time.Hour))
	if _, err := SaveSSLCert(certPEM, keyPEM); err != nil {
		t.Fatal(err)
	}
	s, m := SSLFileStat(sslCertPath)
	if s == "" || m == "" {
		t.Fatalf("文件存在时应给出体积与时间，实际 %q / %q", s, m)
	}
	if !strings.HasSuffix(s, "B") && !strings.HasSuffix(s, "KB") {
		t.Errorf("体积应带单位，实际 %q", s)
	}
}

// TestApplySSLCertEmptyIsNoop 两个都空 = "保持磁盘原样"，是后台只改开关时会走的路。
func TestApplySSLCertEmptyIsNoop(t *testing.T) {
	_, restore := sslUseTempDirs(t)
	defer restore()

	if err := ApplySSLCert("", ""); err != nil {
		t.Fatalf("两个都空应当是合法的空操作，实际报错: %v", err)
	}
	if Exists(sslCertPath) || Exists(sslKeyPath) {
		t.Error("空操作不该写出任何文件")
	}

	// 已有证书时也要保持原样（不能被"空"当成"清空"）
	now := time.Now()
	certPEM, keyPEM, _, _ := sslMakeCert(t, "keep.example.com", now.Add(-time.Hour), now.Add(time.Hour))
	if _, err := SaveSSLCert(certPEM, keyPEM); err != nil {
		t.Fatal(err)
	}
	before, err := os.ReadFile(sslCertPath)
	if err != nil {
		t.Fatal(err)
	}
	if err := ApplySSLCert("", ""); err != nil {
		t.Fatalf("空操作报错: %v", err)
	}
	after, err := os.ReadFile(sslCertPath)
	if err != nil {
		t.Fatal(err)
	}
	if string(before) != string(after) {
		t.Error("空操作不该改动已有的证书文件")
	}
}

// TestApplySSLCertOnlyCertKeepsExistingKey 只给证书时，私钥必须原样保留。
//
// 这是后台最容易踩的一条：页面上证书框被服务端回填、私钥框永远是空的，
// 用户只改了一个开关就点保存 —— 若把"空私钥"当成"删私钥"，
// 线上正在用的 HTTPS 会被一次无关的操作弄坏。
func TestApplySSLCertOnlyCertKeepsExistingKey(t *testing.T) {
	_, restore := sslUseTempDirs(t)
	defer restore()

	now := time.Now()
	certA, _, _, key := sslMakeCert(t, "first.example.com", now.Add(-time.Hour), now.Add(time.Hour))
	if _, err := SaveSSLCert(certA, mustPEMKey(t, key)); err != nil {
		t.Fatal(err)
	}
	keyBefore, err := os.ReadFile(sslKeyPath)
	if err != nil {
		t.Fatal(err)
	}

	// 同一把私钥、换一个 CN 的证书：应该被接受，私钥保持不动
	certB := sslMakeCertWithKey(t, "second.example.com", key, now.Add(-time.Hour), now.Add(time.Hour))
	if err := ApplySSLCert(string(certB), ""); err != nil {
		t.Fatalf("只换证书应当被接受: %v", err)
	}
	keyAfter, err := os.ReadFile(sslKeyPath)
	if err != nil {
		t.Fatalf("私钥被删掉了: %v", err)
	}
	if string(keyBefore) != string(keyAfter) {
		t.Error("只给证书时私钥必须逐字节保持不变")
	}
	ki, err := os.Stat(sslKeyPath)
	if err != nil {
		t.Fatal(err)
	}
	if ki.Mode().Perm() != 0o600 {
		t.Errorf("私钥权限应保持 0600，实际 %v", ki.Mode().Perm())
	}
	got := LoadSSLCertInfo()
	if !got.OK || !strings.Contains(got.Subject, "second.example.com") || !got.KeyMatches {
		t.Errorf("换完之后证书信息不对: %+v", got)
	}
}

// TestApplySSLCertOnlyCertRejectedWhenKeyDiffers 配不上时必须整体拒绝，且**不动盘**。
func TestApplySSLCertOnlyCertRejectedWhenKeyDiffers(t *testing.T) {
	_, restore := sslUseTempDirs(t)
	defer restore()

	now := time.Now()
	certA, keyPEM, _, _ := sslMakeCert(t, "first.example.com", now.Add(-time.Hour), now.Add(time.Hour))
	if _, err := SaveSSLCert(certA, keyPEM); err != nil {
		t.Fatal(err)
	}
	certBefore, err := os.ReadFile(sslCertPath)
	if err != nil {
		t.Fatal(err)
	}

	// 另一把私钥签的证书：与盘上的私钥不是一对
	_, _, _, otherKey := sslMakeCert(t, "other.example.com", now.Add(-time.Hour), now.Add(time.Hour))
	certB := sslMakeCertWithKey(t, "second.example.com", otherKey, now.Add(-time.Hour), now.Add(time.Hour))

	if err := ApplySSLCert(string(certB), ""); err == nil {
		t.Fatal("证书与盘上私钥不配对时应当拒绝")
	}
	certAfter, err := os.ReadFile(sslCertPath)
	if err != nil {
		t.Fatal(err)
	}
	if string(certBefore) != string(certAfter) {
		t.Error("拒绝时必须保持原文件不动 —— 不能先写坏再报错")
	}
}

// TestApplySSLCertOnlyKeyPaths 只给私钥的两条分支：配对通过 / 缺证书或配不上拒绝。
func TestApplySSLCertOnlyKeyPaths(t *testing.T) {
	_, restore := sslUseTempDirs(t)
	defer restore()

	now := time.Now()

	// 盘上什么都没有：只给私钥应当被拒绝（没有可配对的证书）
	_, keyPEM, _, _ := sslMakeCert(t, "lonely.example.com", now.Add(-time.Hour), now.Add(time.Hour))
	if err := ApplySSLCert("", string(keyPEM)); err == nil {
		t.Error("盘上没有证书时，只给私钥应当被拒绝")
	}
	// 反方向同理
	certPEM, _, _, _ := sslMakeCert(t, "lonely2.example.com", now.Add(-time.Hour), now.Add(time.Hour))
	if err := ApplySSLCert(string(certPEM), ""); err == nil {
		t.Error("盘上没有私钥时，只给证书应当被拒绝")
	}

	// 正常配对
	certA, keyA, _, _ := sslMakeCert(t, "pair.example.com", now.Add(-time.Hour), now.Add(time.Hour))
	if _, err := SaveSSLCert(certA, keyA); err != nil {
		t.Fatal(err)
	}
	certBefore, err := os.ReadFile(sslCertPath)
	if err != nil {
		t.Fatal(err)
	}
	// 同一把私钥再传一次：通过，且证书不动
	if err := ApplySSLCert("", string(keyA)); err != nil {
		t.Fatalf("同样的私钥应当通过: %v", err)
	}
	certAfter, err := os.ReadFile(sslCertPath)
	if err != nil {
		t.Fatal(err)
	}
	if string(certBefore) != string(certAfter) {
		t.Error("只给私钥时证书必须保持不变")
	}

	// 换一把不配对的私钥：拒绝
	_, otherKeyPEM, _, _ := sslMakeCert(t, "third.example.com", now.Add(-time.Hour), now.Add(time.Hour))
	if err := ApplySSLCert("", string(otherKeyPEM)); err == nil {
		t.Error("不配对的私钥应当被拒绝")
	}
}

// mustPEMKey 把 RSA 私钥转成 PKCS#1 PEM（测试里反复要用）。
func mustPEMKey(t *testing.T, key *rsa.PrivateKey) []byte {
	t.Helper()
	return pem.EncodeToMemory(&pem.Block{Type: "RSA PRIVATE KEY",
		Bytes: x509.MarshalPKCS1PrivateKey(key)})
}

// ---------------- 契约层 ----------------

// TestApplyOrderIsWriteThenTestThenReload 钉住应用顺序。
//
// 顺序反了（先 reload 再校验）会出现"nginx 已经拿着一份坏配置跑起来了"，
// 而这里刻意选的是「写 → nginx -t → reload」：写坏了当场拦下并回滚，
// 运行中的 nginx 一直拿着旧配置，站点不会因为一次误操作白屏。
func TestApplyOrderIsWriteThenTestThenReload(t *testing.T) {
	src := sslSrcOf(t, "sslUntil.go")

	i := strings.Index(src, "func applySSLSettings(")
	if i < 0 {
		t.Fatal("找不到 applySSLSettings")
	}
	rest := src[i:]
	j := strings.Index(rest, "\n// SaveSSLCert")
	if j < 0 {
		t.Fatal("找不到 applySSLSettings 的结尾")
	}
	body := rest[:j]

	w := strings.Index(body, "WriteFileAtomic(sslConfPath")
	tn := strings.Index(body, "TestNginx()")
	rl := strings.Index(body, "ReloadNginx()")
	if w < 0 || tn < 0 || rl < 0 {
		t.Fatalf("applySSLSettings 里必须同时出现写片段/nginx -t/reload（w=%d t=%d r=%d）", w, tn, rl)
	}
	if !(w < tn && tn < rl) {
		t.Errorf("顺序必须是「写片段 → nginx -t → reload」，实际 w=%d t=%d r=%d", w, tn, rl)
	}

	// 校验失败的分支必须回滚
	if !strings.Contains(body[tn:rl], "restore()") {
		t.Error("nginx -t 失败的分支里必须调用 restore() 回滚旧片段")
	}
	// 重载失败的分支也必须回滚，并把 nginx 拉回旧配置
	if !strings.Contains(body[rl:], "restore()") {
		t.Error("reload 失败的分支里必须调用 restore()")
	}
}

// TestRedirectIsSubordinateToHTTPS 钉住「强制跳转从属于 HTTPS」这条收敛。
//
// 放开的后果是**自锁**：80 上的请求全被 301 到一个没人监听的端口，管理页面
// 自己也就进不去了；而容器的 HEALTHCHECK 走环回、被豁免，依旧报健康 ——
// 于是"站点打不开 + 告警全绿"，现象与原因完全对不上。
func TestRedirectIsSubordinateToHTTPS(t *testing.T) {
	src := sslSrcOf(t, "sslUntil.go")
	if !strings.Contains(src, "redirect := forceRedirect && enable && certOK") {
		t.Error("强制跳转必须收敛成「HTTPS 也开着才生效」")
	}
	if !strings.Contains(src, "RenderRedirect80(port, redirect)") {
		t.Error("渲染跳转片段必须用收敛后的 redirect，不能用原始 forceRedirect")
	}
	// 反向：不能再出现"只看 forceRedirect 就渲染跳转"的老写法
	if strings.Contains(src, "RenderRedirect80(port, forceRedirect)") {
		t.Error("仍在使用未收敛的 forceRedirect 渲染跳转")
	}
}

// TestRedirectSnippetKeepsLoopbackGuard 反向钉住环回豁免：注释里写清楚原因，
// 免得后来者"顺手"把它删掉。
func TestRedirectSnippetKeepsLoopbackGuard(t *testing.T) {
	src := sslSrcOf(t, "sslUntil.go")
	if !strings.Contains(src, `"if ($remote_addr != \"127.0.0.1\") {\n"`) {
		t.Error("RenderRedirect80 里的环回豁免行不见了 —— 删掉它会让开了强制跳转的容器一直 unhealthy")
	}
	if !strings.Contains(src, "HEALTHCHECK") {
		t.Error("环回豁免的注释里必须写明 HEALTHCHECK 这个理由")
	}
}
