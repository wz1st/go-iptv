package router

import (
	"iptv-api/api"

	"github.com/gin-contrib/gzip"
	"github.com/gin-gonic/gin"
)

// APK 客户端接口。
func ApkRouter(r *gin.Engine, prefixes ...string) {
	// 客户端多在弱网/移动网络下，响应统一开 gzip。
	r.Use(gzip.Gzip(gzip.DefaultCompression))

	for _, p := range prefixes {
		router := r.Group(p)
		{
			router.GET("/weather", api.GetWeather)
			router.GET("/getepg", api.GetEpg)
			router.GET("/getver", api.Getver)
			router.GET("/bg", api.GetBg)
			router.POST("/login", api.ApkLogin)
			router.POST("/channels", api.GetChannels)
		}
	}
}
