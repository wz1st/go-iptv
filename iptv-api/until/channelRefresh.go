package until

import (
	"log"
	"sync"
	"time"
)

// 频道表变动后的收尾：失效聚合缓存 + 重算 EPG 绑定 + 重算套餐聚合节目单

var (
	// channelRefreshDelay 是合并窗口。
	channelRefreshDelay = 150 * time.Millisecond

	// 收尾动作与触发入口都做成变量，单测里替换掉：
	// 真实实现要碰 dao.Cache 与引擎连接，单测不该依赖它们。
	channelRefreshClean = CleanAutoCacheAll
	channelRefreshBind  = BindChannel
	channelRefreshEpg   = CleanMealsEpgCacheAll

	// notifyChannelWrite 是"频道表写好了"的统一出口。
	// 所有改动频道表的入口都走它，不要各自 `go BindChannel()`。
	notifyChannelWrite = func(caId int64) {
		RequestChannelRefresh()
	}
)

type refreshScheduler struct {
	mu      sync.Mutex
	timer   *time.Timer
	running bool // 正在跑收尾
	dirty   bool // 跑的过程中又来了请求 → 跑完补一轮
}

var channelRefresh = &refreshScheduler{}

// RequestChannelRefresh 请求一次「失效聚合缓存 + 重算 EPG 绑定」。
func RequestChannelRefresh() {
	channelRefresh.request()
}

func (s *refreshScheduler) request() {
	s.mu.Lock()
	defer s.mu.Unlock()

	if s.running {
		// 正在跑：只记一个标记，跑完在同一个循环里补一轮
		s.dirty = true
		return
	}
	if s.timer == nil {
		s.timer = time.AfterFunc(channelRefreshDelay, s.fire)
	}
	// 已有计时器在等 → 并入这一轮，什么都不用做
}

func (s *refreshScheduler) fire() {
	// AfterFunc 的回调跑在**它自己的 goroutine** 里，未捕获的 panic 会越过
	defer func() {
		if r := recover(); r != nil {
			log.Printf("‼️ 频道收尾任务 panic（已拦下，进程不受影响）: %v", r)
		}
		s.mu.Lock()
		s.timer = nil
		s.running = false
		s.mu.Unlock()
	}()

	s.mu.Lock()
	s.timer = nil
	s.running = true
	s.mu.Unlock()

	for {
		channelRefreshClean()
		channelRefreshBind()
		// 绑定重算完才谈得上重算节目单（见文件头）。CleanMealsEpgCacheAll 里的
		channelRefreshEpg()

		s.mu.Lock()
		if s.dirty {
			s.dirty = false
			s.mu.Unlock()
			continue
		}
		// running 与 dirty 必须在同一把锁里复位：先复位 running 再检查 dirty
		s.running = false
		s.mu.Unlock()
		return
	}
}
