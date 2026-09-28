package until

import (
	"context"
	"iptv-api/dao"
	"iptv-api/models"
	"log"
	"runtime/debug"
	"strconv"
	"sync"
	"sync/atomic"
	"time"
)

// EPG 缓存重建调度器

const (
	// rebuildDelay 是"最后一次 Rebuild() 之后等多久才真正开始重算"。
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
)

var Cache *SignalExecutor

type SignalExecutor struct {
	delay    time.Duration
	maxDelay time.Duration // 去抖上限，见 rebuildMaxDelay
	execFunc func(ctx context.Context)
	signalCh chan struct{}
	stopCh   chan struct{}

	stopOnce sync.Once
	stopped  atomic.Bool // Stop() 之后不再受理新信号

	mu        sync.Mutex // 保护下面几个字段
	cancel    context.CancelFunc
	waitTimer *time.Timer
	running   bool      // 有任务正在 execFunc 里跑
	deadline  time.Time // 本轮去抖的最终触发期限（= 首次请求 + maxDelay）

	// resetLogged 标记"本轮已经打过一次去抖重置日志"。
	resetLogged bool
}

// 创建 SignalExecutor 实例
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

// 启动信号监听器
func (s *SignalExecutor) Start() {
	go func() {
		for {
			select {
			case <-s.stopCh:
				log.Println("🛑 EPG缓存重建定时任务 已停止")
				return
			case <-s.signalCh:
				s.handleSignal()
			}
		}
	}()
}

// Rebuild 请求一次重算。
func (s *SignalExecutor) Rebuild() {
	if s == nil || s.stopped.Load() {
		return
	}
	select {
	case s.signalCh <- struct{}{}:
	default:
		// 通道已满 = 已经有一个信号在等着处理，本次并入它。
		// 这就是"突发请求合并"的实现点，配合下面的 Reset 一起生效。
	}
}

// 停止执行器。**幂等**：重复调用不会 panic（改造前二次 close(stopCh) 会）。
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

// 内部信号处理逻辑
func (s *SignalExecutor) handleSignal() {
	s.mu.Lock()

	// 只有"任务确实在跑"时才谈得上中断。
	if s.running && s.cancel != nil {
		log.Println("⛔ 中断当前执行EPG缓存重建任务（配置已变，稍后用新配置重算）")
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
		capped := remain <= 0
		if capped {
			remain = time.Millisecond
		} else if remain > s.delay {
			remain = s.delay
		}
		s.waitTimer.Reset(remain)
		shouldLog := !s.resetLogged
		s.resetLogged = true
		s.mu.Unlock()

		if shouldLog {
			if capped {
				log.Printf("⏳ 去抖已达上限 %s，不再推迟EPG缓存重建", s.maxDelay)
			} else {
				log.Printf("🔁 重置EPG缓存重建任务等待 %s", remain)
			}
		}
		return
	}

	log.Printf("⏳ 收到EPG缓存重建任务，%s 后执行", s.delay)
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
	s.mu.Unlock()

	start := time.Now()
	log.Println("🚀 开始执行EPG缓存重建任务")
	s.execFunc(ctx)

	// 重建是本进程内存占用最高的操作：要把套餐下所有频道的节目单在内存里拼好、
	debug.FreeOSMemory()

	// 复位：不复位的话下次信号会对着已结束的 ctx 调 cancel（见 handleSignal）。
	s.mu.Lock()
	s.cancel = nil
	s.running = false
	s.mu.Unlock()

	log.Printf("✅ EPG缓存重建任务结束，耗时 %s", time.Since(start).Round(time.Millisecond))
}

// cacheDelete 删除一批缓存文件，并把失败打出来。
func cacheDelete(pattern string) {
	if dao.Cache == nil {
		log.Printf("⚠️ 缓存未就绪，跳过删除: %s", pattern)
		return
	}
	if err := dao.Cache.Delete(pattern); err != nil {
		log.Printf("⚠️ 删除缓存 %s 失败: %v", pattern, err)
	}
}

// 重建工作函数

// doRebuild 是每次重建真正做的事：重算套餐聚合节目单，必要时再跑一遍
// 全量分辨率识别，然后（因为识别结果会改频道数据）再重算一次。
func doRebuild(ctx context.Context) {
	// ctx 必须一路带下去。改造前这里只在最外侧 `select` 检查了一次，
	if ctx.Err() != nil {
		log.Println("⚠️ 重建任务在开始前已被取消")
		return
	}

	if !makeMealsEpgCacheAll(ctx) {
		log.Println("⚠️ EPG缓存重建被中断，跳过后续步骤")
		return
	}
	// EPG 重算完，就得把「套餐派生」的订阅 / APK 节目单一并作废。
	invalidateMealPlaylistCache()

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

	log.Println("🚀 重新执行EPG缓存重建")
	// 分辨率识别会改写频道数据，所以套餐聚合节目单必须重算。
	invalidateMealCache()
	if !makeMealsEpgCacheAll(ctx) {
		log.Println("⚠️ EPG缓存重建被中断")
		return
	}
	// 分辨率识别改写的是频道数据，节目单内容跟着变 —— 与上面同一理由，再作废一次。
	invalidateMealPlaylistCache()
	log.Println("✅ EPG缓存重建任务执行完成")
}

// invalidateMealPlaylistCache 让「订阅 / APK 节目单」失效。
func invalidateMealPlaylistCache() {
	cacheDelete("rssMeal*")
	cacheDelete("mytvMeal*")
}

// invalidateMealCache 让"套餐派生缓存"失效（连 EPG 聚合本身一起）。
func invalidateMealCache() {
	cacheDelete("rssEpgXml_*")
	invalidateMealPlaylistCache()
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

// makeMealsEpgCacheAll 逐个套餐重建聚合节目单缓存。
// 返回 false 表示中途被取消（ctx 已 done）。
func makeMealsEpgCacheAll(ctx context.Context) bool {
	var meals []models.IptvMeals
	if err := dao.DB.Model(&models.IptvMeals{}).Where("status = 1").Find(&meals).Error; err != nil {
		log.Println("⚠️ 读取套餐列表失败:", err)
		return false
	}

	log.Printf("开始重建 %d 个套餐的EPG缓存", len(meals))
	for i, meal := range meals {
		if ctx.Err() != nil {
			log.Printf("⚠️ EPG缓存重建中断：已完成 %d/%d 个套餐", i, len(meals))
			return false
		}
		GetEpg(meal.ID)
	}
	return true
}

// 初始化

var (
	initCacheMu  sync.Mutex
	initCacheRun bool
)

// InitCacheRebuild 启动重建调度器。**进程级幂等**。
func InitCacheRebuild() {
	initCacheMu.Lock()
	if initCacheRun {
		initCacheMu.Unlock()
		log.Println("EPG缓存重建任务已在运行，忽略重复初始化")
		return
	}
	initCacheRun = true
	initCacheMu.Unlock()

	Cache = NewSignalExecutor(rebuildDelay, doRebuild)
	log.Printf("🔧 EPG缓存重建任务初始化完成（去抖 %s）", rebuildDelay)
	log.Println("入群密码前半段: 052a8103   后半段在后台>进阶功能的开发人员工具(F12)中查看")

	Cache.Start()
	go initEpgCache()
	// 不再 `select{}`：调用点都是 `go until.InitCacheRebuild()`，
}

func initEpgCache() {
	log.Println("初始化订阅套餐EPG缓存")
	cacheDelete("rssEpgXml_*")
	Cache.Rebuild()
}

// 对外暴露的缓存失效入口

func CleanMealsEpgCacheAll() {
	log.Println("清理订阅套餐EPG缓存")
	cacheDelete("rssEpgXml_*")
	Cache.Rebuild()
}

// CleanAll 全量清空缓存并重算。
func CleanAll() {
	if dao.Cache == nil {
		log.Println("⚠️ 缓存未就绪，跳过清空")
		return
	}
	if err := dao.Cache.Clear(); err != nil {
		log.Printf("⚠️ 清空缓存失败: %v", err)
	}
	Cache.Rebuild()
}

func CleanMealsXmlCacheOne(id int64) {
	log.Println("删除套餐EPG订阅缓存: ", id)
	cacheDelete("rssEpgXml_" + strconv.FormatInt(id, 10))
	GetEpg(id)
}

func CleanMealsRssCacheAll() {
	cacheDelete("rssMeal*")
	cacheDelete("mytvMeal*")
}

func CleanMealsCacheAllRebuild() {
	invalidateMealCache()
	CleanMealsEpgCacheAll()
}

func CleanMealsCacheOne(id int64) {
	log.Println("删除套餐订阅缓存: ", id)
	cacheDelete("rssMealTxt_" + strconv.FormatInt(id, 10))
	cacheDelete("rssMealM3u8_" + strconv.FormatInt(id, 10))
	cacheDelete("mytvMeal*")
}

func CleanAutoCacheAll() {
	cacheDelete("autoCategory_*")
	CleanMealsRssCacheAll()
}

func CleanAutoCacheAllRebuild() {
	cacheDelete("autoCategory_*")
	CleanMealsRssCacheAll()
	CleanMealsEpgCacheAll()
}

func CleanMealsCacheRebuildOne(id int64) {
	log.Println("删除套餐订阅缓存: ", id)
	cacheDelete("rssMealTxt_" + strconv.FormatInt(id, 10))
	cacheDelete("rssMealM3u8_" + strconv.FormatInt(id, 10))
	cacheDelete("mytvMeal*")
	CleanMealsXmlCacheOne(id)
}
