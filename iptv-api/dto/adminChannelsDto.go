package dto

import (
	"iptv-api/models"
)

type AdminChannelsDto struct {
	LoginUser    string                    `json:"loginUser"`
	Title        string                    `json:"title"`
	ShowAuto     bool                      `json:"showAuto"`
	CategoryList []models.IptvCategoryList `json:"categoryList"`
	Categories   []models.IptvCategory     `json:"categories"`
	Epgs         []models.IptvEpg          `json:"epgs"`
	Lic          Lic                       `json:"lic"`

	// ShowProxy 决定分组表里「中转访问」开关是否渲染（那一列 + 编辑弹窗里的
	ShowProxy bool `json:"showProxy"`
}
