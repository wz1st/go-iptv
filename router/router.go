package router

import (
	"go-iptv/bootstrap"
	"net/http"
	"time"

	"github.com/gin-gonic/gin"
)

func InitRouter() *gin.Engine {
	gin.SetMode(gin.ReleaseMode)
	r := gin.Default()
	r.Static("/images", bootstrap.CONFIG_PATH+"/images")
	r.Static("/list", bootstrap.CONFIG_PATH+"/list")
	r.Static("/apk", bootstrap.CONFIG_PATH+"/apk")
	LoginRouter(r, "/login/")
	ChannelsRouter(r, "/channels/")
	EpgRouter(r, "/epg/")

	r.GET("/", func(c *gin.Context) {
		c.Redirect(http.StatusMovedPermanently, "/apk/DSMTV.apk")
	})

	r.Use(NoCache)
	r.Use(Cors)
	return r
}

func NoCache(c *gin.Context) {
	c.Header("Cache-Control", "no-cache, no-store, max-age=0, must-revalidate, value")
	c.Header("Expires", "Thu, 01 Jan 1970 00:00:00 GMT")
	c.Header("Last-Modified", time.Now().UTC().Format(http.TimeFormat))
	c.Next()
}
func Cors(c *gin.Context) {
	if c.Request.Method != "OPTIONS" {
		c.Next()
	} else {
		c.Header("Access-Control-Allow-Origin", "*")
		c.Header("Access-Control-Allow-Methods", "GET,POST,PUT,PATCH,DELETE,OPTIONS")
		c.Header("Access-Control-Allow-Headers", "authorization, origin, content-type, accept")
		c.Header("Allow", "HEAD,GET,POST,PUT,PATCH,DELETE,OPTIONS")
		c.Header("Content-Type", "application/json")
		c.AbortWithStatus(200)
	}
}