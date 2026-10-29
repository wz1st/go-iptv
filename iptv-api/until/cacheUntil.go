package until

import (
	"context"
	"iptv-api/dao"
	"iptv-api/models"
	"log"
	"runtime/debug"
	"strconv"
	"strings"
	"sync"
	"sync/atomic"
	"time"
)

// EPG 聚合节目单的重建调度 + 缓存失效策略。
//
// 缓存分两类，失效方式不同：
//   - 派生缓存（套餐节目单 / 订阅 / MyTV）：api 自己生成，删键即失效，
//     下次访问由 Ensure* 函数 lazy 重建。
//   - 聚合分组缓存（autoCategory_*）：引擎生成，api 只负责删。
// 所以"作废缓存"不需要重建，"重建"是另一件事（重算 + 分辨率识别）。

const (
	// rebuildDelay 是"最后一次请求之后等多久才真正开始重算"。
	// 太短会把连发的请求拆成多次重算，太长则用户改完配置要干等。
	rebuildDelay = 10 * time.Second

	// rebuildMaxDelay 是"去抖最多能把重算往后推多久"。
	rebuildMaxDelay = 5 * time.Minute

	// resolutionPollInterval 是等待引擎全量分辨率识别时的轮询间隔。
	resolutionPollInterval = 5 * time.Second

	// resolutionPollMaxErrors 是"连续查询失败多少次就放弃本轮"。
	resolutionPollMaxErrors = 6

	// resolutionTestMaxWait 是等待分辨率识别的总时长硬上限。
	resolutionTestMaxWait = 2 * time.Hour

	// resolutionScanDelay 是测速请求的去抖窗口。
	// 测速很贵（扫所有频道、动连接），所以窗口比节目单重建长一些。
	resolutionScanDelay = 30 * time.Second
)

// EpgRebuild 是「EPG 聚合节目单重建」的调度器（进程级单例）。
var EpgRebuild *SignalExecutor

// ResolutionScan 是「引擎全量分辨率识别」的调度器（进程级单例）。
//
// 为什么独立于 EpgRebuild：分辨率识别是**引擎级全局任务**（扫所有频道、
// 改所有频道的分辨率/延迟字段），跟"哪个套餐的节目单要重算"没关系。
// 以前它被塞在 EPG 缓存重建里（doRebuild 内部），于是每一次缓存失效都会
// 连带启动一次全量测速 —— 一轮频道导入能触发好几次。
// 拆开之后：EPG 重建只管节目单，测速由独立信号触发，且同样走去抖合并。
var ResolutionScan *SignalExecutor

// rebuildRequest 描述一次重建请求：重建哪些套餐、要不要顺带跑一次测速。
//
// allMeals 与 mealIds 的关系：allMeals=true 时 mealIds 被忽略（重建全部套餐）。
// needResolution 只是"要不要触发测速调度"的开关，真正的测速由 ResolutionScan
// 独立调度执行（不阻塞本轮重建）。
type rebuildRequest struct {
	allMeals       bool
	needResolution bool
	mealIds        map[int64]struct{}
}

// merge 把另一次请求并进来（取并集）。
func (r *rebuildRequest) merge(o rebuildRequest) {
	if o.allMeals {
		r.allMeals = true
	}
	if o.needResolution {
		r.needResolution = true
	}
	if len(o.mealIds) == 0 {
		return
	}
	if r.mealIds == nil {
		r.mealIds = make(map[int64]struct{}, len(o.mealIds))
	}
	for id := range o.mealIds {
		r.mealIds[id] = struct{}{}
	}
}

// mealIdList 返回要重建的套餐 id；nil 表示全部套餐。
func (r rebuildRequest) mealIdList() []int64 {
	if r.allMeals {
		return nil
	}
	ids := make([]int64, 0, len(r.mealIds))
	for id := range r.mealIds {
		ids = append(ids, id)
	}
	return ids
}

// SignalExecutor 是一个去抖执行器：突发请求合并成一次执行。
type SignalExecutor struct {
	delay    time.Duration
	maxDelay time.Duration // 去抖上限，见 rebuildMaxDelay
	execFunc func(ctx context.Context)
	signalCh chan struct{}
	stopCh   chan struct{}

	stopOnce sync.Once
	stopped  atomic.Bool // Stop() 之后不再受理新信号

	mu          sync.Mutex // 保护下面几个字段
	cancel      context.CancelFunc
	waitTimer   *time.Timer
	running     bool      // 有任务正在 execFunc 里跑
	deadline    time.Time // 本轮去抖的最终触发期限（= 首次请求 + maxDelay）
	pending     rebuildRequest
	active      rebuildRequest
	resetLogged bool

	// resetLogged 标记"本轮已经打过一次去抖重置日志"。
}

// NewSignalExecutor 创建执行器。
func NewSignalExecutor(delay time.Duration, execFunc func(ctx context.Context)) *SignalExecutor {
	if delay <= 0 {
		// 传 0 或负数时退回去抖默认值而不是变成"立即执行"：
		delay = rebuildDelay
	}
	return &SignalExecutor{
		delay:    delay,
		maxDelay: rebuildMaxDelay,
		execFunc: execFunc,
		signalCh: make(chan struct{}, 1),
		stopCh:   make(chan struct{}),
	}
}

// Start 启动信号监听器。
func (s *SignalExecutor) Start() {
	go func() {
		for {
			select {
			case <-s.stopCh:
				return
			case <-s.signalCh:
				s.handleSignal()
			}
		}
	}()
}

// Rebuild 请求一次全量重建（**含分辨率全量识别**）。
//
// 语义与改造前一致：以前每次 Cache.Rebuild() 都会走一遍 doRebuild，
// 而 doRebuild 里会按 cfg.Resolution.Auto 触发引擎的全量测速。
// 如果这里不带 resolution，自动测速就再也没有触发点了。
func (s *SignalExecutor) Rebuild() {
	s.RequestRebuild(rebuildRequest{allMeals: true, needResolution: true})
}

// RequestRebuild 请求一次重建，范围由 req 指定（局部套餐 / 是否跑分辨率识别）。
// 多次请求在执行前合并成一次，避免"连发 N 次 → 重算 N 遍"。
func (s *SignalExecutor) RequestRebuild(req rebuildRequest) {
	if s == nil || s.stopped.Load() {
		return
	}
	s.mu.Lock()
	s.pending.merge(req)
	s.mu.Unlock()

	select {
	case s.signalCh <- struct{}{}:
	default:
		// 通道已满 = 已经有一个信号在等着处理，本次并入它。
	}
}

// ActiveRequest 返回本轮正在执行的请求（执行函数用它决定重建范围）。
func (s *SignalExecutor) ActiveRequest() rebuildRequest {
	s.mu.Lock()
	defer s.mu.Unlock()
	return s.active
}

// Stop 停止执行器。**幂等**：重复调用不会 panic。
func (s *SignalExecutor) Stop() {
	if s == nil {
		return
	}
	s.stopOnce.Do(func() {
		s.stopped.Store(true)
		close(s.stopCh)

		s.mu.Lock()
		defer s.mu.Unlock()
		if s.waitTimer != nil {
			s.waitTimer.Stop()
			s.waitTimer = nil
		}
		if s.cancel != nil {
			s.cancel()
			s.cancel = nil
		}
	})
}

// handleSignal 是内部信号处理逻辑。
func (s *SignalExecutor) handleSignal() {
	s.mu.Lock()

	// 只有"任务确实在跑"时才谈得上中断。
	if s.running && s.cancel != nil {
		s.cancel()
		s.cancel = nil
	}
	s.running = false

	if s.waitTimer != nil {
		// Stop() 在"计时器已到点、但回调还在等这把锁"时返回 false。
		if !s.waitTimer.Stop() {
			s.mu.Unlock()
			return
		}

		// 去抖上限：不许把这一轮无限往后推（见 rebuildMaxDelay）。
		remain := time.Until(s.deadline)
		if remain <= 0 {
			remain = time.Millisecond
		} else if remain > s.delay {
			remain = s.delay
		}
		s.waitTimer.Reset(remain)
		s.mu.Unlock()
		return
	}

	s.deadline = time.Now().Add(s.maxDelay)
	s.resetLogged = false
	s.waitTimer = time.AfterFunc(s.delay, s.run)
	s.mu.Unlock()
}

// run 是计时器到点后的真正入口。
func (s *SignalExecutor) run() {
	// AfterFunc 的回调跑在**它自己的 goroutine** 里，未捕获的 panic 会越过
	defer func() {
		if r := recover(); r != nil {
			log.Printf("‼️ EPG缓存重建任务 panic（已拦下，进程不受影响）: %v", r)
			s.mu.Lock()
			s.cancel = nil
			s.running = false
			s.mu.Unlock()
		}
	}()

	s.mu.Lock()
	ctx, cancel := context.WithCancel(context.Background())
	s.cancel = cancel
	s.waitTimer = nil
	s.running = true
	// 本轮执行的请求 = 此刻合并好的 pending（取走并清空，新请求留给下一轮）。
	s.active = s.pending
	s.pending = rebuildRequest{}
	s.mu.Unlock()

	s.execFunc(ctx)

	// 重建是本进程内存占用最高的操作：要把套餐下所有频道的节目单在内存里拼好、
	debug.FreeOSMemory()

	// 复位：不复位的话下次信号会对着已结束的 ctx 调 cancel（见 handleSignal）。
	s.mu.Lock()
	s.cancel = nil
	s.running = false
	s.mu.Unlock()
}

// deleteCacheFiles 删除一批缓存文件，并把失败打出来。
func deleteCacheFiles(pattern string) {
	if dao.Cache == nil {
		log.Printf("⚠️ 缓存未就绪，跳过删除: %s", pattern)
		return
	}
	if err := dao.Cache.Delete(pattern); err != nil {
		log.Printf("⚠️ 删除缓存 %s 失败: %v", pattern, err)
	}
}

// ---------------- 缓存失效（按影响范围分级）----------------
//
// 范围从窄到宽：
//   InvalidateMealCaches(套餐)          → 只作废这一个套餐
//   InvalidateMealCachesByCategoryIds   → 只作废引用了这些分组的套餐
//   InvalidateAllMealEpgCaches          → 全部套餐的聚合节目单
//   InvalidateAutoCategoryCaches        → 聚合分组缓存（引擎侧写的那些）
//   InvalidateAllCaches                 → 整个缓存目录

// InvalidateMealEpgCache 作废单个套餐的聚合节目单。
func InvalidateMealEpgCache(mealId int64) {
	deleteCacheFiles(mealEpgXmlKey(mealId))
}

// InvalidateMealCaches 作废单个套餐的全部派生缓存，并立即重算它的节目单。
func InvalidateMealCaches(mealId int64) {
	deleteCacheFiles(mealSubTxtKey(mealId))
	deleteCacheFiles(mealSubM3u8Key(mealId))
	for _, deviceId := range deviceIdsInMeals([]int64{mealId}) {
		deleteCacheFiles(mytvSubM3u8Key(deviceId))
	}
	InvalidateMealEpgCache(mealId)
	EnsureMealEpgCache(mealId)
}

// InvalidateAllMealEpgCaches 作废全部套餐的聚合节目单。
func InvalidateAllMealEpgCaches() {
	deleteCacheFiles("meal_epg_xml_*")
}

// InvalidateAllMealSubscriptions 作废全部套餐的订阅 / MyTV 节目单。
func InvalidateAllMealSubscriptions() {
	deleteCacheFiles("meal_sub_txt_*")
	deleteCacheFiles("meal_sub_m3u8_*")
	deleteCacheFiles("mytv_sub_m3u8_*")
}

// InvalidateMealSubscriptionCaches 作废指定套餐的订阅 / MyTV 节目单（不动 EPG 缓存）。
//
// 用于"只改了频道顺序 / 订阅内容，但节目单本身没变"的场景。
func InvalidateMealSubscriptionCaches(mealIds []int64) {
	if len(mealIds) == 0 {
		return
	}
	for _, id := range mealIds {
		deleteCacheFiles(mealSubTxtKey(id))
		deleteCacheFiles(mealSubM3u8Key(id))
	}
	for _, deviceId := range deviceIdsInMeals(mealIds) {
		deleteCacheFiles(mytvSubM3u8Key(deviceId))
	}
}

// InvalidateMealSubscriptionCachesByCategoryIds 作废「引用了这些分组的套餐」的订阅缓存，
// 并返回受影响的套餐 id 列表。
//
// 与 InvalidateMealCachesByCategoryIds 的区别：这里**不动 EPG 缓存** ——
// 改频道顺序不会改变节目单内容，没必要让所有套餐重算一遍节目单。
func InvalidateMealSubscriptionCachesByCategoryIds(caIds []int64) []int64 {
	mealIds := mealIdsReferencingCategories(caIds)
	InvalidateMealSubscriptionCaches(mealIds)
	return mealIds
}

// InvalidateAutoCategoryFiles 只作废聚合分组缓存（引擎写、api 删）。
//
// 与 InvalidateAutoCategoryCaches 的区别：这里**不**连带作废订阅缓存。
// 频道表变动时，受影响的订阅只限于"引用了被改分组的那些套餐"，
// 由 InvalidateMealCachesByCategoryIds 精确处理。
func InvalidateAutoCategoryFiles() {
	deleteCacheFiles("autoCategory_*")
}

// InvalidateAutoCategoryCaches 作废聚合分组缓存 + 全部订阅缓存。
// 适用于"影响面无法收敛到某几个套餐"的改动（如引擎中转配置变化）。
func InvalidateAutoCategoryCaches() {
	InvalidateAutoCategoryFiles()
	InvalidateAllMealSubscriptions()
}

// InvalidateAutoCategoryCachesAndRebuild 作废聚合分组缓存 + 全部套餐缓存，并触发全量重建。
func InvalidateAutoCategoryCachesAndRebuild() {
	InvalidateAutoCategoryCaches()
	InvalidateAllMealEpgCaches()
	RequestFullRebuild()
}

// InvalidateAllMealCachesAndRebuild 作废全部套餐的派生缓存，并触发全量重建。
func InvalidateAllMealCachesAndRebuild() {
	InvalidateAllMealEpgCaches()
	InvalidateAllMealSubscriptions()
	RequestFullRebuild()
}

// InvalidateAllMealEpgCachesAndRebuild 作废全部套餐的聚合节目单并重建，
// **不触发测速**。
//
// 用于"节目单内容变了但频道本身没变"的场景：EPG 源刷新、logo 上传等。
// 这里不该再跑一轮全量测速 —— 引擎自己已经在测了，或者压根与测速无关。
func InvalidateAllMealEpgCachesAndRebuild() {
	InvalidateAllMealEpgCaches()
	RequestFullRebuildOnly()
}

// InvalidateAllCaches 清空整个缓存目录。
func InvalidateAllCaches() {
	if dao.Cache == nil {
		log.Println("⚠️ 缓存未就绪，跳过清空")
		return
	}
	if err := dao.Cache.Clear(); err != nil {
		log.Printf("⚠️ 清空缓存失败: %v", err)
	}
}

// mealIdsReferencingCategories 反查「引用了这些频道分组的套餐」id。
func mealIdsReferencingCategories(caIds []int64) []int64 {
	if len(caIds) == 0 {
		return nil
	}
	conds := make([]string, 0, len(caIds))
	args := make([]any, 0, len(caIds)*4)
	for _, id := range caIds {
		s := strconv.FormatInt(id, 10)
		conds = append(conds, "(content = ? OR content LIKE ? OR content LIKE ? OR content LIKE ?)")
		args = append(args, id, s+",%", "%,"+s+",%", "%,"+s)
	}
	var meals []models.IptvMeals
	if err := dao.DB.Model(&models.IptvMeals{}).
		Where("status = 1 AND ("+strings.Join(conds, " OR ")+")", args...).
		Pluck("id", &meals).Error; err != nil {
		log.Printf("⚠️ 反查分组引用的套餐失败: %v", err)
		return nil
	}
	ids := make([]int64, 0, len(meals))
	for _, m := range meals {
		ids = append(ids, m.ID)
	}
	return ids
}

// deviceIdsInMeals 返回这些套餐下的 MyTV 设备 id（MyTV 订阅按设备存缓存）。
func deviceIdsInMeals(mealIds []int64) []string {
	if len(mealIds) == 0 {
		return nil
	}
	var devices []string
	if err := dao.DB.Model(&models.IptvUser{}).
		Where("meal_id IN ? AND device_id <> ''", mealIds).
		Pluck("device_id", &devices).Error; err != nil {
		return nil
	}
	return devices
}

// InvalidateMealCachesByCategoryIds 只作废「引用了这些分组的套餐」的派生缓存，
// 并返回受影响的套餐 id 列表。
//
// 频道表变动 / EPG 绑定变动都走这里：影响面收敛到真正用到的套餐，
// 不再连带作废（并重算）与本次变更无关的套餐。删键即可失效，
// 下次访问由 Ensure* 函数 lazy 重建。
func InvalidateMealCachesByCategoryIds(caIds []int64) []int64 {
	mealIds := mealIdsReferencingCategories(caIds)
	if len(mealIds) == 0 {
		return nil
	}
	for _, id := range mealIds {
		deleteCacheFiles(mealEpgXmlKey(id))
		deleteCacheFiles(mealSubTxtKey(id))
		deleteCacheFiles(mealSubM3u8Key(id))
	}
	for _, deviceId := range deviceIdsInMeals(mealIds) {
		deleteCacheFiles(mytvSubM3u8Key(deviceId))
	}
	return mealIds
}

// RequestMealEpgRebuild 请求重算指定套餐的聚合节目单。
//
// withResolution=true 时**顺带请求一次引擎全量分辨率识别**（由独立的
// ResolutionScan 调度器执行，不阻塞本轮重建）。
// 自动识别（cfg.Resolution.Auto）依赖这条路径点火 —— 引擎侧没有独立的
// 定时器，测速只能由 api 侧发起。
func RequestMealEpgRebuild(mealIds []int64, withResolution bool) {
	if EpgRebuild == nil {
		return
	}
	req := rebuildRequest{mealIds: map[int64]struct{}{}, needResolution: withResolution}
	for _, id := range mealIds {
		req.mealIds[id] = struct{}{}
	}
	EpgRebuild.RequestRebuild(req)
}

// RequestFullRebuild 请求全量重建（含分辨率全量识别）。
func RequestFullRebuild() {
	if EpgRebuild == nil {
		return
	}
	EpgRebuild.RequestRebuild(rebuildRequest{allMeals: true, needResolution: true})
}

// requestFullEpgRebuildOnly 请求全量重建，但**不再触发测速**。
// 用于"测速刚跑完、节目单要跟着重算"这条回环，避免无限自我触发。
func requestFullEpgRebuildOnly() {
	if EpgRebuild == nil {
		return
	}
	EpgRebuild.RequestRebuild(rebuildRequest{allMeals: true})
}

// RequestFullRebuildOnly 请求全量重建，但不再触发测速。
//
// 供"已经手动/由引擎跑完测速，现在只需要把节目单重算一遍"的调用点使用
// （见 adminEngineService.AutoResRun / EpgFuzzRun）。
func RequestFullRebuildOnly() {
	requestFullEpgRebuildOnly()
}

// RequestMealEpgRebuildByCategoryIds 作废并重算「引用了这些分组的套餐」。
//
// 用于"内容变了但绑定关系没变"的改动：分组排序、组内频道排序等。
// 绑定重算（BindChannel）不在这里做 —— 排序不影响绑定。
func RequestMealEpgRebuildByCategoryIds(caIds []int64) {
	mealIds := InvalidateMealCachesByCategoryIds(caIds)
	RequestMealEpgRebuild(mealIds, false)
}

// RequestResolutionScan 请求跑一次引擎全量分辨率识别。
// 独立调度：与节目单重建互不阻塞，且同样做去抖合并。
func RequestResolutionScan() {
	if ResolutionScan == nil {
		return
	}
	ResolutionScan.RequestRebuild(rebuildRequest{allMeals: true})
}

// ---------------- 重建工作函数 ----------------

// doRebuild 是每次重建真正做的事：按请求范围重算套餐聚合节目单。
//
// 分辨率识别不在这里做（那会拖住整轮重建、且和"缓存失效"耦合）：
// 这里只把"要不要测速"的意图转交给独立的 ResolutionScan 调度器。
func doRebuild(ctx context.Context, s *SignalExecutor) {
	// ctx 必须一路带下去。改造前这里只在最外侧 `select` 检查了一次，
	if ctx.Err() != nil {
		return
	}

	req := s.ActiveRequest()
	mealIds := req.mealIdList() // nil = 全部套餐

	if !rebuildMealEpgCaches(ctx, mealIds) {
		return
	}
	// EPG 重算完，就得把「套餐派生」的订阅 / APK 节目单一并作废。
	invalidateMealSubscriptions(mealIds)

	if req.needResolution {
		// 交给独立调度器：测速不阻塞本轮重建，且连发请求会被去抖合并成一次。
		RequestResolutionScan()
	}
}

// doResolutionScan 是「引擎全量分辨率识别」这一独立任务的工作函数。
//
// 它做完之后会回头请求一次全量节目单重建：识别会改写频道的分辨率/延迟字段，
// 节目单内容跟着变。注意回环请求**不再带测速意图**（requestFullEpgRebuildOnly），
// 否则会无限自我触发。
func doResolutionScan(ctx context.Context, s *SignalExecutor) {
	if ctx.Err() != nil {
		return
	}

	cfg := dao.GetConfig()
	// GetConfig 在未安装（读不到 config.yml）时返回 nil。
	if cfg == nil {
		return
	}
	if cfg.Resolution.Auto != 1 || dao.Lic.Type == 0 {
		return
	}

	res, err := dao.WS.SendWS(dao.Request{Action: "testResolutionAll"}) //测试分辨率
	if err != nil {
		log.Println("引擎连接失败:", err)
		return
	}
	if res.Code != 1 {
		log.Println("分辨率测试失败:", res.Msg)
		return
	}

	log.Println("🚀 开始执行分辨率全量识别任务，测试期间cpu、内存占用会较高，请耐心等待，强制中断执行请关闭自动测试并重启引擎")

	switch waitResolutionTest(ctx) {
	case resTestDone:
		log.Println("分辨率测试完成")
	case resTestCanceled:
		stopResolutionTest("等待被取消")
		return
	case resTestTimeout:
		stopResolutionTest("等待超时")
	case resTestEngineError:
		log.Println("⚠️ 引擎连续无响应，本轮放弃分辨率结果")
		return
	}

	// 分辨率识别会改写频道数据，所以节目单必须重算。
	requestFullEpgRebuildOnly()
}

// invalidateMealSubscriptions 让「订阅 / APK 节目单」失效。
// mealIds 为 nil 表示全部套餐；否则只作废这些套餐的。
func invalidateMealSubscriptions(mealIds []int64) {
	if mealIds == nil {
		InvalidateAllMealSubscriptions()
		return
	}
	for _, id := range mealIds {
		deleteCacheFiles(mealSubTxtKey(id))
		deleteCacheFiles(mealSubM3u8Key(id))
	}
	for _, deviceId := range deviceIdsInMeals(mealIds) {
		deleteCacheFiles(mytvSubM3u8Key(deviceId))
	}
}

// invalidateMealEpgCaches 让「套餐聚合节目单」失效。
func invalidateMealEpgCaches(mealIds []int64) {
	if mealIds == nil {
		InvalidateAllMealEpgCaches()
		return
	}
	for _, id := range mealIds {
		deleteCacheFiles(mealEpgXmlKey(id))
	}
}

// resTestResult 是"等引擎跑完全量分辨率识别"的四种结局。
type resTestResult int

const (
	resTestDone        resTestResult = iota // 引擎报告完成
	resTestCanceled                         // ctx 被取消（又来了一次重建请求 / 执行器停掉）
	resTestTimeout                          // 超过 resolutionTestMaxWait
	resTestEngineError                      // 连续 resolutionPollMaxErrors 次查询失败
)

// waitResolutionTest 等引擎把全量分辨率识别跑完。
func waitResolutionTest(ctx context.Context) resTestResult {
	deadline := time.Now().Add(resolutionTestMaxWait)
	errStreak := 0

	tick := time.NewTicker(resolutionPollInterval)
	defer tick.Stop()

	for {
		if ctx.Err() != nil {
			return resTestCanceled
		}
		if time.Now().After(deadline) {
			return resTestTimeout
		}

		res, err := dao.WS.SendWS(dao.Request{Action: "getTestStatus"}) //获取测试状态
		switch {
		case err != nil:
			errStreak++
			log.Printf("查询分辨率测试状态失败（第 %d/%d 次）: %v", errStreak, resolutionPollMaxErrors, err)
			if errStreak >= resolutionPollMaxErrors {
				return resTestEngineError
			}
		default:
			errStreak = 0
			if res.Code == 1 {
				return resTestDone
			}
		}

		select {
		case <-ctx.Done():
			return resTestCanceled
		case <-tick.C:
		}
	}
}

// stopResolutionTest 通知引擎停止全量分辨率识别。
func stopResolutionTest(reason string) {
	log.Printf("⚠️ 分辨率测试%s，通知引擎停止测试", reason)
	if _, err := dao.WS.SendWS(dao.Request{Action: "stopTestResolution"}); err != nil {
		log.Println("通知引擎停止分辨率测试失败:", err)
	}
}

// rebuildMealEpgCaches 重建指定套餐（mealIds 为 nil 表示全部）的聚合节目单。
// 返回 false 表示中途被取消（ctx 已 done）。
func rebuildMealEpgCaches(ctx context.Context, mealIds []int64) bool {
	var meals []models.IptvMeals
	q := dao.DB.Model(&models.IptvMeals{}).Where("status = 1")
	if mealIds != nil {
		if len(mealIds) == 0 {
			return true
		}
		q = q.Where("id IN ?", mealIds)
	}
	if err := q.Find(&meals).Error; err != nil {
		log.Println("⚠️ 读取套餐列表失败:", err)
		return false
	}

	for i, meal := range meals {
		if ctx.Err() != nil {
			log.Printf("⚠️ EPG缓存重建中断：已完成 %d/%d 个套餐", i, len(meals))
			return false
		}
		EnsureMealEpgCache(meal.ID)
	}
	return true
}

// ---------------- 初始化 ----------------

var (
	initCacheMu  sync.Mutex
	initCacheRun bool
)

// InitCacheRebuild 启动重建调度器。**进程级幂等**。
func InitCacheRebuild() {
	initCacheMu.Lock()
	if initCacheRun {
		initCacheMu.Unlock()
		return
	}
	initCacheRun = true
	initCacheMu.Unlock()

	EpgRebuild = NewSignalExecutor(rebuildDelay, func(ctx context.Context) {
		doRebuild(ctx, EpgRebuild)
	})
	log.Println("入群密码前半段: 052a8103   后半段在后台>进阶功能的开发人员工具(F12)中查看")

	EpgRebuild.Start()

	// 分辨率识别是独立调度器：与节目单重建各自去抖，互不阻塞。
	ResolutionScan = NewSignalExecutor(resolutionScanDelay, func(ctx context.Context) {
		doResolutionScan(ctx, ResolutionScan)
	})
	ResolutionScan.Start()

	go initEpgCache()
	// 不再 `select{}`：调用点都是 `go until.InitCacheRebuild()`，
}

func initEpgCache() {
	deleteCacheFiles("meal_epg_xml_*")
	EpgRebuild.Rebuild()
}
