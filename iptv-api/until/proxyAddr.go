package until

import (
	"encoding/json"
	"strings"

	"iptv-api/dao"
	"iptv-api/models"
)

// 中转服务：容器内的固定地址 + 对外中转地址的拼法
const (
	// ProxyBase 中转服务在容器内的地址（只绑回环）。
	ProxyBase = "http://127.0.0.1:8080"
	// ProxyStatusPath 中转服务的状态端点，返回体恰好是 "ok"。
	ProxyStatusPath = "/status"
	// ProxyPathPrefix 对外路径前缀，由 nginx 转给中转服务。
	ProxyPathPrefix = "/p/"
)

// ProxyStatusURL 管理端「可用性检测」用的地址。
func ProxyStatusURL() string { return ProxyBase + ProxyStatusPath }

// ProxyURL 拼一条频道的中转地址：`{base}/p/{密文}`。
func ProxyURL(base, encrypted string) string {
	return strings.TrimRight(base, "/") + ProxyPathPrefix + encrypted
}

// IsProxyPath 判断一个地址是否**已经是本站的中转地址**（裸路径形态 `/p/…`）。
func IsProxyPath(u string) bool {
	return strings.HasPrefix(u, ProxyPathPrefix)
}

// ProxyURLFromPath 把一条**裸路径**中转地址（形如 `/p/<密文>`）补成绝对地址。
func ProxyURLFromPath(u, base string) string {
	if u == "" || base == "" || !strings.HasPrefix(u, "/") {
		return u
	}
	return strings.TrimRight(base, "/") + u
}

// NormalizeProxyPaths 就地把一批频道里的裸路径地址补成绝对地址。
func NormalizeProxyPaths(list []models.IptvChannelShow, base string) {
	if base == "" {
		return
	}
	for i := range list {
		list[i].PUrl = ProxyURLFromPath(list[i].PUrl, base)
		list[i].Url = ProxyURLFromPath(list[i].Url, base)
	}
}

// EncryptChannelURL 生成一条频道的中转密文。
func EncryptChannelURL(caId int64, rawURL string) (string, error) {
	payload, err := json.Marshal(struct {
		C int64  `json:"c"`
		U string `json:"u"`
	}{caId, rawURL})
	if err != nil {
		return "", err
	}
	return UrlEncrypt(dao.Lic.ID, string(payload))
}
