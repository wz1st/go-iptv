package api

import (
	"go-iptv/service"
	"net/http"

	"github.com/gin-gonic/gin"
)

func GetWeather(c *gin.Context) {
	result := service.GetWeather()
	c.JSON(http.StatusOK, result)
}

func GetEpg(c *gin.Context) {
	id := c.DefaultQuery("id", "")
	simple := c.DefaultQuery("simple", "")

	result := service.GetEpg(id, simple)
	c.JSON(http.StatusOK, result)
}
