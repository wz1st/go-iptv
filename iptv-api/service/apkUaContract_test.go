package service

import (
	"encoding/json"
	"strings"
	"testing"

	"iptv-api/dto"
)

// 需求「分组自定义 UA 下发到 APK」的判据。
//
// 两层：
//   - **线上契约层**：DTO 的 json 名必须逐字是 `ua`。客户端 `ChannelGroupDto`
//     读的是 `@SerialName("ua")`，名字对不上**两边都不会报错** ——
//     kotlinx 的默认值会让它静默变成空串，只在"某个源播不动"时才暴露。
//   - **源码契约层**：UA 必须真的被塞进响应，而且必须取自分组记录（`v.UA`）。
//     这一层专门抓"字段留着、值恒为空"这种接口层看不出来的回归。

// TestChannelListDtoWireNameIsUa 字段名改动必须当场失败。
func TestChannelListDtoWireNameIsUa(t *testing.T) {
	b, err := json.Marshal(dto.ChannelListDto{Name: "央视", Ua: "Mozilla/5.0 test"})
	if err != nil {
		t.Fatalf("序列化失败: %v", err)
	}
	if !strings.Contains(string(b), `"ua":"Mozilla/5.0 test"`) {
		t.Fatalf("分组 UA 必须以 json 名 `ua` 下发（客户端 @SerialName(\"ua\")），实际: %s", string(b))
	}

	// 反方向：客户端原样读回来
	var back dto.ChannelListDto
	if err := json.Unmarshal(b, &back); err != nil {
		t.Fatalf("反序列化失败: %v", err)
	}
	if back.Ua != "Mozilla/5.0 test" {
		t.Fatalf("往返后 UA 丢了: %q", back.Ua)
	}

	// 没配 UA 的分组下发空串（不是省略字段）—— 客户端按"空 = 保持自己的设置"处理
	b2, err := json.Marshal(dto.ChannelListDto{Name: "无UA分组"})
	if err != nil {
		t.Fatal(err)
	}
	if !strings.Contains(string(b2), `"ua":""`) {
		t.Fatalf("未配置时应下发空串，实际: %s", string(b2))
	}
}

// TestGetChannelsSendsGroupUa 分组 DTO 里的 Ua 必须来自分组记录。
func TestGetChannelsSendsGroupUa(t *testing.T) {
	src := srcOf(t, "apkService.go")
	if !strings.Contains(src, "Ua:   v.UA,") {
		t.Fatal("GetChannels 不再下发分组 UA —— APK 侧「下发 > APK 自定义 > 默认」的链路断在源头")
	}
	// 反向断言：不许用固定值填充。字段还在、值恒为空同样会让源站拒播。
	for _, bad := range []string{`Ua:   ""`, `Ua:   "Mozilla/5.0"`} {
		if strings.Contains(src, bad) {
			t.Errorf("分组 UA 被写成了固定值（%q），必须取自分组记录 v.UA", bad)
		}
	}
	// 只允许出现一次赋值，防"取对之后立刻被覆写"
	if n := strings.Count(src, "Ua:"); n != 1 {
		t.Errorf("GetChannels 里对 Ua 的赋值应恰好 1 处（现状 %d 处）", n)
	}
}

// TestCaGetChannelsSelectsGroupUa 分组 UA 来自查询别名 ca.ua。
//
// 少了这一列，`v.UA` 恒为空串：下发字段还在、值永远是空 ——
// 请求能看到 `"ua":""`，看上去"字段没问题"，实际上功能整条失效。
func TestCaGetChannelsSelectsGroupUa(t *testing.T) {
	src := srcOf(t, "../until/channelsUntil.go")
	if n := strings.Count(src, "ca.ua AS ua"); n != 1 {
		t.Fatalf("普通分组查询里应恰好出现一次 `ca.ua AS ua`（现状 %d 次）", n)
	}
	// 与被中转判据同源取列：两个都要在，少一个都会静默失效
	if !strings.Contains(src, "ca.proxy, ca.ua AS ua") {
		t.Fatal("Select 必须同时带上 ca.proxy 与 ca.ua（中转判据与 UA 判据同源）")
	}
}

// TestApkClientURLsUseRequestBase 客户端拿到的地址必须按**本次请求**的
// scheme+host 拼，而不是配置里那条写死的 http 地址。
//
// 站点挂到 HTTPS 后，配置里的 http 地址会让下载链接变成混合内容被拦掉
// （浏览器原话：The file at 'http://…apk' was loaded over an insecure connection.
// This file should be served over HTTPS）。走请求基址能自动同协议。
func TestApkClientURLsUseRequestBase(t *testing.T) {
	src := srcOf(t, "../api/apkApi.go")
	for _, want := range []string{
		"service.ApkLogin(dbUser, adminBase(c))",
		"service.Getver(adminBase(c))",
	} {
		if !strings.Contains(src, want) {
			t.Errorf("客户端接口不再走请求基址：缺少 %q", want)
		}
	}
	// 反向断言：不许退回配置里的固定地址
	for _, bad := range []string{"service.Getver(cfg.ServerUrl", "service.Getver(dao.GetConfig().ServerUrl"} {
		if strings.Contains(src, bad) {
			t.Errorf("仍在使用配置里的固定基址（%q）—— 上 HTTPS 后必然出现明文下载地址", bad)
		}
	}
}
