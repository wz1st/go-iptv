package models

// iptv_meals —— 会员套餐。
type IptvMeals struct {
	ID      int64  `gorm:"column:id;primaryKey;autoIncrement" json:"id"`
	Name    string `gorm:"column:name" json:"name"`
	Content string `gorm:"column:content" json:"content"`
	Status  bool   `gorm:"column:status" json:"status"`
}

func (IptvMeals) TableName() string {
	return "iptv_meals"
}

type IptvMealsShow struct {
	ID      int64  `gorm:"column:id;primaryKey;autoIncrement" json:"id"`
	Name    string `gorm:"column:name" json:"name"`
	Content string `gorm:"column:content" json:"content"`
	Status  bool   `gorm:"column:status" json:"status"`

	CaName string `gorm:"-" json:"caName"`
}

func (IptvMealsShow) TableName() string {
	return "iptv_meals"
}
