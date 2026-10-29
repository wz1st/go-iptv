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
//   - Channels：库里现存的频道名（可勾选绑定、可选进黑名单）；
//   - Selected：当前**已经绑到这个 EPG** 的频道名（手动 ∪ 自动）——
//     这一栏是"拖拽源"，用户可以把不想要的台拖进黑名单；
//   - Blacklist：这个 EPG 的排除名单（频道名）。
type EpgBindableDto struct {
	Channels  []string `json:"channels"`
	Selected  []string `json:"selected"`
	Blacklist []string `json:"blacklist"`
}
