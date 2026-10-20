package service

import (
	"log"
	"strconv"
	"strings"

	"iptv-api/dao"
	"iptv-api/dto"
	"iptv-api/until"
)

// 「代理设置」页的服务层。
//
// ## 保存与作用范围为什么分成两条路
//
// 页面上这两件事的风险等级完全不同，所以不能捆在一起提交：
//
//   - 协议/地址/端口/账密：填错的后果是**静默失效**（EPG、更新、下载各自
//     安静地失败，日志只有一行「请求失败」）。所以落盘前必须实测：
//     连代理 + 访问 GitHub + 访问 Google，不通过一律不存。
//   - 四个作用范围开关：只是"这次要不要用它"，改错了当场就能看出来，
//     不需要测试；而且每个开关都应该**各自即时生效**，不能等用户再去点一次
//     「保存配置」—— 否则会出现"开关已经拨动了但还没生效"的错觉。
//
// 因此 ProxySave 只写连接参数（开关沿用当前配置），ProxyScope 一次只改一个开关。

// relayAllowed 中转取流走代理对**全部授权账号**开放，不限授权类型。
//
// 判据用 dao.LicStillValid()（Type>=2，或 Type==1 且未过期），与中转开关
// 本身走的是同一把尺 —— EnforceLicenseGate 在授权失效时就是把
// cfg.Proxy.Status 落 0，用的是它。早先这里按 Type==4（定制授权）卡，
// 于是普通授权账号明明能开中转、却配不了中转的代理，界面与实际能力对不上。
//
// api 侧读的是引擎心跳带回来的授权快照（dao.GetLic），不自己解 license.lic。
func relayAllowed() bool {
	return dao.LicStillValid()
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
// 中转这一路只有授权账号能用，未授权时提交什么都会被抹平。
func normalizeProxyReq(in dto.OutProxy) dto.OutProxy {
	out := until.NormalizeOutProxy(in)
	if !relayAllowed() {
		out.UseRelay = 0
	}
	return out
}

// mergeProxyConn 把页面的连接参数并进当前配置。
//
// 三个细节：
//   - 四个作用范围开关**沿用当前配置**，不被这次提交覆盖（它们归 ProxyScope 管）；
//   - 口令留空表示"不修改"（页面不回显口令，不重填就等于抹掉它是错的行为）；
//   - 开关关着时账密不保留（config.yml 里留一份用不到的口令没有意义）。
func mergeProxyConn(cur, in dto.OutProxy) dto.OutProxy {
	out := in
	// 这里自己再归一一次协议，别指望调用方已经做过：ProxyTypeNone 是空串，
	// 而 config.yml 里写的是 `type: none` —— 只比 `in.Type == ""` 的话，
	// 从配置文件读来的 "none" 会被当成"选了某个代理"，于是四个开关关不掉。
	if until.NormalizeProxyType(in.Type) == until.ProxyTypeNone {
		// 无代理：四个开关随协议一起落 0（until.NormalizeOutProxy 已做），
		// 地址与端口保留，供下次启用时直接用。
		out.Type = until.ProxyTypeNone
		out.UseEpg, out.UseSrc, out.UseUp, out.UseRelay = 0, 0, 0, 0
	} else {
		out.UseEpg, out.UseSrc, out.UseUp, out.UseRelay = cur.UseEpg, cur.UseSrc, cur.UseUp, cur.UseRelay
	}
	if out.AuthOn != 1 {
		out.User, out.Pwd = "", ""
		return out
	}
	if strings.TrimSpace(out.Pwd) == "" {
		out.Pwd = cur.Pwd // 留空 = 不改，而不是"清空口令"
	}
	return out
}

// ProxyTest 只测不存：连代理 + 访问 GitHub/Google，失败时按类型回话。
func ProxyTest(req dto.OutProxy) dto.ReturnJsonDto {
	p := normalizeProxyReq(req)
	if p.Type == until.ProxyTypeNone {
		return dto.ReturnJsonDto{Code: 1, Msg: "当前是无代理，无需测试", Type: "info",
			Data: dto.OutProxyTestDto{OK: true}}
	}
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

// ProxySave 保存代理的连接参数（协议/地址/端口/账密）。
//
// 「无代理」这条特殊路径**不走测试**、直接落盘：它不连任何东西，
// 测它只会得到一句"直连访问不了境外"的假失败，把"关掉代理"这个动作卡住。
// 四个作用范围开关不在这里提交（沿用当前配置），改开关请走 ProxyScope。
func ProxySave(req dto.OutProxy) dto.ReturnJsonDto {
	cfg := dao.GetConfig()
	if cfg == nil {
		return dto.ReturnJsonDto{Code: 0, Msg: "配置还没加载完成，请稍后重试", Type: "danger"}
	}

	p := normalizeProxyReq(req)
	p = mergeProxyConn(cfg.OutProxy, p)

	// 有代理才测；无代理直接存。
	if p.Type != until.ProxyTypeNone {
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
		cfg.OutProxy = p
		msg := "代理配置已保存"
		if res.LatencyMs > 0 {
			msg += "，连接耗时 " + strconv.FormatInt(res.LatencyMs, 10) + " 毫秒"
		}
		// 必须走 SetConfig：只有它会置 configDirty 并把变更推给引擎。
		// 直接改结构体再写盘的话，引擎侧永远收不到这次变更。
		dao.SetConfig(cfg)
		log.Printf("代理配置已保存：协议=%s %s:%d 范围 epg=%d src=%d up=%d relay=%d",
			p.Type, p.Host, p.Port, p.UseEpg, p.UseSrc, p.UseUp, p.UseRelay)
		return dto.ReturnJsonDto{Code: 1, Msg: msg, Type: "success"}
	}

	cfg.OutProxy = p
	dao.SetConfig(cfg)
	log.Printf("已关闭代理（地址与端口保留）：%s:%d", p.Host, p.Port)
	return dto.ReturnJsonDto{Code: 1, Msg: "已关闭代理，四个作用范围已一并关闭", Type: "success"}
}

// scopeKeys 允许单独提交的四个作用范围开关。
var scopeKeys = map[string]func(*dto.OutProxy, int64){
	"useEpg":   func(p *dto.OutProxy, v int64) { p.UseEpg = v },
	"useSrc":   func(p *dto.OutProxy, v int64) { p.UseSrc = v },
	"useUp":    func(p *dto.OutProxy, v int64) { p.UseUp = v },
	"useRelay": func(p *dto.OutProxy, v int64) { p.UseRelay = v },
}

// ProxyScope 单独改一个作用范围开关，改完立刻生效。
//
// 不做连通性测试：开关只决定"这次抓取用不用代理"，拨错了当场能看出来，
// 拿一个几秒钟的外网探测去卡住每一次拨开关，体验反而更差。
// 四个开关**允许全关** —— 那就是"暂时不用代理"，是合法状态。
func ProxyScope(req dto.OutProxyScopeDto) dto.ReturnJsonDto {
	set, ok := scopeKeys[strings.TrimSpace(req.Key)]
	if !ok {
		return dto.ReturnJsonDto{Code: 0, Msg: "未知的作用范围：" + req.Key, Type: "danger"}
	}

	cfg := dao.GetConfig()
	if cfg == nil {
		return dto.ReturnJsonDto{Code: 0, Msg: "配置还没加载完成，请稍后重试", Type: "danger"}
	}

	// 值为 0/1 之外的（浮点、负数、字符串）一律当非法，而不是悄悄取整。
	if req.Value != 0 && req.Value != 1 {
		return dto.ReturnJsonDto{Code: 0, Msg: "开关只接受 0 或 1", Type: "danger"}
	}
	// 中转这一路的额外约束，与管理端界面保持一致。
	if req.Key == "useRelay" {
		if req.Value == 1 && !relayAllowed() {
			return dto.ReturnJsonDto{Code: 0, Msg: "中转取流代理仅授权账号可用", Type: "danger"}
		}
		if req.Value == 1 && until.NormalizeProxyType(cfg.OutProxy.Type) != until.ProxyTypeSocks5 {
			return dto.ReturnJsonDto{Code: 0, Msg: "中转取流只支持 SOCKS5 代理，请先把类型改成 SOCKS5", Type: "danger"}
		}
	}
	// 都没配代理时勾"走代理"没有意义：运行时表现是静默直连，
	// 与"配了但坏了"无法区分，所以直接拒。
	if req.Value == 1 && until.NormalizeProxyType(cfg.OutProxy.Type) == until.ProxyTypeNone {
		return dto.ReturnJsonDto{Code: 0, Msg: "还没有配置代理类型，请先保存协议、地址与端口", Type: "danger"}
	}

	set(&cfg.OutProxy, req.Value)
	dao.SetConfig(cfg)
	log.Printf("作用范围开关已更新：%s=%d", req.Key, req.Value)
	return dto.ReturnJsonDto{Code: 1, Msg: "已保存", Type: "success"}
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
