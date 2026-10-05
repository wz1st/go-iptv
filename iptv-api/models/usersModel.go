package models

// iptv_users —— 客户端设备表。
type IptvUser struct {
	ID int64 `gorm:"primaryKey;autoIncrement;column:id" json:"id"`
	// 设备名（业务键；批量操作传的就是它，不是主键 id）。
	//
	// 2026-10-04 起新装设备写**客户端 androidid 原文**（如 f8145fb34e8f5d91），
	// 不再写 genName() 生成的随机数。存量记录保持原样 —— 登录是按 mac 查用户，
	// 老设备下次登录仍命中旧行，name 不变，所以无需回填。
	Name       string `gorm:"column:name" json:"name"`
	Mac        string `gorm:"column:mac" json:"mac"`
	DeviceID   string `gorm:"column:device_id" json:"deviceId"`
	Model      string `gorm:"column:model" json:"model"`
	IP         string `gorm:"column:ip" json:"ip"`
	Region     string `gorm:"column:region" json:"region"`
	ExpireTime int64  `gorm:"column:expire_time" json:"expireTime"`
	VPN        bool   `gorm:"column:vpn" json:"vpn"`
	IDChange   bool   `gorm:"column:id_change" json:"idChange"`
	Author     string `gorm:"column:author" json:"author"`
	AuthorTime int64  `gorm:"column:author_time" json:"authorTime"`
	Status     int64  `gorm:"default:-1;column:status" json:"status"`
	LastTime   int64  `gorm:"column:last_time" json:"lastTime"`
	Marks      string `gorm:"column:marks" json:"marks"`
	MealID     int64  `gorm:"column:meal_id" json:"mealId"`

	// ---- 以下为展示用派生字段，不落库（gorm:"-"）----
	LastTimeStr string `gorm:"-" json:"lastTimeStr"`
	ExpDesc     string `gorm:"-" json:"expDesc"`    // 到期时间：xxxx-xx-xx / 永不到期
	ExpDays     string `gorm:"-" json:"expDays"`    // 剩 N 天 / 已过期 / 已禁用 / 未授权
	StatusDesc  string `gorm:"-" json:"statusDesc"` // 状态描述
	NetType     string `gorm:"-" json:"netType"`    // 网络类型
}

type IptvUserShow struct {
	ID int `gorm:"primaryKey;autoIncrement;column:id" json:"id"`
	// 与 [IptvUser.Name] 同类型：历史行是随机数字，新行是 androidid 原文。
	Name       string `gorm:"column:name" json:"name"`
	Mac        string `gorm:"column:mac" json:"mac"`
	DeviceID   string `gorm:"column:device_id" json:"deviceId"`
	Model      string `gorm:"column:model" json:"model"`
	IP         string `gorm:"column:ip" json:"ip"`
	Region     string `gorm:"column:region" json:"region"`
	ExpireTime int64  `gorm:"column:expire_time" json:"expireTime"`
	VPN        bool   `gorm:"column:vpn" json:"vpn"`
	IDChange   bool   `gorm:"column:id_change" json:"idChange"`
	Author     string `gorm:"column:author" json:"author"`
	AuthorTime int64  `gorm:"column:author_time" json:"authorTime"`
	Status     int64  `gorm:"default:-1;column:status" json:"status"`
	LastTime   int64  `gorm:"column:last_time" json:"lastTime"`
	Marks      string `gorm:"column:marks" json:"marks"`
	MealID     int64  `gorm:"column:meal_id" json:"mealId"`
	// MealName 由列表查询的 `m.name AS meal_name` 带出，只读
	MealName string `gorm:"->;column:meal_name" json:"mealName"`

	LastTimeStr string `gorm:"-" json:"lastTimeStr"`
	ExpDesc     string `gorm:"-" json:"expDesc"`
	ExpDays     string `gorm:"-" json:"expDays"`
	StatusDesc  string `gorm:"-" json:"statusDesc"`
	NetType     string `gorm:"-" json:"netType"`
}

func (IptvUser) TableName() string {
	return "iptv_users"
}

func (IptvUserShow) TableName() string {
	return "iptv_users"
}
