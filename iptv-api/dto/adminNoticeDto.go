package dto

type AdminNoticeDto struct {
	LoginUser string `json:"loginUser"`
	Title     string `json:"title"`
	Ad        Ad     `json:"ad"`
}
