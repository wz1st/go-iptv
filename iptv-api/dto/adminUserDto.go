package dto

import "iptv-api/models"

type AdminUserDto struct {
	LoginUser string                `json:"loginUser"`
	Title     string                `json:"title"`
	UserTotal int64                 `json:"userTotal"`
	UserToday int64                 `json:"userToday"`
	PageCount int64                 `json:"pageCount"`
	Page      int64                 `json:"page"`      // 当前页
	Order     string                `json:"order"`     // 排序字段
	Keywords  string                `json:"keywords"`  // 搜索关键字
	Users     []models.IptvUserShow `json:"users"`     // 用户列表
	Meals     []models.IptvMeals    `json:"meals"`     // 会员套餐列表
	RecCounts int64                 `json:"recCounts"` // 每页显示条数
}
