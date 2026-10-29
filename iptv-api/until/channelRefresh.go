package until

import (
	"log"
	"sync"
	"time"
)

// 频道表变动后的收尾：作废聚合缓存 → 重算 EPG 绑定 → 按受影响范围作废套餐缓存 → 局部重建。
//
// 为什么要按范围收：
// 以前这里做的是「清掉全部聚合缓存 + 清掉全部套餐 EPG 缓存 + 触发一次全量重建」，
// 一次改名都会牵连所有套餐重算。现在只处理"真正引用了受影响分组的套餐"。

var (
	// channelRefreshDelay 是合并窗口。
	channelRefreshDelay = 150 * time.Millisecond

	// 收尾动作与触发入口都做成变量，单测里替换掉：
	// 真实实现要碰 dao.Cache 与引擎连接，单测不该依赖它们。
	channelRefreshClean = InvalidateAutoCategoryFiles
	channelRefreshBind  = BindChannel
	channelRefreshEpg   = InvalidateMealCachesByCategoryIds
	// 全量语义下的两个作废动作（"影响面无法收敛到某几个分组"时用）。
	channelRefreshAllEpg = InvalidateAllMealEpgCaches
	channelRefreshAllSub = InvalidateAllMealSubscriptions
	// channelRefreshBuild 只重建受影响的套餐，并**顺带请求一次测速**。
	// 测速本身由独立的 ResolutionScan 调度器执行（去抖 30s），
	// 所以一轮导入只会真正跑一次全量测速。
	channelRefreshBuild = func(mealIds []int64) {
		RequestMealEpgRebuild(mealIds, true)
	}
	// channelRefreshBuildAll 是全量语义下的重建入口。
	channelRefreshBuildAll = RequestFullRebuild

	// notifyChannelWrite 是"频道表写好了"的统一出口。
	// 所有改动频道表的入口都走它，不要各自 `go BindChannel()`。
	notifyChannelWrite = func(caId int64) {
		RequestChannelRefreshFor(caId)
	}
)

type refreshScheduler struct {
	mu      sync.Mutex
	timer   *time.Timer
	running bool // 正在跑收尾
	dirty   bool // 跑的过程中又来了请求 → 跑完补一轮
	cats    map[int64]struct{}
	all     bool // 本轮是否要求全量失效（不限定分组）
}

var channelRefresh = &refreshScheduler{}

// RequestChannelRefresh 请求一次全量收尾（不限定分组）。
//
// 用于"影响面无法收敛到某几个分组"的改动：EPG 增删改、EPG 状态变更等 ——
// 这些改动可能改变**任意**频道的绑定关系。
func RequestChannelRefresh() {
	channelRefresh.request(nil, true)
}

// RequestChannelRefreshFor 请求一次收尾，只处理这几个频道分组。
//
// 用于频道表内容变动（导入/改名/删除频道、改分组开关等）：影响面收敛到
// 引用了这些分组的套餐，其余套餐的缓存原样保留。
func RequestChannelRefreshFor(caIds ...int64) {
	channelRefresh.request(caIds, false)
}

func (s *refreshScheduler) request(caIds []int64, all bool) {
	s.mu.Lock()
	defer s.mu.Unlock()

	if all {
		s.all = true
	} else if len(caIds) > 0 {
		if s.cats == nil {
			s.cats = make(map[int64]struct{}, len(caIds))
		}
		for _, id := range caIds {
			s.cats[id] = struct{}{}
		}
	}

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

// takeScope 取出本轮要处理的分组集合，并在锁内清空累积。
func (s *refreshScheduler) takeScope() ([]int64, bool) {
	s.mu.Lock()
	defer s.mu.Unlock()
	all := s.all
	s.all = false
	cats := s.cats
	s.cats = nil
	if all {
		return nil, true
	}
	ids := make([]int64, 0, len(cats))
	for id := range cats {
		ids = append(ids, id)
	}
	return ids, false
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
		ids, all := s.takeScope()

		// 聚合分组缓存（引擎写、api 删）：引擎侧下次取用时会自动重算，
		// 所以这里可以放心全清 —— 它的粒度是"聚合分组"而不是"套餐"。
		channelRefreshClean()

		// 重算 EPG 绑定，返回绑定关系发生变化的分组。
		touched := channelRefreshBind()

		// 受影响的分组 = 本轮变更的分组 ∪ 绑定发生变化的分组。
		affected := mergeCategoryIds(ids, touched)
		if all {
			// 全量语义：不限定分组 ⇒ 全部套餐都算受影响。
			affected = nil
		}

		// 只作废"引用了受影响分组"的套餐缓存。
		var mealIds []int64
		if all {
			channelRefreshAllEpg()
			channelRefreshAllSub()
		} else {
			mealIds = channelRefreshEpg(affected)
		}

		// 只重建受影响的套餐（删键即可失效，这里补一次主动重建，
		// 让用户下次访问时不用等懒重建）。
		if all {
			channelRefreshBuildAll()
		} else {
			channelRefreshBuild(mealIds)
		}

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

// mergeCategoryIds 合并两个分组 id 列表并去重。
func mergeCategoryIds(a, b []int64) []int64 {
	if len(a) == 0 && len(b) == 0 {
		return nil
	}
	seen := make(map[int64]struct{}, len(a)+len(b))
	out := make([]int64, 0, len(a)+len(b))
	for _, list := range [][]int64{a, b} {
		for _, id := range list {
			if id == 0 {
				continue
			}
			if _, dup := seen[id]; dup {
				continue
			}
			seen[id] = struct{}{}
			out = append(out, id)
		}
	}
	return out
}
