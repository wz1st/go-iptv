package until

import (
	"bytes"
	"crypto/ecdsa"
	"crypto/ed25519"
	"crypto/rsa"
	"crypto/sha256"
	"crypto/tls"
	"crypto/x509"
	"encoding/hex"
	"encoding/pem"
	"errors"
	"fmt"
	"net"
	"os"
	"os/exec"
	"path/filepath"
	"strconv"
	"strings"
	"time"

	"iptv-api/dao"
	"iptv-api/dto"
)

// SSL 证书与 nginx 的 HTTPS 站点。
//
// 分工：
//   - **本文件**负责把「后台 SSL 证书页」的设置渲染成 nginx 片段（渲染 → 校验 → 重载）；
//   - 证书/私钥固定落在 /config/cert（持久卷，容器重建后还在），
//     文件名固定为 server.crt / server.key —— nginx 配置里写死这两个路径；
//   - 生成的 nginx 片段也放持久卷（/config/nginx），nginx.conf 用**通配** include，
//     所以"没配过 HTTPS"的机器上一个文件都匹配不到，nginx 照常启动。
//
// 为什么不直接改 /etc/nginx/nginx.conf：那是**镜像层**，重拉镜像就还原，
// 用户在后台配的 HTTPS 会无声消失（与 /app/client 不落 /config/client 同一个坑）。
const (
	// SSLDir 证书与私钥目录（后台页面里会显示给用户）。默认值；可用 IPTV_SSL_DIR 改写。
	SSLDir = "/config/cert"
	// SSLCertName 落盘的证书名（固定，不可变 —— nginx 配置里写死）。
	SSLCertName = "server.crt"
	// SSLKeyName 落盘的私钥名（固定，不可变）。
	SSLKeyName = "server.key"

	// SSLConfDir 生成的 nginx 片段目录（持久卷）。默认值；可用 IPTV_SSL_CONF_DIR 改写。
	SSLConfDir = "/config/nginx"

	// SiteIncPath 站点本体（两个 server 共用），由镜像提供。
	SiteIncPath = "/etc/nginx/conf.d/site.inc"

	// DefaultHTTPSPort 默认 HTTPS 端口。
	DefaultHTTPSPort = 443

	// HTTP2MinVersion 起 nginx 才支持 `http2 on;` 这条独立指令
	// （1.25.1 之前只能在 listen 上写 http2 参数，写法已废弃）。
	HTTP2MinVersion = "1.25.1"

	// 证书剩余天数低于这个值就在界面上标红。
	certWarnDays = 14
)

// 证书、私钥与生成片段的**实际落脚点**。
//
// 写成变量而不是常量只为一件事：让测试能把它们指到临时目录 ——
// 「保存证书」要真写盘并校验权限位（私钥必须 0600），不指到临时目录就得往
// /config 上写。不设环境变量时取值与上面的常量完全一致，行为不变。
var (
	sslDirPath  = sslEnvOr("IPTV_SSL_DIR", SSLDir)
	sslCertPath = sslDirPath + "/" + SSLCertName
	sslKeyPath  = sslDirPath + "/" + SSLKeyName

	sslConfDirPath  = sslEnvOr("IPTV_SSL_CONF_DIR", SSLConfDir)
	sslConfPath     = sslConfDirPath + "/https.conf"
	sslRedirectPath = sslConfDirPath + "/redirect80.inc"
)

// sslEnvOr 取环境变量，空串（或全空白）时用默认值。
func sslEnvOr(key, def string) string {
	if v := strings.TrimSpace(os.Getenv(key)); v != "" {
		return v
	}
	return def
}

// sslNginxBin / sslNginxConf 允许用环境变量改写，与启动器（iptv-start）保持同一套名字。
func sslNginxBin() string {
	if v := strings.TrimSpace(os.Getenv("IPTV_NGINX_BIN")); v != "" {
		return v
	}
	return "/usr/sbin/nginx"
}

func sslNginxConf() string {
	if v := strings.TrimSpace(os.Getenv("IPTV_NGINX_CONF")); v != "" {
		return v
	}
	return "/etc/nginx/nginx.conf"
}

// SSLPort 取生效的 HTTPS 端口：配置里没填（0）或越界时回落到 443。
func SSLPort(cfg *dto.Config) int {
	if cfg == nil {
		return DefaultHTTPSPort
	}
	p := cfg.SSL.Port
	if p < 1 || p > 65535 {
		return DefaultHTTPSPort
	}
	return p
}

// EnabledHTTPS 判断"HTTPS 站点该不该存在"：开了开关**且**证书私钥都在。
//
// 证书不全时不能生成配置 —— nginx 解析到 `ssl_certificate` 指向不存在的文件会
// **整个进程起不来**，代价是站点白屏，比"HTTPS 暂时没生效"严重得多。
func EnabledHTTPS(cfg *dto.Config) bool {
	if cfg == nil || !cfg.SSL.Enable {
		return false
	}
	return Exists(sslCertPath) && Exists(sslKeyPath)
}

// ---------------- 证书解析 ----------------

// ParseCertPEM 解析证书文件（PEM，可以是一整条链）。
// 返回叶子证书、链上证书数量与错误。
func ParseCertPEM(data []byte) (*x509.Certificate, int, error) {
	var leaf *x509.Certificate
	count := 0
	rest := data
	for {
		var block *pem.Block
		block, rest = pem.Decode(rest)
		if block == nil {
			break
		}
		if block.Type != "CERTIFICATE" {
			continue
		}
		cert, err := x509.ParseCertificate(block.Bytes)
		if err != nil {
			if leaf == nil {
				return nil, count, fmt.Errorf("第 %d 张证书解析失败: %w", count+1, err)
			}
			continue
		}
		if leaf == nil {
			leaf = cert
		}
		count++
	}
	if leaf == nil {
		return nil, 0, errors.New("文件里没有找到 CERTIFICATE 块（请上传 PEM 格式的证书）")
	}
	return leaf, count, nil
}

// ParsePrivateKeyPEM 解析私钥（PKCS#1 / PKCS#8 / EC 三种都认）。
func ParsePrivateKeyPEM(data []byte) (any, error) {
	rest := data
	for {
		var block *pem.Block
		block, rest = pem.Decode(rest)
		if block == nil {
			break
		}
		switch block.Type {
		case "RSA PRIVATE KEY":
			return x509.ParsePKCS1PrivateKey(block.Bytes)
		case "EC PRIVATE KEY":
			return x509.ParseECPrivateKey(block.Bytes)
		case "PRIVATE KEY":
			return x509.ParsePKCS8PrivateKey(block.Bytes)
		}
	}
	return nil, errors.New("文件里没有找到私钥块（支持 PKCS#1 / PKCS#8 / EC）")
}

// KeyMatchesCert 校验私钥与证书是不是一对。不是一对时 nginx 会在**重载时**报错
// （`key values mismatch`），提前查出来能给出人话提示。
func KeyMatchesCert(cert *x509.Certificate, key any) bool {
	if cert == nil || key == nil {
		return false
	}
	var pub any
	switch k := key.(type) {
	case *rsa.PrivateKey:
		pub = &k.PublicKey
	case *ecdsa.PrivateKey:
		pub = &k.PublicKey
	case ed25519.PrivateKey:
		pub = k.Public()
	default:
		return false
	}
	certPub, err := x509.MarshalPKIXPublicKey(cert.PublicKey)
	if err != nil {
		return false
	}
	keyPub, err := x509.MarshalPKIXPublicKey(pub)
	if err != nil {
		return false
	}
	return bytes.Equal(certPub, keyPub)
}

// KeyDescribe 给出私钥的人话描述，如 `RSA 2048` / `ECDSA P-256`。
func KeyDescribe(key any) string {
	switch k := key.(type) {
	case *rsa.PrivateKey:
		return fmt.Sprintf("RSA %d", k.N.BitLen())
	case *ecdsa.PrivateKey:
		return fmt.Sprintf("ECDSA %s", k.Curve.Params().Name)
	case ed25519.PrivateKey:
		return "Ed25519"
	default:
		return "未知"
	}
}

// CertInfoFrom 把一张证书整理成展示用的信息。
func CertInfoFrom(cert *x509.Certificate, chainLen int) dto.SSLCertDto {
	sum := sha256.Sum256(cert.Raw)
	info := dto.SSLCertDto{
		OK:          true,
		Subject:     cert.Subject.String(),
		Issuer:      cert.Issuer.String(),
		Serial:      strings.ToUpper(cert.SerialNumber.Text(16)),
		NotBefore:   cert.NotBefore.Format("2006-01-02 15:04:05"),
		NotAfter:    cert.NotAfter.Format("2006-01-02 15:04:05"),
		SigAlg:      cert.SignatureAlgorithm.String(),
		Fingerprint: hex.EncodeToString(sum[:]),
		ChainLen:    chainLen,
		DNSNames:    append([]string{}, cert.DNSNames...),
		IPAddresses: []string{},
		KeyType:     describePublicKey(cert.PublicKey),
	}
	for _, ip := range cert.IPAddresses {
		info.IPAddresses = append(info.IPAddresses, ip.String())
	}
	// 自签发：签发者与主体逐字节相同（比 CheckSignatureFrom 更直观，且不受
	// "中间证书缺 BasicConstraints" 之类的干扰）。
	info.SelfSigned = bytes.Equal(cert.RawIssuer, cert.RawSubject)

	now := time.Now()
	info.Expired = now.After(cert.NotAfter)
	info.NotYetValid = now.Before(cert.NotBefore)
	// 到期天数按**整日**取：今天到期应为 0 而不是负数。
	info.DaysLeft = int(cert.NotAfter.Sub(now).Hours() / 24)
	if cert.NotAfter.Before(now) {
		info.DaysLeft = -int(now.Sub(cert.NotAfter).Hours()/24) - 1
	}
	info.ExpiringSoon = !info.Expired && info.DaysLeft <= certWarnDays
	return info
}

func describePublicKey(pub any) string {
	switch k := pub.(type) {
	case *rsa.PublicKey:
		return fmt.Sprintf("RSA %d", k.N.BitLen())
	case *ecdsa.PublicKey:
		return fmt.Sprintf("ECDSA %s", k.Curve.Params().Name)
	case ed25519.PublicKey:
		return "Ed25519"
	default:
		return "未知"
	}
}

// LoadSSLCertInfo 读 /config/cert 下的证书，整成展示信息。
// 文件不存在不是错误，返回的 OK 为 false 且 Error 里写明原因。
func LoadSSLCertInfo() dto.SSLCertDto {
	data, err := os.ReadFile(sslCertPath)
	if err != nil {
		return dto.SSLCertDto{Error: "还没有上传证书（" + sslCertPath + "）"}
	}
	cert, chain, err := ParseCertPEM(data)
	if err != nil {
		return dto.SSLCertDto{Error: err.Error()}
	}
	info := CertInfoFrom(cert, chain)

	keyData, err := os.ReadFile(sslKeyPath)
	if err != nil {
		info.KeyError = "还没有上传私钥（" + sslKeyPath + "）"
		return info
	}
	key, err := ParsePrivateKeyPEM(keyData)
	if err != nil {
		info.KeyError = err.Error()
		return info
	}
	info.KeyType = KeyDescribe(key)
	info.KeyMatches = KeyMatchesCert(cert, key)
	if !info.KeyMatches {
		info.KeyError = "私钥与证书不是一对 —— nginx 重载会报 key values mismatch"
	}
	return info
}

// ---------------- nginx 片段渲染（纯函数，便于测试） ----------------

// RenderHTTPSConf 渲染 HTTPS server 片段。
//
// 只看三个入参，不读盘：测试要能精确钉住"开关一动，配置跟着变"。
func RenderHTTPSConf(port int, http2 bool) string {
	if port < 1 || port > 65535 {
		port = DefaultHTTPSPort
	}
	var b strings.Builder
	b.WriteString("# 由后台「SSL 证书」页生成 —— 手工改动会被下一次保存覆盖。\n")
	b.WriteString("# 证书与私钥固定放在 " + sslDirPath + "（持久卷），容器重建后不用重配。\n")
	b.WriteString("server {\n")
	fmt.Fprintf(&b, "    listen       %d ssl;\n", port)
	fmt.Fprintf(&b, "    listen       [::]:%d ssl;\n", port)
	if http2 {
		// 1.25.1 起才有这条独立指令；更老的 nginx 只认 listen 上的 http2 参数，
		// 而那个写法在新版会打废弃告警 —— 所以按版本二选一，宁可不给 h2 也不冒险。
		b.WriteString("    http2        on;\n")
	}
	b.WriteString("    ssl_certificate     " + sslCertPath + ";\n")
	b.WriteString("    ssl_certificate_key " + sslKeyPath + ";\n")
	b.WriteString("    ssl_protocols       TLSv1.2 TLSv1.3;\n")
	// 只给 AEAD 套件 + 保留 HIGH 兜底：老客户端（Android 5/6 的 WebView）也要能连。
	b.WriteString("    ssl_ciphers         ECDHE-ECDSA-AES128-GCM-SHA256:ECDHE-RSA-AES128-GCM-SHA256:" +
		"ECDHE-ECDSA-AES256-GCM-SHA384:ECDHE-RSA-AES256-GCM-SHA384:HIGH:!aNULL:!MD5:!RC4;\n")
	b.WriteString("    ssl_prefer_server_ciphers off;\n")
	b.WriteString("    ssl_session_cache   shared:SSL:10m;\n")
	b.WriteString("    ssl_session_timeout 1h;\n")
	b.WriteString("    ssl_session_tickets off;\n")
	b.WriteString("\n")
	b.WriteString("    # 站点本体与 80 端口**完全共用**（同一份 location 规则，见 " + SiteIncPath + "）\n")
	b.WriteString("    include " + SiteIncPath + ";\n")
	b.WriteString("}\n")
	return b.String()
}

// RenderRedirect80 渲染「80 强制跳转 HTTPS」片段。
//
// 关闭时写出的是**空 + 注释**的文件而不是删文件：nginx 的 include 是通配的，
// 少一个文件不影响启动，但留一个空文件能让"开关到底有没有生效"一眼看出。
//
// 环回地址（127.0.0.1）**不跳转**：容器的 HEALTHCHECK 是
// `wget -qO- http://127.0.0.1/version`，全量跳转会让健康检查拿到 301 + 自签证书
// 而判定 unhealthy —— 容器状态变红与"HTTPS 是否正常"其实是两件事，不该互相牵连。
func RenderRedirect80(port int, on bool) string {
	if port < 1 || port > 65535 {
		port = DefaultHTTPSPort
	}
	if !on {
		return "# 「80 强制跳转 HTTPS」当前为**关**，本文件刻意留空。\n" +
			"# 打开开关后这里会变成一行 301 跳转指令。\n"
	}
	target := "https://$host"
	if port != 443 {
		target = fmt.Sprintf("https://$host:%d", port)
	}
	return "# 由后台「SSL 证书」页生成：本文件有内容 = 已开启「80 强制跳转 HTTPS」。\n" +
		"# 环回地址放行，理由见 until/sslUntil.go 的 RenderRedirect80 注释。\n" +
		"if ($remote_addr != \"127.0.0.1\") {\n" +
		"    return 301 " + target + "$request_uri;\n" +
		"}\n"
}

// ---------------- nginx 交互 ----------------

// NginxVersion 取 nginx 版本号（形如 1.26.2）；取不到返回空串。
func NginxVersion() string {
	out, err := exec.Command(sslNginxBin(), "-v").CombinedOutput()
	if err != nil && len(out) == 0 {
		return ""
	}
	// 注意：`nginx -v` 把版本打到 **stderr**，所以这里必须用 CombinedOutput。
	s := string(out)
	if i := strings.Index(s, "nginx/"); i >= 0 {
		v := s[i+len("nginx/"):]
		v = strings.TrimSpace(strings.SplitN(v, " ", 2)[0])
		return v
	}
	return ""
}

// SupportsHTTP2 判断版本是否 >= HTTP2MinVersion（1.25.1）。
//
// 解析不出段数时返回 false：宁可不给 HTTP/2，也不能生成一条老 nginx 起不来的配置
// （`http2 on;` 在 1.24 上是 unknown directive，整个进程起不来）。
func SupportsHTTP2(version string) bool {
	parse := func(s string) []int {
		parts := strings.Split(strings.TrimSpace(s), ".")
		out := make([]int, 0, len(parts))
		for _, p := range parts {
			// 预发布后缀（1.25.1-rc1）只取数字前缀。
			num := p
			for i, ch := range p {
				if ch < '0' || ch > '9' {
					num = p[:i]
					break
				}
			}
			if num == "" {
				return nil
			}
			n, err := strconv.Atoi(num)
			if err != nil {
				return nil
			}
			out = append(out, n)
		}
		return out
	}
	got, want := parse(version), parse(HTTP2MinVersion)
	if len(got) == 0 || len(want) == 0 {
		return false
	}
	for i := 0; i < len(want); i++ {
		g := 0
		if i < len(got) {
			g = got[i]
		}
		if g != want[i] {
			return g > want[i]
		}
	}
	return true
}

// TestNginx 校验 nginx 配置语法（nginx -t）。失败时把 nginx 的原话带回去 ——
// 它的报错信息（第几行、哪个指令）比任何自造文案都准。
func TestNginx() error {
	out, err := exec.Command(sslNginxBin(), "-t", "-c", sslNginxConf()).CombinedOutput()
	if err != nil {
		return errors.New(strings.TrimSpace(string(out)))
	}
	return nil
}

// ReloadNginx 让 nginx 重新读配置（等价于 `nginx -s reload`）。
func ReloadNginx() error {
	out, err := exec.Command(sslNginxBin(), "-s", "reload", "-c", sslNginxConf()).CombinedOutput()
	if err != nil {
		return errors.New(strings.TrimSpace(string(out)))
	}
	return nil
}

// PortListening 探一下某个端口在本机是否已经有人监听（用来确认 HTTPS 真的起来了）。
func PortListening(port int) bool {
	conn, err := net.DialTimeout("tcp", net.JoinHostPort("127.0.0.1", strconv.Itoa(port)), 800*time.Millisecond)
	if err != nil {
		return false
	}
	_ = conn.Close()
	return true
}

// PortFree 判断端口是否空闲（供"开启 HTTPS 前先看 443 有没有被别的进程占"）。
func PortFree(port int) bool {
	ln, err := net.Listen("tcp", net.JoinHostPort("", strconv.Itoa(port)))
	if err != nil {
		return false
	}
	_ = ln.Close()
	return true
}

// TLSCertFromHost 从"刚起来的 HTTPS 站点"上把证书抓回来 —— 界面上的
// 「实际生效」一栏用它，避免"文件换了但 nginx 没重载"这种假绿。
func TLSCertFromHost(host string, port int, timeout time.Duration) (*x509.Certificate, error) {
	dialer := &net.Dialer{Timeout: timeout}
	conn, err := tls.DialWithDialer(dialer, "tcp", net.JoinHostPort(host, strconv.Itoa(port)),
		&tls.Config{InsecureSkipVerify: true})
	if err != nil {
		return nil, err
	}
	defer conn.Close()
	certs := conn.ConnectionState().PeerCertificates
	if len(certs) == 0 {
		return nil, errors.New("TLS 握手成功但没有拿到证书")
	}
	return certs[0], nil
}

// ---------------- 应用（渲染 → 校验 → 重载） ----------------

// SSLApplyResult 描述一次应用的结果。
type SSLApplyResult struct {
	// ConfChanged 表示生成出来的 nginx 片段真的变了。
	ConfChanged bool
	// Reloaded 表示执行过 nginx 重载。
	Reloaded bool
	// Listening 表示重载后 HTTPS 端口确实在监听。
	Listening bool
	// RollingBack 表示这次是回滚（配置校验失败后还原）。
	RollingBack bool
	// Message 给用户看的一句话。
	Message string
}

// ApplySSL 按当前配置重新生成 nginx 片段并重载。
//
// 顺序刻意是「写 → nginx -t → reload」而不是反过来：
// 写坏了 nginx -t 会当场拦下并回滚，**运行中的 nginx 一直拿着旧配置**，
// 站点不会因为一次误操作白屏。
func ApplySSL() (*SSLApplyResult, error) {
	cfg := dao.GetConfig()
	if cfg == nil {
		return nil, errors.New("配置还没加载完成")
	}
	return applySSLSettings(cfg.SSL.Enable, cfg.SSL.ForceRedirect, SSLPort(cfg), true)
}

// applySSLSettings 是 ApplySSL 的可测内核。
//
// checkPort 为真时，开启 HTTPS 前先确认端口空闲 —— 理由：nginx 的
// `listen` 绑定失败会让**整个 nginx 进程起不来**（不只是 HTTPS 那条 server），
// 站点白屏比"HTTPS 没开成"严重得多，所以宁可提前拒绝。
func applySSLSettings(enable, forceRedirect bool, port int, checkPort bool) (*SSLApplyResult, error) {
	res := &SSLApplyResult{}

	if port < 1 || port > 65535 {
		port = DefaultHTTPSPort
	}

	certOK := Exists(sslCertPath) && Exists(sslKeyPath)

	// 「80 强制跳转」**从属于** HTTPS：HTTPS 没开（或证书不全）时一律不渲染跳转。
	//
	// 这条收敛是防"自锁"的最后一道闸：80 上的请求全被 301 到一个没人监听的端口，
	// 管理页面自己也就进不去了；而容器因为环回豁免依旧报健康 ——
	// 站点打不开、告警全绿，是排查成本最高的一种状态。
	redirect := forceRedirect && enable && certOK

	// 证书不全时不允许开 HTTPS：nginx 会因 ssl_certificate 指向不存在的文件而
	// **完全起不来**（连 80 一起白屏）。
	if enable && !certOK {
		return nil, errors.New("证书或私钥还没上传完整，先上传 " + SSLCertName + " 与 " + SSLKeyName + " 再开启")
	}
	// 已经开着 HTTPS 时端口当然被自己占着，只有"从关到开"才需要查占用。
	if enable && checkPort && !EnabledHTTPS(dao.GetConfig()) && !PortFree(port) {
		return nil, fmt.Errorf("端口 %d 已被占用，无法开启 HTTPS（容器里已有进程在监听它）", port)
	}

	if err := os.MkdirAll(sslDirPath, 0o700); err != nil {
		return nil, fmt.Errorf("创建 %s 失败: %w", sslDirPath, err)
	}
	if err := os.MkdirAll(sslConfDirPath, 0o755); err != nil {
		return nil, fmt.Errorf("创建 %s 失败: %w", sslConfDirPath, err)
	}

	// 备份旧片段，校验失败要能原样还原。
	oldConf, oldConfErr := os.ReadFile(sslConfPath)
	oldRedirect, oldRedirectErr := os.ReadFile(sslRedirectPath)

	restore := func() {
		res.RollingBack = true
		if oldConfErr == nil {
			_ = WriteFileAtomic(sslConfPath, string(oldConf), 0o644)
		} else {
			_ = os.Remove(sslConfPath)
		}
		if oldRedirectErr == nil {
			_ = WriteFileAtomic(sslRedirectPath, string(oldRedirect), 0o644)
		} else {
			_ = os.Remove(sslRedirectPath)
		}
	}

	// 1) HTTPS server：开关关掉、或证书不全时**删掉**片段，
	//    留一个 ssl_certificate 指向空文件的片段等于让 nginx 起不来。
	var wantConf string
	if enable && certOK {
		wantConf = RenderHTTPSConf(port, SupportsHTTP2(NginxVersion()))
	}
	if !enable || !certOK {
		if oldConfErr == nil {
			if err := os.Remove(sslConfPath); err != nil && !os.IsNotExist(err) {
				return nil, fmt.Errorf("移除 %s 失败: %w", sslConfPath, err)
			}
			res.ConfChanged = true
		}
	} else if err := WriteFileAtomic(sslConfPath, wantConf, 0o644); err != nil {
		return nil, fmt.Errorf("写入 %s 失败: %w", sslConfPath, err)
	} else if oldConfErr != nil || string(oldConf) != wantConf {
		res.ConfChanged = true
	}

	// 2) 80 强制跳转片段（始终写出来，关的时候是空 + 注释，便于人肉确认）。
	wantRedirect := RenderRedirect80(port, redirect)
	if err := WriteFileAtomic(sslRedirectPath, wantRedirect, 0o644); err != nil {
		restore()
		return nil, fmt.Errorf("写入 %s 失败: %w", sslRedirectPath, err)
	}
	if oldRedirectErr != nil || string(oldRedirect) != wantRedirect {
		res.ConfChanged = true
	}

	// 3) 语法校验：不过就还原，运行中的 nginx 不受影响。
	if err := TestNginx(); err != nil {
		restore()
		return nil, fmt.Errorf("nginx 配置校验失败，已还原上一次的配置：%s", err.Error())
	}

	// 4) 重载。片段没变也照样重载一次：调用方可能是"点了保存但内容没改"，
	//    重载是幂等的，比"猜要不要重载"稳。
	if err := ReloadNginx(); err != nil {
		restore()
		// 还原后把 nginx 拉回旧配置，避免"文件是旧的、内存是新的"这种错位。
		_ = ReloadNginx()
		return nil, fmt.Errorf("nginx 重载失败，已还原上一次的配置：%s", err.Error())
	}
	res.Reloaded = true

	// 5) 确认 HTTPS 真的在监听（只有开着才查）。
	if enable && certOK {
		for i := 0; i < 10; i++ {
			if PortListening(port) {
				res.Listening = true
				break
			}
			time.Sleep(150 * time.Millisecond)
		}
		if !res.Listening {
			return res, fmt.Errorf("nginx 已重载，但端口 %d 没有在监听 —— "+
				"请确认容器把 %d 映射出来了（docker run -p %d:%d 或 compose 的 ports）", port, port, port, port)
		}
	}

	switch {
	case enable && redirect:
		res.Message = fmt.Sprintf("HTTPS 已开启（%d），并且 80 已强制跳转", port)
	case enable:
		res.Message = fmt.Sprintf("HTTPS 已开启（%d），80 仍可直接访问", port)
	case forceRedirect:
		// 用户开了跳转但 HTTPS 没开：说清楚为什么没生效，否则界面显示"已开启"、
		// 实际什么都没发生，下次又要重新排查一遍。
		res.Message = "「80 强制跳转」没有生效 —— 请先开启 HTTPS（单独打开会把站点锁在门外）"
	default:
		res.Message = "HTTPS 已关闭"
	}
	return res, nil
}

// SaveSSLCert 保存上传的证书与私钥。
//
// **先校验再落盘**：证书解析不出来的文件写进去毫无意义，而且会让 nginx 起不来。
// 校验通过前不碰磁盘上的旧文件，用户的线上配置不会被一次误传毁掉。
func SaveSSLCert(certPEM, keyPEM []byte) (dto.SSLCertDto, error) {
	cert, chain, err := ParseCertPEM(certPEM)
	if err != nil {
		return dto.SSLCertDto{}, fmt.Errorf("证书文件有问题：%w", err)
	}
	key, err := ParsePrivateKeyPEM(keyPEM)
	if err != nil {
		return dto.SSLCertDto{}, fmt.Errorf("私钥文件有问题：%w", err)
	}
	if !KeyMatchesCert(cert, key) {
		return dto.SSLCertDto{}, errors.New("私钥与证书不匹配（不是同一对），请确认上传的是配套的 crt/key")
	}

	if err := os.MkdirAll(sslDirPath, 0o700); err != nil {
		return dto.SSLCertDto{}, fmt.Errorf("创建 %s 失败: %w", sslDirPath, err)
	}
	// 私钥 0600：/config 是宿主机可见的目录，不能让私钥是 0644。
	if err := WriteFileAtomic(sslCertPath, string(certPEM), 0o644); err != nil {
		return dto.SSLCertDto{}, fmt.Errorf("写入证书失败: %w", err)
	}
	if err := WriteFileAtomic(sslKeyPath, string(keyPEM), 0o600); err != nil {
		return dto.SSLCertDto{}, fmt.Errorf("写入私钥失败: %w", err)
	}

	info := CertInfoFrom(cert, chain)
	// 走到这里说明上面已经比对过这一对，KeyMatches 必须回填为真。
	// CertInfoFrom 只描述证书本身；不回填的话后台"保存成功"之后会立刻显示
	// 「私钥与证书不是一对」—— 一条纯粹的假警报（被本包单测抓到过）。
	info.KeyMatches = true
	return info, nil
}

// ApplySSLCert 按「留空 = 保持盘上原样」的约定写入证书/私钥。
//
// 三种组合都允许，但**写完盘上必须是一对配得上的证书与私钥**：
//   - 两个都给：走 [SaveSSLCert]（先解析 + 比对，再落盘，校验不过一个字节都不写）；
//   - 只给证书：拿盘上现有的私钥来比，配不上直接拒绝（同样不写盘）；
//   - 只给私钥：反向同理。
//
// 关键在"只给一边"**不能把另一边删掉**，也不能留下一对不匹配的文件 ——
// 后者会让 nginx 在下一次 reload（哪怕是别的原因触发的）时报 key values mismatch。
//
// 两个都空是**合法的空操作**：调用方（后台保存）只改开关时会走这条路。
func ApplySSLCert(certPEM, keyPEM string) error {
	switch {
	case certPEM != "" && keyPEM != "":
		_, err := SaveSSLCert([]byte(certPEM+"\n"), []byte(keyPEM+"\n"))
		return err

	case certPEM != "":
		keyData, err := os.ReadFile(sslKeyPath)
		if err != nil {
			return fmt.Errorf("只提供了证书，但 %s 上还没有私钥可配对，请同时提供私钥", sslKeyPath)
		}
		cert, _, err := ParseCertPEM([]byte(certPEM))
		if err != nil {
			return fmt.Errorf("证书文件有问题：%w", err)
		}
		key, err := ParsePrivateKeyPEM(keyData)
		if err != nil {
			return fmt.Errorf("磁盘上的私钥解析失败：%w", err)
		}
		if !KeyMatchesCert(cert, key) {
			return errors.New("新证书与磁盘上的私钥不是一对，请同时提供配套的私钥")
		}
		_, err = SaveSSLCert([]byte(certPEM+"\n"), keyData)
		return err

	case keyPEM != "":
		certData, err := os.ReadFile(sslCertPath)
		if err != nil {
			return fmt.Errorf("只提供了私钥，但 %s 上还没有证书可配对，请同时提供证书", sslCertPath)
		}
		cert, _, err := ParseCertPEM(certData)
		if err != nil {
			return fmt.Errorf("磁盘上的证书解析失败：%w", err)
		}
		key, err := ParsePrivateKeyPEM([]byte(keyPEM))
		if err != nil {
			return fmt.Errorf("私钥文件有问题：%w", err)
		}
		if !KeyMatchesCert(cert, key) {
			return errors.New("新私钥与磁盘上的证书不是一对，请同时提供配套的证书")
		}
		_, err = SaveSSLCert(certData, []byte(keyPEM+"\n"))
		return err

	default:
		return nil
	}
}

// ClearSSLCert 清掉证书与私钥（后台的「清除证书」）。
func ClearSSLCert() error {
	var firstErr error
	for _, p := range []string{sslCertPath, sslKeyPath} {
		if err := os.Remove(p); err != nil && !os.IsNotExist(err) && firstErr == nil {
			firstErr = err
		}
	}
	return firstErr
}

// CertFilePath 暴露给界面显示的路径（避免 handler 里再拼一遍字符串）。
func CertFilePath() string { return sslCertPath }

// KeyFilePath 同 CertFilePath。
func KeyFilePath() string { return sslKeyPath }

// SSLFileStat 取证书文件的"体积 / 修改时间"，供界面显示。
// 读不到时返回空串，不报错。
func SSLFileStat(path string) (size string, modTime string) {
	info, err := os.Stat(path)
	if err != nil {
		return "", ""
	}
	size = formatBytes(info.Size())
	return size, info.ModTime().Format("2006-01-02 15:04:05")
}

func formatBytes(n int64) string {
	switch {
	case n >= 1024*1024:
		return fmt.Sprintf("%.2f MB", float64(n)/(1024*1024))
	case n >= 1024:
		return fmt.Sprintf("%.1f KB", float64(n)/1024)
	default:
		return fmt.Sprintf("%d B", n)
	}
}

// SSLDirForDisplay 给界面显示的目录（相对容器内路径，用户挂载的是 /config）。
func SSLDirForDisplay() string {
	return filepath.ToSlash(sslDirPath)
}
