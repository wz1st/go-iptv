package service

import (
	"testing"
	"time"

	"iptv-api/dao"
	"iptv-api/dto"
)

// 中转取流走代理的授权口径。
//
// ★ 口径：中转对**全部授权账号**开放，取流代理不能比中转还窄。
// 判据取 dao.LicStillValid()（Type>=2，或 Type==1 且未过期）——
// 与 EnforceLicenseGate 关中转开关用的是同一把尺。
// 早先这里按 Type==4（定制授权）卡，普通授权账号明明能开中转、
// 却配不了中转的代理，界面与实际能力对不上。

// withCfg 装一份全局配置，返回恢复函数。
func withCfg(t *testing.T, p dto.OutProxy) {
	t.Helper()
	old := dao.GetConfig()
	dao.GlobalConfig.Store(&dto.Config{OutProxy: p})
	t.Cleanup(func() {
		if old != nil {
			dao.GlobalConfig.Store(old)
			return
		}
		dao.GlobalConfig.Store(&dto.Config{})
	})
}

// withLic 装一份授权快照，返回恢复函数。
func withLic(t *testing.T, l dto.Lic) {
	t.Helper()
	old := dao.GetLic()
	dao.SetLic(l)
	t.Cleanup(func() { dao.SetLic(old) })
}

func TestRelayAllowedCoversEveryLicensedType(t *testing.T) {
	future := time.Now().Add(24 * time.Hour).Unix()
	past := time.Now().Add(-24 * time.Hour).Unix()

	cases := []struct {
		name string
		lic  dto.Lic
		want bool
	}{
		{"定制授权", dto.Lic{Type: 4}, true},
		{"其它高阶授权", dto.Lic{Type: 3}, true},
		{"另一类授权", dto.Lic{Type: 2}, true},
		{"试用授权（未到期）", dto.Lic{Type: 1, Exp: future}, true},
		{"试用授权（已过期）", dto.Lic{Type: 1, Exp: past}, false},
		{"完全未授权", dto.Lic{Type: 0}, false},
	}
	for _, c := range cases {
		withLic(t, c.lic)
		if got := relayAllowed(); got != c.want {
			t.Errorf("%s：relayAllowed=%v，期望 %v", c.name, got, c.want)
		}
	}
}

// 未授权时提交的中转勾选必须被抹平（不能靠直接打接口给自己开中转代理）。
func TestNormalizeProxyReqDropsRelayWhenNotLicensed(t *testing.T) {
	in := dto.OutProxy{
		Type: "socks5", Host: "1.2.3.4", Port: 1080,
		UseEpg: 1, UseUp: 1, UseRelay: 1,
	}

	withLic(t, dto.Lic{Type: 4})
	if out := normalizeProxyReq(in); out.UseRelay != 1 {
		t.Errorf("已授权账号的中转勾选被抹掉了: %+v", out)
	}

	withLic(t, dto.Lic{Type: 0})
	out := normalizeProxyReq(in)
	if out.UseRelay != 0 {
		t.Errorf("未授权账号不该保留中转勾选: %+v", out)
	}
	if out.UseEpg != 1 || out.UseUp != 1 {
		t.Errorf("抹掉中转时不该牵连其它作用范围: %+v", out)
	}
}

// 代理连接参数与作用范围开关是两条独立的提交路径（页面要求）：
// 保存只写协议/地址/端口/账密，四个开关沿用当前配置 —— 否则拨开关
// 又点保存会把开关状态覆盖掉；反过来只改开关时不该动连接参数。

// 无代理保存：保留地址与端口、四个开关全关。
func TestMergeProxyConnNoneKeepsAddrAndClearsScopes(t *testing.T) {
	cur := dto.OutProxy{Type: "socks5", Host: "9.9.9.9", Port: 1080,
		UseEpg: 1, UseSrc: 1, UseUp: 1, UseRelay: 1}
	in := dto.OutProxy{Type: "none", Host: "9.9.9.9", Port: 1080,
		UseEpg: 1, UseSrc: 1, UseUp: 1, UseRelay: 1}

	out := mergeProxyConn(cur, in)
	if out.Host != "9.9.9.9" || out.Port != 1080 {
		t.Errorf("无代理不该清掉地址与端口（下次启用还要重填）: %+v", out)
	}
	if out.UseEpg|out.UseSrc|out.UseUp|out.UseRelay != 0 {
		t.Errorf("无代理时四个作用范围应全关: %+v", out)
	}
}

// 有代理保存：四个开关沿用当前配置，不被这次提交覆盖。
func TestMergeProxyConnKeepsExistingScopes(t *testing.T) {
	cur := dto.OutProxy{UseEpg: 1, UseSrc: 0, UseUp: 1, UseRelay: 0}
	in := dto.OutProxy{Type: "http", Host: "1.1.1.1", Port: 8080,
		UseEpg: 0, UseSrc: 0, UseUp: 0, UseRelay: 0}

	out := mergeProxyConn(cur, in)
	if out.UseEpg != 1 || out.UseUp != 1 || out.UseSrc != 0 || out.UseRelay != 0 {
		t.Errorf("保存连接参数时不该改动作用范围: %+v", out)
	}
}

// 口令不回显 ⇒ 留空表示"不修改"，而不是把配置里的口令抹掉。
func TestMergeProxyConnBlankPwdKeepsOld(t *testing.T) {
	cur := dto.OutProxy{AuthOn: 1, User: "bob", Pwd: "old-secret"}
	in := dto.OutProxy{Type: "socks5", Host: "1.1.1.1", Port: 1080, AuthOn: 1, User: "bob", Pwd: ""}

	if out := mergeProxyConn(cur, in); out.Pwd != "old-secret" {
		t.Errorf("口令留空应保留原值，实际 %q", out.Pwd)
	}
	// 填了新值就换新的
	in.Pwd = "new-secret"
	if out := mergeProxyConn(cur, in); out.Pwd != "new-secret" {
		t.Errorf("填了新口令应覆盖，实际 %q", out.Pwd)
	}
	// 开关关着 ⇒ 账密不留
	in.Pwd = ""
	in.AuthOn = 0
	if out := mergeProxyConn(cur, in); out.User != "" || out.Pwd != "" {
		t.Errorf("账密开关关着时不该保留账密: %+v", out)
	}
}

// 作用范围开关的取值校验与前置条件。
func TestProxyScopeValidation(t *testing.T) {
	withLic(t, dto.Lic{Type: 4})

	// 未知 key
	if r := ProxyScope(dto.OutProxyScopeDto{Key: "useAll", Value: 1}); r.Code != 0 {
		t.Errorf("未知开关应被拒: %+v", r)
	}
	// value 只能是 0/1
	if r := ProxyScope(dto.OutProxyScopeDto{Key: "useEpg", Value: 2}); r.Code != 0 {
		t.Errorf("value=2 应被拒: %+v", r)
	}

	// 没配代理时勾"走代理"没有意义，直接拒（否则运行时静默直连）
	withCfg(t, dto.OutProxy{Type: "none"})
	if r := ProxyScope(dto.OutProxyScopeDto{Key: "useEpg", Value: 1}); r.Code != 0 {
		t.Errorf("未配代理时勾选应被拒: %+v", r)
	}

	// 关掉任何开关都允许 —— 全关是合法状态
	withCfg(t, dto.OutProxy{Type: "socks5", Host: "1.1.1.1", Port: 1080, UseEpg: 1, UseUp: 1})
	if r := ProxyScope(dto.OutProxyScopeDto{Key: "useEpg", Value: 0}); r.Code != 1 {
		t.Errorf("关闭开关应允许: %+v", r)
	}
	if got := dao.GetConfig().OutProxy.UseEpg; got != 0 {
		t.Errorf("开关没落盘: %d", got)
	}
	if got := dao.GetConfig().OutProxy.UseUp; got != 1 {
		t.Errorf("不该牵连其它开关: %d", got)
	}
}

// 中转开关的两道额外门槛：授权 + 必须 SOCKS5。
func TestProxyScopeRelayGates(t *testing.T) {
	// 类型不是 socks5 时勾中转直接拒
	withLic(t, dto.Lic{Type: 4})
	withCfg(t, dto.OutProxy{Type: "http", Host: "1.1.1.1", Port: 8080})
	if r := ProxyScope(dto.OutProxyScopeDto{Key: "useRelay", Value: 1}); r.Code != 0 {
		t.Errorf("非 SOCKS5 时勾中转应被拒: %+v", r)
	}

	// 未授权时勾中转直接拒
	withCfg(t, dto.OutProxy{Type: "socks5", Host: "1.1.1.1", Port: 1080})
	withLic(t, dto.Lic{Type: 0})
	if r := ProxyScope(dto.OutProxyScopeDto{Key: "useRelay", Value: 1}); r.Code != 0 {
		t.Errorf("未授权时勾中转应被拒: %+v", r)
	}

	// 已授权 + socks5 ⇒ 放行
	withLic(t, dto.Lic{Type: 2})
	if r := ProxyScope(dto.OutProxyScopeDto{Key: "useRelay", Value: 1}); r.Code != 1 {
		t.Errorf("已授权 + SOCKS5 应放行: %+v", r)
	}
	if got := dao.GetConfig().OutProxy.UseRelay; got != 1 {
		t.Errorf("中转开关没落盘: %d", got)
	}
}
