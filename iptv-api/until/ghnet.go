package until

import (
	"context"
	"errors"
	"fmt"
	"io"
	"log"
	"net"
	"net/http"
	"net/url"
	"os"
	"strings"
	"sync"
	"time"
)

// GitHub 直连与国内加速的统一入口：失败**或延迟过大**时自动切换。
// 候选 = 直连 + ghMirrorPrefixes；直连能通但很慢时不会一直卡在慢链路上。

// ghMirrorPrefixes 是内置的国内加速前缀，顺序即优先级。
// 只放**实测可用**的（2026-09-25 实测）：gh.llkk.cc 只剩 IPv6、ghproxy.net 对 api.github.com
// 回 403、gh-proxy.com 主站 20s 超时 —— 都是"占着位置但换不过去"的死链路，不进列表。
var ghMirrorPrefixes = []string{
	"https://gh-proxy.org/",
	"https://hk.gh-proxy.com/",
}

const (
	ghDirectSlow   = 3 * time.Second  // 直连探测超过它就判"延迟过大"，转代理
	ghProbeTimeout = 8 * time.Second  // 直连探测上限：直连要么快要么就是被墙，不值得久等
	ghMirrorProbe  = 15 * time.Second // 国内加速探测上限：实测这些站常年 3~11s，卡 8s 会误判成"不可用"
	ghJSONTimeout  = 20 * time.Second // release 列表读取上限
	ghFileTimeout  = 10 * time.Minute // 资产下载上限（30MB 级二进制，慢链路也要够）
	ghRouteLife    = 30 * time.Second // 选路缓存时长，一次操作里的多个资产复用同一条链路
)

// ghRoute 是一次选路的结果。
type ghRoute struct {
	Prefix string        // 前缀，空串表示直连
	Label  string        // 回显给面板用的名字
	Delay  time.Duration // 探测耗时
}

// ghURL 把候选前缀与原始 GitHub URL 拼成最终地址。
func ghURL(prefix, raw string) string {
	if prefix == "" {
		return raw
	}
	return prefix + raw
}

// ghLabel 给候选起个短名字（去协议、去尾斜杠）。
func ghLabel(prefix string) string {
	if prefix == "" {
		return "直连"
	}
	return strings.TrimSuffix(strings.TrimPrefix(prefix, "https://"), "/")
}

// ghTransport 每次新建，避免换链路后复用旧连接池；保留原有的 PROXY 环境变量支持。
func ghTransport() *http.Transport {
	tr := &http.Transport{
		DialContext:           (&net.Dialer{Timeout: 10 * time.Second, KeepAlive: 30 * time.Second}).DialContext,
		TLSHandshakeTimeout:   10 * time.Second,
		ResponseHeaderTimeout: 15 * time.Second,
	}
	if proxyEnv := os.Getenv("PROXY"); proxyEnv != "" {
		if proxyURL, err := url.Parse(proxyEnv); err == nil {
			tr.Proxy = http.ProxyURL(proxyURL)
		}
	}
	return tr
}

// ghNetErr 把超时与其它网络错误分开说：面板上"超过 3s 未响应"和"连接被拒"是两回事。
func ghNetErr(err error, limit time.Duration) error {
	var ne net.Error
	if errors.As(err, &ne) && ne.Timeout() {
		return fmt.Errorf("超过 %s 未响应", limit)
	}
	if errors.Is(err, context.DeadlineExceeded) {
		return fmt.Errorf("超过 %s 未响应", limit)
	}
	return err
}

// ghProbe 探测单个候选：只取 0-0 字节，量到响应头为止的耗时。
func ghProbe(prefix, raw string, limit time.Duration) (time.Duration, error) {
	client := &http.Client{Timeout: limit, Transport: ghTransport()}
	req, err := http.NewRequest("GET", ghURL(prefix, raw), nil)
	if err != nil {
		return 0, err
	}
	req.Header.Set("Range", "bytes=0-0")

	start := time.Now()
	resp, err := client.Do(req)
	if err != nil {
		return 0, ghNetErr(err, limit)
	}
	resp.Body.Close()
	delay := time.Since(start)

	if resp.StatusCode != http.StatusOK && resp.StatusCode != http.StatusPartialContent {
		return delay, fmt.Errorf("状态码 %d", resp.StatusCode)
	}
	return delay, nil
}

// ghProbeAll 直连优先：够快就用直连；慢就记下来当兜底，再依序试代理。
func ghProbeAll(raw string) (*ghRoute, error) {
	var slowest *ghRoute
	var lastErr error

	delay, err := ghProbe("", raw, ghProbeTimeout)
	switch {
	case err == nil && delay <= ghDirectSlow:
		return &ghRoute{Prefix: "", Label: ghLabel(""), Delay: delay}, nil
	case err == nil:
		slowest = &ghRoute{Prefix: "", Label: ghLabel(""), Delay: delay}
		log.Printf("GitHub 直连延迟过大(%s)，尝试国内加速", delay)
	default:
		lastErr = err
		log.Printf("GitHub 直连不可用(%v)，尝试国内加速", err)
	}

	for _, prefix := range ghMirrorPrefixes {
		delay, err := ghProbe(prefix, raw, ghMirrorProbe)
		if err == nil {
			route := &ghRoute{Prefix: prefix, Label: ghLabel(prefix), Delay: delay}
			log.Printf("GitHub 走国内加速 %s（%s）", route.Label, delay)
			return route, nil
		}
		lastErr = err
	}
	// 全都不通，但直连能通只是慢 —— 退回慢速直连，有总比没有强。
	if slowest != nil {
		log.Printf("国内加速都不可用，退回慢速直连（%s）", slowest.Delay)
		return slowest, nil
	}
	return nil, fmt.Errorf("直连与 %d 个国内加速都不可用：%v", len(ghMirrorPrefixes), lastErr)
}

var (
	ghCacheMu sync.Mutex
	ghCache   = map[string]*ghRoute{} // 按 host 分键：release 列表与资产下载的目标主机不同
	ghCacheAt = map[string]time.Time{}
	// 选路**失败**也要缓存：三条链路全断时，一次 ghProbeAll 要耗 30s+
	// （直连 8s + 两条加速各 15s）。不缓存的话，同一次用户操作里的重试、
	// 以及紧接着的 upgradeBase，会把这笔开销再交一遍。
	ghFail   = map[string]error{}
	ghFailAt = map[string]time.Time{}
	ghLast   string // 最近一次选中的链路名，面板回显用（"这次走的是 gh-proxy.org"）
)

// LastGhRoute 返回最近一次成功选路的链路名；没选过路时返回空串。
func LastGhRoute() string {
	ghCacheMu.Lock()
	defer ghCacheMu.Unlock()
	return ghLast
}

// ghHost 取 URL 主机，用作选路缓存的键。
func ghHost(raw string) string {
	u, err := url.Parse(raw)
	if err != nil || u.Host == "" {
		return raw
	}
	return u.Host
}

// ghPick 选路；force=true 忽略成功缓存（重试路径用，免得反复选中刚失败的候选）。
func ghPick(raw string, force bool) (*ghRoute, error) {
	host := ghHost(raw)
	ghCacheMu.Lock()
	// 失败缓存优先于 force：force 的语义是"换一条链路重试"，不是"把死链路再探一遍"。
	if t, ok := ghFailAt[host]; ok && time.Since(t) < ghRouteLife {
		err := ghFail[host]
		ghCacheMu.Unlock()
		return nil, err
	}
	if !force {
		if cached := ghCache[host]; cached != nil && time.Since(ghCacheAt[host]) < ghRouteLife {
			cp := *cached
			ghLast = cp.Label
			ghCacheMu.Unlock()
			return &cp, nil
		}
	}
	ghCacheMu.Unlock()

	route, err := ghProbeAll(raw)
	if err != nil {
		ghCacheMu.Lock()
		ghFail[host], ghFailAt[host] = err, time.Now()
		ghCacheMu.Unlock()
		return nil, err
	}
	ghCacheMu.Lock()
	ghCache[host], ghCacheAt[host], ghLast = route, time.Now(), route.Label
	delete(ghFail, host)
	delete(ghFailAt, host)
	ghCacheMu.Unlock()
	return route, nil
}

// ghDo 发一次 GET，非 2xx 视为失败（206 是 Range 探测的正常返回）。
func ghDo(prefix, raw string, headers map[string]string, timeout time.Duration) (*http.Response, error) {
	client := &http.Client{Timeout: timeout, Transport: ghTransport()}
	req, err := http.NewRequest("GET", ghURL(prefix, raw), nil)
	if err != nil {
		return nil, err
	}
	for k, v := range headers {
		req.Header.Set(k, v)
	}
	resp, err := client.Do(req)
	if err != nil {
		return nil, ghNetErr(err, timeout)
	}
	if resp.StatusCode != http.StatusOK && resp.StatusCode != http.StatusPartialContent {
		resp.Body.Close()
		return nil, fmt.Errorf("状态码 %d", resp.StatusCode)
	}
	return resp, nil
}

// ghGetJSON 取 JSON（release 列表）：选路失败即返回；选中的链路请求失败会重新选路再试一轮。
func ghGetJSON(raw string) ([]byte, *ghRoute, error) {
	headers := map[string]string{"Accept": "application/vnd.github.v3+json"}
	var lastErr error
	for i := 0; i < 2; i++ {
		route, err := ghPick(raw, i > 0)
		if err != nil {
			return nil, nil, err
		}
		resp, err := ghDo(route.Prefix, raw, headers, ghJSONTimeout)
		if err == nil {
			body, rerr := io.ReadAll(resp.Body)
			resp.Body.Close()
			if rerr == nil {
				return body, route, nil
			}
			err = rerr
		}
		lastErr = err
		log.Printf("经 %s 拉取 release 列表失败(%v)，重新选路重试", route.Label, err)
	}
	return nil, nil, lastErr
}

// ghToFile 把资产整体落盘；空结果判失败（半截文件比报错更危险）。
func ghToFile(prefix, raw, dst string, mode os.FileMode) error {
	resp, err := ghDo(prefix, raw, nil, ghFileTimeout)
	if err != nil {
		return err
	}
	defer resp.Body.Close()

	f, err := os.OpenFile(dst, os.O_CREATE|os.O_TRUNC|os.O_WRONLY, mode)
	if err != nil {
		return err
	}
	if _, err := io.Copy(f, resp.Body); err != nil {
		f.Close()
		os.Remove(dst)
		return err
	}
	if err := f.Close(); err != nil {
		os.Remove(dst)
		return err
	}
	if fi, err := os.Stat(dst); err != nil || fi.Size() == 0 {
		os.Remove(dst)
		return fmt.Errorf("下载结果为空")
	}
	return nil
}

// ghDownload 下载资产到 dst：先选路，失败则重新选路重试（含退避）。
func ghDownload(raw, dst string, mode os.FileMode) (*ghRoute, error) {
	var lastErr error
	for i := 0; i < 3; i++ {
		route, err := ghPick(raw, i > 0)
		if err != nil {
			return nil, err
		}
		if err := ghToFile(route.Prefix, raw, dst, mode); err == nil {
			log.Printf("下载完成：经 %s，落盘 %s", route.Label, dst)
			return route, nil
		} else {
			lastErr = err
			log.Printf("经 %s 下载失败(%v)，重新选路重试", route.Label, err)
		}
		time.Sleep(time.Second * time.Duration(i+1))
	}
	return nil, lastErr
}
