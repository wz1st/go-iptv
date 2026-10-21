package until

import (
	"encoding/json"
	"log"
	"os"
	"path/filepath"
	"strings"
	"sync"
	"time"

	"iptv-api/dao"
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
	// Version 是"这一轮要装上去的版本号"（引擎是 vX.Y.Z，管理系统是标签）。
	// 引擎升级时 api 进程**不会重启**（启动器只重启被替换掉的那个子进程），
	// 所以没人来把状态收成 done —— 靠 UpdataStateView 拿它跟引擎实际版本
	// 比对来收尾。空串表示"没记目标版本"，那就不做这个判定。
	Version string `json:"version"`
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
//
// 目标版本（Version）在这里**必须原样带过去**：它是整份覆盖写，不显式带上
// 就会被抹掉；而 Updata() 那一步（apply 阶段）也走本函数，抹掉之后引擎侧
// 就再也判不出"是否已经换成新版"，状态会一直挂在 apply 上直到 10 分钟
// 后被当成"升级中断"。判据见 UpdataStateView 里的 engineTargetReached。
func SetUpdataProgress(kind, phase string, percent int, msg string) {
	if percent < 0 {
		percent = 0
	}
	if percent > 100 {
		percent = 100
	}
	// 换一条链路重试会让 kind 变不了，但下载与安装是同一条链路，所以这里
	// 只在 kind 一致时继承目标版本，避免上一条链路残留的值被算到这一条头上。
	version := ""
	if st := readUpdataState(); st.Kind == kind {
		version = st.Version
	}
	writeUpdataState(updataState{
		Kind: kind, Phase: phase, Percent: percent, Msg: msg, Version: version,
	})
}

// SetUpdataTarget 记录这轮要装的目标版本。
//
// 只在**包已下好**那一刻调用：此后每次进度上报都要保住它（SetUpdataProgress
// 是整份覆盖写，不显式带上就会被抹掉），引擎侧据此判定"是否已经换成新版"。
func SetUpdataTarget(kind, version string) {
	st := readUpdataState()
	st.Kind = kind
	st.Version = version
	writeUpdataState(st)
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

// engineTargetReached 判断引擎当前版本是否已经达到这轮的目标版本。
//
// 为什么需要它：升级引擎时启动器只重启 engine 子进程，**api 一直在跑**，
// 于是没人执行 FinishUpdataOnBoot —— 状态会永远停在 apply，前端遮罩
// 钉死十分钟，最后还被当成"升级中断"报给用户。
//
// 判据用"引擎自己报的版本"而不是"文件存在"：文件在只说明启动器替换过，
// 引擎还没起来时那个文件就是新的、进程却跑着旧的。
//
// 三种情况都返回 false（继续等，不猜）：
//   - 没记目标版本（老状态文件 / 非引擎链路）
//   - 问不到引擎版本（WS 断了且执行 -version 也失败）——此时宁可等满
//     陈旧判定，也不要把一次好端端的升级误报成失败。
//   - 版本还比目标低：替换还没生效。
func engineTargetReached(target string) bool {
	if target == "" {
		return false
	}
	cur := ""
	if verJSON, err := dao.WS.SendWS(dao.Request{Action: "getVersion"}); err == nil {
		var s string
		if json.Unmarshal(verJSON.Data, &s) == nil {
			cur = strings.TrimSpace(s)
		}
	}
	if cur == "" {
		cur = EngineVersion()
	}
	if cur == "" {
		return false
	}
	// 目标是 vX.Y.Z（下载时已去掉 engine- 前缀），引擎自报可能带不带 v 都能比。
	return cmpVersion(versionParts(target), versionParts(cur)) <= 0
}

// settleEngineUpdata 引擎已经换成目标版本 ⇒ 把状态收成 done。
// 返回是否真的收掉了。
func settleEngineUpdata(st updataState) bool {
	if st.Kind != "engine" || st.Version == "" {
		return false
	}
	if st.Phase != UpdataPhaseApply && st.Phase != UpdataPhaseStage {
		return false
	}
	if !engineTargetReached(st.Version) {
		return false
	}
	log.Printf("引擎已升级到 %s，收尾升级状态", st.Version)
	writeUpdataState(updataState{
		Kind: st.Kind, Phase: UpdataPhaseDone, Percent: 100,
		Msg: "升级已完成，引擎已重启", Version: st.Version,
	})
	return true
}

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

	// 引擎升级没有"api 重启"这个天然的收尾时机（只有 engine 子进程被重启），
	// 所以这里先按实际引擎版本收一次；收掉了就走下面的 done 分支返回。
	if settleEngineUpdata(st) {
		st = readUpdataState()
		view.Phase, view.Percent, view.Msg = st.Phase, st.Percent, st.Msg
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
				Version: st.Version,
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
		Msg: "升级已完成，管理系统已重启", Version: st.Version,
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
