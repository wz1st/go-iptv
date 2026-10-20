package until

import (
	"encoding/json"
	"os"
	"path/filepath"
	"testing"
	"time"
)

// 在线升级状态：遮罩的依据。刷新页面后前端只问服务端，所以这里的每一条
// 判定错了，用户看到的都是"遮罩该不该在"判错。

// 用临时目录当状态文件，并把进程内缓存重置，否则用例之间会互相污染
// （readUpdataState 只读一次盘并缓存）。
func withStateFile(t *testing.T) string {
	t.Helper()
	p := filepath.Join(t.TempDir(), "updata_state.json")
	oldFile := updataStateFile
	oldCache, oldRead := updataCache, updataRead
	updataStateFile = p
	updataCache, updataRead = updataState{}, false
	t.Cleanup(func() {
		updataStateFile = oldFile
		updataCache, updataRead = oldCache, oldRead
	})
	return p
}

// 没有任何状态文件时不该显示遮罩：绝大多数时候根本没在升级。
func TestUpdataStateIdleWhenNoFile(t *testing.T) {
	withStateFile(t)
	v := UpdataStateView()
	if v.Running {
		t.Fatalf("没有状态文件时不该判为进行中: %+v", v)
	}
}

// 下载/校验/替换各阶段都要挡住界面；ready（包已下好，等人点确认）**不挡** ——
// 那段窗口可能有几分钟，罩着等于软锁后台。
func TestUpdataStateRunningPerPhase(t *testing.T) {
	withStateFile(t)
	for _, ph := range []string{UpdataPhaseCheck, UpdataPhaseFetch, UpdataPhaseVerify, UpdataPhaseStage, UpdataPhaseApply} {
		SetUpdataProgress("web", ph, 50, "…")
		if v := UpdataStateView(); !v.Running {
			t.Errorf("阶段 %s 应判为进行中，实际 %+v", ph, v)
		}
	}
	for _, ph := range []string{UpdataPhaseReady, UpdataPhaseDone, UpdataPhaseFailed, UpdataPhaseIdle} {
		SetUpdataProgress("web", ph, 95, "…")
		if v := UpdataStateView(); v.Running {
			t.Errorf("阶段 %s 不该判为进行中，实际 %+v", ph, v)
		}
	}
}

// 百分比夹取：前端会把它直接塞进 CSS width，负数/超大都不该漏出去。
func TestUpdataStatePercentClamped(t *testing.T) {
	withStateFile(t)
	SetUpdataProgress("web", UpdataPhaseFetch, -20, "…")
	if v := UpdataStateView(); v.Percent != 0 {
		t.Errorf("负百分比应夹成 0，实际 %d", v.Percent)
	}
	SetUpdataProgress("web", UpdataPhaseFetch, 180, "…")
	if v := UpdataStateView(); v.Percent != 100 {
		t.Errorf("超范围百分比应夹成 100，实际 %d", v.Percent)
	}
}

// 失败要带原因：升级挂掉时前端只撤遮罩不提示，用户只会觉得"什么都没发生"。
func TestUpdataStateFailedKeepsReason(t *testing.T) {
	withStateFile(t)
	SetUpdataProgress("engine", UpdataPhaseFetch, 30, "正在下载…")
	SetUpdataFailed("engine", "下载 engine_amd64 失败：连接超时")

	v := UpdataStateView()
	if v.Running {
		t.Error("失败后不该继续判为进行中")
	}
	if v.Phase != UpdataPhaseFailed || v.Failed == "" {
		t.Fatalf("失败原因没保留下来: %+v", v)
	}
	if v.Kind != "engine" {
		t.Errorf("失败时不该丢掉升级对象: %q", v.Kind)
	}
}

// 进程在升级中途被杀 ⇒ 既没有完成也没有失败那一步。只能靠"多久没更新"
// 把状态收掉，否则遮罩会永远留在屏幕上。
func TestUpdataStateStaleBecomesFailed(t *testing.T) {
	p := withStateFile(t)
	old := time.Now().Add(-30 * time.Minute).Unix()
	st := updataState{
		Kind: "web", Phase: UpdataPhaseApply, Percent: 96,
		Msg: "正在替换…", StartedAt: old, UpdatedAt: old,
	}
	b, _ := json.Marshal(st)
	if err := os.WriteFile(p, b, 0644); err != nil {
		t.Fatal(err)
	}
	// 上面写完盘但缓存还没读，重置一次让它从文件读
	updataMu.Lock()
	updataRead = false
	updataMu.Unlock()

	v := UpdataStateView()
	if v.Running {
		t.Fatalf("陈旧状态不该继续判为进行中: %+v", v)
	}
	if v.Phase != UpdataPhaseFailed || v.Failed == "" {
		t.Errorf("陈旧状态应按中断收尾: %+v", v)
	}
	// 收尾要落盘，否则下一轮刷新又读到陈旧的进行中状态。
	b2, err := os.ReadFile(p)
	if err != nil {
		t.Fatal(err)
	}
	var after updataState
	if err := json.Unmarshal(b2, &after); err != nil {
		t.Fatal(err)
	}
	if after.Phase != UpdataPhaseFailed {
		t.Errorf("收尾结果没落盘: %+v", after)
	}
}

// 启动器是先换文件再重启 api，所以**能启动就等于替换完了**。
// 这是「刷新后遮罩自动恢复、随后自己消失」的那一步。
func TestFinishUpdataOnBootMarksDone(t *testing.T) {
	withStateFile(t)
	SetUpdataProgress("web", UpdataPhaseApply, 96, "正在替换文件…")
	if v := UpdataStateView(); !v.Running {
		t.Fatal("前置条件不成立：本该是进行中")
	}

	FinishUpdataOnBoot()
	v := UpdataStateView()
	if v.Running {
		t.Error("重启后仍判为进行中，遮罩就永远撤不掉了")
	}
	if v.Phase != UpdataPhaseDone || v.Percent != 100 {
		t.Errorf("应收尾成完成 100%%，实际 %+v", v)
	}
}

// 已经完成/失败的，再收尾一次不应把它改回别的（否则失败提示会被抹掉）。
func TestFinishUpdataOnBootKeepsFailed(t *testing.T) {
	withStateFile(t)
	SetUpdataProgress("web", UpdataPhaseFetch, 40, "…")
	SetUpdataFailed("web", "下载失败：超时")
	FinishUpdataOnBoot()

	v := UpdataStateView()
	if v.Phase != UpdataPhaseFailed || v.Failed == "" {
		t.Errorf("失败状态被收尾覆盖了: %+v", v)
	}
}

// 没有状态文件时启动不该凭空造一条（否则每次重启都显示"升级完成"）。
func TestFinishUpdataOnBootNoopWithoutState(t *testing.T) {
	withStateFile(t)
	FinishUpdataOnBoot()
	if v := UpdataStateView(); v.Running || v.Phase == UpdataPhaseDone {
		t.Errorf("无状态时不该写出完成态: %+v", v)
	}
}

// 状态文件被写坏（断电 / 手工编辑）时按无状态处理，不能让整个接口 500。
func TestUpdataStateBadFileFallsBackToIdle(t *testing.T) {
	p := withStateFile(t)
	if err := os.WriteFile(p, []byte("{不是 JSON"), 0644); err != nil {
		t.Fatal(err)
	}
	v := UpdataStateView()
	if v.Running {
		t.Errorf("坏文件应按无状态处理: %+v", v)
	}
}
