package dto

type AdminEngineDto struct {
	LoginUser string `json:"loginUser"`
	Title     string `json:"title"`
	Proxy     int64  `json:"proxy"`
	Lic       Lic    `json:"lic"`
	Status    int64  `json:"status"`
	Online    int64  `json:"online"`
	Version   string `json:"version"`
	AutoRes   int64  `json:"autoRes"`
	DisCh     int64  `json:"disCh"`
	EpgFuzz   int64  `json:"epgFuzz"`
	ShortURL  int64  `json:"shortUrl"`
}

type Lic struct {
	ID     string `json:"id"`
	Type   int64  `json:"type"`
	Status int64  `json:"status"`
	Count  int64  `json:"count"`
	Exp    int64  `json:"exp"`
	Msg    string `json:"msg"`
	Name   string `json:"name"`
	ExpStr string `json:"exp_str"`
}

type LoginDto struct {
	Name string `json:"name"`
	OPwd string `json:"opwd"`
	Pwd  string `json:"pwd"`
	Pwd2 string `json:"pwd2"`
}
