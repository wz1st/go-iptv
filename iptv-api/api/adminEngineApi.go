package api

import (
	"iptv-api/dto"
	"iptv-api/service"
	"iptv-api/until"

	"github.com/gin-gonic/gin"
)

// 进阶功能（授权，/api/engine）—— 一个动作一条路由。

// EngineProxy 开启 / 关闭中转。
func EngineProxy(c *gin.Context) {
	var req dto.EngineProxyReq
	if !bindJSON(c, &req) {
		return
	}
	reply(c, service.Proxy(req))
}

// EngineRestart 重启授权引擎。
// POST /api/engine/restartEngine  （无请求体）
func EngineRestart(c *gin.Context) {
	reply(c, service.ResEng())
}

// EngineAutoRes 自动分辨率开关。
// POST /api/engine/autoRes  {"enable":true}
func EngineAutoRes(c *gin.Context) {
	var req dto.EngineSwitchReq
	if !bindJSON(c, &req) {
		return
	}
	reply(c, service.AutoRes(req))
}

// EngineDisCh 频道去重开关。
// POST /api/engine/disCh  {"enable":true}
func EngineDisCh(c *gin.Context) {
	var req dto.EngineSwitchReq
	if !bindJSON(c, &req) {
		return
	}
	reply(c, service.DisCh(req))
}

// EngineEpgFuzz EPG 模糊匹配开关。
// POST /api/engine/epgFuzz  {"enable":true}
func EngineEpgFuzz(c *gin.Context) {
	var req dto.EngineSwitchReq
	if !bindJSON(c, &req) {
		return
	}
	reply(c, service.EpgFuzz(req))
}

// EngineRegister 注册授权账号。
// POST /api/engine/register  {"name":"a@b.com","pwd":"…","pwd2":"…"}
func EngineRegister(c *gin.Context) {
	var req dto.EngineAccountReq
	if !bindJSON(c, &req) {
		return
	}
	reply(c, service.Register(req))
}

// EngineLogin 登录授权账号（成功后 dao.Lic 被填充，授权等级生效）。
// POST /api/engine/login  {"name":"a@b.com","pwd":"…"}
func EngineLogin(c *gin.Context) {
	var req dto.EngineAccountReq
	if !bindJSON(c, &req) {
		return
	}
	reply(c, service.Login(req))
}

// EngineChangePwd 修改授权账号密码（成功后本地授权态被清空）。
// POST /api/engine/changePwd  {"oldPwd":"…","pwd":"…","pwd2":"…"}
func EngineChangePwd(c *gin.Context) {
	var req dto.EnginePwdReq
	if !bindJSON(c, &req) {
		return
	}
	reply(c, service.ChangePwd(req))
}

// EngineReset 通过邮箱重置密码。
// POST /api/engine/reset  {"name":"a@b.com"}
func EngineReset(c *gin.Context) {
	var req dto.EngineResetReq
	if !bindJSON(c, &req) {
		return
	}
	reply(c, service.Reset(req))
}

// EngineLogout 退出授权账号。
// POST /api/engine/logout  （无请求体）
func EngineLogout(c *gin.Context) {
	reply(c, service.Logout())
}

// EngineShortURL 短链开关。
// POST /api/engine/shortURL  {"enable":true}
func EngineShortURL(c *gin.Context) {
	var req dto.EngineSwitchReq
	if !bindJSON(c, &req) {
		return
	}
	reply(c, service.ShortURL(req))
}

// ---- 只读端点 ----

// CheckProxy 探测中转服务是否可访问，返回其 /status 原文。
func CheckProxy(c *gin.Context) {
	reply(c, until.GetUrlData(until.ProxyStatusURL()))
}

// EngineLog 读取授权引擎日志。
func EngineLog(c *gin.Context) {
	reply(c, until.ReadFile("/config/engine.log"))
}
