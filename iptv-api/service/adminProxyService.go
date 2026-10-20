package service

import (
	"log"
	"strconv"

	"iptv-api/dao"
	"iptv-api/dto"
	"iptv-api/until"
)

// 「代理设置」页的服务层。
//
// ## 为什么要"先测后存"
//
// 代理配错的后果不是报错而是**静默失效**：填错端口，EPG 更新、频道源更新、
// 在线升级会各自安静地失败，日志只有一行「请求失败」。用户在后台看不出
// 哪里出了问题。所以保存前必须实测：连不上就是连不上，别把一份坏配置写进
// config.yml —— 那会让"代理坏了"和"外网本来就墙了"两件事再也分不开。
//
// 测试失败**不落盘**，并把失败类型原样回给前端（dial / overseas）。

// relayAllowed 中转取流走代理只对授权用户开放。
//
// 判据与引擎侧 applyConfigDefaults 一致：只有 License.Type==4（定制授权）
// 才允许改站点相关的行为。api 侧读的是引擎心跳带回来的授权快照
// （dao.GetLic），不是自己解 license.lic。
func relayAllowed() bool {
	return dao.GetLic().Type == 4
}

// ProxyData 代理页初始数据。
//
// 与其它 `*/data` 一样直接回页面 DTO（不套 ReturnJsonDto）——
// 前端对 `*/data` 一律 `data.value = await post(...)` 后直接取字段。
func ProxyData() dto.OutProxyDataDto {
	out := dto.OutProxyDataDto{RelayAllowed: relayAllowed()}
	if cfg := dao.GetConfig(); cfg != nil {
		out.OutProxy = cfg.OutProxy
	}
	// 口令不回给页面：页面上的密码框留空，由用户按需重填。
	// 开关关着时连存都不该有（见 dto.OutProxy.AuthOn 的注释）。
	if out.AuthOn != 1 {
		out.User, out.Pwd = "", ""
	}
	out.Type = until.NormalizeProxyType(out.Type)
	return out
}

// normalizeProxyReq 在 until.NormalizeOutProxy 的归一之外，再加一条本层的规矩：
// 中转这一路只有授权用户能用，非授权用户提交什么都会被抹平。
func normalizeProxyReq(in dto.OutProxy) dto.OutProxy {
	out := until.NormalizeOutProxy(in)
	if !relayAllowed() {
		out.UseRelay = 0
	}
	return out
}

// ProxyTest 只测不存：连代理 + 访问 GitHub/Google，失败时按类型回话。
func ProxyTest(req dto.OutProxy) dto.ReturnJsonDto {
	p := normalizeProxyReq(req)
	res := until.TestOutProxy(p)
	log.Printf("代理连通性测试：协议=%s %s:%d 结果=%v 类型=%s 阶段=%s %s",
		p.Type, p.Host, p.Port, res.OK, res.FailType, res.Stage, res.Detail)
	return dto.ReturnJsonDto{
		Code: boolToCode(res.OK),
		Msg:  proxyTestMsg(res),
		Type: resType(res.OK),
		Data: dto.OutProxyTestDto{
			OK: res.OK, FailType: res.FailType, Stage: res.Stage,
			Detail: res.Detail, LatencyMs: res.LatencyMs,
		},
	}
}

// ProxySave 保存代理配置。**先测后存**：测试不通过一律不落盘。
func ProxySave(req dto.OutProxy) dto.ReturnJsonDto {
	p := normalizeProxyReq(req)

	res := until.TestOutProxy(p)
	if !res.OK {
		log.Printf("代理配置未保存（测试不通过）：协议=%s %s:%d 类型=%s 阶段=%s %s",
			p.Type, p.Host, p.Port, res.FailType, res.Stage, res.Detail)
		return dto.ReturnJsonDto{
			Code: 0,
			Msg:  proxyTestMsg(res) + "，配置未保存",
			Type: "danger",
			Data: dto.OutProxyTestDto{
				OK: false, FailType: res.FailType, Stage: res.Stage,
				Detail: res.Detail, LatencyMs: res.LatencyMs,
			},
		}
	}

	cfg := dao.GetConfig()
	if cfg == nil {
		return dto.ReturnJsonDto{Code: 0, Msg: "配置还没加载完成，请稍后重试", Type: "danger"}
	}
	cfg.OutProxy = p
	// 必须走 SetConfig：只有它会置 configDirty 并把变更推给引擎。
	// 直接改结构体再写盘的话，引擎侧永远收不到这次变更。
	dao.SetConfig(cfg)

	msg := "代理配置已保存"
	if res.LatencyMs > 0 {
		msg = "代理配置已保存，连接耗时 " + strconv.FormatInt(res.LatencyMs, 10) + " 毫秒"
	}
	log.Printf("代理配置已保存：协议=%s %s:%d 范围 epg=%d src=%d up=%d relay=%d",
		p.Type, p.Host, p.Port, p.UseEpg, p.UseSrc, p.UseUp, p.UseRelay)
	return dto.ReturnJsonDto{Code: 1, Msg: msg, Type: "success"}
}

// proxyTestMsg 把测试结论翻成一句能直接显示的话。
// 分两种失败：代理连不通 vs 代理能连但访问不了境外。
func proxyTestMsg(res until.ProxyTestResult) string {
	if res.OK {
		return "连接测试通过"
	}
	switch res.FailType {
	case until.ProxyFailDial:
		return "代理连接不通过：" + res.Detail
	case until.ProxyFailOverseas:
		return "代理能连上，但无法访问境外网站：" + res.Detail
	}
	return "代理测试不通过：" + res.Detail
}

func boolToCode(ok bool) int {
	if ok {
		return 1
	}
	return 0
}

func resType(ok bool) string {
	if ok {
		return "success"
	}
	return "danger"
}
