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

	"github.com/gin-gonic/gin"
	"time"
)

// 清和壳（独立客户端基底）的管理：手动上传、在线检查、在线升级、编译、发布。
//
// 与 骆驼壳（adminClientBaseService.go + adminClientService.go）刻意各自一份、
// 逐字对照 —— 两者资产名 / 标签前缀 / 版本文件 / 产品名全不同，抽成"带 shell 参数的
// 公共实现"后调用方要多传参数，参数传错就是**静默选错基底**（表现为"在线升级装了
// 别的壳"）。各自一份比省下的重复更安全。
//
// **编译接口共用**：两套壳都调 until.BuildClientApk（解包→改三个 string 资源→重编→
// 签名），只换基底文件与注入值。这就是"仅 apk 的接口共用"的含义。

// QingheApkInfo 汇总清和壳「线上包」「待发布包」与基底信息，供取数与轮询共用。
func QingheApkInfo() map[string]interface{} {
	cfg := dao.GetConfig()
	base := until.GetClientQhBaseVersion()
	pubBase := until.ClientPublishedQhBase()

	official := until.ClientQhApkPath(false)
	staged := until.ClientQhApkPath(true)

	curVersion := until.FormatClientVersion(pubBase, cfg.BuildQh.Version)
	newVersion := ""
	if cfg.BuildQh.NewVersion != "" {
		newVersion = until.FormatClientVersion(base, cfg.BuildQh.NewVersion)
	}

	return map[string]interface{}{
		"status": bootstrapStatus(),
		// ---- 基底 ----
		"baseVersion": base,
		"basePkg":     until.ClientQhFactoryPackage(),
		"pubBase":     pubBase,
		// ---- 线上包 ----
		"version": curVersion,
		"size":    until.GetFileSize(official),
		"md5":     until.Md5File(official),
		"url":     "/app/" + until.ClientQhName + ".apk",
		"name":    apkDownloadName(until.ClientQhName, curVersion),
		// ---- 待发布包 ----
		"newVersion": newVersion,
		"newSize":    until.GetFileSize(staged),
		"newMd5":     until.Md5File(staged),
		"newExists":  until.Exists(staged),
		"newName":    apkDownloadName(until.ClientQhName, newVersion),
		"newUrl":     "/app/" + until.ClientQhName + "-new.apk",
	}
}

// UploadQingheBase 上传 / 替换清和壳的「编译基底」APK。
func UploadQingheBase(c *gin.Context) dto.ReturnJsonDto {
	if bootstrap.GetBuildStatus() == 1 {
		return dto.ReturnJsonDto{Code: 0, Msg: "正在打包中，请稍后再试", Type: "danger"}
	}

	file, err := c.FormFile("apkfile")
	if err != nil {
		return dto.ReturnJsonDto{Code: 0, Msg: "获取文件失败:" + err.Error(), Type: "danger"}
	}
	if !until.IsApkName(file.Filename) {
		return dto.ReturnJsonDto{Code: 0, Msg: "只允许上传 APK 文件", Type: "danger"}
	}

	tmp := filepath.Join(os.TempDir(), fmt.Sprintf("qinghe-base-%d.apk", time.Now().UnixNano()))
	if err := c.SaveUploadedFile(file, tmp); err != nil {
		return dto.ReturnJsonDto{Code: 0, Msg: "保存文件失败:" + err.Error(), Type: "danger"}
	}
	defer os.Remove(tmp)

	return installQingheBase(tmp)
}

// installQingheBase 把一份已落盘的清和壳基包装上：校验包名 → 落 /config/client。
// 落的是持久卷，不碰镜像里的 /app/client（那是镜像层，重拉镜像就还原）。
func installQingheBase(tmp string) dto.ReturnJsonDto {
	factoryPkg := until.ClientQhFactoryPackage()
	if factoryPkg == "" {
		return dto.ReturnJsonDto{
			Code: 0, Type: "danger",
			Msg: "无法读取镜像内清和壳基包包名（缺少 aapt 工具或基包损坏），请更新镜像",
		}
	}

	info, err := until.ProbeApk(tmp)
	if err != nil {
		return dto.ReturnJsonDto{Code: 0, Msg: "解析 APK 失败:" + err.Error(), Type: "danger"}
	}
	// 只接受指定包名：包名进了登录密钥派生公式（until/aesUntil.go 的 FixedPackage），
	// 换一个包名编出来的包登录时不会报错，只会解出一堆乱码。
	if info.Package != factoryPkg {
		return dto.ReturnJsonDto{Code: 0, Type: "danger",
			Msg: fmt.Sprintf("APK 包名不匹配：需要 %s，实际是 %s", factoryPkg, info.Package)}
	}

	// 基底版本号以这份包自己的 versionName 为准（口径与 骆驼壳 一致）。
	oldBase := until.GetClientQhBaseVersion()
	base := until.BaseVersionFromRelease(info.VersionName)
	if base == "" {
		return dto.ReturnJsonDto{Code: 0, Type: "danger",
			Msg: "这个包的 versionName（" + info.VersionName +
				"）不是形如 1.1.1 的三段式，无法作为基底版本；" +
				"请在 CI 里用 -PAPP_VERSION 指定三段基底版本号后重发清和壳基底"}
	}

	baseChanged := base != oldBase

	if err := os.MkdirAll(until.ClientUserDir, 0755); err != nil {
		return dto.ReturnJsonDto{Code: 0, Msg: "创建目录失败:" + err.Error(), Type: "danger"}
	}
	if err := until.CopyFileAtomic(tmp, until.ClientUserDir+"/Client_qh.apk", 0644); err != nil {
		return dto.ReturnJsonDto{Code: 0, Msg: "保存基包失败:" + err.Error(), Type: "danger"}
	}
	if err := until.WriteFileAtomic(until.ClientUserDir+"/Version_client_qh", base+"\n", 0644); err != nil {
		return dto.ReturnJsonDto{Code: 0, Msg: "写入版本号失败:" + err.Error(), Type: "danger"}
	}

	// 换了基底 ⇒ 上一个待发布包是用旧基底编的，发出去会得到
	// 「新基底版本号 + 旧基底编译包」的矛盾组合，直接作废。
	if baseChanged {
		if cfg := dao.GetConfig(); cfg.BuildQh.NewVersion != "" {
			os.Remove(until.ClientQhApkPath(true))
			cfg.BuildQh.NewVersion = ""
			dao.SetConfig(cfg)
		}
		log.Printf("清和壳编译基底已从 %s 换成 %s", oldBase, base)
	}

	return dto.ReturnJsonDto{Code: 1, Type: "success", Msg: "清和壳编译基底已更新为 " + base + "，请重新编译并发布",
		Data: map[string]interface{}{
			"baseVersion": base,
			"versionName": info.VersionName,
			"package":     info.Package,
			"changed":     baseChanged,
			"oldBase":     oldBase,
		}}
}

// CheckQingheBaseUpdate 在线检查清和壳基底的最新版本（远端 qinghe-vX.Y.Z 序列）。
func CheckQingheBaseUpdate() dto.ReturnJsonDto {
	local := until.GetClientQhBaseVersion()

	rel, err := until.LatestQingheBaseRelease()
	if until.IsNoMatchingRelease(err) {
		return dto.ReturnJsonDto{Code: 1, Type: "info", Msg: "远端还没有清和壳基底发布",
			Data: map[string]interface{}{"local": local, "route": until.LastGhRoute()}}
	}
	if err != nil {
		return dto.ReturnJsonDto{Code: 0, Type: "danger",
			Msg: "检查清和壳基底更新失败：GitHub 直连与国内加速都不通，" + err.Error()}
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

// UpgradeQingheBase 在线下载并替换清和壳编译基底（落地与校验复用上传路径）。
func UpgradeQingheBase() dto.ReturnJsonDto {
	if bootstrap.GetBuildStatus() == 1 {
		return dto.ReturnJsonDto{Code: 0, Msg: "正在打包中，请稍后再试", Type: "danger"}
	}

	local := until.GetClientQhBaseVersion()

	rel, err := until.LatestQingheBaseRelease()
	if until.IsNoMatchingRelease(err) {
		return dto.ReturnJsonDto{Code: 0, Type: "warning", Msg: "远端还没有清和壳基底发布，无法在线升级"}
	}
	if err != nil {
		return dto.ReturnJsonDto{Code: 0, Type: "danger",
			Msg: "连接 GitHub 失败：直连与国内加速都不通，" + err.Error()}
	}
	if !until.BaseNewer(rel.Version, local) {
		return dto.ReturnJsonDto{Code: 0, Type: "warning",
			Msg: fmt.Sprintf("当前基底 %s 已不低于远端 %s，无需升级", local, rel.Version)}
	}

	apk, dir, err := until.DownloadQingheBase(rel)
	if err != nil {
		return dto.ReturnJsonDto{Code: 0, Type: "danger", Msg: err.Error()}
	}
	defer os.RemoveAll(dir)

	res := installQingheBase(apk)
	if res.Code == 1 {
		if data, ok := res.Data.(map[string]interface{}); ok {
			data["tag"] = rel.Tag
			data["remote"] = rel.Version
			data["route"] = rel.Route
			data["local"] = local
		}
		res.Msg = fmt.Sprintf("清和壳基底已在线升级到 %s（经 %s），请重新编译并发布", rel.Version, rel.Route)
	}
	return res
}

// SetQingheAppInfo 编译一个新版本清和壳 —— 只产出待发布包，不动线上。
func SetQingheAppInfo(req dto.ClientAppInfoReq) dto.ReturnJsonDto {
	if bootstrap.GetBuildStatus() == 1 {
		return dto.ReturnJsonDto{Code: 0, Msg: "正在打包中，请稍后再试", Type: "danger"}
	}
	appServerUrl := req.ServerUrl
	appName := req.AppName
	appVersion := req.Version

	if appName == "" || appVersion == "" || appServerUrl == "" {
		return dto.ReturnJsonDto{Code: 0, Msg: "参数错误", Type: "danger"}
	}

	cfg := dao.GetConfig()
	// 换基底后编译号归零，裸编译号会与旧基底撞号，必须按「基底.编译号」完整串比对。
	curFull := until.FormatClientVersion(until.ClientPublishedQhBase(), cfg.BuildQh.Version)
	newFull := until.FormatClientVersion(until.GetClientQhBaseVersion(), appVersion)
	if curFull != "" && curFull == newFull {
		return dto.ReturnJsonDto{Code: 0, Msg: "版本号不能相同", Type: "danger"}
	}

	cfg.BuildQh.Name = until.ClientQhName
	cfg.BuildQh.NewVersion = appVersion

	if cfg.ServerUrl != appServerUrl {
		cfg.ServerUrl = appServerUrl
	}

	if req.UpSet {
		cfg.App.Update.Set = 1
	} else {
		cfg.App.Update.Set = 0
	}
	dao.SetConfig(cfg)

	go bootstrap.BuildQingheAPK(true) // 出待发布包，线上文件不动
	return dto.ReturnJsonDto{Code: 1, Msg: "清和壳 APK编译中...", Type: "success"}
}

// GetQingheBuildStatus 返回清和壳编译进度，并把两张卡片要的数据一次给全。
func GetQingheBuildStatus() dto.ReturnJsonDto {
	if bootstrap.GetBuildStatus() == 1 {
		return dto.ReturnJsonDto{Code: 0, Msg: "APK编译中...", Type: "info", Data: QingheApkInfo()}
	}
	return dto.ReturnJsonDto{Code: 1, Msg: "APK编译完成", Type: "success", Data: QingheApkInfo()}
}

// PublishQingheAPK 把清和壳「待发布」的包提升成线上版本。
func PublishQingheAPK() dto.ReturnJsonDto {
	if bootstrap.GetBuildStatus() == 1 {
		return dto.ReturnJsonDto{Code: 0, Msg: "正在打包中，请稍后再试", Type: "danger"}
	}

	cfg := dao.GetConfig()
	if cfg.BuildQh.NewVersion == "" {
		return dto.ReturnJsonDto{Code: 0, Msg: "没有待发布的版本，请先编译", Type: "danger"}
	}

	staged := until.ClientQhApkPath(true)
	if !until.Exists(staged) {
		return dto.ReturnJsonDto{Code: 0, Msg: "待发布的安装包不存在，请重新编译", Type: "danger"}
	}

	official := until.ClientQhApkPath(false)
	if err := os.Rename(staged, official); err != nil {
		return dto.ReturnJsonDto{Code: 0, Msg: "发布失败:" + err.Error(), Type: "danger"}
	}

	// 先把「这版用的是哪版基底」记下来，再推进版本号：顺序反了而中间失败，
	// 就会出现「版本号说 1.0.0.001、记录还写 1.0.0」的自相矛盾状态。
	pubBase := until.GetClientQhBaseVersion()
	if err := until.SetClientPublishedQhBase(pubBase); err != nil {
		log.Println("⚠️ 记录线上清和壳基底版本失败:", err)
	}

	published := cfg.BuildQh.NewVersion
	cfg.BuildQh.Version = published
	cfg.BuildQh.NewVersion = ""
	dao.SetConfig(cfg)

	return dto.ReturnJsonDto{Code: 1, Msg: "发布成功", Type: "success", Data: map[string]interface{}{
		"version": until.FormatClientVersion(pubBase, published),
		"size":    until.GetFileSize(official),
		"md5":     until.Md5File(official),
	}}
}
