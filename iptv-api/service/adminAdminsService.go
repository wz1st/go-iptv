package service

import (
	"encoding/json"
	"iptv-api/dao"
	"iptv-api/dto"
	"iptv-api/models"
	"iptv-api/until"
	"log"
	"runtime"
)

func Admins(req dto.AdminProfileReq) dto.ReturnJsonDto {
	username := req.Username
	oldPassword := req.OldPassword
	newpassword := req.NewPassword
	newpassword2 := req.NewPassword2

	if username == "" {
		return dto.ReturnJsonDto{Code: 0, Msg: "用户名不能为空", Type: "danger"}
	}
	if oldPassword == "" && (newpassword != "" || newpassword2 != "") {
		return dto.ReturnJsonDto{Code: 0, Msg: "旧密码不能为空"}
	}

	if newpassword != newpassword2 && newpassword != "" && newpassword2 != "" {
		return dto.ReturnJsonDto{Code: 0, Msg: "两次新密码不一致", Type: "danger"}
	}

	if oldPassword == newpassword && newpassword != "" {
		return dto.ReturnJsonDto{Code: 0, Msg: "新密码不能与旧密码相同", Type: "danger"}
	}

	if !until.IsSafe(username) {
		return dto.ReturnJsonDto{Code: 0, Msg: "用户名不合法", Type: "danger"}
	}

	var adminData models.IptvAdmin
	dao.DB.Model(&models.IptvAdmin{}).Where("id = ?", 1).First(&adminData)
	if adminData.PasswordHash != until.HashPassword(oldPassword) {
		return dto.ReturnJsonDto{Code: 0, Msg: "旧密码错误", Type: "danger"}
	}

	dao.DB.Model(&models.IptvAdmin{}).Where("id = ?", 1).Updates(map[string]interface{}{
		"password_hash": until.HashPassword(newpassword),
		"username":      username,
	})

	return dto.ReturnJsonDto{Code: 1, Msg: "修改成功", Type: "success"}
}

func UpdataCheckWeb() dto.ReturnJsonDto {
	// 非 amd64 机器上没有可下载的产物，先说清"请更新镜像"，别走到下载才报缺资产。
	if err := until.CheckUpdateArch(runtime.GOARCH); err != nil {
		return dto.ReturnJsonDto{Code: 0, Msg: err.Error(), Type: "warning"}
	}

	oldWeb := until.GetVersion()

	// api 与前端随同一发布标签发布，检查一并覆盖两者。
	up, newWeb, frontMissing, err := until.CheckNewVerWebAndFront(oldWeb)

	if err != nil {
		// up=true 且带错：新版确实存在，但**跨了大版本/大改动**，只能换镜像。
		if up {
			return dto.ReturnJsonDto{Code: 0, Msg: err.Error(), Type: "warning"}
		}
		return dto.ReturnJsonDto{Code: 0, Msg: "检查更新失败: " + err.Error(), Type: "danger"}
	}
	if up {
		// 发布缺前端整包：api 即便有新版也无法做到「同时更新」，提示更新镜像。
		if frontMissing {
			return dto.ReturnJsonDto{Code: 0,
				Msg: "检测到新版本 " + newWeb + "，但发布未提供前端整包，无法与管理" +
					"系统同时更新，请更新镜像",
				Type: "warning"}
		}
		return dto.ReturnJsonDto{Code: 1, Msg: "管理系统与前端有新版本: " + newWeb, Type: "success"}
	}
	return dto.ReturnJsonDto{Code: 2, Msg: "当前已是最新版本", Type: "success"}
}

// SilentCheckUpdates 登录后静默盘点各组件是否有新版本（菜单/标签红点用）。
// 不写 Docker 日志。Data 是 {web,engine,qh,lt,mytv} 五个布尔，true 表示该组件存在新版本。
func SilentCheckUpdates() dto.ReturnJsonDto {
	data := until.SilentCheckUpdates()
	return dto.ReturnJsonDto{Code: 1, Msg: "ok", Type: "success", Data: data}
}

func UpdataCheckEngine() dto.ReturnJsonDto {
	// 同上：先判架构，非 amd64 直接提示换镜像。
	if err := until.CheckUpdateArch(runtime.GOARCH); err != nil {
		return dto.ReturnJsonDto{Code: 0, Msg: err.Error(), Type: "warning"}
	}

	// 变量名原先是 oldLic / newLic，但里面装的自始至终是**引擎的版本号字符串
	var oldVer string
	verJson, err := dao.WS.SendWS(dao.Request{Action: "getVersion"})

	if err != nil {
		// 引擎连不上时退回读版本号文件（运行目录优先，兼容旧布局）
		oldVer = until.EngineVersion()
		if oldVer == "" {
			return dto.ReturnJsonDto{Code: 0, Msg: "检查更新失败: " + err.Error(), Type: "danger"}
		}
	} else {
		if err := json.Unmarshal(verJson.Data, &oldVer); err != nil {
			log.Println("版本信息解析错误:", err)
			return dto.ReturnJsonDto{Code: 0, Msg: "引擎版本信息解析错误，请检查引擎是否正常", Type: "danger"}
		}
	}

	up, newVer, err := until.CheckNewVerEngine(oldVer)

	if err != nil {
		// 同 UpdataCheckWeb：跨大版本/大改动时新版存在但不能在线升级。
		if up {
			return dto.ReturnJsonDto{Code: 0, Msg: err.Error(), Type: "warning"}
		}
		return dto.ReturnJsonDto{Code: 0, Msg: "检查更新失败: " + err.Error(), Type: "danger"}
	}
	if up {
		return dto.ReturnJsonDto{Code: 1, Msg: "引擎有新版本: " + newVer, Type: "success"}
	}
	return dto.ReturnJsonDto{Code: 2, Msg: "当前已是最新版本", Type: "success"}
}

// downErrDto 把"没有合格版本"与真故障分开：前者对用户就是"已是最新"（发布位里可能
// 只有脏发布，跳过之后就没有候选了），用 danger 等于把正常的版本盘点说成下载故障。
func downErrDto(err error) dto.ReturnJsonDto {
	if until.IsNoMatchingRelease(err) {
		return dto.ReturnJsonDto{Code: 2, Msg: "当前已是最新版本", Type: "success"}
	}
	return dto.ReturnJsonDto{Code: 0, Msg: "下载失败: " + err.Error(), Type: "danger"}
}

func UpdataDownWeb() dto.ReturnJsonDto {
	if err := until.CheckUpdateArch(runtime.GOARCH); err != nil {
		return dto.ReturnJsonDto{Code: 0, Msg: err.Error(), Type: "warning"}
	}
	up, newWeb, err := until.DownloadAndVerifyWeb(runtime.GOARCH)
	if err != nil {
		return downErrDto(err)
	}
	if up {
		return dto.ReturnJsonDto{Code: 1, Msg: "管理系统新版本: " + newWeb, Type: "success"}
	}
	return dto.ReturnJsonDto{Code: 0, Msg: "下载失败", Type: "danger"}
}

func UpdataDownEngine() dto.ReturnJsonDto {
	if err := until.CheckUpdateArch(runtime.GOARCH); err != nil {
		return dto.ReturnJsonDto{Code: 0, Msg: err.Error(), Type: "warning"}
	}
	// 同上：这里是引擎版本号，不是授权信息。
	up, newVer, err := until.DownloadAndVerifyEngine(runtime.GOARCH)
	if err != nil {
		return downErrDto(err)
	}
	if up {
		return dto.ReturnJsonDto{Code: 1, Msg: "引擎新版本: " + newVer, Type: "success"}
	}
	return dto.ReturnJsonDto{Code: 0, Msg: "下载失败", Type: "danger"}
}

func Updata() dto.ReturnJsonDto {
	kind := until.GetUpdataKind()
	// 先落状态再通知启动器：反过来的话，api 可能在状态写盘前就被重启掉，
	// 前端轮询到的会是"没在升级"，遮罩闪一下就没了。
	until.SetUpdataProgress(kind, until.UpdataPhaseApply, 96,
		"正在替换文件并重启管理系统，期间请勿关闭页面…")
	go until.UpdateSignal()
	return dto.ReturnJsonDto{Code: 1, Msg: "已触发更新，请稍后刷新...", Type: "success"}
}

// UpdataStatus 给前端升级遮罩轮询用。
//
// 这是「刷新页面 / 切换页面后遮罩自动恢复」的唯一依据：前端不问内存，
// 只问服务端。running=false 时前端必须撤遮罩 —— 宁可早撤（用户再点一次），
// 也不能卡死不动。
func UpdataStatus() dto.ReturnJsonDto {
	return dto.ReturnJsonDto{Code: 1, Msg: "ok", Type: "success", Data: until.UpdataStateView()}
}
