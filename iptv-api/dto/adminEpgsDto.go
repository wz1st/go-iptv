package dto

import (
	"iptv-api/models"
)

type AdminEpgsDto struct {
	LoginUser   string                `json:"loginUser"`
	Title       string                `json:"title"`
	Epgs        []models.IptvEpg      `json:"epgs"`
	PageCount   int64                 `json:"pageCount"`
	EpgFromDb   []models.IptvEpgList  `json:"epgFromDb"`
	CaList      []models.IptvCategory `json:"caList"`
	EpgFromList map[string]string     `json:"epgFromList"`
	Page        int64                 `json:"page"`      // 当前页数
	Keywords    string                `json:"keywords"`  // 搜索关键字
	RecCounts   int64                 `json:"recCounts"` // 每页显示条数
	// EpgErr    EPGErrors        `json:"epgerr"` // epg错误信息
	// EPGApiChk int64            `json:"epgapichk"`
}

type EpgsReturnDto struct {
	Value    string `json:"value"`
	Name     string `json:"name"`
	Selected bool   `json:"selected"`
}
