package service

import (
	"encoding/json"
	"fmt"
	"iptv-api/bootstrap"
	"iptv-api/dao"
	"iptv-api/dto"
	"iptv-api/until"
	"log"
	"net/http"
	"net/url"
	"os"
	"path/filepath"
	"strconv"
	"strings"
	"time"

	"github.com/gin-gonic/gin"
)

var BuildStatus int64 = 0

// MytvApkInfo 汇总「线上包」与「待发布包」两组信息，供取数与轮询共用。
func MytvApkInfo() dto.AdminClientMyTVDto {
	cfg := dao.GetConfig()
	base := until.GetMytvVersion()
	// 线上包用的是**发布时**的基底版本，与"当前编译基底"可能不同
	// （用户换过底包但还没重新编译发布）。见 until/mytvBase.go 的说明。
	pubBase := until.MytvPublishedBase()
	name := cfg.Site.MytvNameOr()
	official := until.MytvApkPath(name, false)
	staged := until.MytvApkPath(name, true)

	newVersion := ""
	if cfg.MyTV.NewVersion != "" {
		newVersion = until.FormatMytvVersion(base, cfg.MyTV.NewVersion)
	}
	curVersion := until.FormatMytvVersion(pubBase, cfg.MyTV.Version)

	return dto.AdminClientMyTVDto{
		Title:       "MyTV客户端设置",
		BaseVersion: base,
		BasePkg:     until.MytvFactoryPackage(),
		// serverUrl 是 mytv 独立的 APK 连接地址（不与清和共用），见 configDto.MyTV。
		ServerUrl: MytvServerUrl(cfg),
		Update:    cfg.MyTV.Update,
		Status:    BuildStatus,

		Version: curVersion,
		Size:    until.GetFileSize(official),
		Md5:     until.Md5File(official),
		ApkUrl:  "/app/" + name + "-mytv.apk",
		ApkName: name + "-mytv-" + curVersion + ".apk",

		NewVersion: newVersion,
		NewSize:    until.GetFileSize(staged),
		NewMd5:     until.Md5File(staged),
		NewExists:  until.Exists(staged),
		NewApkUrl:  "/app/" + name + "-mytv-new.apk",
		NewApkName: name + "-mytv-" + newVersion + ".apk",
	}
}

// MytvServerUrl 取 mytv 独立连接地址；老配置没存过时回退清和的 cfg.ServerUrl
// （与引擎 BuildMyTVApk 里的回退一致），保证升级后不编译也能拿到可用地址。
func MytvServerUrl(cfg *dto.Config) string {
	if cfg.MyTV.ServerUrl != "" {
		return cfg.MyTV.ServerUrl
	}
	return cfg.ServerUrl
}

// SetMyTVAppInfo 编译一个新版本 —— 注意它**只产出待发布包**，不动线上任何东西。
func SetMyTVAppInfo(req dto.MyTVBuildReq) dto.ReturnJsonDto {
	if BuildStatus == 1 {
		return dto.ReturnJsonDto{Code: 0, Msg: "正在打包中，请稍后再试", Type: "danger"}
	}

	// 版本门随引擎同步下调：引擎版本回退到 v3.0.0 后，v3.2.15 会把 velvet mytv 编译卡死
	// （直到 CheckEngineVer 恒定报「该功能需要引擎最低版本为 v3.2.15」）。
	_, err := until.CheckEngineVer("v3.0.0")
	if err != nil {
		return dto.ReturnJsonDto{Code: 0, Msg: err.Error(), Type: "danger"}
	}

	var status int64 = 0
	res, err := dao.WS.SendWS(dao.Request{Action: "getMyTVBuildStatus"})
	if err != nil {
		return dto.ReturnJsonDto{Code: 0, Msg: "连接引擎失败", Type: "danger"}
	} else if res.Code != 1 {
		return dto.ReturnJsonDto{Code: 0, Msg: res.Msg, Type: "danger"}
	} else {
		if err := json.Unmarshal(res.Data, &status); err != nil {
			log.Println("⚠️ 无法解析引擎返回的状态:", err)
			return dto.ReturnJsonDto{Code: 0, Msg: "连接引擎失败", Type: "danger"}
		}
	}

	if status == 1 {
		return dto.ReturnJsonDto{Code: 0, Msg: "正在打包中，请稍后再试", Type: "danger"}
	}
	appServerUrl := req.ServerUrl
	appVersion := req.AppVersion
	upBody := req.UpBody

	if appVersion == "" || appServerUrl == "" {
		return dto.ReturnJsonDto{Code: 0, Msg: "参数错误", Type: "danger"}
	}

	appVersionInt, err := strconv.ParseInt(appVersion, 10, 64)
	if err != nil {
		return dto.ReturnJsonDto{Code: 0, Msg: "版本号为纯数字", Type: "danger"}
	}
	appVersion = strconv.FormatInt(appVersionInt, 10)

	if appVersionInt <= 0 || appVersionInt > 999 {
		return dto.ReturnJsonDto{Code: 0, Msg: "版本号范围为1-999的纯数字", Type: "danger"}
	}

	cfg := dao.GetConfig()

	// 待发布号只与**已发布**版本比：与线上相同等于白编一版；
	// 与未发布的 NewVersion 相同则是合法的「重新编译」，直接覆盖。
	// 换基底后编译号归零，裸编译号会与旧基底撞号，必须按「基底.编译号」完整串比对。
	curFull := until.FormatMytvVersion(until.MytvPublishedBase(), cfg.MyTV.Version)
	newFull := until.FormatMytvVersion(until.GetMytvVersion(), appVersion)
	if curFull != "" && curFull == newFull {
		return dto.ReturnJsonDto{Code: 0, Msg: "版本号不能相同", Type: "danger"}
	}

	cfg.MyTV.NewVersion = appVersion
	cfg.MyTV.ServerUrl = appServerUrl
	cfg.MyTV.Update = upBody
	// 立即落库：编译要跑几分钟，中途刷新页面时前端要能从 data 里恢复
	// 「有一个待发布版本正在编」的状态（NewVersion + buildStatus）。
	dao.SetConfig(cfg)

	res, err = dao.WS.SendWS(dao.Request{Action: "buildMyTV", Data: cfg})
	if err != nil {
		return dto.ReturnJsonDto{Code: 0, Msg: "连接引擎失败", Type: "danger"}
	}
	if res.Code == 1 {
		BuildStatus = 1
		go waitMyTVBuildReady()
		return dto.ReturnJsonDto{Code: 1, Msg: "APK编译中...", Type: "success"}
	}
	return dto.ReturnJsonDto{Code: 0, Msg: "APK编译出错，请查看引擎日志", Type: "danger"}
}

// waitMyTVBuildReady 轮询引擎直到编译结束，把 api 侧的 BuildStatus 镜像归 0。
func waitMyTVBuildReady() {
	ticker := time.NewTicker(1 * time.Second)
	defer ticker.Stop()

	for range ticker.C {
		if pollMyTVBuildStatus() {
			log.Println("MyTV 编译完成")
			return
		}
	}
}

func pollMyTVBuildStatus() bool {
	res, err := dao.WS.SendWS(dao.Request{Action: "getMyTVBuildStatus"})
	if err != nil {
		return false
	} else if res.Code != 1 {
		return false
	} else {
		if err := json.Unmarshal(res.Data, &BuildStatus); err != nil {
			log.Println("⚠️ 无法解析引擎返回的状态:", err)
			return false
		}
	}
	return BuildStatus == 0
}

// GetMyTVBuildStatus 返回编译进度，并把两张卡片要的数据一次给全。
// Data 与 clientMyTV/data 同一形状（MytvApkInfo），前端一个 apply 函数复用。
func GetMyTVBuildStatus() dto.ReturnJsonDto {
	data := MytvApkInfo()

	if BuildStatus == 1 {
		return dto.ReturnJsonDto{Code: 0, Msg: "APK编译中...", Type: "info", Data: data}
	}
	return dto.ReturnJsonDto{Code: 1, Msg: "APK编译完成", Type: "success", Data: data}
}

// PublishMytvAPK 把「待发布」的包提升成线上版本 —— 与清和 PublishAPK 同一语义。
func PublishMytvAPK() dto.ReturnJsonDto {
	if BuildStatus == 1 {
		return dto.ReturnJsonDto{Code: 0, Msg: "正在打包中，请稍后再试", Type: "danger"}
	}

	cfg := dao.GetConfig()
	if cfg.MyTV.NewVersion == "" {
		return dto.ReturnJsonDto{Code: 0, Msg: "没有待发布的版本，请先编译", Type: "danger"}
	}

	name := cfg.Site.MytvNameOr()
	staged := until.MytvApkPath(name, true)
	if !until.Exists(staged) {
		return dto.ReturnJsonDto{Code: 0, Msg: "待发布的安装包不存在，请重新编译", Type: "danger"}
	}

	official := until.MytvApkPath(name, false)
	if err := os.Rename(staged, official); err != nil {
		return dto.ReturnJsonDto{Code: 0, Msg: "发布失败:" + err.Error(), Type: "danger"}
	}

	// 先把"这版用的是哪版基底"记下来，再推进版本号：顺序反了而中间失败，
	// 就会出现"版本号说 1.2.3.x、记录还写 1.2.2"的自相矛盾状态。
	pubBase := until.GetMytvVersion()
	if err := until.SetMytvPublishedBase(pubBase); err != nil {
		log.Println("⚠️ 记录线上基底版本失败:", err)
	}

	published := cfg.MyTV.NewVersion
	cfg.MyTV.Version = published
	cfg.MyTV.NewVersion = ""
	dao.SetConfig(cfg)

	return dto.ReturnJsonDto{Code: 1, Msg: "发布成功", Type: "success", Data: map[string]interface{}{
		"version": until.FormatMytvVersion(pubBase, published),
		"size":    until.GetFileSize(official),
		"md5":     until.Md5File(official),
	}}
}

// UploadMytvBaseApk 上传/替换 mytv 的「编译基底」APK。
func UploadMytvBaseApk(c *gin.Context) dto.ReturnJsonDto {
	if BuildStatus == 1 {
		return dto.ReturnJsonDto{Code: 0, Msg: "正在打包中，请稍后再试", Type: "danger"}
	}

	file, err := c.FormFile("apkfile")
	if err != nil {
		return dto.ReturnJsonDto{Code: 0, Msg: "获取文件失败:" + err.Error(), Type: "danger"}
	}
	if !until.IsMytvApkName(file.Filename) {
		return dto.ReturnJsonDto{Code: 0, Msg: "只允许上传 APK 文件", Type: "danger"}
	}

	tmp := filepath.Join(os.TempDir(), fmt.Sprintf("mytv-base-%d.apk", time.Now().UnixNano()))
	if err := c.SaveUploadedFile(file, tmp); err != nil {
		return dto.ReturnJsonDto{Code: 0, Msg: "保存文件失败:" + err.Error(), Type: "danger"}
	}
	defer os.Remove(tmp)

	return installMytvBase(tmp)
}

// CheckMytvBaseUpdate 在线检查编译基底的最新版本（远端 mytv-vX.Y.Z 独立序列）。
func CheckMytvBaseUpdate() dto.ReturnJsonDto {
	local := until.GetMytvVersion()

	rel, err := until.LatestMytvBaseRelease()
	if until.IsNoMatchingRelease(err) {
		// 仓库里还没有基底发布：对当前安装来说就是"没有更新"，不是错误。
		return dto.ReturnJsonDto{Code: 1, Type: "info", Msg: "远端还没有基底发布",
			Data: dto.MytvBaseCheckDto{Local: local, Route: until.LastGhRoute()}}
	}
	if err != nil {
		return dto.ReturnJsonDto{Code: 0, Type: "danger",
			Msg: "检查基底更新失败：GitHub 直连与国内加速都不通，" + err.Error()}
	}

	has := until.BaseNewer(rel.Version, local)
	out := dto.MytvBaseCheckDto{
		Local: local, Remote: rel.Version, Tag: rel.Tag, HasUpdate: has, Route: rel.Route,
	}
	if has {
		return dto.ReturnJsonDto{Code: 1, Type: "success", Data: out,
			Msg: fmt.Sprintf("发现新基底 %s（当前 %s），可在线升级", rel.Version, local)}
	}
	return dto.ReturnJsonDto{Code: 1, Type: "info", Data: out,
		Msg: fmt.Sprintf("当前已是最新基底版本 %s", local)}
}

// UpgradeMytvBase 在线下载并替换编译基底。落地与校验完全复用上传那条路径
// （installMytvBase）—— 两处各写一遍，迟早只改一边。
func UpgradeMytvBase() dto.ReturnJsonDto {
	if BuildStatus == 1 {
		return dto.ReturnJsonDto{Code: 0, Msg: "正在打包中，请稍后再试", Type: "danger"}
	}

	local := until.GetMytvVersion()

	rel, err := until.LatestMytvBaseRelease()
	if until.IsNoMatchingRelease(err) {
		return dto.ReturnJsonDto{Code: 0, Type: "warning", Msg: "远端还没有基底发布，无法在线升级"}
	}
	if err != nil {
		return dto.ReturnJsonDto{Code: 0, Type: "danger",
			Msg: "连接 GitHub 失败：直连与国内加速都不通，" + err.Error()}
	}
	if !until.BaseNewer(rel.Version, local) {
		return dto.ReturnJsonDto{Code: 0, Type: "warning",
			Msg: fmt.Sprintf("当前基底 %s 已不低于远端 %s，无需升级", local, rel.Version)}
	}

	apk, dir, err := until.DownloadMytvBase(rel)
	if err != nil {
		return dto.ReturnJsonDto{Code: 0, Type: "danger", Msg: err.Error()}
	}
	defer os.RemoveAll(dir)

	res := installMytvBase(apk)
	if res.Code == 1 {
		if data, ok := res.Data.(map[string]interface{}); ok {
			data["tag"] = rel.Tag
			data["remote"] = rel.Version
			data["route"] = rel.Route
		}
		res.Msg = fmt.Sprintf("基底已在线升级到 %s（经 %s），请重新编译并发布", rel.Version, rel.Route)
	}
	return res
}

// installMytvBase 把一份已经落盘的底包 APK 装上：校验包名与版本号 → 落 /config/mytv。
// 落的是**持久卷**，不碰镜像里的 /app/mytv（那是镜像层，重拉镜像就还原）。
func installMytvBase(tmp string) dto.ReturnJsonDto {
	factoryPkg := until.MytvFactoryPackage()
	if factoryPkg == "" {
		return dto.ReturnJsonDto{Code: 0, Msg: "无法读取镜像内底包包名（缺少 aapt 工具或底包损坏），请更新镜像", Type: "danger"}
	}

	info, err := until.ProbeApk(tmp)
	if err != nil {
		return dto.ReturnJsonDto{Code: 0, Msg: "解析 APK 失败:" + err.Error(), Type: "danger"}
	}
	if info.Package != factoryPkg {
		return dto.ReturnJsonDto{Code: 0, Type: "danger",
			Msg: fmt.Sprintf("APK 包名不匹配：需要 %s，实际是 %s", factoryPkg, info.Package)}
	}

	base, ok := until.BaseVersionFromVersionName(info.VersionName)
	if !ok {
		return dto.ReturnJsonDto{Code: 0, Type: "danger",
			Msg: "版本号不符合要求：需要形如 1.2.2.001（末段至少三位数字），实际是 " + info.VersionName}
	}

	oldBase := until.GetMytvVersion()
	baseChanged := oldBase != "" && oldBase != base

	if err := os.MkdirAll(until.MytvUserDir, 0755); err != nil {
		return dto.ReturnJsonDto{Code: 0, Msg: "创建目录失败:" + err.Error(), Type: "danger"}
	}
	if err := until.CopyFileAtomic(tmp, until.MytvUserDir+"/MyTV.apk", 0644); err != nil {
		return dto.ReturnJsonDto{Code: 0, Msg: "保存底包失败:" + err.Error(), Type: "danger"}
	}
	if err := until.WriteFileAtomic(until.MytvUserDir+"/Version_mytv", base+"\n", 0644); err != nil {
		return dto.ReturnJsonDto{Code: 0, Msg: "写入版本号失败:" + err.Error(), Type: "danger"}
	}

	// 换了基底 ⇒ 上一个待发布包是用旧基底编的，发出去会得到
	// 「新基底版本号 + 旧基底编译包」的矛盾组合，直接作废。
	if baseChanged {
		if cfg := dao.GetConfig(); cfg.MyTV.NewVersion != "" {
			os.Remove(until.MytvApkPath(cfg.Site.MytvNameOr(), true))
			cfg.MyTV.NewVersion = ""
			dao.SetConfig(cfg)
		}
		log.Printf("mytv 编译基底已从 %s 换成 %s", oldBase, base)
	}

	return dto.ReturnJsonDto{Code: 1, Type: "success", Data: map[string]interface{}{
		"baseVersion": base,
		"versionName": info.VersionName,
		"package":     info.Package,
		"changed":     baseChanged,
		"oldBase":     oldBase,
	}, Msg: "编译基底已更新为 " + base + "，请重新编译并发布"}
}

// MytvReleases 是 mytv 客户端自升级的版本检查端点（GET /api/mytv/releases，
// base 为空时回落配置里 mytv 自己的连接地址（见 MytvServerUrl）。
func MytvReleases(base string) dto.MyTvDto {
	cfg := dao.GetConfig()
	if strings.TrimSpace(base) == "" {
		base = MytvServerUrl(cfg)
	}
	base = strings.TrimRight(strings.TrimSpace(base), "/")
	return dto.MyTvDto{
		Version:     until.FormatMytvVersion(until.MytvPublishedBase(), cfg.MyTV.Version),
		DownloadUrl: base + "/app/" + cfg.Site.MytvNameOr() + "-mytv.apk",
		UpdateMsg:   cfg.MyTV.Update,
	}
}

// TestMyTVServerURL 「测试APK地址」：探测 mytv 独立连接地址是否可达。
// 只认能连上并拿到 HTTP 响应（含 4xx/5xx）—— 与清和壳 TestServerURL 同一口径。
// 只读、不落盘：地址即时落盘走 SaveMyTVServerURL，避免每点一次测试就触发分钟级编译。
//
// mytv 的连接地址是独立的（cfg.MyTV.ServerUrl），但编译时同样只在站点根补 /apk，
// 所以探测也走 base + "/apk/getver"；shell 标记固定为 "MyTV"，方便前端回显。
func TestMyTVServerURL(req dto.ClientTestUrlReq) dto.ReturnJsonDto {
	raw := strings.TrimSpace(req.ServerUrl)
	if raw == "" {
		return dto.ReturnJsonDto{Code: 0, Msg: "请先填写连接地址", Type: "danger"}
	}
	base := bootstrap.NormalizeServerURL(raw)
	if base == "" {
		return dto.ReturnJsonDto{Code: 0, Msg: "地址不合法", Type: "danger"}
	}
	u, err := url.Parse(base)
	if err != nil || u.Host == "" {
		return dto.ReturnJsonDto{Code: 0, Msg: "地址不合法：" + raw, Type: "danger"}
	}
	if u.Scheme != "http" && u.Scheme != "https" {
		return dto.ReturnJsonDto{Code: 0, Msg: "只支持 http/https 地址", Type: "danger"}
	}

	probe := base + "/apk/getver"
	client := &http.Client{
		Timeout: 5 * time.Second,
		CheckRedirect: func(req *http.Request, via []*http.Request) error {
			if len(via) >= 3 {
				return http.ErrUseLastResponse
			}
			return nil
		},
	}
	// Go 默认会带环境里的代理，后台部署常没有可用代理，反而把"站点可达"误报成失败。
	client.Transport = &http.Transport{Proxy: nil}

	resp, err := client.Get(probe)
	if err != nil {
		// 连接失败：先判断是不是「目标地址是 IPv6 但后台探测容器没有 IPv6」造成的假阴性。
		if isIPv6ConnectFailure(base) {
			return dto.ReturnJsonDto{
				Code: 0,
				Msg:  "当前因地址为ipv6导致测试失败可能无法连接",
				Type: "ipv6",
				Data: map[string]any{
					"ipv6":     true,
					"shell":    "MyTV",
					"probeUrl": probe,
					"stored":   base,
				},
			}
		}
		return dto.ReturnJsonDto{Code: 0, Msg: "无法连接：" + err.Error(), Type: "danger"}
	}
	defer resp.Body.Close()

	code := resp.StatusCode
	msg := "连接正常"
	tip := "success"
	if code == 404 || code == 405 {
		msg = "服务可达，但路径 " + probe + " 返回 " + strconv.Itoa(code) + "；请确认地址不要带 path（编译时会自动补）"
		tip = "danger"
	} else if code >= 500 {
		msg = "服务可达，但服务端返回错误 " + strconv.Itoa(code)
		tip = "danger"
	}
	return dto.ReturnJsonDto{
		Code: 1,
		Msg:  msg,
		Type: tip,
		Data: map[string]any{
			"shell":    "MyTV",
			"probeUrl": probe,
			"status":   code,
			"stored":   base,
		},
	}
}

// SaveMyTVServerURL 只把 mytv 的「APK连接地址」落到 config.yml，不触发编译。
// 与清和壳 SaveServerURL 同构，只是落的是 cfg.MyTV.ServerUrl（mytv 独立地址）。
func SaveMyTVServerURL(req dto.ClientTestUrlReq) dto.ReturnJsonDto {
	raw := strings.TrimSpace(req.ServerUrl)
	if raw == "" {
		return dto.ReturnJsonDto{Code: 0, Msg: "请先填写连接地址", Type: "danger"}
	}
	base := bootstrap.NormalizeServerURL(raw)
	if base == "" {
		return dto.ReturnJsonDto{Code: 0, Msg: "地址不合法", Type: "danger"}
	}
	cfg := dao.GetConfig()
	if cfg.MyTV.ServerUrl == base {
		return dto.ReturnJsonDto{Code: 1, Msg: "地址未变化，已是最新", Type: "success", Data: map[string]any{"stored": base}}
	}
	cfg.MyTV.ServerUrl = base
	dao.SetConfig(cfg)
	return dto.ReturnJsonDto{Code: 1, Msg: "地址已保存", Type: "success", Data: map[string]any{"stored": base}}
}
