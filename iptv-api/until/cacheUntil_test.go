package until

import (
	"context"
	"sync/atomic"
	"testing"
	"time"
)

// waitCond 轮询等待条件成立，超时即判失败。
func waitCond(t *testing.T, what string, timeout time.Duration, cond func() bool) {
	t.Helper()
	deadline := time.Now().Add(timeout)
	for time.Now().Before(deadline) {
		if cond() {
			return
		}
		time.Sleep(2 * time.Millisecond)
	}
	t.Fatalf("等待超时（%s）：%s", timeout, what)
}

// TestNewSignalExecutorRejectsZeroDelay delay<=0 必须回退到去抖默认值。
// 传 0 会让重算在信号处理线程里同步执行，去抖彻底失效。
func TestNewSignalExecutorRejectsZeroDelay(t *testing.T) {
	e := NewSignalExecutor(0, func(ctx context.Context) {})
	defer e.Stop()
	if e.delay != rebuildDelay {
		t.Fatalf("delay=0 应回退到 %s，实际得到 %s", rebuildDelay, e.delay)
	}
}

// TestNilExecutorRebuildIsNoop 执行器还没初始化时，Rebuild/Stop 都不能 panic。
// 「清库重装」窗口里调用点全在 `go` 出去的协程里，一个 panic 就是整个进程退出。
func TestNilExecutorRebuildIsNoop(t *testing.T) {
	var e *SignalExecutor
	e.Rebuild()
	e.Stop()
}

// TestSignalExecutorCoalescesBurst 突发多次 Rebuild() 只触发一次重算。
// 这是去抖的核心承诺：管理端保存一次配置会连发多个重建请求。
func TestSignalExecutorCoalescesBurst(t *testing.T) {
	var runs int32
	done := make(chan struct{}, 8)
	e := NewSignalExecutor(120*time.Millisecond, func(ctx context.Context) {
		atomic.AddInt32(&runs, 1)
		done <- struct{}{}
	})
	e.Start()
	defer e.Stop()

	for i := 0; i < 8; i++ {
		e.Rebuild()
	}

	select {
	case <-done:
	case <-time.After(3 * time.Second):
		t.Fatal("去抖超时后仍未执行")
	}

	// 再等一会儿，确认 Reset 分支没有把同一个信号执行第二次。
	time.Sleep(300 * time.Millisecond)
	if n := atomic.LoadInt32(&runs); n != 1 {
		t.Fatalf("8 次突发 Rebuild 触发了 %d 次重算，期望 1 次", n)
	}
}

// TestSignalExecutorCancelRunning 运行中再来一次 Rebuild：
// 旧任务的 ctx 必须被取消，并且新一轮要真的排上。
func TestSignalExecutorCancelRunning(t *testing.T) {
	var started, canceled int32
	e := NewSignalExecutor(30*time.Millisecond, func(ctx context.Context) {
		atomic.AddInt32(&started, 1)
		<-ctx.Done() // 模拟长任务：一直等到被取消
		atomic.AddInt32(&canceled, 1)
	})
	e.Start()
	defer e.Stop()

	e.Rebuild()
	waitCond(t, "第一轮任务开始执行", time.Second, func() bool {
		return atomic.LoadInt32(&started) == 1
	})

	e.Rebuild() // 运行中 → 取消旧的 + 重排
	waitCond(t, "第一轮任务收到取消信号", time.Second, func() bool {
		return atomic.LoadInt32(&canceled) == 1
	})
	waitCond(t, "第二轮任务开始执行", time.Second, func() bool {
		return atomic.LoadInt32(&started) == 2
	})
}

// TestSignalExecutorStopIdempotent Stop() 必须幂等，且停止后不再受理新信号。
func TestSignalExecutorStopIdempotent(t *testing.T) {
	var runs int32
	e := NewSignalExecutor(10*time.Millisecond, func(ctx context.Context) {
		atomic.AddInt32(&runs, 1)
	})
	e.Start()

	e.Stop()
	e.Stop() // 二次调用不应 panic（改造前会 close 已关闭的 channel）

	e.Rebuild()
	time.Sleep(150 * time.Millisecond)
	if n := atomic.LoadInt32(&runs); n != 0 {
		t.Fatalf("Stop() 之后仍然执行了 %d 次重算", n)
	}
}

// TestSignalExecutorPanicDoesNotKillProcess 工作函数 panic 不能被放出去
func TestSignalExecutorPanicDoesNotKillProcess(t *testing.T) {
	var runs int32
	done := make(chan struct{}, 4)
	e := NewSignalExecutor(10*time.Millisecond, func(ctx context.Context) {
		if atomic.AddInt32(&runs, 1) == 1 {
			panic("第一轮故意 panic")
		}
		done <- struct{}{}
	})
	e.Start()
	defer e.Stop()

	e.Rebuild()

	// 先等第一轮真的跑起来（否则 Rebuild() 刚发出、信号还没被处理时，
	// running/cancel/waitTimer 全是零值，下面的条件会**提前**成立）。
	waitCond(t, "第一轮任务执行", 2*time.Second, func() bool {
		return atomic.LoadInt32(&runs) >= 1
	})

	// panic 被 recover 之后状态必须复位。若 running/cancel 留在"正在执行"，
	waitCond(t, "panic 后执行器状态复位", 2*time.Second, func() bool {
		e.mu.Lock()
		defer e.mu.Unlock()
		return !e.running && e.cancel == nil && e.waitTimer == nil
	})

	e.Rebuild()
	select {
	case <-done:
	case <-time.After(2 * time.Second):
		t.Fatal("panic 之后执行器不再执行任务")
	}
}

// TestSignalExecutorDebounceDoesNotStarve 持续不断的请求不能把重算饿死。
func TestSignalExecutorDebounceDoesNotStarve(t *testing.T) {
	var runs int32
	e := NewSignalExecutor(80*time.Millisecond, func(ctx context.Context) {
		atomic.AddInt32(&runs, 1)
	})
	e.maxDelay = 200 * time.Millisecond // 上限设短，便于测试
	e.Start()
	defer e.Stop()

	// 以 5ms 间隔连续请求 1 秒 —— 远密于 80ms 的去抖延迟。
	stop := time.Now().Add(time.Second)
	for time.Now().Before(stop) {
		e.Rebuild()
		time.Sleep(5 * time.Millisecond)
	}

	if n := atomic.LoadInt32(&runs); n < 1 {
		t.Fatal("持续请求把重建饿死了：1 秒内一次都没执行")
	}
}
