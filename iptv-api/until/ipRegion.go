package until

// IP 归属地查询：非公网地址直接判「局域网」，公网才回源查询，带缓存与超时。

import (
	"encoding/json"
	"io"
	"log"
	"net"
	"net/http"
	"net/url"
	"regexp"
	"strings"
	"sync"
	"sync/atomic"
	"time"
)

// IpRegionLocal 是无法定位归属地时的统一文案（私网、回环、CGNAT 等保留段）。
const IpRegionLocal = "局域网"

const (
	ipRegionAPI      = "https://api.mir6.com/api/ip_json?ip="
	ipRegionTimeout  = 3 * time.Second
	ipRegionTTL      = 24 * time.Hour
	ipRegionFailTTL  = 5 * time.Minute
	ipRegionMaxEntry = 4096
)

type ipRegionEntry struct {
	region string
	expire time.Time
}

var (
	ipRegionCache sync.Map
	ipRegionCount atomic.Int64
	ipRegionTag   = regexp.MustCompile(`\[[A-Za-z]+\]`)
)

// GetIpRegion 返回 IP 归属地：非公网返回「局域网」，公网返回「省 市」。
// 查询失败返回空串（前端显示 -），不再把公网 IP 误标成局域网。
func GetIpRegion(raw string) string {
	ip := normalizeIP(raw)
	if ip == nil {
		return ""
	}
	if isNonPublicIP(ip) {
		return IpRegionLocal
	}

	key := ip.String()
	if v, ok := ipRegionCache.Load(key); ok {
		if e := v.(ipRegionEntry); time.Now().Before(e.expire) {
			return e.region
		}
	}

	region := queryIpRegion(key)
	ttl := ipRegionTTL
	if region == "" {
		ttl = ipRegionFailTTL
	}
	storeIpRegion(key, region, ttl)
	return region
}

// IsPublicIP 判断入参是否为值得回源查询的公网地址。
func IsPublicIP(raw string) bool {
	ip := normalizeIP(raw)
	return ip != nil && !isNonPublicIP(ip)
}

func storeIpRegion(key, region string, ttl time.Duration) {
	if ipRegionCount.Load() >= ipRegionMaxEntry {
		// 缓存满了整体清空重来，避免长期运行内存无上限
		ipRegionCache.Range(func(k, _ any) bool {
			ipRegionCache.Delete(k)
			return true
		})
		ipRegionCount.Store(0)
	}
	ipRegionCache.Store(key, ipRegionEntry{region: region, expire: time.Now().Add(ttl)})
	ipRegionCount.Add(1)
}

// normalizeIP 兼容 X-Forwarded-For 多级列表、IPv6 方括号和 host:port 写法。
func normalizeIP(raw string) net.IP {
	s := strings.TrimSpace(raw)
	if s == "" {
		return nil
	}
	if i := strings.IndexByte(s, ','); i >= 0 {
		s = strings.TrimSpace(s[:i])
	}
	s = strings.Trim(s, "[]")
	if host, _, err := net.SplitHostPort(s); err == nil {
		s = host
	}
	ip := net.ParseIP(s)
	if ip == nil {
		return nil
	}
	if v4 := ip.To4(); v4 != nil {
		return v4
	}
	return ip
}

// isNonPublicIP 覆盖私网、回环、链路本地、组播和运营商级 NAT（100.64/10）。
// 100.64/10 在移动网络客户端里很常见，仅靠 IsPrivate 判不出来。
func isNonPublicIP(ip net.IP) bool {
	if ip.IsPrivate() || ip.IsLoopback() || ip.IsUnspecified() ||
		ip.IsLinkLocalUnicast() || ip.IsLinkLocalMulticast() ||
		ip.IsMulticast() || ip.IsInterfaceLocalMulticast() {
		return true
	}
	if v4 := ip.To4(); v4 != nil && v4[0] == 100 && v4[1] >= 64 && v4[1] <= 127 {
		return true
	}
	return false
}

// queryIpRegion 用独立带超时的 client 直连查询。
//
// 登录链路会同步调用它，复用 GetUrlData（无超时）会把登录卡在 TCP 超时上。
func queryIpRegion(ip string) string {
	client := &http.Client{Timeout: ipRegionTimeout}
	req, err := http.NewRequest(http.MethodGet, ipRegionAPI+url.QueryEscape(ip), nil)
	if err != nil {
		return ""
	}
	req.Header.Set("User-Agent", "Go-http-client/1.1")

	resp, err := client.Do(req)
	if err != nil {
		log.Println("IP 归属地查询失败:", ip, err)
		return ""
	}
	defer resp.Body.Close()
	if resp.StatusCode != http.StatusOK {
		log.Println("IP 归属地查询失败:", ip, "HTTP", resp.StatusCode)
		return ""
	}

	body, err := io.ReadAll(io.LimitReader(resp.Body, 32<<10))
	if err != nil {
		return ""
	}
	var ret struct {
		Code int `json:"code"`
		Data struct {
			Country  string `json:"country"`
			Province string `json:"province"`
			City     string `json:"city"`
			Location string `json:"location"`
		} `json:"data"`
	}
	if err := json.Unmarshal(body, &ret); err != nil || ret.Code != 200 {
		return ""
	}
	return formatRegion(ret.Data.Country, ret.Data.Province, ret.Data.City, ret.Data.Location)
}

// formatRegion 优先用「省 市」拼装：location 带「中国[CN]」前缀，列表列宽放不下。
func formatRegion(country, province, city, location string) string {
	province, city = strings.TrimSpace(province), strings.TrimSpace(city)
	switch {
	case province != "" && city != "" && province != city:
		return province + " " + city
	case province != "":
		return province
	case city != "":
		return city
	}

	loc := ipRegionTag.ReplaceAllString(strings.TrimSpace(location), "")
	if c := strings.TrimSpace(country); c != "" {
		loc = strings.TrimSpace(strings.TrimPrefix(loc, c))
	}
	return strings.Join(strings.Fields(loc), " ")
}
