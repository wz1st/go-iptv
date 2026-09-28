package until

import (
	"fmt"
	"os"
	"path/filepath"
	"regexp"
	"strings"
)

// mytv 编译基底的在线检查与升级：远端是同仓的 mytv-vX.Y.Z 独立序列（与 api 的 vX.Y.Z、
// 引擎的 engine-vX.Y.Z 用标签前缀区分）；资产名 MyTV.apk + Version_mytv 是与 CI 逐字一致的契约。

const (
	mytvTagPrefix    = "mytv-v"
	mytvBaseAsset    = "MyTV.apk"
	mytvVersionAsset = "Version_mytv"
)

// mytvTagRe 只匹配基底发布标签；api 的 vX.Y.Z 与引擎的 engine-vX.Y.Z 都不会命中。
var mytvTagRe = regexp.MustCompile(`^mytv-v\d+\.\d+\.\d+$`)

// isMytvBaseRelease 判断一个 release 是不是基底发布：标签形状 + 资产构成。
// 与 api / 引擎同理 —— 光看标签认不准身份，两个契约资产必须同时在场，
// 否则脏发布会被选中，一路拖到下载阶段才报"缺少资产"。
func isMytvBaseRelease(r *githubRelease) bool {
	return mytvTagRe.MatchString(r.TagName) &&
		hasAsset(r, mytvBaseAsset) && hasAsset(r, mytvVersionAsset)
}

// MytvBaseRelease 是一份远端基底发布的摘要。
type MytvBaseRelease struct {
	Tag     string // mytv-v1.2.3
	Version string // 1.2.3（去掉前缀）
	ApkURL  string
	VerURL  string
	Route   string // 实际走的链路（直连 / gh-proxy.org）
}

// mytvVersionFromTag 把 mytv-v1.2.3 裁成基底版本 1.2.3。
func mytvVersionFromTag(tag string) string {
	return strings.TrimPrefix(tag, mytvTagPrefix)
}

// LatestMytvBaseRelease 取远端最新一版基底发布（正式版，跳过 prerelease；
// 标签像基底但少了契约资产的一律跳过，见 isMytvBaseRelease）。
func LatestMytvBaseRelease() (*MytvBaseRelease, error) {
	rel, err := fetchLatestStableRelease(isMytvBaseRelease)
	if err != nil {
		return nil, err
	}
	urls := assetURLs(rel)
	// 挑选阶段已保证两个资产在场，这里是最后一道：URL 映射是另一条路径，值得单独确认。
	if urls[mytvBaseAsset] == "" || urls[mytvVersionAsset] == "" {
		return nil, fmt.Errorf("发布 %s 缺少资产 %s / %s",
			rel.TagName, mytvBaseAsset, mytvVersionAsset)
	}
	return &MytvBaseRelease{
		Tag:     rel.TagName,
		Version: mytvVersionFromTag(rel.TagName),
		ApkURL:  urls[mytvBaseAsset],
		VerURL:  urls[mytvVersionAsset],
		Route:   LastGhRoute(),
	}, nil
}

// BaseNewer 判断远端基底是否比本地新：三段数字逐段比，只认"更大"。
// 与 isNewer 不同，基底换版本没有"必须换镜像"的说法（它就是用来换编译基底的）。
func BaseNewer(remote, local string) bool {
	if remote == "" || remote == local {
		return false
	}
	if local == "" {
		return true
	}
	rp, lp := versionParts(remote), versionParts(local)
	for i := 0; i < 3; i++ {
		if rp[i] != lp[i] {
			return rp[i] > lp[i]
		}
	}
	return false
}

// DownloadMytvBase 把远端基底下到临时目录，返回 (APK 路径, 临时目录, 错误)。
// 两个资产都要，且 Version_mytv 必须与标签一致 —— 不一致说明发布做坏了，
// 宁可当场失败，也别把一份"版本号和内容对不上"的基底装进持久卷。
func DownloadMytvBase(rel *MytvBaseRelease) (string, string, error) {
	dir, err := os.MkdirTemp("", "mytv-base-")
	if err != nil {
		return "", "", err
	}
	apk := filepath.Join(dir, mytvBaseAsset)
	ver := filepath.Join(dir, mytvVersionAsset)

	if _, err := ghDownload(rel.ApkURL, apk, 0644); err != nil {
		os.RemoveAll(dir)
		return "", "", fmt.Errorf("下载基底 APK 失败: %v", err)
	}
	if _, err := ghDownload(rel.VerURL, ver, 0644); err != nil {
		os.RemoveAll(dir)
		return "", "", fmt.Errorf("下载版本号文件失败: %v", err)
	}
	rel.Route = LastGhRoute()

	if remote := strings.TrimSpace(ReadFile(ver)); remote != rel.Version {
		os.RemoveAll(dir)
		return "", "", fmt.Errorf("发布内容不一致：标签是 %s，Version_mytv 里写的是 %s", rel.Tag, remote)
	}
	return apk, dir, nil
}
