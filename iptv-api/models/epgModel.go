package models

// iptv_epg —— EPG（节目单）条目。
type IptvEpg struct {
	ID       int64  `gorm:"column:id;primaryKey;autoIncrement" json:"id"`
	Name     string `gorm:"column:name" json:"name"`
	Content  string `gorm:"column:content" json:"content"`
	Cas      string `gorm:"column:cas" json:"cas"`
	FromList string `gorm:"column:from_list" json:"fromList"`
	Status   bool   `gorm:"column:status" json:"status"`
	Remarks  string `gorm:"column:remarks" json:"remarks"`

	FromName string `gorm:"-" json:"fromName"`
	Logo     string `gorm:"-" json:"logo"`
}

func (IptvEpg) TableName() string {
	return "iptv_epg"
}

// iptv_epg_list —— EPG 源（一个 XML 地址就是一行）。
// last_time 是最近一次抓取成功的 Unix 秒；last_time_str 是它的展示串。
type IptvEpgList struct {
	ID       int64  `gorm:"primaryKey;autoIncrement;column:id" json:"id"`
	Name     string `gorm:"column:name" json:"name"`
	Remarks  string `gorm:"column:remarks" json:"remarks"`
	Url      string `gorm:"column:url" json:"url"`
	UA       string `gorm:"column:ua" json:"ua"`
	LastTime int64  `gorm:"column:last_time" json:"lastTime"`
	Status   bool   `gorm:"column:status" json:"status"`

	LastTimeStr string `gorm:"-" json:"lastTimeStr"`
}

func (IptvEpgList) TableName() string {
	return "iptv_epg_list"
}
