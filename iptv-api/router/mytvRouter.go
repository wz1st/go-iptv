package router

import (
	"iptv-api/api"

	"github.com/gin-gonic/gin"
)

// MyTV 客户端接口。
func MytvRouter(r *gin.Engine, prefixes ...string) {
	for _, p := range prefixes {
		router := r.Group(p)
		{
			router.GET("/m3u8", api.MytvGetUserM3U8)
			router.GET("/:deviceId/e.xml", api.MytvGetRssEpg)
			router.GET("/releases", api.MytvReleases)
		}
	}
}
