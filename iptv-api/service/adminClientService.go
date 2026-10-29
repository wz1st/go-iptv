package service

import (
	"context"
	"fmt"
	"iptv-api/bootstrap"
	"iptv-api/dao"
	"iptv-api/dto"
	"iptv-api/until"
	"log"
	"net"
	"net/http"
	"net/url"
	"os"
	"strconv"
	"strings"
	"time"

	"github.com/gin-gonic/gin"
)

// 签名与「更新内容」都已写死在服务端（until.FixedAppSign / until.FixedUpdateText），
// 请求体里带了也不采信 —— 否则等于「能调一次接口就能改签名」。

// UploadFile 保存上传的图标 / 背景图，**按壳落到各自的目录**（until.ClientIconDir /
// until.ClientBgDir）。两个壳的素材互不影响，所以 shell 必须由调用方显式传进来，
// 不从路径猜 —— 猜错的后果是"在骆驼壳后台上传的图进了清和壳的包"。
//
// 保存前先 MkdirAll：目录本来由安装流程创建（bootstrap.install），但**已装机的
// 系统升级上来时不会再跑安装流程** —— 新加的骆驼壳那两套目录在存量机器上并不存在，
// 少了这一句的表现就是"上传直接报保存失败"，而用户没有任何办法自己修。
func UploadFile(c *gin.Context, imgType, shell string) dto.ReturnJsonDto {
	if imgType == "icon" {
		file, err := c.FormFile("iconfile")
		if err != nil {
			return dto.ReturnJsonDto{Code: 0, Msg: "获取文件失败:" + err.Error(), Type: "danger"}
		}

		f, err := file.Open()
		if err != nil {
			return dto.ReturnJsonDto{Code: 0, Msg: "打开文件失败:" + err.Error(), Type: "danger"}
		}
		defer f.Close()

		// 读取前 512 字节判断 MIME 类型
		buf := make([]byte, 512)
		n, _ := f.Read(buf)
		contentType := http.DetectContentType(buf[:n])

		if contentType != "image/png" {
			return dto.ReturnJsonDto{Code: 0, Msg: "只允许上传 PNG 文件", Type: "danger"}
		}

		if err := os.MkdirAll(until.ClientIconDir(shell), 0755); err != nil {
			return dto.ReturnJsonDto{Code: 0, Msg: "保存文件失败:" + err.Error(), Type: "danger"}
		}
		dst := until.ClientIconFile(shell)
		if err := c.SaveUploadedFile(file, dst); err != nil {
			return dto.ReturnJsonDto{Code: 0, Msg: "保存文件失败:" + err.Error(), Type: "danger"}
		}
		// 预览地址按壳拼：两壳前缀不同（清和壳 /icon/、骆驼壳 /lt/icon/）。
		return dto.ReturnJsonDto{Code: 1, Msg: "上传成功", Type: "success",
			Data: map[string]interface{}{"url": until.ClientIconURLPrefix(shell) + "icon.png"}}
	} else {
		file, err := c.FormFile("bjfile")
		if err != nil {
			return dto.ReturnJsonDto{Code: 0, Msg: "获取文件失败:" + err.Error(), Type: "danger"}
		}

		f, err := file.Open()
		if err != nil {
			return dto.ReturnJsonDto{Code: 0, Msg: "打开文件失败:" + err.Error(), Type: "danger"}
		}
		defer f.Close()

		// 读取前 512 字节判断 MIME 类型
		buf := make([]byte, 512)
		n, _ := f.Read(buf)
		contentType := http.DetectContentType(buf[:n])

		if contentType != "image/png" {
			return dto.ReturnJsonDto{Code: 0, Msg: "只允许上传 PNG 文件", Type: "danger"}
		}

		pngName := until.Md5(url.QueryEscape(fmt.Sprintf("%s%d", file.Filename, time.Now().Unix())))

		if err := os.MkdirAll(until.ClientBgDir(shell), 0755); err != nil {
			return dto.ReturnJsonDto{Code: 0, Msg: "保存文件失败:" + err.Error(), Type: "danger"}
		}
		dst := until.ClientBgDir(shell) + "/" + pngName + ".png"
		if err := c.SaveUploadedFile(file, dst); err != nil {
			return dto.ReturnJsonDto{Code: 0, Msg: "保存文件失败:" + err.Error(), Type: "danger"}
		}
		return dto.ReturnJsonDto{Code: 1, Msg: "上传成功", Type: "success", Data: map[string]interface{}{"name": pngName}}
	}
}

// DeleteFile 删除**某个壳**的图标 / 指定背景图。壳由调用方显式传入。
func DeleteFile(req dto.ClientDeleteBjReq, imgType, shell string) dto.ReturnJsonDto {
	// iconFile := params.Get("iconfile")
	if imgType == "icon" {
		iconFile := until.ClientIconFile(shell)
		if err := os.Remove(iconFile); err != nil {
			return dto.ReturnJsonDto{Code: 0, Msg: "删除失败:" + err.Error(), Type: "danger"}
		}
		return dto.ReturnJsonDto{Code: 1, Msg: "删除成功", Type: "success"}
	}
	bjName := req.Name
	if !until.IsSafeImgName(bjName) {
		return dto.ReturnJsonDto{Code: 0, Msg: "文件名不合法", Type: "danger"}
	}
	bjFile := until.ClientBgDir(shell) + "/" + bjName + ".png"
	if err := os.Remove(bjFile); err != nil {
		return dto.ReturnJsonDto{Code: 0, Msg: "删除失败", Type: "danger"}
	}
	return dto.ReturnJsonDto{Code: 1, Msg: "删除成功", Type: "success"}
}

func DecoderSelect(req dto.ClientDecoderReq) dto.ReturnJsonDto {
	if req.Decoder != 0 && req.Decoder != 1 && req.Decoder != 2 {
		return dto.ReturnJsonDto{Code: 0, Msg: "解码器选择失败", Type: "danger"}
	}
	cfg := dao.GetConfig()
	cfg.App.Decoder = req.Decoder
	dao.SetConfig(cfg)
	return dto.ReturnJsonDto{Code: 1, Msg: "解码器选择成功", Type: "success"}
}

func SetBuffTimeOut(req dto.ClientBuffTimeoutReq) dto.ReturnJsonDto {
	// 只接受这几个档位：数值越大缓冲越久、起播越慢，不适合任意填。
	switch req.BuffTimeout {
	case 5, 10, 15, 20, 25, 30:
	default:
		return dto.ReturnJsonDto{Code: 0, Msg: "参数错误", Type: "danger"}
	}
	cfg := dao.GetConfig()
	cfg.App.BuffTimeout = req.BuffTimeout
	dao.SetConfig(cfg)
	return dto.ReturnJsonDto{Code: 1, Msg: "超时设置成功", Type: "success"}
}

func SetNeedAuthor(req dto.ClientNeedAuthorReq) dto.ReturnJsonDto {
	if req.NeedAuthor != 0 && req.NeedAuthor != 1 {
		return dto.ReturnJsonDto{Code: 0, Msg: "参数错误", Type: "danger"}
	}
	cfg := dao.GetConfig()
	cfg.App.NeedAuthor = req.NeedAuthor
	dao.SetConfig(cfg)
	return dto.ReturnJsonDto{Code: 1, Msg: "授权设置成功", Type: "success"}
}

// SetForceUpdate 设置「强制更新」开关：开启后 APK 发现新版本弹不可取消的更新框。
// 与 SetNeedAuthor 同构：0/1 校验、落 config.yml、两壳共用同一份配置。
func SetForceUpdate(req dto.ClientForceUpdateReq) dto.ReturnJsonDto {
	if req.ForceUpdate != 0 && req.ForceUpdate != 1 {
		return dto.ReturnJsonDto{Code: 0, Msg: "参数错误", Type: "danger"}
	}
	cfg := dao.GetConfig()
	cfg.App.ForceUpdate = req.ForceUpdate
	dao.SetConfig(cfg)
	return dto.ReturnJsonDto{Code: 1, Msg: "强制更新设置成功", Type: "success"}
}

// TestServerURL 探测用户在后台填的「APK连接地址」是否真的可达。
//
// **测什么**：打客户端登录时用的那个路由（清和壳 /apk/getver，骆驼壳 /apk/lt/getver），
// 而不是简单地 GET 站点根。理由：站点根 200 什么都不证明 —— 常见故障是
// path 填错（比如存进去带了 /apk，服务端自己拼出 /apk/apk/… 直接 404），
// 这时根路径照样 200，只有打真路由才会暴露。
//
// 判定口径：**只认能连上并拿到 HTTP 响应**（含 4xx/5xx）。
// 连接失败/超时时才报错 —— 因为"地址填的是别人的站、那边返回 403"也是可达的，
// 但后端在 /config 里不该出现这种情况，报错反而误导。
//
// SSRF 防护：只允许 http/https；不带凭据；限制重定向（防止被引到内网）；
// 超时短（这是给用户点按钮用的交互，不是长任务）。
func TestServerURL(req dto.ClientTestUrlReq) dto.ReturnJsonDto {
	raw := strings.TrimSpace(req.ServerUrl)
	if raw == "" {
		return dto.ReturnJsonDto{Code: 0, Msg: "请先填写连接地址", Type: "danger"}
	}

	// 用户若带了 path，这里先剥掉再拼 —— 展示给用户的"最终会用到的地址"
	// 必须是编译时真正注入的那个（清和 /apk、骆驼 /apk/lt），不然提示会误导。
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

	// 探两个壳各自的路由：哪条通就说明地址可用，返回它作为"编译时会用的地址"。
	// 两个都试是因为这个输入框两个壳共用，用户可能正要编其中任意一个。
	// 带 /apk/lt 的走骆驼壳那条，否则清和壳那条。
	probe := base + "/apk/getver"
	shell := "清和壳"
	if strings.HasSuffix(strings.TrimRight(base, "/"), "/lt") || strings.Contains(base, "/lt/") {
		probe = base + "/apk/lt/getver"
		shell = "骆驼壳"
	}

	client := &http.Client{
		Timeout: 5 * time.Second,
		CheckRedirect: func(req *http.Request, via []*http.Request) error {
			// 只跟 3 跳：够穿过「http→https」这类跳转，又不会被引着绕圈。
			if len(via) >= 3 {
				return http.ErrUseLastResponse
			}
			return nil
		},
	}
	// Go 默认会带上环境里的代理，后台部署常没有可用代理，
	// 反而把"站点可达"误报成失败。
	client.Transport = &http.Transport{Proxy: nil}

	resp, err := client.Get(probe)
	if err != nil {
		// 连接失败：先判断是不是「目标地址是 IPv6（字面量或域名解析到 IPv6），
		// 但后台这个探测容器 / 内网没有 IPv6」造成的假阴性。是的话给明确提示
		// 并让前端弹「强制保存」—— 客户端设备（有 IPv6）其实能连上，
		// 只是后台这个探测容器连不上，不该因此拦住用户保存。
		if isIPv6ConnectFailure(base) {
			return dto.ReturnJsonDto{
				Code: 0,
				Msg:  "当前因地址为ipv6导致测试失败可能无法连接",
				Type: "ipv6",
				Data: map[string]any{
					"ipv6":     true,
					"shell":    shell,
					"probeUrl": probe,
					"stored":   base, // 实际会存进 config.yml 的值（已剥 path）
				},
			}
		}
		return dto.ReturnJsonDto{
			Code: 0,
			Msg:  "无法连接：" + err.Error(),
			Type: "danger",
		}
	}
	defer resp.Body.Close()

	code := resp.StatusCode
	// 404/405 这类反而说明"服务在、路由前缀可能不对" —— 单独提示更有用，
	// 因为这正是用户填了 path 时最容易踩的坑。
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
			"shell":    shell,
			"probeUrl": probe,
			"status":   code,
			"stored":   base, // 实际会存进 config.yml 的值（已剥 path）
		},
	}
}

// isIPv6ConnectFailure 判断「连接失败」是不是「目标地址是 IPv6（字面量或域名解析到
// IPv6），而运行探测的后台容器 / 内网没有 IPv6」造成的假阴性。
//
// 判定口径：
//   - 字面量 IPv6（如 http://[::1]/、http://fe80::1/）→ 直接算 IPv6。
//   - 域名：查 AAAA。若**只有 AAAA 没有 A**（纯 IPv6 域名）→ 算 IPv6；
//     若同时有 A 和 AAAA → 再发一次**强制走 IPv4** 的探测，IPv4 能通就说明
//     默认探测挂掉是因为先试了 IPv6、容器没 IPv6，算 IPv6；IPv4 也不通则是真不可达，不算。
//
// 这些额外探测都是短超时（交互按钮，不是长任务）；解析/连接异常就保守地当作「非 IPv6 失败」。
func isIPv6ConnectFailure(base string) bool {
	u, err := url.Parse(base)
	if err != nil || u.Host == "" {
		return false
	}
	// url.Hostname() 对 IPv6 字面量会自动去掉方括号（[::1] -> ::1）。
	host := u.Hostname()
	if ip := net.ParseIP(host); ip != nil {
		return ip.To4() == nil // To4()==nil 说明是 IPv6
	}

	// 域名：解析 AAAA。
	ctx, cancel := context.WithTimeout(context.Background(), 4*time.Second)
	defer cancel()
	addrs, err := net.DefaultResolver.LookupIPAddr(ctx, host)
	if err != nil || len(addrs) == 0 {
		return false
	}
	hasV4, hasV6 := false, false
	for _, a := range addrs {
		if a.IP.To4() != nil {
			hasV4 = true
		} else {
			hasV6 = true
		}
	}
	if hasV6 && !hasV4 {
		return true // 纯 IPv6 域名
	}
	if hasV6 && hasV4 {
		// 强制走 IPv4 探一次：能通 ⇒ 默认失败是 IPv6 那条挂了。
		return dialTCP4(ctx, u)
	}
	return false
}

// dialTCP4 用强制 IPv4 的 dialer 试连目标主机，验证「IPv4 这条路是通的」。
func dialTCP4(ctx context.Context, u *url.URL) bool {
	port := u.Port()
	if port == "" {
		if u.Scheme == "https" {
			port = "443"
		} else {
			port = "80"
		}
	}
	d := net.Dialer{Timeout: 4 * time.Second}
	conn, err := d.DialContext(ctx, "tcp4", net.JoinHostPort(u.Hostname(), port))
	if err != nil {
		return false
	}
	_ = conn.Close()
	return true
}

// SaveServerURL 只把「APK连接地址」落到 config.yml，**不触发编译**。
// 与 SetAppInfo（落盘 + 后台编译）分开：测试通过或用户「强制保存」时调用它，
// 让地址即时持久化（刷新页面不丢、下次编译即用），又不把分钟级的编译队列打满。
func SaveServerURL(req dto.ClientTestUrlReq) dto.ReturnJsonDto {
	raw := strings.TrimSpace(req.ServerUrl)
	if raw == "" {
		return dto.ReturnJsonDto{Code: 0, Msg: "请先填写连接地址", Type: "danger"}
	}
	base := bootstrap.NormalizeServerURL(raw)
	if base == "" {
		return dto.ReturnJsonDto{Code: 0, Msg: "地址不合法", Type: "danger"}
	}
	cfg := dao.GetConfig()
	if cfg.ServerUrl == base {
		return dto.ReturnJsonDto{Code: 1, Msg: "地址未变化，已是最新", Type: "success", Data: map[string]any{"stored": base}}
	}
	cfg.ServerUrl = base
	dao.SetConfig(cfg)
	return dto.ReturnJsonDto{Code: 1, Msg: "地址已保存", Type: "success", Data: map[string]any{"stored": base}}
}

// SetAppInfo 编译一个新版本 —— 注意它**只产出待发布包**，不动线上任何东西。
func SetAppInfo(req dto.ClientAppInfoReq) dto.ReturnJsonDto {

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
	// 换基底后编译号归零，裸编译号会与旧基底撞号（1.1.1.001 与 1.2.0.001 的编译号都是 001），
	// 必须按「基底.编译号」完整串比对，否则后台会误报「版本号不能相同」挡住新基底首版编译。
	curFull := until.FormatClientVersion(until.ClientPublishedBase(), cfg.Build.Version)
	newFull := until.FormatClientVersion(until.GetClientBaseVersion(), appVersion)
	if curFull != "" && curFull == newFull {
		return dto.ReturnJsonDto{Code: 0, Msg: "版本号不能相同", Type: "danger"}
	}

	cfg.Build.Name = appName
	// 待发布版本号：编译用它，点「发布」时它才变成 Build.Version
	cfg.Build.NewVersion = appVersion

	// 只存站点根，不存 path —— /apk 由编译时 clientApkHost 按壳补（见 bootstrap.normalizeServerURL）。
	// 用户若在输入框里带了 /apk 或 /apk/lt，这里会剥掉；不剥的话服务端自己拼
	// dataurl 会变成 /apk/apk/… 直接 404，而客户端侧只表现为"登录失败"。
	if cfg.ServerUrl != appServerUrl {
		cfg.ServerUrl = bootstrap.NormalizeServerURL(appServerUrl)
	}

	if req.UpSet {
		cfg.App.Update.Set = 1
	} else {
		cfg.App.Update.Set = 0
	}
	dao.SetConfig(cfg)

	go bootstrap.BuildAPK(true) // 出待发布包，线上文件不动
	return dto.ReturnJsonDto{Code: 1, Msg: "APK编译中...", Type: "success"}
}

func SetTipSet(req dto.ClientTipSetReq) dto.ReturnJsonDto {
	cfg := dao.GetConfig()

	cfg.Tips.Loading = req.Loading
	cfg.Tips.UserExpired = req.UserExpired
	cfg.Tips.UserForbidden = req.UserForbidden
	cfg.Tips.UserNoReg = req.UserNoReg

	dao.SetConfig(cfg)
	return dto.ReturnJsonDto{Code: 1, Msg: "设置成功", Type: "success"}
}

// AdInfo 读后台配置的「广告内容」，留空或未配置时回落到固定默认文案。
// **custom 定制**。
func AdInfo() string {
	if cfg := dao.GetConfig(); cfg != nil {
		if ad := strings.TrimSpace(cfg.Site.Ad); ad != "" {
			return ad
		}
	}
	return until.FixedAdInfo
}

// ApkAdInfo 返回下发给客户端的「广告内容」（退出弹窗那行）——
// **custom 定制**：非定制授权恒为作者博客；定制授权下才用后台配置的值。
// 授权一旦失效（Type 清成 0）立刻回落默认，不会继续下发旧配置。
func ApkAdInfo() string {
	if !dao.IsCustomLic() {
		return until.FixedAdInfo
	}
	return AdInfo()
}

// SetAdInfo 保存客户端退出弹窗里的「广告内容」。
// 仅定制授权可改：非定制授权下这段文案本就该是作者博客，
// 而且授权一旦失效后台也就改不动了。
func SetAdInfo(req dto.ClientAdInfoReq) dto.ReturnJsonDto {
	if !dao.IsCustomLic() {
		return dto.ReturnJsonDto{Code: 0, Msg: "该功能仅在定制授权下可用", Type: "danger"}
	}

	cfg := dao.GetConfig()
	// 留空 = 不清空配置，而是让两端都回落到默认文案（AdInfo 的兜底）。
	cfg.Site.Ad = strings.TrimSpace(req.AdInfo)
	dao.SetConfig(cfg)

	return dto.ReturnJsonDto{Code: 1, Msg: "保存成功", Type: "success"}
}

// GetBuildStatus 返回编译进度，并把两张卡片要的数据一次给全。
func GetBuildStatus() dto.ReturnJsonDto {
	if bootstrap.GetBuildStatus() == 1 {
		return dto.ReturnJsonDto{Code: 0, Msg: "APK编译中...", Type: "info", Data: ClientApkInfo()}
	}
	return dto.ReturnJsonDto{Code: 1, Msg: "APK编译完成", Type: "success", Data: ClientApkInfo()}
}

// clientApkInfo 已并入 ClientApkInfo（adminClientBaseService.go）——
// 基底信息、线上/待发布两组卡片都在那里汇总，保留两份必然只改一边。

// PublishAPK 把「待发布」的包提升成线上版本。
func PublishAPK() dto.ReturnJsonDto {
	if bootstrap.GetBuildStatus() == 1 {
		return dto.ReturnJsonDto{Code: 0, Msg: "正在打包中，请稍后再试", Type: "danger"}
	}

	cfg := dao.GetConfig()
	if cfg.Build.NewVersion == "" {
		return dto.ReturnJsonDto{Code: 0, Msg: "没有待发布的版本，请先编译", Type: "danger"}
	}

	staged := until.ClientApkPath(cfg.Build.Name, true)
	if !until.Exists(staged) {
		return dto.ReturnJsonDto{Code: 0, Msg: "待发布的安装包不存在，请重新编译", Type: "danger"}
	}

	official := until.ClientApkPath(cfg.Build.Name, false)
	if err := os.Rename(staged, official); err != nil {
		return dto.ReturnJsonDto{Code: 0, Msg: "发布失败:" + err.Error(), Type: "danger"}
	}

	// 先把「这版用的是哪版基底」记下来，再推进版本号：顺序反了而中间失败，
	// 就会出现「版本号说 1.0.0.001、记录还写 1.0.0」的自相矛盾状态。
	pubBase := until.GetClientBaseVersion()
	if err := until.SetClientPublishedBase(pubBase); err != nil {
		log.Println("⚠️ 记录线上基底版本失败:", err)
	}

	published := cfg.Build.NewVersion
	cfg.Build.Version = published
	cfg.Build.NewVersion = ""
	dao.SetConfig(cfg)

	return dto.ReturnJsonDto{Code: 1, Msg: "发布成功", Type: "success", Data: map[string]interface{}{
		"version": until.FormatClientVersion(pubBase, published),
		"size":    until.GetFileSize(official),
		"md5":     until.Md5File(official),
	}}
}
