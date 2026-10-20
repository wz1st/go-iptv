package until

import (
	"encoding/json"
	"log"
	"os"
	"path/filepath"
	"sync"
	"time"

	"iptv-api/dto"
)

// 在线升级的状态与进度。
//
// ## 为什么要有它
//
// 升级动作一旦触发，api 进程会被启动器重启（见 iptv-start/main.go 的
// restartUpdated）。这中间浏览器里的那个"正在升级"窗口如果只放在前端内存里，
// 用户一刷新页面（或切一下路由）遮罩就没了 —— 而后台其实**正在替换文件**，
// 这时任何操作都可能撞上半个新半个旧的运行态。
//
// 所以状态必须落在**服务端**：前端轮询 /api/updata/status，刷新后照样问得到。
//
// ## 为什么落文件而不是只放内存
//
// api 重启本身就是升级的一环：新进程起来时要能读到"上一轮升级进行到哪"，
// 并据此把状态收尾（能启动 = 文件已替换完毕）。只放内存的话，重启后状态归零，
// 进度条会在最后一步凭空跳回 0。
//
// 文件写在 /config（持久卷）里，容器重建也不丢。

// updataStateFile 状态文件路径。放 /config 而不是 /tmp：容器重启不丢。
var updataStateFile = filepath.Join("/config", "updata_state.json")

// 阶段名。前端按 phase 选提示语，percent 只管进度条。
const (
	UpdataPhaseIdle   = ""
	UpdataPhaseCheck  = "check"
	UpdataPhaseFetch  = "fetch"
	UpdataPhaseVerify = "verify"
	UpdataPhaseStage  = "stage"
	// UpdataPhaseReady 是"包已就绪、等人点确认安装"这段窗口。
	//
	// 这一段**刻意不算进行中**：下载完到用户点"确认升级"之间可能有几分钟，
	// 用户完全可以去别的页面看看。那段时间罩着全屏遮罩等于软锁后台。
	UpdataPhaseReady  = "ready"
	UpdataPhaseApply  = "apply"
	UpdataPhaseDone   = "done"
	UpdataPhaseFailed = "failed"
)

// updataState 落盘结构。
type updataState struct {
	// Kind 正在升级什么：web（管理系统+前端）/ engine（引擎）。
	Kind string `json:"kind"`
	// Phase 见上面的阶段常量（ready = 包已下好，等人确认安装，不算进行中）。
	Phase string `json:"phase"`
	// Percent 0~100。
	Percent int    `json:"percent"`
	Msg     string `json:"msg"`
	// Failed 非空表示失败原因（同时 Phase=failed）。
	Failed string `json:"failed"`
	// StartedAt / UpdatedAt 是 Unix 秒。UpdatedAt 还兼任**陈旧判定**：
	// 进程在升级中途被 kill 时不会有"完成"那一步，只能靠它过期来收尾。
	StartedAt int64 `json:"startedAt"`
	UpdatedAt int64 `json:"updatedAt"`
	// updatedMs 只在内存里用（毫秒），给下载进度的节流判定用；比 UpdatedAt
	// 精度高是因为 1 秒的节流窗口装不下"两次 Write 之间不到 1 秒"这种情况。
	updatedMs int64 `json:"-"`
}

var (
	updataMu    sync.Mutex
	updataCache = updataState{}
	updataRead  bool
)

// readUpdataState 读一次状态文件并缓存。
func readUpdataState() updataState {
	updataMu.Lock()
	defer updataMu.Unlock()
	if updataRead {
		return updataCache
	}
	updataRead = true
	b, err := os.ReadFile(updataStateFile)
	if err != nil {
		return updataState{}
	}
	var st updataState
	if err := json.Unmarshal(b, &st); err != nil {
		log.Println("升级状态文件解析失败，按无状态处理:", err)
		return updataState{}
	}
	updataCache = st
	return st
}

// writeUpdataState 落盘并更新缓存。
func writeUpdataState(st updataState) {
	updataMu.Lock()
	defer updataMu.Unlock()
	writeUpdataStateLocked(st)
}

// writeUpdataStateLocked 是 writeUpdataState 的已持锁版本。
// 分出来是因为下载进度的节流判定必须"读缓存 → 判断 → 写缓存"在同一把锁里，
// 否则两个回调线程会各自判定通过、各自写一次。
func writeUpdataStateLocked(st updataState) {
	now := time.Now()
	if st.StartedAt == 0 {
		st.StartedAt = now.Unix()
	}
	st.UpdatedAt = now.Unix()
	st.updatedMs = now.UnixMilli()
	b, err := json.Marshal(st)
	if err != nil {
		log.Println("升级状态序列化失败:", err)
		return
	}
	if err := os.MkdirAll(filepath.Dir(updataStateFile), 0755); err != nil {
		log.Println("升级状态目录创建失败:", err)
		return
	}
	// 原子写：状态文件被读到半个 JSON 的后果是"遮罩永久消失"，那比报错糟得多。
	tmp := updataStateFile + ".tmp"
	if err := os.WriteFile(tmp, b, 0644); err != nil {
		log.Println("升级状态写入失败:", err)
		return
	}
	if err := os.Rename(tmp, updataStateFile); err != nil {
		log.Println("升级状态落盘失败:", err)
		_ = os.Remove(tmp)
		return
	}
	updataCache = st
	updataRead = true
}

// SetUpdataProgress 上报一次进度（阶段 + 百分比 + 提示语）。
func SetUpdataProgress(kind, phase string, percent int, msg string) {
	if percent < 0 {
		percent = 0
	}
	if percent > 100 {
		percent = 100
	}
	writeUpdataState(updataState{Kind: kind, Phase: phase, Percent: percent, Msg: msg})
}

// SetUpdataFailed 记一次失败。前端据此把遮罩撤掉并把原因显示出来 ——
// 升级中途失败时如果只把遮罩撤了，用户只会看到"什么都没发生"。
func SetUpdataFailed(kind, reason string) {
	st := readUpdataState()
	st.Kind = kind
	st.Phase = UpdataPhaseFailed
	st.Failed = reason
	st.Msg = reason
	writeUpdataState(st)
}

// SetUpdataDone 标记完成。
func SetUpdataDone(kind, msg string) {
	writeUpdataState(updataState{
		Kind: kind, Phase: UpdataPhaseDone, Percent: 100, Msg: msg,
	})
}

// updataStaleAfter 状态多久没动就算陈旧。
//
// 兜的是"进程在升级中途被杀"这种情况：既没有完成那一步，也没有失败那一步。
// 十分钟没有任何更新的状态不可能还在跑 —— 真在下载 30MB 的包也是持续写进度的。
const updataStaleAfter = 10 * time.Minute

// UpdataStateView 返回给前端的升级状态。
//
// running=false 时前端不该显示遮罩 —— 这是「刷新后恢复」的唯一依据：
// 状态说没在升级，就撤遮罩。宁可早撤（用户再点一次），也不能卡死不动。
func UpdataStateView() dto.UpdataStateDto {
	st := readUpdataState()
	now := time.Now().Unix()

	view := dto.UpdataStateDto{
		Kind:      st.Kind,
		Phase:     st.Phase,
		Percent:   st.Percent,
		Msg:       st.Msg,
		Failed:    st.Failed,
		StartedAt: st.StartedAt,
	}

	switch st.Phase {
	case UpdataPhaseIdle, UpdataPhaseDone, UpdataPhaseFailed, UpdataPhaseReady:
		view.Running = false
	default:
		// 其余都是"进行中"的阶段（check/fetch/verify/stage/apply）。
		//
		// ★ 陈旧判定必须放在这里而不是某个具体阶段上：早先版本把它挂在
		// 一个从不写入的 running 分支里，结果"进程在升级中途被杀"这种
		// 最需要收尾的情况反而永远收不掉，遮罩就钉死在屏幕上了。
		// 宁可告诉用户"升级状态已中断"，也别让界面卡住不能操作。
		if now-st.UpdatedAt > int64(updataStaleAfter/time.Second) {
			view.Running = false
			view.Phase = UpdataPhaseFailed
			view.Failed = "升级状态超过 " + updataStaleAfter.String() + " 没有更新，已按中断处理"
			view.Msg = view.Failed
			writeUpdataState(updataState{
				Kind: st.Kind, Phase: UpdataPhaseFailed, Failed: view.Failed,
				Msg: view.Failed, Percent: st.Percent, StartedAt: st.StartedAt,
			})
		} else {
			view.Running = true
		}
	}
	return view
}

// FinishUpdataOnBoot api 启动时收尾上一轮的升级状态。
//
// **能启动本身就说明文件已经替换完毕**（启动器是先换文件再重启 api，
// 见 iptv-start/main.go 的 ApplyUpdate/restartUpdated）。所以这里把还在
// "进行中"的状态直接判成完成 —— 这也正是前端"刷新后遮罩自动恢复、
// 又能自己消失"的机制：刷新 → 轮询到 running → 显示遮罩 → 进程重启完成
// → 再次轮询拿到 done → 遮罩撤掉。
//
// 没有状态文件说明这轮没升级过升级，什么都不做。
func FinishUpdataOnBoot() {
	st := readUpdataState()
	if st.Phase == UpdataPhaseIdle || st.Phase == UpdataPhaseDone {
		return
	}
	if st.Phase == UpdataPhaseFailed {
		return
	}
	log.Printf("启动时收尾升级状态：上一轮停在 %s（%d%%），进程能起来即视为替换完成", st.Phase, st.Percent)
	writeUpdataState(updataState{
		Kind: st.Kind, Phase: UpdataPhaseDone, Percent: 100,
		Msg: "升级已完成，管理系统已重启",
	})
}

// GetUpdataKind 当前这轮升级的对象（web / engine）。
//
// 触发升级时用它给状态打上 kind，让前端遮罩能显示"正在升级管理系统"还是
// "正在升级引擎"。状态为空时按待安装区推断：引擎的包已落进 /config/updata
// 说明这轮升的是引擎（iptv 那份此时还没落 —— 启动器拿到信号后才开始替换）。
func GetUpdataKind() string {
	st := readUpdataState()
	if st.Kind != "" {
		return st.Kind
	}
	if _, err := os.Stat(filepath.Join("/config", "updata", "engine")); err == nil {
		return "engine"
	}
	return "web"
}
