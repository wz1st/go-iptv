package until

import (
	"net"
	"testing"
)

// 归属地判定的**离线**部分：私网/回环/CGNAT 等保留段必须判「局域网」，
// 公网地址才值得回源查询（回源是网络调用，单测里不能碰）。
//
// 回归背景：老实现把公网 IP 也判成「局域网」，
// 设备管理里 39.165.222.174 / 182.125.24.56 这类公网地址全显示"局域网"。

func TestIsNonPublicIP(t *testing.T) {
	cases := []struct {
		ip     string
		nonPub bool
	}{
		{"192.168.1.10", true},
		{"10.0.0.1", true},
		{"172.16.5.4", true},
		{"127.0.0.1", true},
		{"169.254.10.1", true},
		{"0.0.0.0", true},
		{"224.0.0.1", true},
		{"100.64.0.1", true}, // CGNAT（移动网络常见）
		{"100.127.255.254", true},
		{"39.165.222.174", false},
		{"182.125.24.56", false},
		{"8.8.8.8", false},
		{"203.0.113.7", false},
	}

	for _, c := range cases {
		ip := net.ParseIP(c.ip)
		if ip == nil {
			t.Fatalf("测试用例 IP 非法: %s", c.ip)
		}
		if got := isNonPublicIP(ip); got != c.nonPub {
			t.Fatalf("%s: isNonPublicIP = %v，期望 %v", c.ip, got, c.nonPub)
		}
	}
}

func TestGetIpRegionLocal(t *testing.T) {
	// 私网 ⇒ 局域网
	if got := GetIpRegion("192.168.1.10"); got != IpRegionLocal {
		t.Fatalf("私网应返回 %q，实际 %q", IpRegionLocal, got)
	}
	// 回环 ⇒ 局域网
	if got := GetIpRegion("127.0.0.1"); got != IpRegionLocal {
		t.Fatalf("回环应返回 %q，实际 %q", IpRegionLocal, got)
	}
	// CGNAT ⇒ 局域网
	if got := GetIpRegion("100.64.0.1"); got != IpRegionLocal {
		t.Fatalf("CGNAT 应返回 %q，实际 %q", IpRegionLocal, got)
	}
}

func TestGetIpRegionInvalidInput(t *testing.T) {
	// 非法输入返回空串（前端显示 -），**不能**返回"局域网"。
	for _, raw := range []string{"", "  ", "not-an-ip", "999.999.999.999", "abc.def"} {
		if got := GetIpRegion(raw); got != "" {
			t.Fatalf("非法输入 %q 应返回空串，实际 %q", raw, got)
		}
	}
}

func TestNormalizeIP(t *testing.T) {
	cases := []struct {
		raw  string
		want string
	}{
		{"1.2.3.4", "1.2.3.4"},
		{"  1.2.3.4  ", "1.2.3.4"},
		{"1.2.3.4:5678", "1.2.3.4"},
		{"[2001:db8::1]", "2001:db8::1"},
		{"2001:db8::1", "2001:db8::1"},
		// X-Forwarded-For 多级列表 ⇒ 取第一级
		{"1.2.3.4, 5.6.7.8", "1.2.3.4"},
		{"1.2.3.4,5.6.7.8", "1.2.3.4"},
	}

	for _, c := range cases {
		ip := normalizeIP(c.raw)
		if ip == nil {
			t.Fatalf("%q 解析失败", c.raw)
		}
		if ip.String() != c.want {
			t.Fatalf("%q => %s，期望 %s", c.raw, ip.String(), c.want)
		}
	}
}

func TestIsPublicIP(t *testing.T) {
	if IsPublicIP("192.168.1.10") {
		t.Fatal("私网不该算公网")
	}
	if !IsPublicIP("39.165.222.174") {
		t.Fatal("公网地址应算公网")
	}
	if IsPublicIP("") {
		t.Fatal("空串不该算公网")
	}
}

func TestFormatRegion(t *testing.T) {
	cases := []struct {
		country, province, city, location, want string
	}{
		{"中国", "河南省", "郑州市", "中国[CN]", "河南省 郑州市"},
		{"中国", "河南省", "河南省", "中国[CN]", "河南省"},
		{"中国", "", "上海市", "中国[CN]", "上海市"},
		{"中国", "", "", "中国[CN]北京", "北京"},
		{"美国", "", "", "美国[US]California", "California"},
	}

	for _, c := range cases {
		got := formatRegion(c.country, c.province, c.city, c.location)
		if got != c.want {
			t.Fatalf("formatRegion(%q,%q,%q,%q) = %q，期望 %q",
				c.country, c.province, c.city, c.location, got, c.want)
		}
	}
}
