package router

import (
	"go-iptv/api"

	"github.com/gin-gonic/gin"
)

func ChannelsRouter(r *gin.Engine, path string) {
	router := r.Group(path)
	{
		router.POST("data", api.GetChannels)
	}
}
