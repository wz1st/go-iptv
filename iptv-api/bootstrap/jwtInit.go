package bootstrap

import (
	"iptv-api/dao"
	"iptv-api/until"
	"time"
)

func InitJwtKey() {
	// 读取配置文件
	hostname, _ := until.GetContainerID()
	until.JwtKey = []byte(until.Md5(hostname + time.Now().Format("2006-01-02 15:04:05")))
	cfg := dao.GetConfig()
	if cfg.Rss.Key == "" {
		cfg.Rss.Key = until.Md5(time.Now().Format("2006-01-02 15:04:05"))
		until.RssKey = []byte(cfg.Rss.Key)
		dao.SetConfig(cfg)
	} else {
		until.RssKey = []byte(cfg.Rss.Key)
	}
	// until.RssKey = []byte(until.Md5(hostname))
}
