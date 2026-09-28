package models

// iptv_category —— 频道分组（一个分组就是后台"频道分组"里的一行）。
type IptvCategory struct {
	ID         int64  `gorm:"column:id;primaryKey;autoIncrement" json:"id"`
	Name       string `gorm:"unique;column:name" json:"name"`
	Enable     bool   `gorm:"column:enable;default:1" json:"enable"`
	Type       string `gorm:"default:user;column:type" json:"type"`
	Proxy      bool   `gorm:"column:proxy" json:"proxy"`
	AutoRename bool   `gorm:"column:auto_rename" json:"autoRename"`
	Ku9        string `gorm:"column:ku9" json:"ku9"`
	UA         string `gorm:"column:ua" json:"ua"`
	Sort       int64  `gorm:"column:sort" json:"sort"`
	SourceID   int64  `gorm:"column:source_id;default:0" json:"sourceId"`
	Rules      string `gorm:"column:rules" json:"rules"` // 规则
	RulesShow  string `gorm:"-" json:"rulesShow"`        // 规则（截断后的展示串）
	RawCount   int64  `gorm:"column:raw_count;default:0" json:"rawCount"`
}

func (IptvCategory) TableName() string {
	return "iptv_category"
}

// iptv_category_list —— 频道源（一个 m3u/txt 地址就是一行）。
type IptvCategoryList struct {
	ID           int64  `gorm:"primaryKey;autoIncrement;column:id" json:"id"`
	Name         string `gorm:"unique;column:name" json:"name"`
	Enable       bool   `gorm:"column:enable;default:1" json:"enable"`
	Url          string `gorm:"column:url" json:"url"`
	UA           string `gorm:"column:ua" json:"ua"`
	LatestTime   string `gorm:"column:latest_time" json:"latestTime"`
	AutoCategory bool   `gorm:"column:auto_category" json:"autoCategory"`
	AutoGroup    bool   `gorm:"column:auto_group" json:"autoGroup"`
	Ku9          bool   `gorm:"column:ku9" json:"ku9"`
	Dedup        bool   `gorm:"column:dedup" json:"dedup"`
	AutoRename   bool   `gorm:"column:auto_rename" json:"autoRename"`
	// Interval 是该源自动更新的间隔（秒），默认 7200 = 2 小时。
	// 旧版是「全局一个间隔」，现在改为每个源独立设置，所以落到源表上。
	Interval int64 `gorm:"column:interval;default:7200" json:"interval"`
	// Auto 是该源是否参与自动更新；替代旧版 config.yml 里 channel.auto 那个
	// 全局开关（该配置段已随本轮改造整体删除）。
	Auto bool `gorm:"column:auto;default:1" json:"auto"`
}

func (IptvCategoryList) TableName() string {
	return "iptv_category_list"
}
