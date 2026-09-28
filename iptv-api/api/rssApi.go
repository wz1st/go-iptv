package api

import (
	"fmt"
	"iptv-api/dto"
	"iptv-api/service"
	"iptv-api/until"
	"strings"

	"github.com/gin-gonic/gin"
)

// GetRssUrl 生成 / 刷新某个设备的订阅地址。
func GetRssUrl(c *gin.Context) {
	var req dto.RssUrlReq
	if !bindJSON(c, &req) {
		return
	}

	scheme := GetClientScheme(c)

	host := c.Request.Host
	if !until.IsValidHost(host) {
		c.String(200, "参数错误3")
		return
	}
	host = fmt.Sprintf("%s://%s", scheme, host)

	// 刷新密钥时仍然要用 id 定位套餐 —— 改造前这里把 newKey 当成套餐 id 传进去，
	// 而 newKey 只是「要不要换密钥」的开关值，必然查不到套餐。
	if req.NewKey != "" {
		c.JSON(200, service.GetRssUrl(req.ID, host, true))
		return
	}

	c.JSON(200, service.GetRssUrl(req.ID, host, false))
}

func GetRssM3u(c *gin.Context) {
	token := c.Param("token")
	if token == "" {
		c.String(200, "参数错误1")
		return
	}
	scheme := GetClientScheme(c)

	host := c.Request.Host
	if !until.IsValidHost(host) {
		c.String(200, "参数错误3")
		return
	}
	host = fmt.Sprintf("%s://%s", scheme, host)

	c.String(200, service.GetRss(token, host, "m"))
}

func GetRssM3uShortURL(c *gin.Context) {
	key := c.Param("key")
	if key == "" {
		c.String(200, "参数错误2")
		return
	}
	scheme := GetClientScheme(c)

	host := c.Request.Host
	if !until.IsValidHost(host) {
		c.String(200, "参数错误3")
		return
	}
	host = fmt.Sprintf("%s://%s", scheme, host)
	token := service.GetRssToken(key)
	if token == "" {
		c.String(200, "参数错误4")
		return
	}
	c.String(200, service.GetRss(token, host, "m"))
}

func GetRssTxtShortURL(c *gin.Context) {
	key := c.Param("key")
	if key == "" {
		c.String(200, "参数错误2")
		return
	}
	scheme := GetClientScheme(c)

	host := c.Request.Host
	if !until.IsValidHost(host) {
		c.String(200, "参数错误3")
		return
	}
	host = fmt.Sprintf("%s://%s", scheme, host)
	token := service.GetRssToken(key)
	if token == "" {
		c.String(200, "参数错误4")
		return
	}
	c.String(200, service.GetRss(token, host, "t"))
}

func GetRssTxt(c *gin.Context) {
	token := c.Param("token")
	if token == "" {
		c.String(200, "参数错误1")
		return
	}
	scheme := GetClientScheme(c)

	host := c.Request.Host
	if !until.IsValidHost(host) {
		c.String(200, "参数错误3")
		return
	}
	host = fmt.Sprintf("%s://%s", scheme, host)

	c.String(200, service.GetRss(token, host, "t"))
}

func GetRssTxtKu9ShortURL(c *gin.Context) {
	key := c.Param("key")
	if key == "" {
		c.String(200, "参数错误2")
		return
	}
	scheme := GetClientScheme(c)

	host := c.Request.Host
	if !until.IsValidHost(host) {
		c.String(200, "参数错误3")
		return
	}
	host = fmt.Sprintf("%s://%s", scheme, host)
	token := service.GetRssToken(key)
	if token == "" {
		c.String(200, "参数错误4")
		return
	}
	c.String(200, service.GetTxtKu9(token, host))
}

func GetRssTxtKu9(c *gin.Context) {
	token := c.Param("token")
	if token == "" {
		c.String(200, "参数错误1")
		return
	}
	scheme := GetClientScheme(c)

	host := c.Request.Host
	if !until.IsValidHost(host) {
		c.String(200, "参数错误3")
		return
	}
	host = fmt.Sprintf("%s://%s", scheme, host)

	c.String(200, service.GetTxtKu9(token, host))
}

func GetRssEpgShortURL(c *gin.Context) {
	key := c.Param("key")
	if key == "" {
		c.String(200, "参数错误2")
		return
	}
	host := c.Request.Host
	if !until.IsValidHost(host) {
		c.String(200, "参数错误3")
		return
	}
	token := service.GetRssToken(key)
	if token == "" {
		c.String(200, "参数错误4")
		return
	}
	path, ok := service.GetRssEpg(token)
	serveEpgFile(c, path, ok)
}

// GetRssEpg 处理获取TXT格式RSS EPG的请求
func GetRssEpg(c *gin.Context) {
	token := c.Param("token")
	if token == "" {
		c.String(200, "参数错误1")
		return
	}
	// host 现在只用来做合法性校验（它已不再参与节目单生成），但这一步必须
	// 保留：它挡掉 Host 头被塞进异常内容时的请求。
	host := c.Request.Host
	if !until.IsValidHost(host) {
		c.String(200, "参数错误3")
		return
	}

	path, ok := service.GetRssEpg(token)
	serveEpgFile(c, path, ok)
}

func GetClientScheme(c *gin.Context) string {
	// 1) X-Forwarded-Proto（可能是 "https" 或 "http"，也可能是逗号分隔的列表）
	if xf := c.Request.Header.Get("X-Forwarded-Proto"); xf != "" {
		// 取第一个值，移除空格，小写
		parts := strings.Split(xf, ",")
		if len(parts) > 0 {
			return strings.ToLower(strings.TrimSpace(parts[0]))
		}
	}
	if xf := c.Request.Header.Get("X-Forwarded-Scheme"); xf != "" {
		// 取第一个值，移除空格，小写
		parts := strings.Split(xf, ",")
		if len(parts) > 0 {
			return strings.ToLower(strings.TrimSpace(parts[0]))
		}
	}

	// 2) Forwarded: 表示形式如: Forwarded: for=192.0.2.60;proto=https;by=203.0.113.43
	if f := c.Request.Header.Get("Forwarded"); f != "" {
		// 简单查找 proto= 后面的值（更严格的解析可用正则或更完整解析）
		// 例如 "for=..., proto=https; ..." 或 ";proto=https"
		if i := strings.Index(strings.ToLower(f), "proto="); i != -1 {
			// 从 proto= 后面截取到下一个分号或逗号或结尾
			v := f[i+len("proto="):]
			end := len(v)
			for j, ch := range v {
				if ch == ';' || ch == ',' {
					end = j
					break
				}
			}
			return strings.ToLower(strings.TrimSpace(v[:end]))
		}
	}

	// 3) X-Forwarded-SSL: on 表示 https（一些旧代理会设置）
	if xfs := strings.ToLower(c.Request.Header.Get("X-Forwarded-SSL")); xfs == "on" {
		return "https"
	}

	// 4) 回退：检查当前连接是否使用 TLS（适用于没有代理或直连）
	if c.Request.TLS != nil {
		return "https"
	}
	return "http"
}
