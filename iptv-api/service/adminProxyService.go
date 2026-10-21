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
//
// 回话里带 canForce：告诉前端「这次失败要不要给用户一个强制保存的出口」。
// 判据只有一条 —— 失败类型是 overseas（代理能连但出不去境外）。
// dial（连不上代理）不允许强存，那种配置存下去必然是坏的。
//
// 测完会签一张凭据（testToken）随回话带回：它记着"这份配置刚测过、
// 结论是什么"。用户接着点保存时带着它来，服务端核对配置没被改动过
// 就免掉重复的连通性测试（见 adminProxyToken.go）。
func ProxyTest(req dto.OutProxy) dto.ReturnJsonDto {
	p := normalizeProxyReq(req)
	if p.Type == until.ProxyTypeNone {
		return dto.ReturnJsonDto{Code: 1, Msg: "当前是无代理，无需测试", Type: "info",
			Data: dto.OutProxyTestDto{OK: true}}
	}
	// 用**合并后**的配置去测：口令留空表示"不修改"，那这次测试就该用
	// 库里存着的那份口令，而不是一个空口令 —— 否则每次都得把口令重打一遍
	// 才能测出准结果。合并后测出来的结论，也才和保存时要落盘的那份一致。
	if cfg := dao.GetConfig(); cfg != nil {
		p = mergeProxyConn(cfg.OutProxy, p)
	}
	res := until.TestOutProxy(p)
	log.Printf("代理连通性测试：协议=%s %s:%d 结果=%v 类型=%s 阶段=%s %s",
		p.Type, p.Host, p.Port, res.OK, res.FailType, res.Stage, res.Detail)
	verdict := proxyTestVerdict{OK: res.OK, FailType: res.FailType}
	return dto.ReturnJsonDto{
		Code: boolToCode(res.OK),
		Msg:  proxyTestMsg(res),
		Type: resType(res.OK),
		Data: dto.OutProxyTestDto{
			OK: res.OK, FailType: res.FailType, Stage: res.Stage,
			Detail: res.Detail, LatencyMs: res.LatencyMs,
			CanForce:  canForceSave(res),
			TestToken: issueProxyTestToken(proxyFingerprint(p), verdict),
		},
	}
}

// canForceSave 判定「这次失败允许不允许强制保存」。
//
// 只有「代理能连上、但访问不了境外」允许：那种代理对只要访问国内资源的
// 用途仍然有用，用户明说要就要，替他拦着没道理。
// 而「连不上代理」时存下去必然是一条坏配置 —— 运行时的表现是各类抓取
// 静默失败，比压根没配代理更难排查，所以这种失败不给强存的口子。
func canForceSave(res until.ProxyTestResult) bool {
	return !res.OK && res.FailType == until.ProxyFailOverseas
}

// ProxySave 保存代理的连接参数（协议/地址/端口/账密）。
//
// 「无代理」这条特殊路径**不走测试**、直接落盘：它不连任何东西，
// 测它只会得到一句"直连访问不了境外"的假失败，把"关掉代理"这个动作卡住。
// 四个作用范围开关不在这里提交（沿用当前配置），改开关请走 ProxyScope。
//
// 测试不通过时**默认不落盘**；但失败类型是 overseas（代理通、只是出不去境外）
// 且请求带了 force=1 时，允许用户坚持保存 —— 判据由服务端做，前端说了算不算数。
//
// 免测规则：请求带 testToken 且它对应的配置与这次要存的**逐字一致**
// （协议/地址/端口/账号开关/用户名/口令都没动过）时，沿用那张凭据上的
// 结论，不再重复走一遍外网探测。
func ProxySave(req dto.OutProxySaveDto) dto.ReturnJsonDto {
	cfg := dao.GetConfig()
	if cfg == nil {
		return dto.ReturnJsonDto{Code: 0, Msg: "配置还没加载完成，请稍后重试", Type: "danger"}
	}

	p := normalizeProxyReq(req.OutProxy)
	p = mergeProxyConn(cfg.OutProxy, p)
	fp := proxyFingerprint(p)

	// 有代理才测；无代理直接存。
	if p.Type != until.ProxyTypeNone {
		// 凭据有效 ⇒ 这份配置刚才确实测过，结论已知。
		//   结论是通过 ⇒ 直接存，不再重复探测外网；
		//   结论是 overseas 失败且用户点了强制保存 ⇒ 直接强存
		//     （用户已经看过失败结论并明确坚持，没必要再让他等一轮十几秒）。
		// 其它情况（无凭据 / 凭据是 dial 失败）⇒ 老实重测一遍：
		// 网络可能已经恢复，而"保存时又通了"是好事，值得再探一次。
		if v, ok := verifyProxyTestToken(req.TestToken, fp); ok {
			if v.OK {
				log.Printf("代理配置已保存（沿用刚才的连通性测试结论，未重复测试）：协议=%s %s:%d",
					p.Type, p.Host, p.Port)
				return saveProxyConfig(cfg, p, "代理配置已保存")
			}
			if req.Force == 1 && v.FailType == until.ProxyFailOverseas {
				log.Printf("代理配置已强制保存（沿用刚才测出的 overseas 失败结论）：协议=%s %s:%d",
					p.Type, p.Host, p.Port)
				cfg.OutProxy = p
				dao.SetConfig(cfg)
				return dto.ReturnJsonDto{
					Code: 1,
					Msg:  "已按你的要求强制保存代理配置（该代理访问不了境外站点，勾选了走代理的用途可能失败）",
					Type: "warning",
				}
			}
		}

		res := until.TestOutProxy(p)
		if !res.OK {
			// 强制保存只认 overseas：连不上代理的那种失败不给出路。
			// 现场重测仍是 overseas 时才允许强存 —— 强存依据的是
			// 服务端**实测**到的失败类型，不是前端自报的一串字符。
			if req.Force != 1 || !canForceSave(res) {
				log.Printf("代理配置未保存（测试不通过）：协议=%s %s:%d 类型=%s 阶段=%s %s",
					p.Type, p.Host, p.Port, res.FailType, res.Stage, res.Detail)
				return dto.ReturnJsonDto{
					Code: 0,
					Msg:  proxyTestMsg(res) + "，配置未保存",
					Type: "danger",
					Data: dto.OutProxyTestDto{
						OK: false, FailType: res.FailType, Stage: res.Stage,
						Detail: res.Detail, LatencyMs: res.LatencyMs,
						CanForce:  canForceSave(res),
						TestToken: issueProxyTestToken(fp, proxyTestVerdict{OK: false, FailType: res.FailType}),
					},
				}
			}
			// 用户坚持保存：照存，但在日志与回话里都留痕，
			// 免得日后排查"为什么升级一直失败"时忘了这一手。
			log.Printf("代理配置已强制保存（测试不通过但用户坚持）：协议=%s %s:%d 类型=%s 阶段=%s %s",
				p.Type, p.Host, p.Port, res.FailType, res.Stage, res.Detail)
			cfg.OutProxy = p
			dao.SetConfig(cfg)
			return dto.ReturnJsonDto{
				Code: 1,
				Msg:  "已按你的要求强制保存代理配置（该代理访问不了境外站点，勾选了走代理的用途可能失败）",
				Type: "warning",
			}
		}
		msg := "代理配置已保存"
		if res.LatencyMs > 0 {
			msg += "，连接耗时 " + strconv.FormatInt(res.LatencyMs, 10) + " 毫秒"
		}
		// 必须走 SetConfig：只有它会置 configDirty 并把变更推给引擎。
		// 直接改结构体再写盘的话，引擎侧永远收不到这次变更。
		cfg.OutProxy = p
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

// saveProxyConfig 落盘一份代理配置（免测路径用）。
func saveProxyConfig(cfg *dto.Config, p dto.OutProxy, msg string) dto.ReturnJsonDto {
	cfg.OutProxy = p
	dao.SetConfig(cfg)
	log.Printf("代理配置已保存：协议=%s %s:%d 范围 epg=%d src=%d up=%d relay=%d",
		p.Type, p.Host, p.Port, p.UseEpg, p.UseSrc, p.UseUp, p.UseRelay)
	return dto.ReturnJsonDto{Code: 1, Msg: msg, Type: "success"}
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
	// 拨完开关立刻说清"这一路现在到底走没走代理"。四个开关都是**即时生效**
	// 的（api 侧每次出网都重读配置），但"即时生效"不等于"用户看得见" ——
	// 中转那一路还要经引擎 ApplyRelayProxy 换上 Transport，光有一行
	// 「useRelay=1」并不能证明取流真的挂了代理。
	reportProxyScopeEffect(req.Key, req.Value)
	return dto.ReturnJsonDto{Code: 1, Msg: "已保存", Type: "success"}
}

// reportProxyScopeEffect 在改完作用范围开关后，打出这一路当前的实际状态。
//
// 三个开关（EPG / 频道源 / 在线升级）在 api 侧，当场就能判定；中转那一路
// 在引擎侧生效，api 只能报"配置已下发"，真正换上取流 Transport 要等引擎
// 心跳把配置对账过去（proxy.ApplyRelayProxy）—— 所以措辞上区分开，
// 不给用户"已经生效"的错觉。
func reportProxyScopeEffect(key string, value int64) {
	purpose, ok := scopePurpose[key]
	if !ok {
		return
	}
	if value == 0 {
		log.Printf("作用范围已关闭：%s（该用途改为直连）", proxyPurposeText(purpose))
		return
	}
	if purpose == until.ProxyUseRelay {
		log.Printf("作用范围已开启：中转取流走代理（已下发配置，引擎换上取流代理后本条生效；" +
			"引擎侧日志会打印「中转取流已启用 SOCKS5 代理」）")
		return
	}
	until.LogProxyUse(purpose, "（下次出网时生效）", false)
}

// scopePurpose 把四个开关名映射到 until 里的用途常量。
// 与 scopeKeys 一一对应 —— 两个表分开放是为了让"能改什么"与"这是什么"
// 各管一件事，但**必须同步增删**：少一个就会出现"能改但判不出用途"的开关。
var scopePurpose = map[string]int{
	"useEpg":   until.ProxyUseEpg,
	"useSrc":   until.ProxyUseSrc,
	"useUp":    until.ProxyUseUp,
	"useRelay": until.ProxyUseRelay,
}

func proxyPurposeText(purpose int) string {
	switch purpose {
	case until.ProxyUseEpg:
		return "EPG 更新"
	case until.ProxyUseSrc:
		return "频道源更新"
	case until.ProxyUseUp:
		return "在线升级"
	case until.ProxyUseRelay:
		return "中转取流"
	}
	return "未知用途"
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
