package dto

type ReturnJsonDto struct {
	Code int    `json:"code"`
	Msg  string `json:"msg"`
	Type string `json:"type"`
	Data any    `json:"data"`
}
