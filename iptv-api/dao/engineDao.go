package dao

import (
	"encoding/json"
	"errors"
	"fmt"
	"io"
	"iptv-api/dto"
	"log"
	"net/http"
	"os/exec"
	"strings"
	"sync"
	"sync/atomic"
	"time"

	"github.com/gorilla/websocket"
)

var WS = NewWSClient()
var Lic dto.Lic

const (
	// wsCallTimeout 是一次「发一条等一条」的最长等待。
	wsCallTimeout = 15 * time.Second
	// wsReadWait 是写完之后等回包的最长等待。
	wsReadWait = 15 * time.Second
	// sendChanWait 是往 sendChan 投递的最长等待。
	sendChanWait = 5 * time.Second
	// runCacheTTL 是引擎存活探测结果的缓存时长。
	runCacheTTL = 2 * time.Second
)

// 数据结构

type Request struct {
	Action string      `json:"a"`
	Data   interface{} `json:"d"`
}

type Response struct {
	Code int             `json:"code"`
	Msg  string          `json:"msg"`
	Data json.RawMessage `json:"data"`
}

// WSClient（线程安全版）

type wsMessage struct {
	req      Request
	respChan chan Response
	errChan  chan error
}

type WSClient struct {
	url    string
	conn   *websocket.Conn
	rw     sync.RWMutex
	closed bool

	sendChan chan wsMessage // 所有写操作通过这个 channel

	reconnectCh  chan struct{}
	maxRetry     int
	stopCh       chan struct{}
	reconnecting bool

	failCount   int
	failLimit   int
	backoffBase time.Duration

	// engineCfgHash 是引擎最近一次在 pong 里自报的「已加载配置哈希」。
	engineCfgHash atomic.Value // string

	// engineLicFP 是引擎最近一次在 pong 里自报的「授权/开关快照」的哈希。
	// 只用来判断"变没变" —— 真正取值走 getLicState（见 syncEngineLicense）。
	engineLicFP atomic.Value // string

	// licDirty 表示"引擎那边的授权/开关快照变了，本地还没同步"。
	licDirty atomic.Bool
	// licSyncing 保证同一时刻只有一次取值在飞。
	// 引擎离线时那次要等满 15s 超时，不单飞的话每 3s 会堆一个 goroutine。
	licSyncing atomic.Bool

	// cfgSyncing 保证同一时刻只有一次配置补推在飞，
	// 否则心跳每 3s 一次、而一次下发可能要等 15s 超时，会堆起来。
	cfgSyncing atomic.Bool
	// cfgSyncFails 是连续失败计数，仅用于抑制日志刷屏。
	cfgSyncFails atomic.Int32
}

// licMu 保护包级变量 Lic。
var licMu sync.RWMutex

// SetLic 原子地整体替换授权信息（api 侧所有写 dao.Lic 的地方都应走它）。
func SetLic(l dto.Lic) {
	licMu.Lock()
	Lic = l
	licMu.Unlock()
}

// GetLic 原子地读一份授权信息副本。
func GetLic() dto.Lic {
	licMu.RLock()
	defer licMu.RUnlock()
	return Lic
}

// hashBytes 给一段原始 JSON 取短哈希（只用于"变没变"的比对，不做安全用途）。
func hashBytes(b []byte) string {
	return shortHash(b)
}

// 授权门禁回调（避免 dao ↔ service 循环 import）

// licenseGate 存放 service.EnforceLicenseGate 的函数值。
var licenseGate atomic.Value // func() bool

// RegisterLicenseGate 由 service 包在 init() 里调用一次。
func RegisterLicenseGate(fn func() bool) {
	if fn == nil {
		return
	}
	licenseGate.Store(fn)
}

// 授权状态的读侧便利函数

// LicStillValid 判断本地缓存的授权当前是否可用。
func LicStillValid() bool {
	licMu.RLock()
	defer licMu.RUnlock()
	return Lic.Type >= 2 || (Lic.Type == 1 && Lic.Exp > time.Now().Unix())
}

// reloadLicGap 是两次**远端**授权校验之间的最小间隔。
const reloadLicGap = 60 * time.Second

var lastReloadLic atomic.Int64 // Unix 秒

// ReloadLicDue 报告是否已超过 reloadLicGap。
func ReloadLicDue() bool {
	now := time.Now().Unix()
	for {
		last := lastReloadLic.Load()
		if last != 0 && now-last < int64(reloadLicGap/time.Second) {
			return false
		}
		if lastReloadLic.CompareAndSwap(last, now) {
			return true
		}
	}
}

// ------------------ 创建客户端 ------------------

func NewWSClient() *WSClient {
	c := &WSClient{
		maxRetry:    3,
		reconnectCh: make(chan struct{}, 1),
		stopCh:      make(chan struct{}),
		failLimit:   3,
		backoffBase: 1 * time.Second,
		sendChan:    make(chan wsMessage, 100),
	}
	go c.reconnectWorker()
	go c.writePump() // 启动写 goroutine
	return c
}

// ------------------ 启动连接 ------------------

func (c *WSClient) Start(url string) error {
	c.url = url
	if !IsRunning() {
		// 引擎还没起来也要点起重连循环：安装刚完成时引擎是由启动器**异步
		go c.triggerReconnect()
		return fmt.Errorf("引擎未启动")
	}
	if err := c.doConnect(); err != nil {
		// 连不上也必须把重连循环点起来：没有连上就没有心跳，
		log.Println("⚠️ 引擎初始连接失败，转入后台重连:", err)
		go c.triggerReconnect()
		return err
	}
	return nil
}

// ------------------ 真正执行连接 ------------------

func (c *WSClient) doConnect() error {
	dialer := websocket.Dialer{
		HandshakeTimeout:  5 * time.Second,
		EnableCompression: true,
	}

	var conn *websocket.Conn
	var err error

	for i := 1; i <= c.maxRetry; i++ {
		conn, _, err = dialer.Dial(c.url, nil)
		if err == nil {
			c.rw.Lock()
			c.conn = conn
			c.closed = false
			c.failCount = 0

			if c.stopCh == nil {
				c.stopCh = make(chan struct{})
			}

			c.rw.Unlock()

			// 换了连接就等于换了引擎进程，它手上是哪一版配置还不知道，
			c.engineCfgHash.Store("")

			log.Println("✅ 引擎连接成功")
			go c.heartbeat()
			return nil
		}
		time.Sleep(time.Duration(i*2) * time.Second)
	}
	return fmt.Errorf("引擎连接失败: %w", err)
}

// ================== 写 goroutine ==================

// sendErr 非阻塞回报错误。
func sendErr(ch chan error, err error) {
	select {
	case ch <- err:
	default:
	}
}

// fail 统一处理一条消息的失败：回报错误并触发重连。
func (c *WSClient) fail(msg wsMessage, err error) {
	sendErr(msg.errChan, err)
	c.triggerReconnect()
}

func (c *WSClient) writePump() {
	for msg := range c.sendChan {

		// IsOnline() 内部已经包含 IsRunning()，不必再单独调一次。
		if !c.IsOnline() {
			sendErr(msg.errChan, errors.New("引擎未运行或连接不在线，已丢弃"))
			continue
		}

		c.rw.RLock()
		conn := c.conn
		closed := c.closed
		c.rw.RUnlock()

		if closed || conn == nil {
			sendErr(msg.errChan, errors.New("连接不存在"))
			continue
		}

		_ = conn.SetWriteDeadline(time.Now().Add(wsReadWait))
		if err := conn.WriteJSON(msg.req); err != nil {
			c.fail(msg, err)
			continue
		}

		// 必须**设读超时。改造前这里是裸 ReadMessage：引擎只要吞掉一条
		_ = conn.SetReadDeadline(time.Now().Add(wsReadWait))
		_, data, err := conn.ReadMessage()
		if err != nil {
			c.fail(msg, err)
			continue
		}
		// 读完立刻清掉，避免这次的超时残留影响之后的读。
		_ = conn.SetReadDeadline(time.Time{})

		var resp Response
		if err := json.Unmarshal(data, &resp); err != nil {
			sendErr(msg.errChan, err)
			continue
		}
		msg.respChan <- resp
	}
}

// ================== heartbeat ==================

// stopChan 在锁内取 stopCh。
func (c *WSClient) stopChan() chan struct{} {
	c.rw.RLock()
	defer c.rw.RUnlock()
	return c.stopCh
}

// pingOnce 发一次心跳并**校验回包内容**。
func (c *WSClient) pingOnce() bool {
	respChan := make(chan Response, 1)
	errChan := make(chan error, 1)

	// 投递也要设超时：sendChan 容量 100，writePump 卡住时会堆满，
	// 那时一个裸发送会把心跳也一起卡死。
	select {
	case c.sendChan <- wsMessage{
		req:      Request{Action: "ping"},
		respChan: respChan,
		errChan:  errChan,
	}:
	case <-time.After(sendChanWait):
		log.Println("⚠️ 心跳投递超时（写队列拥塞）")
		return false
	case <-c.stopChan():
		return false
	}

	select {
	case resp := <-respChan:
		if resp.Msg != "pong" {
			// 引擎回了别的东西：版本不匹配，或协议被改坏。
			// 这比"没回应"更值得警惕，单独记一条。
			log.Printf("⚠️ 心跳回包异常: code=%d msg=%q", resp.Code, resp.Msg)
			return false
		}
		c.noteEngineConfigHash(resp.Data)
		return true
	case err := <-errChan:
		log.Printf("⚠️ 心跳失败: %v", err)
		return false
	case <-time.After(wsCallTimeout):
		log.Println("⚠️ 心跳超时（引擎未在限时内响应）")
		return false
	case <-c.stopChan():
		return false
	}
}

// ================== 配置一致性对账 ==================

// noteEngineConfigHash 记下引擎在 pong 里自报的配置哈希，并**顺带同步授权态**。
func (c *WSClient) noteEngineConfigHash(raw json.RawMessage) {
	if len(raw) == 0 {
		return
	}

	// 形状一：裸字符串（老引擎）
	var h string
	if err := json.Unmarshal(raw, &h); err == nil {
		if h != "" {
			c.engineCfgHash.Store(h)
		}
		return
	}

	// 形状二：对象（新引擎）—— 配置哈希 + 授权/开关快照
	var pd struct {
		Cfg string          `json:"cfg"`
		Lic json.RawMessage `json:"lic"`
	}
	if err := json.Unmarshal(raw, &pd); err != nil {
		return
	}
	if pd.Cfg != "" {
		c.engineCfgHash.Store(pd.Cfg)
	}
	c.noteEngineLicense(pd.Lic)
}

// noteEngineLicense 把心跳里随行的授权/开关快照与本地缓存比对，
func (c *WSClient) noteEngineLicense(raw json.RawMessage) {
	if len(raw) == 0 {
		return
	}
	fp := hashBytes(raw)
	// 首次拿到（prev 为空）也要触发一次：那是"管理端刚连上/刚重启"，
	// 本地 dao.Lic 可能还是上一轮的残留，值得同步一遍。
	prev, _ := c.engineLicFP.Load().(string)
	if prev == fp {
		return
	}
	c.engineLicFP.Store(fp)
	// 不覆盖待处理的标记：连续两拍都变时，只需要同步到**最新**那一份，
	// 中间那一次没有观察者（这里换成别的值会让心跳漏掉最终状态）。
	c.licDirty.Store(true)
}

// syncEngineLicense 在心跳上把引擎的授权/开关快照拉回来（仅在"变了"时）。
func (c *WSClient) syncEngineLicense() {
	if !c.licDirty.Load() {
		return
	}
	if !c.licSyncing.CompareAndSwap(false, true) {
		return
	}
	go func() {
		defer c.licSyncing.Store(false)

		resp, err := c.SendWS(Request{Action: "getLicState"})
		if err != nil {
			// 拿不到就**保持脏标记**，下一拍重试。这里不能清标记：
			// 清了就等于"这次变化永远丢了"，而那正是授权到期这种情况。
			return
		}
		if resp.Code != 1 || len(resp.Data) == 0 {
			return
		}

		var snap engineLicState
		if err := json.Unmarshal(resp.Data, &snap); err != nil {
			log.Println("⚠️ 解析引擎授权状态失败:", err)
			return
		}

		c.applyEngineLicState(snap)
		c.licDirty.Store(false)
	}()
}

// engineLicState 是引擎 getLicState 响应的形状（对应引擎侧
// service.LicenseSnapshot）。字段**两边必须同时改**。
type engineLicState struct {
	Type    int64  `json:"type"`
	Status  int64  `json:"status"`
	Exp     int64  `json:"exp"`
	Name    string `json:"name"`
	Msg     string `json:"msg"`
	LicOK   bool   `json:"licOk"`
	Proxy   int64  `json:"proxy"`
	AutoRes int64  `json:"autoRes"`
	DisCh   int64  `json:"disCh"`
	EpgFuzz int64  `json:"epgFuzz"`
	Short   int64  `json:"shortUrl"`
}

// applyEngineLicState 把引擎的快照落到本地：授权进 dao.Lic，
func (c *WSClient) applyEngineLicState(s engineLicState) {
	// 授权
	licMu.Lock()
	licChanged := Lic.Type != s.Type || Lic.Status != s.Status ||
		Lic.Exp != s.Exp || Lic.Name != s.Name || Lic.Msg != s.Msg
	if licChanged {
		Lic.Type = s.Type
		Lic.Status = s.Status
		Lic.Exp = s.Exp
		Lic.Name = s.Name
		Lic.Msg = s.Msg
	}
	licMu.Unlock()

	if licChanged {
		log.Printf("🔄 引擎授权状态变更: type=%d status=%d exp=%d（%s）",
			s.Type, s.Status, s.Exp, s.Name)
	}

	// 授权失效 → 关停全部功能
	if !s.LicOK {
		if gate := licenseGate.Load(); gate != nil {
			if fn, ok := gate.(func() bool); ok && fn() {
				log.Println("🔒 授权失效，已通过心跳关停进阶功能")
			}
		}
	}

	// ---- 功能开关 ----
	cfg := GetConfig()
	if cfg == nil {
		return
	}
	if cfg.Proxy.Status == s.Proxy &&
		cfg.Resolution.Auto == s.AutoRes &&
		cfg.Resolution.DisCh == s.DisCh &&
		cfg.Epg.Fuzz == s.EpgFuzz &&
		cfg.System.ShortURL == s.Short {
		return
	}

	cfg.Proxy.Status = s.Proxy
	cfg.Resolution.Auto = s.AutoRes
	cfg.Resolution.DisCh = s.DisCh
	cfg.Epg.Fuzz = s.EpgFuzz
	cfg.System.ShortURL = s.Short
	// 直接落盘，不走 SetConfig（原因见函数头注释：那里会形成初始化环）。
	GlobalConfig.Store(cfg)
	if err := SaveConfigToFile(); err != nil {
		log.Println("⚠️ 同步过来的配置落盘失败（下一拍会重试）:", err)
		return
	}
	log.Printf("🔄 引擎功能开关已同步: 中转=%d 自动识别=%d 自动禁用=%d 模糊=%d 短链=%d",
		s.Proxy, s.AutoRes, s.DisCh, s.EpgFuzz, s.Short)
}

// pushConfigReload 让引擎重新从磁盘加载配置，并**校验结果**。
func (c *WSClient) pushConfigReload() error {
	resp, err := c.SendWS(Request{Action: "reloadConfig"})
	if err != nil {
		return err
	}
	if resp.Code != 1 {
		return fmt.Errorf("引擎拒绝加载配置: %s", resp.Msg)
	}
	var h string
	if len(resp.Data) > 0 {
		_ = json.Unmarshal(resp.Data, &h)
	}
	if h == "" {
		// 老版本引擎只回 code/msg，没有指纹 —— 无法校验，
		// 但它确实执行了 reload，按成功处理。
		return nil
	}
	c.engineCfgHash.Store(h)

	// 引擎读到的内容必须和我们写出的那一版一致。
	if want := ConfigFileHash(); want != "" && h != want {
		return fmt.Errorf("引擎加载的配置(%s)与磁盘(%s)不一致", h, want)
	}
	return nil
}

// reconcileConfig 在心跳上做一次配置一致性对账，双向都会纠正：
func (c *WSClient) reconcileConfig() {
	if !IsRunning() {
		return
	}

	disk := ConfigFileHash()
	if disk == "" {
		return // 文件读不到，无法对账（不是"不一致"）
	}

	// 方向一：磁盘比本进程内存新
	if !configDirty.Load() {
		if written := WrittenConfigHash(); written != "" && written != disk {
			if ReloadConfigFromDisk() {
				log.Printf("🔄 配置文件已被外部修改（%s → %s），已重新加载", written, disk)
			}
			return
		}
	}

	// ---- 方向二：引擎手上那份落后了 ----
	eng, _ := c.engineCfgHash.Load().(string)
	if eng == "" || eng == disk {
		c.cfgSyncFails.Store(0)
		return
	}

	// 单飞：一次补推没回来之前不再发起新的。
	if !c.cfgSyncing.CompareAndSwap(false, true) {
		return
	}
	go func() {
		defer c.cfgSyncing.Store(false)
		if err := c.pushConfigReload(); err != nil {
			n := c.cfgSyncFails.Add(1)
			// 引擎持续不认账时（例如它读不动那个文件）不要每 3s 刷一条日志。
			if n <= 3 {
				log.Printf("⚠️ 配置补推失败（第 %d 次）: %v", n, err)
			}
			return
		}
		if n := c.cfgSyncFails.Load(); n > 0 {
			log.Printf("✅ 配置已同步到引擎（此前失败 %d 次）", n)
		}
		c.cfgSyncFails.Store(0)
	}()
}

func (c *WSClient) heartbeat() {
	ticker := time.NewTicker(3 * time.Second)
	defer ticker.Stop()

	for {
		select {
		case <-ticker.C:
			if c.pingOnce() {
				c.rw.Lock()
				c.failCount = 0
				c.rw.Unlock()
				// 心跳顺带做配置对账：pong 里带着引擎已加载配置的哈希，
				c.reconcileConfig()
				// 授权/开关同步：pong 里同时带着授权快照的指纹，
				c.syncEngineLicense()
				continue
			}

			c.rw.Lock()
			c.failCount++
			n := c.failCount
			needReconnect := n >= c.failLimit && !c.reconnecting
			c.rw.Unlock()

			log.Printf("⚠️ 心跳失败 #%d", n)
			if needReconnect {
				// 心跳线程就此退出；重连成功后 doConnect 会重新拉起它。
				log.Println("⚠️ 引擎存活检测停止，转入重连流程 ...")
				go c.triggerReconnect()
				return
			}
		case <-c.stopChan():
			return
		}
	}
}

// ================== 重连控制 ==================

func (c *WSClient) triggerReconnect() {
	c.rw.Lock()
	defer c.rw.Unlock()
	if c.reconnecting || c.closed {
		return
	}
	c.reconnecting = true
	select {
	case c.reconnectCh <- struct{}{}:
	default:
	}
}

// reconnectIdle 一轮重连重试耗尽后的等待间隔。
const reconnectIdle = 15 * time.Second

func (c *WSClient) reconnectWorker() {
	for range c.reconnectCh {
		log.Println("🔄 执行引擎重连...")
		// 进重连说明连接已不可用，引擎状态很可能刚变过，
		// 丢掉存活探测缓存重新探一次再决定要不要拉起进程。
		invalidateRunCache()
		c.CloseConn(false)

		backoff := c.backoffBase
		success := false
		for i := 0; i < c.maxRetry; i++ {
			if err := c.doConnect(); err != nil {
				if !IsRunning() {
					if !c.RestartEngine() {
						err = errors.New("引擎停止运行")
					}
				}
				log.Printf("❌ 引擎重连第 %d 次失败: %v", i+1, err)
				time.Sleep(backoff)
				backoff *= 2
			} else {
				success = true
				break
			}
		}

		if !success {
			// 一轮重试耗尽**不能** CloseConn(true) 永久关闭：引擎很可能只是
			log.Printf("❌ 本轮重连未成功，%v 后继续尝试", reconnectIdle)
			c.rw.Lock()
			c.reconnecting = false
			c.failCount = 0
			c.rw.Unlock()
			time.Sleep(reconnectIdle)
			go c.triggerReconnect()
			continue
		}

		c.rw.Lock()
		c.reconnecting = false
		c.failCount = 0
		c.rw.Unlock()
	}
}

// ================== 安全关闭 ==================

func (c *WSClient) CloseConn(fullClose bool) {
	c.rw.Lock()
	defer c.rw.Unlock()
	if c.conn != nil {
		_ = c.conn.Close()
		c.conn = nil
	}
	if fullClose {
		c.closed = true
		select {
		case <-c.stopCh:
		default:
			close(c.stopCh)
		}
		c.stopCh = nil
	}
}

// ================== 连接状态 ==================

func (c *WSClient) IsOnline() bool {
	c.rw.RLock()
	defer c.rw.RUnlock()
	return c.conn != nil && !c.closed && IsRunning()
}

// ================== 发送请求 ==================

func (c *WSClient) SendWS(req Request) (Response, error) {
	if !IsRunning() {
		if !c.RestartEngine() {
			return Response{}, fmt.Errorf("引擎重启失败")
		}
		// RestartEngine 内部已完成 Start + getlic，连接此刻是就绪的。
	} else if !c.IsOnline() {
		if err := c.doConnect(); err != nil {
			return Response{}, fmt.Errorf("引擎未在线: %w", err)
		}
	}

	var lastErr error
	for i := 0; i < c.maxRetry; i++ {
		respChan := make(chan Response, 1)
		errChan := make(chan error, 1)

		// 投递带超时。sendChan 容量 100，writePump 卡住时会被堆满，
		// 裸发送会让调用方（HTTP 处理链）一起挂在这里。
		select {
		case c.sendChan <- wsMessage{req: req, respChan: respChan, errChan: errChan}:
		case <-time.After(sendChanWait):
			lastErr = errors.New("写队列拥塞，投递超时")
			log.Printf("⚠️ 任务投递超时, 重试第 %d 次", i+1)
			time.Sleep(time.Second)
			continue
		case <-c.stopChan():
			return Response{}, errors.New("连接已关闭")
		}

		// 等待回包也要有上限。改造前这里只有 respChan / errChan 两个分支：
		select {
		case resp := <-respChan:
			return resp, nil
		case err := <-errChan:
			lastErr = err
			log.Printf("⚠️ 任务发送失败, 重试第 %d 次: %v", i+1, err)
			time.Sleep(2 * time.Second)
		case <-time.After(wsCallTimeout):
			lastErr = errors.New("等待引擎响应超时")
			log.Printf("⚠️ 任务等待超时, 重试第 %d 次", i+1)
			// 超时说明这条连接上的应答已经错位（下一条回包会顶上来的
			// 就是上一条的），必须重连，否则后续请求全部会读到错误的响应。
			c.triggerReconnect()
			time.Sleep(time.Second)
		case <-c.stopChan():
			return Response{}, errors.New("连接已关闭")
		}
	}

	if lastErr == nil {
		lastErr = errors.New("发送失败，超过最大重试")
	}
	return Response{}, fmt.Errorf("发送失败，超过最大重试: %w", lastErr)
}

// ================== 引擎状态检测 ==================

// 引擎存活探测的结果缓存。
var (
	runMu       sync.Mutex
	runCached   bool
	runCachedAt time.Time
)

// invalidateRunCache 让下一次 IsRunning() 真的去探一次。
func invalidateRunCache() {
	runMu.Lock()
	runCachedAt = time.Time{}
	runMu.Unlock()
}

func IsRunning() bool {
	runMu.Lock()
	defer runMu.Unlock()

	if !runCachedAt.IsZero() && time.Since(runCachedAt) < runCacheTTL {
		return runCached
	}
	runCached = isRunningUncached()
	runCachedAt = time.Now()
	return runCached
}

func isRunningUncached() bool {
	cmd := exec.Command("bash", "-c", "ps -ef | grep '/engine' | grep -v grep")
	output, err := cmd.CombinedOutput()
	if err != nil {
		return checkRun()
	}
	return strings.Contains(string(output), "engine")
}

func checkRun() bool {
	req, err := http.NewRequest("GET", "http://127.0.0.1:81/", nil)
	if err != nil {
		return false
	}
	req.Header.Set("User-Agent", "Go-http-client/1.1")
	resp, err := (&http.Client{}).Do(req)
	if err != nil {
		return false
	}
	defer resp.Body.Close()
	body, _ := io.ReadAll(resp.Body)
	return strings.Contains(string(body), "ok")
}

// ================== 重启引擎 ==================

func (c *WSClient) RestartEngine() bool {
	log.Println("♻️ 正在重启引擎...")

	r := GetUrlData("http://127.0.0.1:82/engineRestart")
	if strings.TrimSpace(r) == "" {
		log.Println("重启失败: 升级服务未启动")
		return false
	}
	if strings.TrimSpace(r) != "OK" {
		log.Println("重启失败: 升级服务返回错误")
		return false
	}
	// 启动器刚把引擎拉起来（或正在拉），进程表即刻就变了；
	for i := 0; i < 10; i++ {
		invalidateRunCache()
		if IsRunning() {
			break
		}
		time.Sleep(200 * time.Millisecond)
	}

	err := c.Start("ws://127.0.0.1:81/ws")
	if err != nil {
		log.Println("引擎连接失败：", err)
		return false
	}

	res, err := c.SendWS(Request{Action: "getlic"})
	if err == nil {
		if err := json.Unmarshal(res.Data, &Lic); err == nil {
			log.Println("引擎初始化成功")
			log.Println("机器码:", Lic.ID)
		} else {
			log.Println("授权信息解析错误:", err)
		}
	} else {
		log.Println("引擎初始化错误")
		return false
	}

	log.Println("✅  引擎已成功重启并重新连接")
	return true
}

func GetUrlData(url string, ua ...string) string {
	defaultUA := "Go-http-client/1.1"
	useUA := defaultUA

	if len(ua) > 0 && ua[0] != "" {
		useUA = ua[0]
	}

	req, err := http.NewRequest("GET", url, nil)
	if err != nil {
		return ""
	}

	req.Header.Set("User-Agent", useUA)

	client := &http.Client{}
	resp, err := client.Do(req)
	if err != nil {
		return ""
	}
	defer resp.Body.Close()

	body, err := io.ReadAll(resp.Body)
	if err != nil {
		return ""
	}

	return string(body)
}
