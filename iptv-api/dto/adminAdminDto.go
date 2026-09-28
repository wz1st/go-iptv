package dto

import "iptv-api/models"

type AdminsDto struct {
	LoginUser string             `json:"loginUser"`
	Title     string             `json:"title"`
	Admins    []models.IptvAdmin `json:"admins"`
}

type UdataDto struct {
	LoginUser string `json:"loginUser"`
	Title     string `json:"title"`
	Version   string `json:"version"`
}
