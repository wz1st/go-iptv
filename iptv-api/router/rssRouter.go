package router

import (
	"iptv-api/api"

	"github.com/gin-gonic/gin"
)

// RSS / 订阅接口。
func RssRouter(r *gin.Engine, prefixes ...string) {
	for _, p := range prefixes {
		router := r.Group(p)
		{
			router.GET("/getRss/:token/paylist.m3u", api.GetRssM3u)
			router.GET("/getRss/:token/paylist.txt", api.GetRssTxt)
			router.GET("/ku9/:token/paylist.txt", api.GetRssTxtKu9)
			router.GET("/epg/:token/e.xml", api.GetRssEpg)

			router.GET("/r/:key/p.m3u", api.GetRssM3uShortURL)
			router.GET("/r/:key/p.txt", api.GetRssTxtShortURL)
			router.GET("/k/:key/p.txt", api.GetRssTxtKu9ShortURL)
			router.GET("/r/:key/e.xml", api.GetRssEpgShortURL)
		}
	}
}
