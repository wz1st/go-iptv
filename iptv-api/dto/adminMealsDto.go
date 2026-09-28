package dto

import "iptv-api/models"

type AdminMealsDto struct {
	LoginUser  string                 `json:"loginUser"`
	Title      string                 `json:"title"`
	Meals      []models.IptvMealsShow `json:"meals"`
	MealsName  string                 `json:"mealsMap"`
	ChannelNum int64                  `json:"channelNum"`
}

type MealsReturnDto struct {
	Id      int64  `json:"id"`
	Name    string `json:"name"`
	Checked bool   `json:"checked"`
}
