package service

import (
	"strings"
	"testing"
)

// 契约：骆驼壳（/apk/lt/login）下发的「应用下载地址 / 版本」必须是骆驼壳自己的。
//
// service.ApkLogin 里那两行是按**清和壳**拼的（cfg.Build.Version / cfg.Build.Name），
// 两个壳共用这个 service 函数，所以调用方（api.ApkLogin）必须按壳覆盖一次。
//
// 现状说明（2026-10-13 实测）：本壳把 login 下发的 appurl/appver **只写不读**
// —— client/smali 的 SplashActivity->j/->b 只有 sput、没有 sget，升级实际走
// /apk/lt/getver（g$3.smali 写 g->g/g->f），那条口径是对的。所以这是一个
// "今天无害、但契约错"的值：客户端一旦读起来，骆驼壳就会去下载清和壳的包。
//
// 这一层是**源码契约层**，钉的是"分流块存在且用的是 cfg.BuildLt"。真行为验证
// 走运行时：POST /apk/lt/login 拿密文 → 用 GetAesKeyLt() 的 key[5:21] 解密 →
// 断言 appurl 指向 /app/<BuildLt.Name>.apk。
func TestApkLoginLuotuoShellUsesOwnAppUrl(t *testing.T) {
	src := srcOf(t, "../api/apkApi.go")

	// 前置：分流判据必须在（否则覆盖块根本进不去）。
	// 新口径：**包名上报优先**（IsLuotuoPackage(user.Pkg)），无包名上报时回落路径判壳。
	if !strings.Contains(src, "until.IsLuotuoPackage(user.Pkg)") {
		t.Fatal("api.ApkLogin 里找不到按包名分流（IsLuotuoPackage）的判据 —— 骆驼壳会拿到清和壳的包地址")
	}
	if !strings.Contains(src, "isLuotuoShell(c)") {
		t.Fatal("api.ApkLogin 里找不到路径判壳兜底（isLuotuoShell）")
	}
	for _, want := range []string{
		"result.AppURL = adminBase(c) + until.ClientLtApkURL(cfg.BuildLt.Name, false)",
		"result.AppVer = cfg.BuildLt.Version",
	} {
		if !strings.Contains(src, want) {
			t.Errorf("骆驼壳登录未按自己的产品名下发：缺少 %q", want)
		}
	}

	// 反向断言：分流块里不许退回清和壳的字段。
	// 钉住**失败原因**：cfg.Build.Name 出现在 AppURL 这一行，就是把清和壳的包
	// 发给了骆驼壳（表现为"骆驼壳点升级装成了清和壳"，或者装了报签名/包名冲突）。
	if strings.Contains(src, `result.AppURL = adminBase(c) + until.ClientApkURL(cfg.Build.Name, false)`) {
		t.Error("骆驼壳分流块里用了 cfg.Build.Name —— 又把清和壳的包地址发给了骆驼壳")
	}
	if strings.Contains(src, "result.AppVer = cfg.Build.Version") {
		t.Error("骆驼壳分流块里用了 cfg.Build.Version —— 版本号口径串到清和壳那边了")
	}
}

// 契约：登录下发的 dataurl 必须把骆驼壳指到**带 /lt 段的频道端点**。
//
// 客户端把 login 返回的 dataurl 直接当频道列表地址用（smali `SplashActivity.l()`
// 里 `->j` 拼在请求体末尾）。早先统一下发 "/apk/channels"，于是骆驼壳走的是
// 清和壳端点 —— 服务端只能靠请求体里的 appname 去猜（见缺陷3），一旦客户端没带
// appname 就退化成"用清和壳的钥匙加密"。
// 路由与 appname 两条判据都要在，任何一条单独失效都不至于全断。
func TestApkLoginLuotuoShellPointsToLtChannels(t *testing.T) {
	src := srcOf(t, "../api/apkApi.go")

	if !strings.Contains(src, "result.DataURL = adminBase(c) + \"/apk/lt/channels\"") {
		t.Error("骆驼壳登录未把 dataurl 指向 /apk/lt/channels —— " +
			"客户端会去清和壳端点拉频道，服务端只能靠 appname 猜（缺陷3 复发路径）")
	}
	// 反向断言：骆驼壳请求不许在 GetChannels 上只看路由、不看 appname。
	if !strings.Contains(src, "lt := service.IsLuotuoAppName(channel.AppName) || isLuotuoShell(c)") {
		t.Error("频道路由未同时用 appname 与 /lt 路由分流 —— " +
			"旧包（dataurl=/apk/channels）会拿到用清和壳钥匙加密的载荷")
	}
}
