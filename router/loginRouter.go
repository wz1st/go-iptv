package router

import (
	"go-iptv/api"

	"github.com/gin-gonic/gin"
)

func LoginRouter(r *gin.Engine, path string) {
	router := r.Group(path)
	{
		router.GET("getver", api.Getver)
		router.POST("login", api.AuthLogin)
		router.GET("bg", api.GetBg)
	}
}
