package service

import (
	"encoding/json"
	"errors"
	"fmt"
	"iptv-api/dao"
	"iptv-api/dto"
	"iptv-api/until"
	"log"
	"regexp"
	"time"
)

// Proxy 开关中转服务。
func Proxy(req dto.EngineProxyReq) dto.ReturnJsonDto {
	cfg := dao.GetConfig()
	// 判据用 LicStillValid() 而不是 `Lic.Type == 0`：后者漏掉"Type=1 但已过期"
	if !dao.LicStillValid() {
		cfg.Proxy.Status = 0

		dao.SetConfig(cfg)
		dao.WS.SendWS(dao.Request{Action: "stopProxy"})
		return dto.ReturnJsonDto{Code: 0, Msg: "未授权", Type: "danger"}
	}

	if !req.Enable {
		cfg.Proxy.Status = 0

		dao.SetConfig(cfg)
		dao.WS.SendWS(dao.Request{Action: "stopProxy"})
		go until.CleanAutoCacheAll() // 订阅里带 purl，开关一变缓存就得作废
		return dto.ReturnJsonDto{Code: 1, Msg: "已关闭中转", Type: "success"}
	}

	res, err := dao.WS.SendWS(dao.Request{Action: "startProxy"})
	if err != nil {
		return startError(cfg, err)
	}
	if res.Code != 1 {
		return startError(cfg, errors.New(res.Msg))
	}

	// 引擎那边是"Listen 成功"就算起来了（见 StartProxy），所以这里等一拍
	// 只是为了拿到稳定的进程状态，不承担"探测端口"的职责。
	time.Sleep(1 * time.Second)

	res, err = dao.WS.SendWS(dao.Request{Action: "getProxyStatus"})
	if err != nil {
		return startError(cfg, err)
	}
	var running bool
	if err := json.Unmarshal(res.Data, &running); err != nil {
		return startError(cfg, err)
	}
	if !running {
		return startError(cfg, errors.New("引擎报告中转服务未运行"))
	}

	if got := until.GetUrlData(until.ProxyStatusURL()); got != "ok" {
		return startError(cfg, fmt.Errorf("%s 返回 %q", until.ProxyStatusURL(), got))
	}

	cfg.Proxy.Status = 1
	dao.SetConfig(cfg)
	go until.CleanAutoCacheAll() // purl 变了，订阅缓存必须作废
	return dto.ReturnJsonDto{Code: 1, Msg: "启动成功，可以到频道分组管理中开启中转啦", Type: "success"}
}

func startError(cfg *dto.Config, err error) dto.ReturnJsonDto {
	cfg.Proxy.Status = 0

	dao.SetConfig(cfg)
	dao.WS.SendWS(dao.Request{Action: "stopProxy"})
	return dto.ReturnJsonDto{Code: 2, Msg: "启动失败: " + err.Error(), Type: "danger"}
}

func ResEng() dto.ReturnJsonDto {
	if dao.WS.RestartEngine() {
		return dto.ReturnJsonDto{Code: 1, Msg: "重启成功", Type: "success"}
	}
	return dto.ReturnJsonDto{Code: 0, Msg: "重启失败", Type: "danger"}
}

func AutoRes(req dto.EngineSwitchReq) dto.ReturnJsonDto {
	cfg := dao.GetConfig()
	if !dao.LicStillValid() {
		cfg.Resolution.Auto = 0
		dao.SetConfig(cfg)
		return dto.ReturnJsonDto{Code: 0, Msg: "未授权", Type: "danger"}
	}
	cfg.Resolution.Auto = boolToInt64(req.Enable)
	dao.SetConfig(cfg)
	return dto.ReturnJsonDto{Code: 1, Msg: "设置成功", Type: "success"}
}

func DisCh(req dto.EngineSwitchReq) dto.ReturnJsonDto {
	cfg := dao.GetConfig()
	if !dao.LicStillValid() {
		cfg.Resolution.DisCh = 0
		dao.SetConfig(cfg)
		return dto.ReturnJsonDto{Code: 0, Msg: "未授权", Type: "danger"}
	}
	cfg.Resolution.DisCh = boolToInt64(req.Enable)
	dao.SetConfig(cfg)
	return dto.ReturnJsonDto{Code: 1, Msg: "设置成功", Type: "success"}
}

func EpgFuzz(req dto.EngineSwitchReq) dto.ReturnJsonDto {
	cfg := dao.GetConfig()
	if !dao.LicStillValid() {
		cfg.Epg.Fuzz = 0
		dao.SetConfig(cfg)
		return dto.ReturnJsonDto{Code: 0, Msg: "未授权", Type: "danger"}
	}
	cfg.Epg.Fuzz = boolToInt64(req.Enable)
	dao.SetConfig(cfg)
	return dto.ReturnJsonDto{Code: 1, Msg: "设置成功", Type: "success"}
}

// boolToInt64 把开关量转成配置里的 0/1。
func boolToInt64(b bool) int64 {
	if b {
		return 1
	}
	return 0
}

// init 把授权门禁注册给 dao —— 心跳收到"授权失效"时要能直接关停功能，
// 但 dao ↔ service 不能循环 import，所以走回调（见 dao.RegisterLicenseGate）。
func init() {
	dao.RegisterLicenseGate(EnforceLicenseGate)
}

// EnforceLicenseGate 在授权失效时把**全部进阶功能开关**落 0。
func EnforceLicenseGate() bool {
	if dao.LicStillValid() {
		return false
	}

	cfg := dao.GetConfig()
	if cfg == nil {
		return false
	}

	changed := false
	if cfg.Proxy.Status != 0 {
		cfg.Proxy.Status = 0
		changed = true
	}
	if cfg.Resolution.Auto != 0 {
		cfg.Resolution.Auto = 0
		changed = true
	}
	if cfg.Resolution.DisCh != 0 {
		cfg.Resolution.DisCh = 0
		changed = true
	}
	if cfg.Epg.Fuzz != 0 {
		cfg.Epg.Fuzz = 0
		changed = true
	}
	if cfg.System.ShortURL != 0 {
		cfg.System.ShortURL = 0
		changed = true
	}

	if !changed {
		return false
	}

	dao.SetConfig(cfg)
	// 中转还占着 8080，光把配置落 0 不会让它停 —— 显式发一条停止指令。
	// 失败不阻断：其余开关已经关了，引擎侧的 EnforceLicenseGate 也会兜底。
	if _, err := dao.WS.SendWS(dao.Request{Action: "stopProxy"}); err != nil {
		log.Println("⚠️ 授权失效，通知引擎停止中转失败:", err)
	}
	go until.CleanAutoCacheAll() // 中转关了，带 purl 的订阅缓存要作废

	log.Println("🔒 授权已失效，已关闭全部进阶功能开关")
	return true
}

func Register(req dto.EngineAccountReq) dto.ReturnJsonDto {
	name := req.Name
	pwd := req.Pwd
	pwd2 := req.Pwd2

	if name == "" || pwd == "" || pwd2 == "" {
		return dto.ReturnJsonDto{Code: 0, Msg: "用户名或密码不能为空", Type: "danger"}
	}
	emailSimple := regexp.MustCompile(`^[a-zA-Z0-9._%+\-]+@[a-zA-Z0-9.\-]+\.[a-zA-Z]{2,}$`)
	if !emailSimple.MatchString(name) {
		return dto.ReturnJsonDto{Code: 0, Msg: "邮箱格式不正确", Type: "danger"}
	}

	if pwd != pwd2 {
		return dto.ReturnJsonDto{Code: 0, Msg: "两次输入的密码不一致", Type: "danger"}
	}

	res, err := dao.WS.SendWS(dao.Request{Action: "register", Data: dto.LoginDto{
		Name: name,
		Pwd:  pwd,
		Pwd2: pwd2,
	}})
	if err != nil {
		return dto.ReturnJsonDto{Code: 0, Msg: "连接引擎失败:" + err.Error(), Type: "danger"}
	} else if res.Code != 1 {
		return dto.ReturnJsonDto{Code: 0, Msg: res.Msg, Type: "danger"}
	}

	return dto.ReturnJsonDto{Code: 1, Msg: res.Msg, Type: "success"}
}

func ChangePwd(req dto.EnginePwdReq) dto.ReturnJsonDto {
	opwd := req.OldPwd
	pwd := req.Pwd
	pwd2 := req.Pwd2

	if opwd == "" || pwd == "" || pwd2 == "" {
		return dto.ReturnJsonDto{Code: 0, Msg: "不能为空", Type: "danger"}
	}

	if pwd != pwd2 {
		return dto.ReturnJsonDto{Code: 0, Msg: "两次输入的密码不一致", Type: "danger"}
	}

	res, err := dao.WS.SendWS(dao.Request{Action: "changepwd", Data: dto.LoginDto{
		OPwd: opwd,
		Pwd:  pwd,
		Pwd2: pwd2,
	}})
	if err != nil {
		return dto.ReturnJsonDto{Code: 0, Msg: "连接引擎失败:" + err.Error(), Type: "danger"}
	} else if res.Code != 1 {
		return dto.ReturnJsonDto{Code: 0, Msg: res.Msg, Type: "danger"}
	}

	return Logout()
}

func Login(req dto.EngineAccountReq) dto.ReturnJsonDto {
	name := req.Name
	pwd := req.Pwd

	if name == "" || pwd == "" {
		return dto.ReturnJsonDto{Code: 0, Msg: "用户名或密码不能为空", Type: "danger"}
	}

	res, err := dao.WS.SendWS(dao.Request{Action: "login", Data: dto.LoginDto{
		Name: name,
		Pwd:  pwd,
	}})
	if err != nil {
		return dto.ReturnJsonDto{Code: 0, Msg: "连接引擎失败:" + err.Error(), Type: "danger"}
	} else if res.Code != 1 {
		return dto.ReturnJsonDto{Code: 0, Msg: res.Msg, Type: "danger"}
	} else {
		var fresh dto.Lic
		if err := json.Unmarshal(res.Data, &fresh); err != nil {
			log.Println("⚠️ 无法解析引擎返回的key:", err)
			return dto.ReturnJsonDto{Code: 0, Msg: "连接引擎失败:" + err.Error(), Type: "danger"}
		}
		dao.SetLic(fresh)
	}

	return dto.ReturnJsonDto{Code: 5, Msg: "登录成功", Type: "success"}
}

func Reset(req dto.EngineResetReq) dto.ReturnJsonDto {
	name := req.Name

	if name == "" {
		return dto.ReturnJsonDto{Code: 0, Msg: "用户名不能为空", Type: "danger"}
	}

	emailSimple := regexp.MustCompile(`^[a-zA-Z0-9._%+\-]+@[a-zA-Z0-9.\-]+\.[a-zA-Z]{2,}$`)
	if !emailSimple.MatchString(name) {
		return dto.ReturnJsonDto{Code: 0, Msg: "邮箱格式不正确", Type: "danger"}
	}

	res, err := dao.WS.SendWS(dao.Request{Action: "resetPwd", Data: dto.LoginDto{
		Name: name,
	}})
	if err != nil {
		return dto.ReturnJsonDto{Code: 0, Msg: "连接引擎失败:" + err.Error(), Type: "danger"}
	} else if res.Code != 1 {
		return dto.ReturnJsonDto{Code: 0, Msg: res.Msg, Type: "danger"}
	}

	return dto.ReturnJsonDto{Code: 1, Msg: res.Msg, Type: "success"}
}

func Logout() dto.ReturnJsonDto {
	res, err := dao.WS.SendWS(dao.Request{Action: "logout"})
	if err != nil {
		return dto.ReturnJsonDto{Code: 0, Msg: "连接引擎失败", Type: "danger"}
	} else if res.Code == 0 {
		return dto.ReturnJsonDto{Code: 0, Msg: res.Msg, Type: "danger"}
	} else {
		var fresh dto.Lic
		if err := json.Unmarshal(res.Data, &fresh); err != nil {
			log.Println("⚠️ 无法解析引擎返回的key:", err)
			return dto.ReturnJsonDto{Code: 0, Msg: "连接引擎失败", Type: "danger"}
		}
		dao.SetLic(fresh)
	}
	return dto.ReturnJsonDto{Code: 5, Msg: "退出成功", Type: "success"}
}

func ShortURL(req dto.EngineSwitchReq) dto.ReturnJsonDto {
	cfg := dao.GetConfig()
	if !dao.LicStillValid() {
		cfg.System.ShortURL = 0
		dao.SetConfig(cfg)
		return dto.ReturnJsonDto{Code: 0, Msg: "未授权", Type: "danger"}
	}
	if req.Enable {
		_, err := until.CheckEngineVer("v1.5.19")
		if err != nil {
			return dto.ReturnJsonDto{Code: 0, Msg: err.Error(), Type: "danger"}
		}
		cfg.System.ShortURL = 1
	} else {
		cfg.System.ShortURL = 0
	}
	dao.SetConfig(cfg)
	return dto.ReturnJsonDto{Code: 1, Msg: "设置成功", Type: "success"}
}
