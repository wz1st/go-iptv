package until

import "testing"

// 基底在线检查的两个纯函数：标签前缀分流与版本比较。
// 这两个判反了的后果都不报错：分流错 = 永远"没有新版本"；
// 比较错 = 拿旧基底覆盖新基底（服务端会拒，但界面上的"可升级"提示就是错的）。

func TestMytvTagReOnlyMatchesBaseReleases(t *testing.T) {
	hit := []string{"mytv-v1.2.2", "mytv-v10.0.15", "mytv-v1.2.3"}
	miss := []string{
		"v3.1.1",           // api / 镜像
		"engine-v3.2.17",   // 引擎
		"mytv-v1.2",        // 段数不足
		"mytv-v1.2.3.4",    // 段数过多（存量 4 段号不该被当成基底）
		"mytv-v1.2.3-beta", // 预发布不进在线升级序列
		"mytv-1.2.3",       // 少前缀
	}
	for _, tag := range hit {
		if !mytvTagRe.MatchString(tag) {
			t.Errorf("基底标签 %q 应当命中", tag)
		}
	}
	for _, tag := range miss {
		if mytvTagRe.MatchString(tag) {
			t.Errorf("标签 %q 不该被当成基底发布", tag)
		}
	}
}

func TestMytvVersionFromTag(t *testing.T) {
	cases := map[string]string{
		"mytv-v1.2.3":  "1.2.3",
		"mytv-v10.0.5": "10.0.5",
	}
	for tag, want := range cases {
		if got := mytvVersionFromTag(tag); got != want {
			t.Errorf("mytvVersionFromTag(%q) = %q，期望 %q", tag, got, want)
		}
	}
}

func TestBaseNewer(t *testing.T) {
	cases := []struct {
		remote, local string
		want          bool
	}{
		{"1.2.3", "1.2.2", true},
		{"1.3.0", "1.2.9", true},
		{"2.0.0", "1.9.9", true},
		{"1.2.2", "1.2.2", false},
		{"1.2.1", "1.2.2", false}, // 远端更旧：不升级，也不报错
		{"1.2.2", "", true},       // 本地读不到版本时按"有更新"处理
		{"", "1.2.2", false},      // 远端版本为空不是"更新"
		{"1.2.10", "1.2.9", true}, // 逐段比数字，不是字符串比
	}
	for _, c := range cases {
		if got := BaseNewer(c.remote, c.local); got != c.want {
			t.Errorf("BaseNewer(%q, %q) = %v，期望 %v", c.remote, c.local, got, c.want)
		}
	}
}
