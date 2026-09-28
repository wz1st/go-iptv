package api

import "testing"

// sortOrder 白名单的回归测试。
func TestSanitizeOrder(t *testing.T) {
	cases := []struct {
		name    string
		raw     string
		allowed []string
		want    string
	}{
		// ---- 正常取值：前端表头 COLUMNS 的 sort 键 ----
		{"默认 id 在白名单内", "id", orderAllowedUsers, "id"},
		{"用户页 lasttime", "last_time", orderAllowedUsers, "last_time"},
		{"用户页 meal_id", "meal_id", orderAllowedUsers, "meal_id"},
		{"用户页 marks", "marks", orderAllowedUsers, "marks"},
		{"授权页 device_id", "device_id", orderAllowedAuthors, "device_id"},

		// ---- 跨页越权：meal_id 只在用户页白名单里 ----
		{"授权页不接受 meal_id", "meal_id", orderAllowedAuthors, "id"},

		// ---- 边界 ----
		{"空串回退 id", "", orderAllowedUsers, "id"},
		{"大小写不匹配回退 id", "LASTTIME", orderAllowedUsers, "id"},
		{"带方向后缀不被接受", "last_time desc", orderAllowedUsers, "id"},
		{"前后空格不被接受", " last_time", orderAllowedUsers, "id"},
		{"白名单 nil 回退 id", "id", nil, "id"},

		// ---- 注入尝试：这些都能穿过 IsSafe ----
		{"括号 CASE 盲注", "(CASE WHEN (SELECT 1)=1 THEN 1 ELSE 2 END)", orderAllowedUsers, "id"},
		{"逗号多列", "id,(select 1)", orderAllowedUsers, "id"},
		{"分号多语句", "id; drop table iptv_user", orderAllowedUsers, "id"},
		{"空格加子查询", "id desc, (select 1)", orderAllowedUsers, "id"},
		{"注释截断", "id-- ", orderAllowedUsers, "id"},
		{"反引号逃逸", "`id`", orderAllowedUsers, "id"},
	}

	for _, tc := range cases {
		t.Run(tc.name, func(t *testing.T) {
			if got := sanitizeOrder(tc.raw, tc.allowed); got != tc.want {
				t.Fatalf("sanitizeOrder(%q) = %q, 期望 %q", tc.raw, got, tc.want)
			}
		})
	}
}

// 白名单本身必须包含默认值 "id"，否则 sanitizeOrder 的回退值会落到白名单之外。
func TestOrderWhitelistContainsDefault(t *testing.T) {
	for name, list := range map[string][]string{
		"orderAllowedUsers":   orderAllowedUsers,
		"orderAllowedAuthors": orderAllowedAuthors,
	} {
		found := false
		for _, c := range list {
			if c == "id" {
				found = true
				break
			}
		}
		if !found {
			t.Fatalf("%s 缺少默认列名 id", name)
		}
	}
}

// 白名单里不能混入 SQL 片段（避免以后手滑加进去）。
func TestOrderWhitelistIsPlainIdentifiers(t *testing.T) {
	for name, list := range map[string][]string{
		"orderAllowedUsers":   orderAllowedUsers,
		"orderAllowedAuthors": orderAllowedAuthors,
	} {
		for _, c := range list {
			for _, bad := range []string{" ", ",", "(", ")", ";", "'", "`", "="} {
				if len(c) > 0 && contains(c, bad) {
					t.Fatalf("%s 中的 %q 含非法字符 %q", name, c, bad)
				}
			}
			if c == "" {
				t.Fatalf("%s 含空列名", name)
			}
		}
	}
}

func contains(s, sub string) bool {
	if len(sub) == 0 {
		return true
	}
	for i := 0; i+len(sub) <= len(s); i++ {
		if s[i:i+len(sub)] == sub {
			return true
		}
	}
	return false
}
