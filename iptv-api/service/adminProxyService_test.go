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
