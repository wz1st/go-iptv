package models

// iptv_admin —— 后台管理员（全系统只有 id=1 这一行）。
type IptvAdmin struct {
	ID           int64  `gorm:"column:id;primaryKey;autoIncrement" json:"id"`
	Username     string `gorm:"column:username" json:"username"`
	PasswordHash string `gorm:"column:password_hash" json:"-"`
}

func (IptvAdmin) TableName() string {
	return "iptv_admin"
}
