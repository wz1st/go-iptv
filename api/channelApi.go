package api

import (
	"encoding/json"
	"go-iptv/dto"
	"go-iptv/service"
	"net/http"

	"github.com/gin-gonic/gin"
)

func GetChannels(c *gin.Context) {
	loginJSON := c.PostForm("data")

	var channel dto.DataReqDto
	json.Unmarshal([]byte(loginJSON), &channel)

	result := service.GetChannels(channel)
	c.String(http.StatusOK, result)
}
