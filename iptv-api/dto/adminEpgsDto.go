package dto

import (
	"iptv-api/models"
)

type AdminEpgsDto struct {
	LoginUser   string               `json:"loginUser"`
	Title       string               `json:"title"`
	Epgs        []models.IptvEpg     `json:"epgs"`
	PageCount   int64                `json:"pageCount"`
	EpgFromDb   []models.IptvEpgList `json:"epgFromDb"`
	EpgFromList map[string]string    `json:"epgFromList"`
	Page        int64                `json:"page"`      // 当前页数
	Keywords    string               `json:"keywords"`  // 搜索关键字
	RecCounts   int64                `json:"recCounts"` // 每页显示条数
	// EpgErr    EPGErrors        `json:"epgerr"` // epg错误信息
	// EPGApiChk int64            `json:"epgapichk"`
}

// EpgBindableDto 是「手动绑定频道」弹窗要的全部数据。
//
// 一次给全，前端不用再发第二个请求：
//   - Channels：库里现存的频道名（黑名单里的已剔除）—— 可选绑的候选；
//   - Selected：当前**认领**这个 EPG 的全部台名（手动 ∪ 自动 − 黑名单）——
//     与列表页「绑定频道」列逐字同口径（until.EpgBoundNames）。
//     这一栏是"拖拽源"，用户可以把不想要的台拖进黑名单。
//     ★它以前是"遍历频道表 + 规则判定"算出来的 —— 手动名单里那些
//     **库里还没有对应频道**的台名（用户手输的）在它眼里不存在，
//     于是列表列显示它、这个弹窗里却没有 ⇒ "列表说绑着、弹窗说没绑"；
//   - Manual：**手动名单**（用户手动指定的台，− 黑名单）——
//     「手动绑定频道」多选框预选的是它。
//     ★预选不能是 Selected：否则用户不改直接点确定，
//     就把自动匹配上的台固化成手动名单了（content 优先级最高，
//     之后自动规则改了也不再生效 —— v4.10.6 要避免的"旧结果钉死频道"）；
//   - Blacklist：这个 EPG 的排除名单（频道名）。
type EpgBindableDto struct {
	Channels  []string `json:"channels"`
	Selected  []string `json:"selected"`
	Manual    []string `json:"manual"`
	Blacklist []string `json:"blacklist"`
}

// EpgBindResultDto 是「手动绑定频道」保存后回给前端的那一行数据。
//
// 前端拿到它就能**就地更新表格里那一行**的「绑定频道」列，
// 不用等后台重算跑完再刷新整页（整页刷新会把滚动位置和搜索条件也冲掉）。
//
// Bound 是「手动名单 ∪ 自动结果 − 黑名单」之后的展示串，
// 与列表接口（api/spaListApi.go）用的是同一个函数 —— 两端口径必须一致，
// 否则"保存后立刻看到的那一行"和"刷新页面看到的"会对不上。
type EpgBindResultDto struct {
	ID    int64  `json:"id"`
	Bound string `json:"bound"`
}
