package service

import (
	"fmt"
	"iptv-api/bootstrap"
	"iptv-api/dao"
	"iptv-api/dto"
	"iptv-api/until"
	"log"
	"os"
	"path/filepath"
	"time"

	"github.com/gin-gonic/gin"
)

// 客户端编译基底的管理：手动上传、在线检查、在线升级。
//
// 与 mytv 的三点差异（都是刻意的）：
//  1. 全在 api 侧，不再经引擎 WS —— 客户端没有"引擎"这个依赖。
//  2. 只校验**包名**，不校验 versionName 的形状 —— 客户端的基底版本号
//     由发布者自己定（client-vX.Y.Z），不像 mytv 要从四段 versionName 里反推。
//  3. logo / 启动背景**打进包里**（编译期改 drawable），而 mytv 没有这两样。

// bootstrapStatus 是编译状态的读取口，单独一个函数是为了让本文件不必
// 在每个判断处都写一长串 bootstrap.GetBuildStatus()。
func bootstrapStatus() int64 { return bootstrap.GetBuildStatus() }

// ClientApkInfo 汇总「线上包」「待发布包」与基底信息，供取数与轮询共用。
func ClientApkInfo() map[string]interface{} {
	cfg := dao.GetConfig()
	base := until.GetClientBaseVersion()
	pubBase := until.ClientPublishedBase()

	official := until.ClientApkPath(cfg.Build.Name, false)
	staged := until.ClientApkPath(cfg.Build.Name, true)

	curVersion := until.FormatClientVersion(pubBase, cfg.Build.Version)
	newVersion := ""
	if cfg.Build.NewVersion != "" {
		newVersion = until.FormatClientVersion(base, cfg.Build.NewVersion)
	}

	return map[string]interface{}{
		"status": bootstrapStatus(),
		// ---- 基底 ----
		"baseVersion": base,
		"basePkg":     until.ClientFactoryPackage(),
		"pubBase":     pubBase,
		// ---- 线上包 ----
		"version": curVersion,
		"size":    until.GetFileSize(official),
		"md5":     until.Md5File(official),
		"url":     "/app/" + cfg.Build.Name + ".apk",
		"name":    apkDownloadName(cfg.Build.Name, curVersion),
		// ---- 待发布包 ----
		"newVersion": newVersion,
		"newSize":    until.GetFileSize(staged),
		"newMd5":     until.Md5File(staged),
		"newExists":  until.Exists(staged),
		"newName":    apkDownloadName(cfg.Build.Name, newVersion),
		"newUrl":     "/app/" + cfg.Build.Name + "-new.apk",
	}
}

// apkDownloadName 是浏览器存盘用的文件名，与真实文件路径**刻意不同**。
func apkDownloadName(name, version string) string {
	if version == "" {
		return name + ".apk"
	}
	return name + "-" + version + ".apk"
}

// UploadClientBase 上传 / 替换客户端的「编译基底」APK。
func UploadClientBase(c *gin.Context) dto.ReturnJsonDto {
	if bootstrapStatus() == 1 {
		return dto.ReturnJsonDto{Code: 0, Msg: "正在打包中，请稍后再试", Type: "danger"}
	}

	file, err := c.FormFile("apkfile")
	if err != nil {
		return dto.ReturnJsonDto{Code: 0, Msg: "获取文件失败:" + err.Error(), Type: "danger"}
	}
	if !until.IsApkName(file.Filename) {
		return dto.ReturnJsonDto{Code: 0, Msg: "只允许上传 APK 文件", Type: "danger"}
	}

	tmp := filepath.Join(os.TempDir(), fmt.Sprintf("client-base-%d.apk", time.Now().UnixNano()))
	if err := c.SaveUploadedFile(file, tmp); err != nil {
		return dto.ReturnJsonDto{Code: 0, Msg: "保存文件失败:" + err.Error(), Type: "danger"}
	}
	defer os.Remove(tmp)

	return installClientBase(tmp)
}

// installClientBase 把一份已落盘的基包装上：校验包名 → 落 /config/client。
// 落的是**持久卷**，不碰镜像里的 /app/client（那是镜像层，重拉镜像就还原）。
func installClientBase(tmp string) dto.ReturnJsonDto {
	factoryPkg := until.ClientFactoryPackage()
	if factoryPkg == "" {
		return dto.ReturnJsonDto{
			Code: 0, Type: "danger",
			Msg: "无法读取镜像内基包包名（缺少 aapt 工具或基包损坏），请更新镜像",
		}
	}

	info, err := until.ProbeApk(tmp)
	if err != nil {
		return dto.ReturnJsonDto{Code: 0, Msg: "解析 APK 失败:" + err.Error(), Type: "danger"}
	}
	// **只接受指定包名**：包名进了登录密钥派生公式（until/aesUntil.go 的 FixedPackage），
	// 换一个包名编出来的包登录时不会报错，只会解出一堆乱码 ——
	// 那种错在用户那边表现为"提示网络错误"，极难定位，所以在这道门就拦住。
	if info.Package != factoryPkg {
		return dto.ReturnJsonDto{Code: 0, Type: "danger",
			Msg: fmt.Sprintf("APK 包名不匹配：需要 %s，实际是 %s", factoryPkg, info.Package)}
	}

	// 基底版本号**以这份包自己的 versionName 为准**，不是沿用磁盘上的旧值。
	//
	// 事故（2026-10-08）：原来写成"先取磁盘旧值，只有为空才读包"，于是磁盘上有
	// 1.1.0 时，在线升级装上 1.1.1 的包、Version_client 却仍写 1.1.0 ——
	// 提示"已升级到 1.1.1"而面板显示 1.1.0，且**每次编译的版本号都还挂在旧基底上**。
	// 升级 msg 用的是 release 标签（真值），磁盘存的是旧值，两者对不上，
	// 表现为"报假版本"。换基底本就是为了换版本前缀，这个前缀只能由新包决定。
	//
	// oldBase 只用于判断"基底是否真的变了"（据此作废旧基底编出的待发布包）与写日志，
	// **不能**参与 base 的取值。
	//
	// 读取时仍要归一：存量磁盘上躺过被污染的基底（线上见过 6 段 `1.1.0.1.1.0`），
	// 且发布者可能把四段（1.1.1.001）写进 versionName。归一取前三段。
	oldBase := until.GetClientBaseVersion()
	base := until.BaseVersionFromRelease(info.VersionName)
	if base == "" {
		return dto.ReturnJsonDto{Code: 0, Type: "danger",
			Msg: "这个包的 versionName（" + info.VersionName +
				"）不是形如 1.1.1 的三段式，无法作为基底版本；" +
				"请在 CI 里用 -PAPP_VERSION 指定三段基底版本号后重发 client 基底"}
	}

	baseChanged := base != oldBase

	if err := os.MkdirAll(until.ClientUserDir, 0755); err != nil {
		return dto.ReturnJsonDto{Code: 0, Msg: "创建目录失败:" + err.Error(), Type: "danger"}
	}
	if err := until.CopyFileAtomic(tmp, until.ClientUserDir+"/Client.apk", 0644); err != nil {
		return dto.ReturnJsonDto{Code: 0, Msg: "保存基包失败:" + err.Error(), Type: "danger"}
	}
	if err := until.WriteFileAtomic(until.ClientUserDir+"/Version_client", base+"\n", 0644); err != nil {
		return dto.ReturnJsonDto{Code: 0, Msg: "写入版本号失败:" + err.Error(), Type: "danger"}
	}

	// 换了基底 ⇒ 上一个待发布包是用旧基底编的，发出去会得到
	// 「新基底版本号 + 旧基底编译包」的矛盾组合，直接作废。
	if baseChanged {
		if cfg := dao.GetConfig(); cfg.Build.NewVersion != "" {
			os.Remove(until.ClientApkPath(cfg.Build.Name, true))
			cfg.Build.NewVersion = ""
			dao.SetConfig(cfg)
		}
		log.Printf("客户端编译基底已从 %s 换成 %s", oldBase, base)
	}

	return dto.ReturnJsonDto{Code: 1, Type: "success", Msg: "编译基底已更新为 " + base + "，请重新编译并发布",
		Data: map[string]interface{}{
			"baseVersion": base,
			"versionName": info.VersionName,
			"package":     info.Package,
			"changed":     baseChanged,
			"oldBase":     oldBase,
		}}
}

// CheckClientBaseUpdate 在线检查客户端基底的最新版本（远端 client-vX.Y.Z 序列）。
func CheckClientBaseUpdate() dto.ReturnJsonDto {
	local := until.GetClientBaseVersion()

	rel, err := until.LatestClientBaseRelease()
	if until.IsNoMatchingRelease(err) {
		// 仓库里还没有基底发布：对当前安装来说就是"没有更新"，不是错误。
		return dto.ReturnJsonDto{Code: 1, Type: "info", Msg: "远端还没有客户端基底发布",
			Data: map[string]interface{}{"local": local, "route": until.LastGhRoute()}}
	}
	if err != nil {
		return dto.ReturnJsonDto{Code: 0, Type: "danger",
			Msg: "检查基底更新失败：GitHub 直连与国内加速都不通，" + err.Error()}
	}

	has := until.BaseNewer(rel.Version, local)
	out := map[string]interface{}{
		"local": local, "remote": rel.Version, "tag": rel.Tag, "hasUpdate": has, "route": rel.Route,
	}
	if has {
		return dto.ReturnJsonDto{Code: 1, Type: "success", Data: out,
			Msg: fmt.Sprintf("发现新基底 %s（当前 %s），可在线升级", rel.Version, local)}
	}
	return dto.ReturnJsonDto{Code: 1, Type: "info", Data: out,
		Msg: fmt.Sprintf("当前已是最新基底版本 %s", local)}
}

// UpgradeClientBase 在线下载并替换客户端编译基底。
// 落地与校验完全复用上传那条路径（installClientBase）—— 两处各写一遍，
// 迟早只改一边。
func UpgradeClientBase() dto.ReturnJsonDto {
	if bootstrapStatus() == 1 {
		return dto.ReturnJsonDto{Code: 0, Msg: "正在打包中，请稍后再试", Type: "danger"}
	}

	local := until.GetClientBaseVersion()

	rel, err := until.LatestClientBaseRelease()
	if until.IsNoMatchingRelease(err) {
		return dto.ReturnJsonDto{Code: 0, Type: "warning", Msg: "远端还没有客户端基底发布，无法在线升级"}
	}
	if err != nil {
		return dto.ReturnJsonDto{Code: 0, Type: "danger",
			Msg: "连接 GitHub 失败：直连与国内加速都不通，" + err.Error()}
	}
	if !until.BaseNewer(rel.Version, local) {
		return dto.ReturnJsonDto{Code: 0, Type: "warning",
			Msg: fmt.Sprintf("当前基底 %s 已不低于远端 %s，无需升级", local, rel.Version)}
	}

	apk, dir, err := until.DownloadClientBase(rel)
	if err != nil {
		return dto.ReturnJsonDto{Code: 0, Type: "danger", Msg: err.Error()}
	}
	defer os.RemoveAll(dir)

	res := installClientBase(apk)
	if res.Code == 1 {
		if data, ok := res.Data.(map[string]interface{}); ok {
			data["tag"] = rel.Tag
			data["remote"] = rel.Version
			data["route"] = rel.Route
			data["local"] = local
		}
		res.Msg = fmt.Sprintf("基底已在线升级到 %s（经 %s），请重新编译并发布", rel.Version, rel.Route)
	}
	return res
}
