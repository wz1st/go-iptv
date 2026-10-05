package until

import (
	"fmt"
	"os"
	"path/filepath"
	"regexp"
	"strings"
)

// 客户端编译基底的在线检查与升级。结构与 mytvOnline.go 同构，
// 但资产名与标签前缀是**独立序列**（client-vX.Y.Z / Client.apk / Version_client）。
//
// 刻意不复用 mytv 那套：两者的资产名、标签前缀、版本号语义全不同，
// 抽成一个"带参数的公共实现"后，调用点要多传四个参数才能区分，
// 而其中任何一个传错都是**静默选错 release**（表现为"在线升级装了个别的客户端"）。
// 各自一份、逐字对照，比省下的那点重复更安全。

const (
	clientTagPrefix    = "client-v"
	clientReleaseAsset = "Client.apk"
	clientVerAsset     = "Version_client"
)

// clientTagRe 只匹配客户端基底发布标签；api 的 vX.Y.Z、引擎的 engine-vX.Y.Z、
// mytv 的 mytv-vX.Y.Z 都不会命中。
var clientTagRe = regexp.MustCompile(`^client-v\d+\.\d+\.\d+$`)

// isClientBaseRelease 判断一个 release 是不是客户端基底发布：标签形状 + 资产构成。
// 两个契约资产必须同时在场，否则脏发布会被选中，一路拖到下载阶段才报"缺少资产"。
func isClientBaseRelease(r *githubRelease) bool {
	return clientTagRe.MatchString(r.TagName) &&
		hasAsset(r, clientReleaseAsset) && hasAsset(r, clientVerAsset)
}

// ClientBaseRelease 是一份远端客户端基底发布的摘要。
type ClientBaseRelease struct {
	Tag     string // client-v1.0.0
	Version string // 1.0.0（去掉前缀）
	ApkURL  string
	VerURL  string
	Route   string // 实际走的链路（直连 / gh-proxy.org）
}

// LatestClientBaseRelease 取远端最新一版客户端基底发布（正式版，跳过 prerelease）。
func LatestClientBaseRelease() (*ClientBaseRelease, error) {
	rel, err := fetchLatestStableRelease(isClientBaseRelease)
	if err != nil {
		return nil, err
	}
	urls := assetURLs(rel)
	if urls[clientReleaseAsset] == "" || urls[clientVerAsset] == "" {
		return nil, fmt.Errorf("发布 %s 缺少资产 %s / %s",
			rel.TagName, clientReleaseAsset, clientVerAsset)
	}
	return &ClientBaseRelease{
		Tag:     rel.TagName,
		Version: strings.TrimPrefix(rel.TagName, clientTagPrefix),
		ApkURL:  urls[clientReleaseAsset],
		VerURL:  urls[clientVerAsset],
		Route:   LastGhRoute(),
	}, nil
}

// DownloadClientBase 把远端基底下到临时目录，返回 (APK 路径, 临时目录, 错误)。
// Version_client 必须与标签一致 —— 不一致说明发布做坏了，
// 宁可当场失败，也别把"版本号和内容对不上"的基底装进持久卷。
func DownloadClientBase(rel *ClientBaseRelease) (string, string, error) {
	dir, err := os.MkdirTemp("", "client-base-")
	if err != nil {
		return "", "", err
	}
	apk := filepath.Join(dir, clientReleaseAsset)
	ver := filepath.Join(dir, clientVerAsset)

	if _, err := ghDownload(rel.ApkURL, apk, 0644); err != nil {
		os.RemoveAll(dir)
		return "", "", fmt.Errorf("下载客户端基底失败: %v", err)
	}
	if _, err := ghDownload(rel.VerURL, ver, 0644); err != nil {
		os.RemoveAll(dir)
		return "", "", fmt.Errorf("下载版本号文件失败: %v", err)
	}
	rel.Route = LastGhRoute()

	if remote := strings.TrimSpace(ReadFile(ver)); remote != rel.Version {
		os.RemoveAll(dir)
		return "", "", fmt.Errorf("发布内容不一致：标签是 %s，Version_client 里写的是 %s",
			rel.Tag, remote)
	}
	return apk, dir, nil
}
