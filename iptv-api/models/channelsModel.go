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
	Logo       string `gorm:"-" json:"logo"`
	PUrl       string `gorm:"-" json:"purl"`
}

func (IptvChannelShow) TableName() string {
	return "iptv_channels"
}
