package dto

type AdminIndexDto struct {
	// IndexDto is the DTO for the index page
	// It contains the title and the description of the page
	LoginUser        string        `json:"loginUser"`
	Title            string        `json:"title"`
	UserTotal        int64         `json:"userTotal"`
	UserToday        int64         `json:"userToday"`
	ChannelTypeCount int64         `json:"channelTypeCount"`
	MealsCount       int64         `json:"mealsCount"`
	EpgCount         int64         `json:"epgCount"`
	ChannelCount     int64         `json:"channelCount"`
	ChannelTypeList  []ChannelType `json:"channelTypeList"`
}

type ChannelType struct {
	Num          int64  `json:"num"`
	Name         string `json:"name"`
	ChannelCount int64  `json:"channelCount"`
	RawCount     int64  `json:"rawCount"`
	ShowRawCount bool   `json:"showRawCount"`
}
