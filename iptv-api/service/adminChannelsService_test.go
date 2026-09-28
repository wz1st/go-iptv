package service

import "testing"

// 「更新间隔」在新增/编辑弹窗里的落库规则（pickListInterval）

func TestPickListInterval(t *testing.T) {
	const (
		addDefault = int64(7200)  // 新增时的兜底
		oldValue   = int64(10800) // 编辑时库里的现值（3 小时）
	)

	cases := []struct {
		name     string
		fromForm int64
		fallback int64
		want     int64
	}{
		{"新增：表单带了就用表单值", 3600, addDefault, 3600},
		{"新增：表单没带（老前端）回退默认", 0, addDefault, addDefault},
		{"编辑：表单带了就用表单值（改成 1 小时）", 3600, oldValue, 3600},
		{"编辑：表单没带回退库里现值（不清零）", 0, oldValue, oldValue},
		{"负数一律当未提供（新增）", -1, addDefault, addDefault},
		{"负数一律当未提供（编辑）", -3600, oldValue, oldValue},
	}

	for _, c := range cases {
		t.Run(c.name, func(t *testing.T) {
			if got := pickListInterval(c.fromForm, c.fallback); got != c.want {
				t.Errorf("pickListInterval(%d, %d) = %d, want %d",
					c.fromForm, c.fallback, got, c.want)
			}
		})
	}
}

// 这条把「编辑时不清零」这个契约单独钉住：它是本轮最容易回归的一处
func TestPickListIntervalEditKeepsStoredValue(t *testing.T) {
	const stored = int64(5 * 3600) // 用户在列表页设成 5 小时
	if got := pickListInterval(0, stored); got != stored {
		t.Fatalf("编辑且未提供 interval 时必须保留库中现值 %d，实际 %d", stored, got)
	}
}
