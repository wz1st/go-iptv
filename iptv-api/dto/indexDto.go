package dto

type IndexDto struct {
	ApkUrl       string `json:"apk_url"`
	ApkName      string `json:"apk_name"`
	Content      string `json:"content"`
	ShowDown     bool   `json:"show_down"`
	ShowDownMyTV bool   `json:"show_down_mytv"`
	MyTVName     string `json:"mytv_name"`
	MyTVUrl      string `json:"mytv_url"`
}
