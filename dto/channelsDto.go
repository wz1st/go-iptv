package dto

type ChannelListDto struct {
	Name string        `json:"name"`
	Psw  string        `json:"psw"`
	Data []ChannelData `json:"data"`
}

type ChannelData struct {
	Num    int      `json:"num"`
	Name   string   `json:"name"`
	Source []string `json:"source"`
}

type ConfigChannel struct {
	Class   string `mapstructure:"class"`
	ListURL string `mapstructure:"list_url"`
}

type DataReqDto struct {
	Mac      string `json:"mac"`
	DeviceID string `json:"androidid"`
	Model    string `json:"model"`
	Region   string `json:"region"`
	Rand     string `json:"rand"`
}
