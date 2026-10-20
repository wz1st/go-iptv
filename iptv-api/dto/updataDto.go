package dto

// 在线升级状态（/api/updata/status）—— 前端升级遮罩的唯一依据。
//
// Running=false 时前端必须撤掉遮罩：这是「刷新页面 / 切换页面后遮罩自动恢复，
// 又能自己消失」的关键 —— 刷新后前端不问内存、只问服务端，问到"没在升级"就撤。
type UpdataStateDto struct {
	// Running 是否正在升级（检查/下载/校验/替换中，含 api 重启前的窗口）。
	Running bool `json:"running"`
	// Kind 升级对象：web（管理系统+前端）/ engine（引擎）。
	Kind string `json:"kind"`
	// Phase 阶段：check/fetch/verify/stage/apply/done/failed，空串=没在升级。
	Phase string `json:"phase"`
	// Percent 0~100，done 时为 100。
	Percent int `json:"percent"`
	// Msg 当前阶段的人话说明，直接显示在遮罩上。
	Msg string `json:"msg"`
	// Failed 失败原因（非空即失败），前端据此提示而不是"什么都没发生"。
	Failed    string `json:"failed"`
	StartedAt int64  `json:"startedAt"`
}
