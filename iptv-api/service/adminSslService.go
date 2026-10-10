package service

import (
	"errors"
	"fmt"
	"log"
	"os"
	"strings"

	"iptv-api/dao"
	"iptv-api/dto"
	"iptv-api/until"
)

// 「SSL 证书」页的服务层。
//
// 三件事刻意分得很开，出问题时一眼能定位：
//   - **证书文件** → until.SaveSSLCert / ClearSSLCert（只管 /config/cert 下的两个文件）；
//   - **开关与端口** → config.yml 的 `ssl:` 段，必须走 dao.SetConfig ——
//     只有它会置 configDirty 并触发向引擎推送；直接改结构体再写盘，
//     引擎那边永远收不到这次变更；
//   - **nginx 生效** → until.ApplySSL（渲染片段 → `nginx -t` → reload，失败自回滚）。

// sslErr 是「参数/操作失败」的快捷响应，形状与其它管理接口一致。
func sslErr(msg string) dto.ReturnJsonDto {
	return dto.ReturnJsonDto{Code: 0, Msg: msg, Type: "danger"}
}

// SSLData 组装 SSL 页的全部数据。
//
// **返回形状与其它 `/data` 端点一致**：直接给页面 DTO，不套 ReturnJsonDto
// （前端对 `*/data` 一律 `data.value = await post(...)` 后直接取字段）。
// 配置没就绪时给一个"能渲染的空壳 + Warning"，不让页面白屏。
func SSLData() dto.SSLDataDto {
	cfg := dao.GetConfig()
	if cfg == nil {
		return dto.SSLDataDto{Port: until.DefaultHTTPSPort, Warning: "配置还没加载完成，请稍后重试"}
	}

	out := dto.SSLDataDto{
		Enable:        cfg.SSL.Enable,
		ForceRedirect: cfg.SSL.ForceRedirect,
		Port:          until.SSLPort(cfg),
		NginxVersion:  until.NginxVersion(),
		Cert:          until.LoadSSLCertInfo(),
		CertDir:       until.SSLDirForDisplay(),
		CertPath:      until.CertFilePath(),
		KeyPath:       until.KeyFilePath(),
		CertName:      cfg.SSL.CertName,
		KeyName:       cfg.SSL.KeyName,
	}
	out.HTTP2 = until.SupportsHTTP2(out.NginxVersion)
	out.Running = until.PortListening(out.Port)
	out.Listening = out.Running

	out.CertSize, out.CertModTime = until.SSLFileStat(until.CertFilePath())
	out.KeySize, out.KeyModTime = until.SSLFileStat(until.KeyFilePath())
	out.KeyConfigured = until.Exists(until.KeyFilePath())

	// 证书原文回填文本框 —— 这样"只改开关"时文本框里还有内容，
	// 保存不会把证书清掉。私钥**不在这里**，理由见 dto.SSLDataDto.CertPEM。
	// 读不到不是错误：那正是"还没上传"的正常状态。
	if b, err := os.ReadFile(until.CertFilePath()); err == nil {
		out.CertPEM = string(b)
	}

	out.Warning = sslWarning(out)
	return out
}

// sslWarning 汇总"配置没问题、但用起来会出问题"的情况，一次说清。
func sslWarning(d dto.SSLDataDto) string {
	switch {
	case d.ForceRedirect && !d.Enable:
		return "已打开「80 强制跳转」但 HTTPS 是关的 —— 实际不会跳转，请先开启 HTTPS。"
	case d.Enable && !d.Running:
		return fmt.Sprintf("HTTPS 配置已生效，但 %d 端口没有在监听：请确认容器把 %d 映射出来了"+
			"（docker run -p %d:%d 或 compose 里的 ports）。", d.Port, d.Port, d.Port, d.Port)
	case d.Cert.Expired:
		return "证书已经过期，客户端会直接报错，请尽快更换。"
	case d.Cert.NotYetValid:
		return "证书还没到生效时间（NotBefore 在未来），客户端会报证书无效。"
	case d.Cert.OK && d.KeyConfigured && !d.Cert.KeyMatches:
		return "私钥与证书不是一对，开启 HTTPS 会让 nginx 重载失败。"
	case d.Cert.ExpiringSoon:
		return fmt.Sprintf("证书还有 %d 天到期，建议提前换新。", d.Cert.DaysLeft)
	}
	return ""
}

// sslApplyData 是保存/清除成功后回给前端的一小段结果。
type sslApplyData struct {
	ConfChanged bool   `json:"confChanged"`
	Reloaded    bool   `json:"reloaded"`
	Listening   bool   `json:"listening"`
	Message     string `json:"message"`
}

// SSLSave 保存证书/私钥与开关，并让 nginx 生效。
func SSLSave(req dto.SSLSaveReq) dto.ReturnJsonDto {
	cfg := dao.GetConfig()
	if cfg == nil {
		return sslErr("配置还没加载完成，请稍后重试")
	}

	port := req.Port
	if port < 1 || port > 65535 {
		port = until.DefaultHTTPSPort
	}

	certPEM := strings.TrimSpace(req.CertPEM)
	keyPEM := strings.TrimSpace(req.KeyPEM)

	// 1) 证书/私钥：两个都留空 = 保持磁盘上的原样（见 dto.SSLSaveReq 的空值约定）。
	//    具体校验与落盘在 until.ApplySSLCert 里（那里带单元测试）。
	if err := until.ApplySSLCert(certPEM, keyPEM); err != nil {
		return sslErr(err.Error())
	}

	// 2) 开关落到 config.yml。
	//
	// ForceRedirect 在这里**收敛**成「HTTPS 也开着」才为真：两者是从属关系，
	// 单独打开跳转会把站点锁在门外（80 全部 301 到没人监听的端口，而容器因为
	// 环回豁免还是健康的 ⇒ 页面进不去、告警全绿）。收敛成同一个真值之后，
	// 界面上重新读回来的开关状态与实际生效的状态永远一致。
	old := cfg.SSL
	cfg.SSL.Enable = req.Enable
	cfg.SSL.ForceRedirect = req.ForceRedirect && req.Enable
	cfg.SSL.Port = port
	if certPEM != "" {
		cfg.SSL.CertName = req.CertName
	}
	if keyPEM != "" {
		cfg.SSL.KeyName = req.KeyName
	}
	dao.SetConfig(cfg)

	// 3) 渲染 → nginx -t → reload。失败就把开关退回原样并重放一次旧配置，
	//    不留下"配置文件说开着、实际没生效"这种错位状态。
	res, err := until.ApplySSL()
	if err != nil {
		cfg.SSL = old
		dao.SetConfig(cfg)
		if _, err2 := until.ApplySSL(); err2 != nil {
			log.Println("SSL 回滚失败:", err2)
		}
		return sslErr(err.Error())
	}

	return dto.ReturnJsonDto{Code: 1, Msg: res.Message, Type: "success", Data: sslApplyData{
		ConfChanged: res.ConfChanged,
		Reloaded:    res.Reloaded,
		Listening:   res.Listening,
		Message:     res.Message,
	}}
}

// SSLClear 清除证书与私钥（并把两个开关一起关掉）。
func SSLClear() dto.ReturnJsonDto {
	cfg := dao.GetConfig()
	if cfg == nil {
		return sslErr("配置还没加载完成，请稍后重试")
	}

	// 顺序不能反：**先关开关并让 nginx 生效，再删文件**。
	// 反过来会让 nginx 配置里的 ssl_certificate 指着一个已删除的文件 ——
	// 之后任何一次 reload（哪怕是别的原因触发的）都会失败。
	old := cfg.SSL
	cfg.SSL.Enable = false
	cfg.SSL.ForceRedirect = false
	cfg.SSL.CertName = ""
	cfg.SSL.KeyName = ""
	dao.SetConfig(cfg)

	if _, err := until.ApplySSL(); err != nil {
		cfg.SSL = old
		dao.SetConfig(cfg)
		if _, err2 := until.ApplySSL(); err2 != nil {
			log.Println("SSL 回滚失败:", err2)
		}
		return sslErr("关闭 HTTPS 失败，证书未删除：" + err.Error())
	}
	if err := until.ClearSSLCert(); err != nil {
		return sslErr("证书文件删除失败：" + err.Error())
	}
	return dto.ReturnJsonDto{Code: 1, Msg: "证书已清除，HTTPS 已关闭", Type: "success"}
}

// SSLReconcile 按磁盘上的证书与 config.yml 的开关，重建 nginx 片段并重载。
//
// 供启动流程调用：容器重建后 /config 里的证书还在、config.yml 也还在，
// 但 /config/nginx 下生成的片段**可能丢了**（用户手工删过、或换了部署方式）。
// 不重放一次的话，表现为"配置里写着 HTTPS 开着，实际 80/443 都上不去"。
//
// 只在真的要变时才写文件与重载，安静启动。返回 error 时调用方只记日志 ——
// HTTPS 没配好不该拦住整个服务的启动。
func SSLReconcile() error {
	cfg := dao.GetConfig()
	if cfg == nil {
		return errors.New("配置还没加载完成")
	}
	// 没开 HTTPS、也没开强制跳转时不做任何事：绝大多数机器属于这一类，
	// 别在启动路径上无谓地跑 nginx -s reload。
	if !cfg.SSL.Enable && !cfg.SSL.ForceRedirect {
		return nil
	}
	res, err := until.ApplySSL()
	if err != nil {
		return err
	}
	if res.ConfChanged || res.Reloaded {
		log.Println("SSL 配置已重建:", res.Message)
	}
	return nil
}
