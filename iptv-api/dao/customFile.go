package dao

import (
	"os"
	"strings"

	"gopkg.in/yaml.v3"
)

// 定制配置（/config/custom.yml）的**只读**视图
//
// 这份配置的正主在引擎侧（引擎写、引擎判授权），api 这里只读其中一小块：
// 默认下载页那四个按钮的开关。为什么不让 api 走 WS 问引擎 —— /api/site/index
// 是**前台公共页**，引擎没启动/没授权时它也得能出页面，所以读不了文件就按默认值出。
//
// 结构刻意只声明用得到的字段：引擎那边给 CustomSite 加字段时，这里不需要跟着改。
// yaml 标签必须与引擎 dto/customDto.go 的 CustomSite 逐字一致。

// CUSTOM_FILE_PATH 是定制配置的落点（持久卷），与引擎 dao/customDao.go 同一路径。
var CUSTOM_FILE_PATH = "/config/custom.yml"

// customLicDefaultName 是定制客户端名的兜底，与引擎 applyCustomDefaults 给
// CustomApk.Name 打的默认值**逐字一致**。引擎那份默认值刻意不落盘，所以 api 读盘
// 读不到时必须自己补上 —— 不补的话两边算出来的定制产物文件名会不一样
// （引擎出 "定制客户端-custom.apk"，api 却去找 "清和IPTV-custom.apk"）。
const customLicDefaultName = "定制客户端"

type customSiteFile struct {
	ShowCamel  *int64 `yaml:"show_camel"`
	ShowMytv   *int64 `yaml:"show_mytv"`
	ShowCustom *int64 `yaml:"show_custom"`
	ShowAdmin  *int64 `yaml:"show_admin"`
}

type customApkFile struct {
	Name string `yaml:"name"`
}

type customConfigFile struct {
	Site customSiteFile `yaml:"site"`
	Apk  customApkFile  `yaml:"apk"`
}

// CustomDlSwitches 读「默认下载页」的四个按钮开关，外加定制客户端名。
//
// 读不到文件（非定制授权时引擎会把文件删掉）或解析失败时，四个开关**一律回 true**：
// 默认下载页本来就是所有授权共用的，非定制客户不该因为读不到定制配置而少一排按钮。
// apkName 兜底成 customLicDefaultName，与引擎侧的取名规则对齐（见该常量注释）。
func CustomDlSwitches() (camel, mytv, custom, admin bool, apkName string) {
	camel, mytv, custom, admin = true, true, true, true
	apkName = customLicDefaultName

	data, err := os.ReadFile(CUSTOM_FILE_PATH)
	if err != nil {
		return
	}
	var raw customConfigFile
	if err := yaml.Unmarshal(data, &raw); err != nil {
		return
	}
	camel = onUnlessOff(raw.Site.ShowCamel)
	mytv = onUnlessOff(raw.Site.ShowMytv)
	custom = onUnlessOff(raw.Site.ShowCustom)
	admin = onUnlessOff(raw.Site.ShowAdmin)
	if name := strings.TrimSpace(raw.Apk.Name); name != "" {
		apkName = name
	}
	return
}

// onUnlessOff 与引擎侧 dto.DlButtonOn 同一语义：
// 没配过（nil）或显式 1 ⇒ 显示，显式 0 ⇒ 隐藏。
func onUnlessOff(v *int64) bool { return v == nil || *v == 1 }
