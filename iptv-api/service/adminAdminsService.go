package service

import (
	"encoding/json"
	"iptv-api/dao"
	"iptv-api/dto"
	"iptv-api/models"
	"iptv-api/until"
	"log"
	"runtime"
	"strings"
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
	oldWeb := until.GetVersion()

	up, newWeb, err := until.CheckNewVerWeb(oldWeb)

	if err != nil {
		// up=true 且带错：新版确实存在，但**跨了大版本/大改动**，只能换镜像。
		if up {
			return dto.ReturnJsonDto{Code: 0, Msg: err.Error(), Type: "warning"}
		}
		return dto.ReturnJsonDto{Code: 0, Msg: "检查更新失败: " + err.Error(), Type: "danger"}
	}
	if up {
		return dto.ReturnJsonDto{Code: 1, Msg: "管理系统有新版本: " + newWeb, Type: "success"}
	}
	return dto.ReturnJsonDto{Code: 2, Msg: "当前已是最新版本", Type: "success"}
}

// UpdataCheckFront 检查前端产物（webdist）是否有新版本。
func UpdataCheckFront(req dto.UpdataCheckFrontReq) dto.ReturnJsonDto {
	local := strings.TrimSpace(req.Version)
	if local == "" {
		return dto.ReturnJsonDto{Code: 0, Type: "warning",
			Msg: "未能确定当前前端版本，请强制刷新页面后重试；若仍失败请更新镜像"}
	}

	up, newVer, err := until.CheckNewVerFront(local)

	if err != nil {
		// up=true 且带错：新版确实存在，但这次发布没带前端整包（或跨了大改动），
		// 只能换镜像。用 warning = 「到此为止」的提示，前端不会继续下载。
		if up {
			return dto.ReturnJsonDto{Code: 0, Msg: err.Error(), Type: "warning"}
		}
		return dto.ReturnJsonDto{Code: 0, Msg: "检查更新失败: " + err.Error(), Type: "danger"}
	}
	if up {
		return dto.ReturnJsonDto{Code: 1, Msg: "前端有新版本: " + newVer, Type: "success"}
	}
	return dto.ReturnJsonDto{Code: 2, Msg: "当前已是最新版本", Type: "success"}
}

func UpdataCheckEngine() dto.ReturnJsonDto {
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

func UpdataDownWeb() dto.ReturnJsonDto {
	up, newWeb, err := until.DownloadAndVerifyWeb(runtime.GOARCH)
	if err != nil {
		return dto.ReturnJsonDto{Code: 0, Msg: "下载失败: " + err.Error(), Type: "danger"}
	}
	if up {
		return dto.ReturnJsonDto{Code: 1, Msg: "管理系统新版本: " + newWeb, Type: "success"}
	}
	return dto.ReturnJsonDto{Code: 0, Msg: "下载失败", Type: "danger"}
}

func UpdataDownEngine() dto.ReturnJsonDto {
	// 同上：这里是引擎版本号，不是授权信息。
	up, newVer, err := until.DownloadAndVerifyEngine(runtime.GOARCH)
	if err != nil {
		return dto.ReturnJsonDto{Code: 0, Msg: "下载失败: " + err.Error(), Type: "danger"}
	}
	if up {
		return dto.ReturnJsonDto{Code: 1, Msg: "引擎新版本: " + newVer, Type: "success"}
	}
	return dto.ReturnJsonDto{Code: 0, Msg: "下载失败", Type: "danger"}
}

// UpdataDownFront 下载前端整包到待安装区（/config/updata）。
func UpdataDownFront() dto.ReturnJsonDto {
	up, newVer, err := until.DownloadAndVerifyFront()
	if err != nil {
		return dto.ReturnJsonDto{Code: 0, Msg: "下载失败: " + err.Error(), Type: "danger"}
	}
	if up {
		return dto.ReturnJsonDto{Code: 1, Msg: "前端新版本: " + newVer, Type: "success"}
	}
	return dto.ReturnJsonDto{Code: 0, Msg: "下载失败", Type: "danger"}
}

func Updata() dto.ReturnJsonDto {
	go until.UpdateSignal()
	return dto.ReturnJsonDto{Code: 1, Msg: "已触发更新，请稍后刷新...", Type: "success"}
}
