package service

import (
	"encoding/hex"
	"strconv"
	"testing"
	"time"

	"iptv-api/dto"
	"iptv-api/until"
)

// 「刚测过的那份配置」的凭据 —— 决定保存时能不能免掉重复测试。
//
// ★ 这套机制的全部意义就是：**测过了就别再测一遍**。
// 一轮连通性测试要走外网、访问 GitHub 与 Google，耗时十几秒；
// 用户点完「测试代理」紧接着点「保存配置」，不该把同一件事做两次。

// 指纹：改一个字节就换一个值。
func TestProxyFingerprintChangesWithAnyField(t *testing.T) {
	base := dto.OutProxy{Type: "socks5", Host: "1.2.3.4", Port: 1080, AuthOn: 1, User: "bob", Pwd: "s3cr3t"}
	fp := proxyFingerprint(base)

	for name, mut := range map[string]func(p *dto.OutProxy){
		"协议":   func(p *dto.OutProxy) { p.Type = "http" },
		"地址":   func(p *dto.OutProxy) { p.Host = "5.6.7.8" },
		"端口":   func(p *dto.OutProxy) { p.Port = 1081 },
		"账号开关": func(p *dto.OutProxy) { p.AuthOn = 0 },
		"用户名":  func(p *dto.OutProxy) { p.User = "alice" },
		"口令":   func(p *dto.OutProxy) { p.Pwd = "other" },
	} {
		p := base
		mut(&p)
		if proxyFingerprint(p) == fp {
			t.Errorf("改了%s之后指纹不该不变", name)
		}
	}

	// 同样的内容 ⇒ 同样的指纹（否则"没改过就免测"根本没法判断）
	if proxyFingerprint(base) != fp {
		t.Error("同样的配置指纹不该变")
	}
}

// 凭据能签发、能验回；被篡改或换了配置就该作废。
func TestProxyTestTokenRoundTrip(t *testing.T) {
	fp := proxyFingerprint(dto.OutProxy{Type: "socks5", Host: "1.2.3.4", Port: 1080})
	tok := issueProxyTestToken(fp, proxyTestVerdict{OK: true})

	v, ok := verifyProxyTestToken(tok, fp)
	if !ok {
		t.Fatal("刚签发的凭据应当有效")
	}
	if !v.OK {
		t.Error("应当认出这是「通过」的结论")
	}

	// 配置变了 ⇒ 凭据作废（这正是"测完改了地址就不该免测"）
	if _, ok := verifyProxyTestToken(tok, "deadbeef"); ok {
		t.Error("配置指纹对不上时凭据必须作废")
	}

	// 载荷被改 ⇒ 验不过
	bad := tok[:len(tok)-1] + "0"
	if _, ok := verifyProxyTestToken(bad, fp); ok {
		t.Error("被篡改的凭据必须验不过")
	}
	if _, ok := verifyProxyTestToken("这不是凭据", fp); ok {
		t.Error("乱码必须验不过")
	}
	if _, ok := verifyProxyTestToken("", fp); ok {
		t.Error("空凭据必须验不过")
	}
}

// 失败结论也要能签发并验回：强制保存要靠它证明"失败类型是 overseas"。
func TestProxyTestTokenCarriesFailType(t *testing.T) {
	fp := proxyFingerprint(dto.OutProxy{Type: "http", Host: "1.2.3.4", Port: 8080})
	tok := issueProxyTestToken(fp, proxyTestVerdict{OK: false, FailType: until.ProxyFailOverseas})

	v, ok := verifyProxyTestToken(tok, fp)
	if !ok {
		t.Fatal("失败凭据也应当有效")
	}
	if v.OK {
		t.Error("失败凭据不该被当成通过")
	}
	if v.FailType != until.ProxyFailOverseas {
		t.Errorf("失败类型丢了: %q", v.FailType)
	}
}

// 过期凭据作废。
func TestProxyTestTokenExpires(t *testing.T) {
	fp := proxyFingerprint(dto.OutProxy{Type: "socks5", Host: "1.2.3.4", Port: 1080})
	// 手工造一张已经过期的：签名用同一个密钥，载荷里的到期时间改到过去。
	expired := time.Now().Add(-time.Minute).Unix()
	payload := fp + "|1||" + strconv.FormatInt(expired, 10)
	tok := hex.EncodeToString([]byte(payload)) + "." + hex.EncodeToString(signProxyPayload(payload))

	if _, ok := verifyProxyTestToken(tok, fp); ok {
		t.Error("过期凭据必须作废")
	}
}
