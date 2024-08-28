package router

import (
	"go-iptv/api"

	"github.com/gin-gonic/gin"
)

func EpgRouter(r *gin.Engine, path string) {
	router := r.Group(path)
	{
		router.GET("weather", api.GetWeather)
		router.GET("getepg", api.GetEpg)
	}
}
