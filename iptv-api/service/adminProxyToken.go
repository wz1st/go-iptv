package service

import (
	"crypto/hmac"
	"crypto/rand"
	"crypto/sha256"
	"encoding/hex"
	"strconv"
	"strings"
	"time"

	"iptv-api/dto"
)

// 「刚测过的那份配置」的凭据。
//
// ## 为什么需要它
//
// 页面上的「测试代理」会真的连一次代理、访问一次 GitHub 与 Google，
// 这一轮要走外网、耗时十几秒。用户接着点「保存配置」时，若再测一遍，
// 就是把同一件事做两次 —— 网络抖一下还会得到两个不同的结论。
//
// 所以测试通过时由服务端签一张**凭据**：它把这三件事绑在一起：
//
//	测的是哪份配置（指纹）· 结论是什么（通过 / 哪种失败）· 什么时候测的（有效期）
//
// 保存时把凭据带回来，服务端核对「指纹与这次要存的配置一致」才免掉重复测试。
// 指纹覆盖协议、地址、端口、账号开关、用户名与口令 —— 也就是页面上
// 「地址、端口、账号、代理类型」这四项 + 口令；任何一项被改过，指纹就变了，
// 凭据立刻作废，保存会老老实实重测一遍。
//
// ## 为什么不能由前端说了算
//
// 凭据用服务端进程内的随机密钥做 HMAC 签名，前端改不动。
// 进程重启密钥即失效 ⇒ 旧凭据作废，用户重测一次即可（宁可多测一次，
// 也不能让"测试结论"变成前端可以随便声明的一串字符）。
//
// ## 失败结论也要留凭据
//
// 「连上了但访问不了境外」这种失败，用户可能看完仍想保存。
// 失败凭据让「强制保存」不必重测一遍就能生效，也保证强存依据的
// 是服务端**实测**到的失败类型，而不是前端自报的。

// proxyTestSecret 进程级随机密钥。进程重启即换 ⇒ 旧凭据全部作废。
var proxyTestSecret = func() []byte {
	b := make([]byte, 32)
	if _, err := rand.Read(b); err != nil {
		// 读不到随机数时退化成时间派生密钥：仍然不可预测到可被外部伪造
		// （攻击者要猜到进程启动时刻 + 纳秒），只是强度不如真随机。
		n := time.Now().UnixNano()
		for i := range b {
			b[i] = byte(n >> (8 * (i % 8)))
		}
	}
	return b
}()

// proxyTestTokenTTL 凭据有效期。
//
// 够用户看完结论、决定要不要强制保存；也够"测完立刻保存"这一串动作。
// 过期后保存会重新实测一次 —— 这是期望行为，网络状况可能已经变了。
const proxyTestTokenTTL = 15 * time.Minute

// proxyFingerprint 算出配置的指纹：协议/地址/端口/账号开关/用户名/口令。
//
// 口令也进指纹：换了口令就是换了一份配置，凭据必须跟着作废。
// 指纹只在这里出现一次（HMAC 载荷里），不会明文进日志。
func proxyFingerprint(p dto.OutProxy) string {
	h := sha256.New()
	// 分隔符用 \x00：各字段里都不会有它，拼接后无歧义。
	h.Write([]byte(p.Type))
	h.Write([]byte{0})
	h.Write([]byte(p.Host))
	h.Write([]byte{0})
	h.Write([]byte(strconv.FormatInt(p.Port, 10)))
	h.Write([]byte{0})
	h.Write([]byte(strconv.FormatInt(p.AuthOn, 10)))
	h.Write([]byte{0})
	h.Write([]byte(p.User))
	h.Write([]byte{0})
	h.Write([]byte(p.Pwd))
	return hex.EncodeToString(h.Sum(nil))
}

// proxyTestVerdict 一次测试的结论。
type proxyTestVerdict struct {
	OK       bool   // 测试是否通过
	FailType string // ""=通过；"dial"=连不上代理；"overseas"=能连但出不去境外
}

// issueProxyTestToken 签发一张测试凭据。
//
// 载荷格式 `指纹|结论|失败类型|过期时刻`，整体用 HMAC 签名。
// 失败类型里不会出现 '|'，指纹是十六进制 ⇒ 解析无歧义。
func issueProxyTestToken(fp string, v proxyTestVerdict) string {
	ok := "0"
	if v.OK {
		ok = "1"
	}
	exp := strconv.FormatInt(time.Now().Add(proxyTestTokenTTL).Unix(), 10)
	payload := strings.Join([]string{fp, ok, v.FailType, exp}, "|")
	return hex.EncodeToString([]byte(payload)) + "." + hex.EncodeToString(signProxyPayload(payload))
}

// signProxyPayload 给载荷签名。
func signProxyPayload(payload string) []byte {
	mac := hmac.New(sha256.New, proxyTestSecret)
	mac.Write([]byte(payload))
	return mac.Sum(nil)
}

// verifyProxyTestToken 校验凭据，并确认它对应的正是「现在要存的那份配置」。
//
// 三个条件缺一不可：签名对、没过期、指纹一致。
// 任何一条不满足就返回 valid=false —— 调用方据此走"老实重测一遍"的路。
func verifyProxyTestToken(token, fp string) (proxyTestVerdict, bool) {
	parts := strings.SplitN(strings.TrimSpace(token), ".", 2)
	if len(parts) != 2 {
		return proxyTestVerdict{}, false
	}
	raw, err := hex.DecodeString(parts[0])
	if err != nil {
		return proxyTestVerdict{}, false
	}
	sig, err := hex.DecodeString(parts[1])
	if err != nil {
		return proxyTestVerdict{}, false
	}
	payload := string(raw)
	// 先验签再看内容：签名不过时连载荷都不用解析。
	if !hmac.Equal(sig, signProxyPayload(payload)) {
		return proxyTestVerdict{}, false
	}
	fields := strings.Split(payload, "|")
	if len(fields) != 4 {
		return proxyTestVerdict{}, false
	}
	exp, err := strconv.ParseInt(fields[3], 10, 64)
	if err != nil || time.Now().Unix() > exp {
		return proxyTestVerdict{}, false
	}
	if fields[0] != fp {
		return proxyTestVerdict{}, false
	}
	return proxyTestVerdict{OK: fields[1] == "1", FailType: fields[2]}, true
}
