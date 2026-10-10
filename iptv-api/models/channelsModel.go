package models

// iptv_channels —— 频道表。
type IptvChannel struct {
	ID         int64  `gorm:"column:id;primaryKey;autoIncrement" json:"id"`
	Name       string `gorm:"column:name" json:"name"`
	Url        string `gorm:"column:url" json:"url"`
	Resolution string `gorm:"column:resolution" json:"resolution"`
	ResTime    int64  `gorm:"column:res_time" json:"resTime"`
	Speed      string `gorm:"column:speed" json:"speed"`
	Status     bool   `gorm:"column:status" json:"status"`
	Sort       int64  `gorm:"column:sort" json:"sort"`
	EpgID      int64  `gorm:"column:epg_id" json:"epgId"`
	CategoryID int64  `gorm:"column:category_id" json:"categoryId"`
	SourceID   int64  `gorm:"column:source_id" json:"sourceId"`
}

func (IptvChannel) TableName() string {
	return "iptv_channels"
}

// IptvChannelShow 是频道 + 关联表带出的展示字段。
type IptvChannelShow struct {
	ID         int64  `gorm:"primaryKey;autoIncrement" json:"id"`
	Name       string `gorm:"column:name" json:"name"`
	Url        string `gorm:"column:url" json:"url"`
	Resolution string `gorm:"column:resolution" json:"resolution"`
	ResTime    int64  `gorm:"column:res_time" json:"resTime"`
	Speed      string `gorm:"column:speed" json:"speed"`
	Status     bool   `gorm:"column:status" json:"status"`
	Sort       int64  `gorm:"column:sort" json:"sort"`
	EpgID      int64  `gorm:"column:epg_id" json:"epgId"`
	CategoryID int64  `gorm:"column:category_id" json:"categoryId"`
	SourceID   int64  `gorm:"column:source_id" json:"sourceId"`
	EpgName    string `gorm:"column:epg_name" json:"epgName"`
	CaName     string `gorm:"column:ca_name" json:"caName"`
	Proxy      bool   `gorm:"column:proxy" json:"proxy"`
	// Ua 是**频道所属分组**的自定义 UA（JOIN `iptv_category.ua` 带出来的查询别名）。
	// 聚合分组里它是"这条链接要不要继续走中转"的一半判据（见引擎 until/channels.go
	// 的 aggregateNeedsProxy）：源分组没开中转但配了 UA 时，仍然要经中转取流。
	// 普通分组里这个字段只用于展示，不参与地址选择。
	Ua   string `gorm:"column:ua" json:"ua"`
	Logo string `gorm:"-" json:"logo"`
	PUrl string `gorm:"-" json:"purl"`
}

func (IptvChannelShow) TableName() string {
	return "iptv_channels"
}
