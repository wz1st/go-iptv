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
	"sort"
	"strings"
	"sync"
	"time"
)

// GitHub 出网：候选源统一测速，取最快的用。
//
// ## 候选从哪来
//
// 候选 = GitHub 本体 + 一批国内加速源。加速源**形态不统一**，分两类：
//
//   - **前缀式**（绝大多数）：最终 URL = 前缀 + 完整 GitHub URL。
//     例：https://gh-proxy.org/ + https://github.com/o/r/releases/download/t/f
//   - **jsDelivr 式**（cdn / fastly / testingcf 三个 jsdelivr.net 域名）：
//     最终 URL = https://<host>/gh/<owner>/<repo>@<tag>/<path>。
//     它只能取**仓库里的文件**，取不到 release 资产 —— 我们的产物
//     （iptv_amd64 / webdist.tar.gz / Client.apk …）都是 release 资产，
//     不在仓库树里，所以这三个源对本项目**结构性不可用**，实测会被淘汰。
//     仍然把它们登记进来：形态如实实现，将来产物若进了仓库树就能直接用。
//
// 形态不同这件事必须显式建模。把 jsDelivr 当前缀式用，得到的 URL 必然 404，
// 而"404"看起来和"这个代理挂了"一模一样 —— 排查时会被带偏。
//
// ## 统一测速
//
// 所有候选**并发**探测，取延迟最低的。比老实现（直连优先、慢了就依序试）
// 快得多：老实现最坏要 8s + 15s + 15s 串行，新实现并发一轮就完。
//
// 终止条件：**已找出 5 个可用源**就取消其余探测（还在飞的不再等）。
// 记录里保留最快的 5 个 —— 后面 5 个是给"最快的那个半路出错"时顺延用的。
//
// ## 测速结果保留 10 分钟
//
// 10 分钟内不再重新测速。理由：一次在线升级要下好几个资产（api 二进制 +
// 前端整包 + 校验清单），每个资产都重新测速一次纯属浪费；而 10 分钟又足够
// 短，网络环境变了能较快反映。
//
// ## 顺延与除名
//
// 记录是一份**有序列表**（按延迟升序），不只是"最快的那一个"。
// 选中的源在实际下载时出错 ⇒ 从记录里**删掉它**，顺延到列表里的下一个。
// 5 个全被删光 ⇒ 重新测速。
//
// 删掉而不是留着：留着一个已经证明不可用的源，下次选路又会挑中它（列表按
// 延迟排序，它可能还在最前面），于是又失败一次 —— 白白浪费一次重试。
//
// ## 代理只作用于 GitHub 本体
//
// 用户给「在线升级」配了出网代理时：**只有 GitHub 本体走代理**，国内加速源
// 一律直连。它们本来就在国内，套上一个（多半在境外的）代理反而绕远、
// 还多一个失败点。但两者仍然**放在一起统一测速** —— 直连被墙时，代理版的
// GitHub 本体往往就是唯一能用的候选。
//
// ## 日志
//
// 测速过程**不进日志**：不打印每个候选的延迟、不打印谁超时、失败。
// 只打印最终用了哪个源 —— 用户关心的是"这次走的是哪条路"，不是"谁快谁慢"。
// 十几条候选的延迟流水会淹没真正的错误信息。

// ghURLForm 说明一个代理源怎么把目标 URL 变成它能服务的 URL。
type ghURLForm int

const (
	// ghFormDirect 原样使用（GitHub 本体）。
	ghFormDirect ghURLForm = iota
	// ghFormPrefix 前缀 + 完整目标 URL。
	ghFormPrefix
	// ghFormJsDelivr jsDelivr 形态：/gh/<owner>/<repo>@<tag>/<path>。
	ghFormJsDelivr
)

// ghSource 是一个候选出口。
type ghSource struct {
	Label string // 显示名（面板回显用）
	Base  string // 前缀（ghFormPrefix）或 jsDelivr 主机（ghFormJsDelivr）
	Form  ghURLForm
	// UseProxy 这条链路是否允许走用户配置的出网代理。
	// 只有 GitHub 本体为 true：国内加速源直连（见文件头说明）。
	UseProxy bool
}

// ghMirrorSources 是内置的国内加速源清单。
//
// 收录标准：**形态明确**（能写出它该拼出的 URL）。
// 形态不明确的一律不收 —— 拼不出 URL 的源进了清单也只是躺在那儿。
//
// 顺序不影响选路（选路靠测速，不靠顺序）。
//
// ★ 这里**全部登记**，不预先剔除"实测慢/超时"的源：
// 加速源的可用性随时间、随地区、随运营商变，某个源今天超时明天可能就快。
// 预先剔除等于把一次快照写死进代码。真正做筛选的是并发测速 ——
// 不可用的源自然排不进前 5，探测超时的直接出局。
//
// 2026-10-23 远端实测（目标 release 资产，Range: bytes=0-0，8s 超时）：
//
//	可用（206）：xsadwsd.kdns.fr 1.06s / cdn.akaere.online 1.15s /
//	              github.chenc.dev 1.32s / gh-proxy.org 4.93s /
//	              githubproxy.gohj99.site 6.64s / hk.gh-proxy.com 7.48s
//	超时（000）：gh.acmsz.top / gh.sixyin.com / ghproxy.felicity.land /
//	              git.yylx.win / github.tbap.top / gh.jjj.gv.uy /
//	              ghm.078465.xyz
//	jsDelivr 系：两种形态（repo / release）都不通 —— 与上面的结构性原因一致
//
// 这批实测结论**只作参考，不写进筛选逻辑**（理由见上）。
var ghMirrorSources = []ghSource{
	{Label: "gh-proxy.org", Base: "https://gh-proxy.org/", Form: ghFormPrefix},
	{Label: "hk.gh-proxy.com", Base: "https://hk.gh-proxy.com/", Form: ghFormPrefix},
	{Label: "gh.acmsz.top", Base: "https://gh.acmsz.top/", Form: ghFormPrefix},
	{Label: "xsadwsd.kdns.fr", Base: "https://xsadwsd.kdns.fr/", Form: ghFormPrefix},
	{Label: "gh.sixyin.com", Base: "https://gh.sixyin.com/", Form: ghFormPrefix},
	{Label: "cdn.akaere.online", Base: "https://cdn.akaere.online/", Form: ghFormPrefix},
	{Label: "ghproxy.felicity.land", Base: "https://ghproxy.felicity.land/", Form: ghFormPrefix},
	{Label: "git.yylx.win", Base: "https://git.yylx.win/", Form: ghFormPrefix},
	{Label: "github.tbap.top", Base: "https://github.tbap.top/", Form: ghFormPrefix},
	{Label: "gh.jjj.gv.uy", Base: "https://gh.jjj.gv.uy/", Form: ghFormPrefix},
	{Label: "github.chenc.dev", Base: "https://github.chenc.dev/", Form: ghFormPrefix},
	{Label: "githubproxy.gohj99.site", Base: "https://githubproxy.gohj99.site/", Form: ghFormPrefix},
	{Label: "ghm.078465.xyz", Base: "https://ghm.078465.xyz/", Form: ghFormPrefix},
	// jsDelivr 系：形态与前缀式不同，单独一档。见 ghSource 的说明。
	{Label: "cdn.jsdelivr.net", Base: "https://cdn.jsdelivr.net", Form: ghFormJsDelivr},
	{Label: "fastly.jsdelivr.net", Base: "https://fastly.jsdelivr.net", Form: ghFormJsDelivr},
	{Label: "testingcf.jsdelivr.net", Base: "https://testingcf.jsdelivr.net", Form: ghFormJsDelivr},
}

const (
	ghDirectProbe = 8 * time.Second  // GitHub 本体探测上限：要么快要么被墙
	ghMirrorProbe = 15 * time.Second // 国内加速探测上限：这些站常年 3~11s
	ghJSONTimeout = 20 * time.Second // release 列表读取上限
	ghFileTimeout = 10 * time.Minute // 资产下载上限（30MB 级二进制）
	ghSpeedKeep   = 5                // 记录里保留几个可用源（顺延用）
	ghSpeedTTL    = 10 * time.Minute // 测速结果保留时长
	ghDeadTTL     = 30 * time.Second // "一个源都不可用"这个结论的缓存时长
)

// ghRoute 是一条选好的链路。
type ghRoute struct {
	Prefix   string        // 前缀（空 = GitHub 本体）
	Label    string        // 回显给面板用的名字
	Delay    time.Duration // 探测耗时
	Form     ghURLForm
	UseProxy bool // 这条链路是否走了用户配的代理
}

// ghSourceURL 把目标 URL 变成这个源能服务的 URL。
//
// 形态不对（jsDelivr 碰上 api.github.com 之类）时直接报错 —— 宁可不试，
// 也不要拿一个必然 404 的地址去占一个候选名额。
func ghSourceURL(src ghSource, raw string) (string, error) {
	switch src.Form {
	case ghFormDirect:
		return raw, nil
	case ghFormPrefix:
		return src.Base + raw, nil
	case ghFormJsDelivr:
		return ghJsDelivrURL(src.Base, raw)
	}
	return "", fmt.Errorf("未知的源形态 %d", src.Form)
}

// ghJsDelivrURL 把 GitHub 地址改写成 jsDelivr 的形态。
//
// jsDelivr 的 GitHub CDN 只能服务**仓库树里的文件**，路径形如
// /gh/<owner>/<repo>@<tag>/<path>。release 资产（/releases/download/…）
// 不在仓库树里，改写出来的地址必然 404 —— 这里照样把 URL 拼出来交给实测，
// 让它以"不可用"的自然身份出局，而不是在代码里写死"这三个不用"。
func ghJsDelivrURL(base, raw string) (string, error) {
	u, err := url.Parse(raw)
	if err != nil {
		return "", err
	}
	if u.Host != "github.com" {
		return "", fmt.Errorf("jsDelivr 只能服务 github.com 的仓库文件，%s 不适用", u.Host)
	}
	parts := strings.Split(strings.Trim(u.Path, "/"), "/")
	if len(parts) < 6 || parts[2] != "releases" || parts[3] != "download" {
		return "", fmt.Errorf("jsDelivr 只能服务 release 资产，%s 不适用", u.Path)
	}
	owner, repo, tag := parts[0], parts[1], parts[4]
	file := strings.Join(parts[5:], "/")
	return fmt.Sprintf("%s/gh/%s/%s@%s/%s", base, owner, repo, tag, file), nil
}

// ghOutProxyDesc 描述本次出网到底有没有套代理。
//
// 为什么必须有它：Label 只表达"GitHub 那一跳"（直连 / gh-proxy.org），
// 与"本机出网有没有走代理"是**两个正交的维度**。用户把 useUp 打开后，
// 日志里只有"经 直连"，看不出代理到底有没有参与 —— 于是只能靠猜。
// 这里把第二个维度显式写进每一条下载相关的日志。
//
// 三个取值：
//   - 经出网代理 http://1.2.3.4:7890（配置里的 useUp 命中）
//   - 经环境变量 PROXY=...（历史兼容路径）
//   - 出网直连（都没配）
func ghOutProxyDesc() string {
	if u := OutProxyURLFor(ProxyUseUp); u != nil {
		return "经出网代理 " + u.Redacted()
	}
	if proxyEnv := os.Getenv("PROXY"); proxyEnv != "" {
		return "经环境变量 PROXY=" + proxyEnv
	}
	return "出网直连"
}

// ghVia 把"链路名 + 出网方式"拼成一句日志/回显用的短语。
func ghVia(label string) string { return label + "（" + ghOutProxyDesc() + "）" }

// ghRouteDesc 描述**这条链路**自己的出网方式。
//
// 与 ghOutProxyDesc 的区别很要紧：后者说的是"本机整体出网配置成什么样"，
// 而一条走国内加速源的链路**根本没套代理** —— 用整体描述去回显它，
// 会显示"经出网代理 http://…"，用户以为这条链路走了代理，其实没有。
func ghRouteDesc(r *ghRoute) string {
	if r.UseProxy {
		return ghVia(r.Label)
	}
	if r.Prefix == "" {
		return r.Label + "（出网直连）"
	}
	return r.Label + "（直连）"
}

// ghTransportFor 给某个候选出一条 Transport。
//
// 代理优先级：先看「在线升级」这一路的代理开关（config.yml 的 out_proxy.use_up），
// 没配才回退到历史上的 PROXY 环境变量。走配置而不是继续靠环境变量，是因为
// 环境变量会把**整个进程**的默认 Transport 都带上代理（连本该直连的请求），
// 而这里的代理只该作用在升级这条链路上。
//
// useProxy=false 的候选（国内加速源）一律直连：不套配置里的代理，也不套
// 环境变量。理由见文件头"代理只作用于 GitHub 本体"。
func ghTransportFor(useProxy bool) *http.Transport {
	base := func() *http.Transport {
		return &http.Transport{
			DialContext:           (&net.Dialer{Timeout: 10 * time.Second, KeepAlive: 30 * time.Second}).DialContext,
			TLSHandshakeTimeout:   10 * time.Second,
			ResponseHeaderTimeout: 15 * time.Second,
		}
	}
	if !useProxy {
		return base()
	}
	if u := OutProxyURLFor(ProxyUseUp); u != nil {
		return outProxyTransport(u)
	}
	tr := base()
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
//
// ctx 用来在"已找出足够多的可用源"时取消还在飞的探测。
func ghProbe(ctx context.Context, src ghSource, raw string, limit time.Duration) (time.Duration, error) {
	target, err := ghSourceURL(src, raw)
	if err != nil {
		return 0, err
	}
	client := &http.Client{Timeout: limit, Transport: ghTransportFor(src.UseProxy)}
	req, err := http.NewRequestWithContext(ctx, "GET", target, nil)
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

// ghCandidates 返回全部候选：GitHub 本体 + 国内加速源。
//
// GitHub 本体排在最前只是读起来顺，**不影响选路**（选路只认测速结果）。
func ghCandidates() []ghSource {
	out := make([]ghSource, 0, len(ghMirrorSources)+1)
	out = append(out, ghSource{
		Label: "直连", Form: ghFormDirect, UseProxy: true,
	})
	return append(out, ghMirrorSources...)
}

// ghSpeedTest 对所有候选并发测速，返回按延迟升序的可用源列表（最多 ghSpeedKeep 个）。
//
// 终止条件：找出 ghSpeedKeep 个**可用**源就取消其余探测。
// 为什么不等全部：候选有十几个，其中一半常年超时；等到全部落地要多花十几秒，
// 而结论（最快的几个是谁）在头几个落地时就已经定了。
//
// 「5 个」这个数不是随便取的：它同时是记录里保留的个数。留 5 个才够"最快的
// 那个半路出错时顺延"，而 5 个全被删光正好对应"重新测速"的条件。
//
// 代价要说清：取消时可能漏掉一个"还没测完但其实更快"的源。实测里快的源
// 都在几百毫秒内落地，慢的源动辄十几秒，所以这个窗口基本抓不到更快的源。
//
// 整个过程不打日志（见文件头"日志"）。
func ghSpeedTest(raw string) ([]*ghRoute, error) {
	ctx, cancel := context.WithCancel(context.Background())
	defer cancel()

	cands := ghCandidates()
	type outcome struct {
		src   ghSource
		delay time.Duration
		err   error
	}
	ch := make(chan outcome, len(cands))
	var wg sync.WaitGroup
	for _, c := range cands {
		wg.Add(1)
		go func(c ghSource) {
			defer wg.Done()
			limit := ghMirrorProbe
			if c.Form == ghFormDirect {
				limit = ghDirectProbe
			}
			d, err := ghProbe(ctx, c, raw, limit)
			ch <- outcome{src: c, delay: d, err: err}
		}(c)
	}
	go func() {
		wg.Wait()
		close(ch)
	}()

	var ok []*ghRoute
	for o := range ch {
		if o.err != nil {
			continue
		}
		ok = append(ok, &ghRoute{
			Prefix:   o.src.Base,
			Label:    o.src.Label,
			Delay:    o.delay,
			Form:     o.src.Form,
			UseProxy: o.src.UseProxy,
		})
		// 够数了就收手：剩下的还在飞的不再等。
		if len(ok) >= ghSpeedKeep {
			cancel()
		}
	}

	if len(ok) == 0 {
		return nil, fmt.Errorf("GitHub 本体与 %d 个国内加速源都不可用", len(ghMirrorSources))
	}
	sort.Slice(ok, func(i, j int) bool { return ok[i].Delay < ok[j].Delay })
	if len(ok) > ghSpeedKeep {
		ok = ok[:ghSpeedKeep]
	}
	return ok, nil
}

var (
	ghCacheMu sync.Mutex
	// ghRecords 按 host 分键存测速结果：release 列表（api.github.com）与
	// 资产下载（github.com）目标主机不同，能用的源也不一样。
	ghRecords = map[string][]*ghRoute{}
	// ghRecordAt 记录各 host 的测速时刻（用于 10 分钟过期判定）。
	ghRecordAt = map[string]time.Time{}
	// ghDead 记"这个 host 一个源都不可用"这个结论。测不出可用源时一次
	// 测速要花满一轮超时，不缓存的话同一轮操作里的重试会反复重测。
	ghDead    = map[string]time.Time{}
	ghLast    string // 最近一次选中的链路（面板回显用）
	ghLastLog string // 最近一次打进日志的链路名（避免同一路反复刷屏）
)

// LastGhRoute 返回最近一次成功选路的链路名；没选过路时返回空串。
//
// 带出网方式（"直连（经出网代理 http://…）"）：面板上回显的正是这个串，
// 用户开完代理开关后要能一眼看出这次到底走没走代理 —— 只回显
// "直连 / gh-proxy.org" 的话，开没开代理完全看不出来。
func LastGhRoute() string {
	ghCacheMu.Lock()
	last := ghLast
	ghCacheMu.Unlock()
	if last == "" {
		return ""
	}
	return last
}

// ghHost 取 URL 主机，用作测速结果的键。
func ghHost(raw string) string {
	u, err := url.Parse(raw)
	if err != nil || u.Host == "" {
		return raw
	}
	return u.Host
}

// ghPick 选路。
//
// 优先用 10 分钟内测好的结果（记录里的第一个）；记录空了（用尽）或过期就
// 重新测速。
func ghPick(raw string) (*ghRoute, error) {
	host := ghHost(raw)

	ghCacheMu.Lock()
	if at, ok := ghDead[host]; ok && time.Since(at) < ghDeadTTL {
		ghCacheMu.Unlock()
		return nil, fmt.Errorf("GitHub 本体与 %d 个国内加速源都不可用", len(ghMirrorSources))
	}
	routes := ghRecords[host]
	fresh := len(routes) > 0 && time.Since(ghRecordAt[host]) < ghSpeedTTL
	ghCacheMu.Unlock()

	if fresh {
		return ghUseRoute(routes[0]), nil
	}

	newRoutes, err := ghSpeedTest(raw)
	if err != nil {
		ghCacheMu.Lock()
		ghDead[host] = time.Now()
		ghCacheMu.Unlock()
		return nil, err
	}
	ghCacheMu.Lock()
	ghRecords[host] = newRoutes
	ghRecordAt[host] = time.Now()
	delete(ghDead, host)
	ghCacheMu.Unlock()
	return ghUseRoute(newRoutes[0]), nil
}

// ghUseRoute 记下"这次用了哪条链路"，必要时打一行日志。
//
// 日志只打最终选中的源，**不打印延迟**：延迟是测速的中间产物，用户要的是
// "这次走的是哪条路"。同一路连续用不重复刷屏。
func ghUseRoute(r *ghRoute) *ghRoute {
	desc := ghRouteDesc(r)
	ghCacheMu.Lock()
	ghLast = desc
	needLog := desc != ghLastLog
	if needLog {
		ghLastLog = desc
	}
	ghCacheMu.Unlock()
	if needLog {
		log.Printf("GitHub 链路：%s", desc)
	}
	return r
}

// ghMarkBad 把一个用起来失败的源从记录里删掉。
//
// 删掉而不是留着：记录按延迟排序，一个刚失败的源很可能还在最前面，
// 留着的话下次选路又会挑中它，又失败一次。
func ghMarkBad(host string, r *ghRoute) {
	ghCacheMu.Lock()
	defer ghCacheMu.Unlock()
	list := ghRecords[host]
	for i, x := range list {
		if x.Label == r.Label {
			ghRecords[host] = append(append([]*ghRoute{}, list[:i]...), list[i+1:]...)
			break
		}
	}
}

// ghDo 发一次 GET，非 2xx 视为失败（206 是 Range 探测的正常返回）。
func ghDo(r *ghRoute, raw string, headers map[string]string, timeout time.Duration) (*http.Response, error) {
	target, err := ghSourceURL(ghSource{
		Label: r.Label, Base: r.Prefix, Form: r.Form, UseProxy: r.UseProxy,
	}, raw)
	if err != nil {
		return nil, err
	}
	client := &http.Client{Timeout: timeout, Transport: ghTransportFor(r.UseProxy)}
	req, err := http.NewRequest("GET", target, nil)
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

// ghGetJSON 取 JSON（release 列表）：选中的链路请求失败就换下一条重试。
func ghGetJSON(raw string) ([]byte, *ghRoute, error) {
	headers := map[string]string{"Accept": "application/vnd.github.v3+json"}
	var lastErr error
	for i := 0; i < 2; i++ {
		route, err := ghPick(raw)
		if err != nil {
			return nil, nil, err
		}
		resp, err := ghDo(route, raw, headers, ghJSONTimeout)
		if err == nil {
			body, rerr := io.ReadAll(resp.Body)
			resp.Body.Close()
			if rerr == nil {
				return body, route, nil
			}
			err = rerr
		}
		lastErr = err
		// 这条源不好用 ⇒ 从记录里删掉，下次挑下一条。
		ghMarkBad(ghHost(raw), route)
		log.Printf("经 %s 拉取 release 列表失败(%v)，换下一条链路重试", ghRouteDesc(route), err)
	}
	return nil, nil, lastErr
}

// ghToFile 把资产整体落盘；空结果判失败（半截文件比报错更危险）。
func ghToFile(route *ghRoute, raw, dst string, mode os.FileMode) error {
	return ghToFileProgress(route, raw, dst, mode, nil)
}

// ghToFileProgress 下载到文件，并按已下载字节回调进度。
//
// onProgress 为 nil 时行为与原来的 ghToFile 完全一致。回调用来把真实下载
// 进度报给前端的升级遮罩 —— 30MB 的包要下几十秒，只给"下载中"三个字的话，
// 用户看到的是一片死寂，而不是"还剩多少"。
func ghToFileProgress(route *ghRoute, raw, dst string, mode os.FileMode, onProgress func(done, total int64)) error {
	resp, err := ghDo(route, raw, nil, ghFileTimeout)
	if err != nil {
		return err
	}
	defer resp.Body.Close()

	f, err := os.OpenFile(dst, os.O_CREATE|os.O_TRUNC|os.O_WRONLY, mode)
	if err != nil {
		return err
	}
	total := resp.ContentLength // 服务器没给长度时是 -1
	var done int64
	if onProgress != nil {
		if total < 0 {
			total = 0
		}
		onProgress(0, total)
	}
	writer := io.Writer(f)
	if onProgress != nil {
		// 回调统一按「累计字节」给，累加放在闭包里 —— progressWriter 只报
		// 本次写入了多少，两种语义混在一起迟早会在某个调用点用错。
		writer = &progressWriter{w: f, onWrite: func(n int64) {
			done += n
			onProgress(done, total)
		}}
	}
	if _, err := io.Copy(writer, resp.Body); err != nil {
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

// progressWriter 写盘的同时把「本次写入了多少字节」报给上层。
type progressWriter struct {
	w       io.Writer
	onWrite func(n int64)
}

func (p *progressWriter) Write(b []byte) (int, error) {
	n, err := p.w.Write(b)
	if n > 0 && p.onWrite != nil {
		p.onWrite(int64(n))
	}
	return n, err
}

// ghDownload 下载资产到 dst：选路失败或链路过不去就换下一条重试。
func ghDownload(raw, dst string, mode os.FileMode) (*ghRoute, error) {
	return ghDownloadProgress(raw, dst, mode, nil)
}

// ghDownloadProgress 是 ghDownload 的带进度版本（换链路重试时同样会回调，
// 每次重试都从 0 重新计数 —— 前端看到百分比回落是正常的，不必当成异常）。
func ghDownloadProgress(raw, dst string, mode os.FileMode, onProgress func(done, total int64)) (*ghRoute, error) {
	var lastErr error
	for i := 0; i < 3; i++ {
		route, err := ghPick(raw)
		if err != nil {
			return nil, err
		}
		if err := ghToFileProgress(route, raw, dst, mode, onProgress); err == nil {
			log.Printf("下载完成：经 %s，落盘 %s", ghRouteDesc(route), dst)
			return route, nil
		} else {
			lastErr = err
			// 这条源不好用 ⇒ 从记录里删掉，下次挑下一条（顺延）。
			ghMarkBad(ghHost(raw), route)
			log.Printf("经 %s 下载失败(%v)，换下一条链路重试", ghRouteDesc(route), err)
		}
		time.Sleep(time.Second * time.Duration(i+1))
	}
	return nil, lastErr
}
