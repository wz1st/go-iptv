package dto

import "iptv-api/models"

type AdminExceptionDto struct {
	LoginUser     string                `json:"loginUser"`
	Title         string                `json:"title"`
	MaxSameipUser int                   `json:"maxSameipUser"`
	Users         []models.IptvUserShow `json:"users"`
}
