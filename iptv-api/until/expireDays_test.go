package until

import (
	"testing"
	"time"
)

// ExpireDaysLeft 必须是**带符号**的剩余天数。
//
// 钉住这条是因为它直接决定骆驼壳能不能进主界面：SplashActivity 把登录响应里的
// `exp` 读进字段 e，`e <= 0` 就弹「账号已到期」并停在授权输入页。历史上这个字段
// 被当"没人读"删掉过，于是所有骆驼壳用户（含 expire_time=0 的自动授权账号）
// 都被判到期 —— 登录日志正常、频道接口 200，但界面停在授权页。
func TestExpireDaysLeft_Sign(t *testing.T) {
	cst := time.FixedZone("CST", 8*3600)
	now := time.Now().In(cst)
	todayZero := time.Date(now.Year(), now.Month(), now.Day(), 0, 0, 0, 0, cst)

	cases := []struct {
		name string
		exp  int64
		want int64
	}{
		// "自动授权"建的账号 expire_time 就是 0，必须判为已过期而不是算出巨大正数。
		{"expire_time=0（自动授权账号）", 0, -1},
		{"今天零点到期", todayZero.Unix(), 0},
		{"还剩 10 天", todayZero.Add(10 * 24 * time.Hour).Unix(), 10},
		{"已过期 3 天", todayZero.Add(-3 * 24 * time.Hour).Unix(), -3},
	}
	_ = cases[0] // want 在下面按"符号"判定，0 那条不钉具体数值

	for _, c := range cases {
		got := ExpireDaysLeft(c.exp)
		if c.exp == 0 {
			if got > 0 {
				t.Errorf("%s：应算出 <=0，实际 %d（拿 DiffDays 顶替就会这样）", c.name, got)
			}
			continue
		}
		if got != c.want {
			t.Errorf("%s：期望 %d，实际 %d", c.name, c.want, got)
		}
	}
}

// 反面对照：DiffDays 取绝对值，已过期账号也会算出正数 —— 正是不能拿它当剩余天数的原因。
func TestDiffDays_AbsoluteValue_NotSuitableForExpiry(t *testing.T) {
	cst := time.FixedZone("CST", 8*3600)
	now := time.Now().In(cst)
	todayZero := time.Date(now.Year(), now.Month(), now.Day(), 0, 0, 0, 0, cst)
	past := todayZero.Add(-5 * 24 * time.Hour).Unix()

	if got := DiffDays(todayZero.Unix(), past); got <= 0 {
		t.Errorf("DiffDays 对已过期时间应给出正数（说明它取绝对值），实际 %d", got)
	}
	if got := ExpireDaysLeft(past); got > 0 {
		t.Errorf("ExpireDaysLeft 对已过期时间必须为负，实际 %d", got)
	}
}
