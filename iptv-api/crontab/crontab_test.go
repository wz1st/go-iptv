package crontab

import (
	"sync"
	"sync/atomic"
	"testing"
)

// 这些用例存在的理由：crontab 的并发状态曾经是三个裸包级变量

// currentStop 读当前停止信号（测试内部用，需持锁）。
func currentStop() chan struct{} {
	cronSt.mu.Lock()
	defer cronSt.mu.Unlock()
	return cronSt.stop
}

// 重置后不应残留旧通道 —— 否则新循环会从「已关闭」的通道立刻读到零值退出。
func TestResetCrontabClearsStopChan(t *testing.T) {
	ResetCrontab()
	if got := currentStop(); got != nil {
		t.Errorf("ResetCrontab 后 stop 应为 nil，实际 %v", got)
	}
	// 连续重置必须安全（幂等）
	ResetCrontab()
	ResetCrontab()
}

// StopCrontab 必须幂等。
func TestStopCrontabIsIdempotent(t *testing.T) {
	ResetCrontab()
	StopCrontab()
	StopCrontab() // 二次调用不得 panic
	StopCrontab()

	if IsCrontabRunning() {
		t.Error("StopCrontab 后不应仍处于运行态")
	}
}

// 没启动过就 Stop 也不能出问题（例如首次进入后台就点「关闭自动更新」）。
func TestStopCrontabWithoutStart(t *testing.T) {
	ResetCrontab()
	StopCrontab()
	if IsCrontabRunning() {
		t.Error("未启动时 StopCrontab 后 IsCrontabRunning 应为 false")
	}
}

// BeginUpdate / EndUpdate 的互斥语义。
func TestBeginUpdateExclusive(t *testing.T) {
	EndUpdate() // 干净起点

	if !BeginUpdate() {
		t.Fatal("首次 BeginUpdate 应成功")
	}
	if IsUpdating() != true {
		t.Error("持有时 IsUpdating 应为 true")
	}
	if BeginUpdate() {
		t.Error("已持有时 BeginUpdate 不应再成功")
	}

	EndUpdate()
	if IsUpdating() {
		t.Error("EndUpdate 后 IsUpdating 应为 false")
	}
	if !BeginUpdate() {
		t.Error("释放后应能再次获取")
	}
	EndUpdate()
}

// 并发争抢「更新中」标记：只能有一个赢家。
func TestBeginUpdateConcurrentOnlyOneWins(t *testing.T) {
	EndUpdate()

	const n = 64
	var winners int64
	var wg sync.WaitGroup
	start := make(chan struct{})

	for i := 0; i < n; i++ {
		wg.Add(1)
		go func() {
			defer wg.Done()
			<-start // 尽量让所有 goroutine 同时冲
			if BeginUpdate() {
				atomic.AddInt64(&winners, 1)
			}
		}()
	}
	close(start)
	wg.Wait()

	if winners != 1 {
		t.Errorf("并发争抢应恰好 1 个成功，实际 %d", winners)
	}
	EndUpdate()
}

// 并发地重置 / 停止 / 查询，-race 下必须干净。
func TestCronStateConcurrentAccess(t *testing.T) {
	ResetCrontab()

	var wg sync.WaitGroup
	for i := 0; i < 16; i++ {
		wg.Add(1)
		go func() {
			defer wg.Done()
			ResetCrontab()
			_ = IsCrontabRunning()
			StopCrontab()
			_ = IsCrontabRunning()
		}()
	}
	for i := 0; i < 16; i++ {
		wg.Add(1)
		go func() {
			defer wg.Done()
			if BeginUpdate() {
				EndUpdate()
			}
			_ = IsUpdating()
		}()
	}
	wg.Wait()
}

// 配置缺失时 Crontab() 必须安全返回。
func TestCrontabWithoutConfigDoesNotRun(t *testing.T) {
	ResetCrontab()
	Crontab()

	if IsCrontabRunning() {
		t.Error("配置缺失时不应启动定时循环")
	}
}
