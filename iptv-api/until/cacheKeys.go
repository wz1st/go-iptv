package until

// 缓存键与缓存失效策略的唯一定义处。
//
// 命名规范：<域>_<对象>_<标识>，全小写下划线。
//   域：meal=套餐派生、epg_src=EPG 源、mytv=MyTV 设备、ca=频道分组。
//   对象：epg_xml=聚合节目单、sub_txt/sub_m3u8=订阅、xml/cntv=源原始数据。
//   标识：套餐 id / 设备 id / 源名。
//
// 键名即文件名（文件缓存），所以只能用小写字母、数字、下划线。

import (
	"strconv"
	"strings"
)

// ---- 套餐派生（api 独占）----

// mealEpgXmlKey 套餐聚合节目单（XML）。
func mealEpgXmlKey(mealId int64) string {
	return "meal_epg_xml_" + strconv.FormatInt(mealId, 10)
}

// mealSubTxtKey 套餐订阅列表（txt 格式）。
func mealSubTxtKey(mealId int64) string {
	return "meal_sub_txt_" + strconv.FormatInt(mealId, 10)
}

// mealSubM3u8Key 套餐订阅列表（m3u8 格式）。
func mealSubM3u8Key(mealId int64) string {
	return "meal_sub_m3u8_" + strconv.FormatInt(mealId, 10)
}

// mytvSubM3u8Key MyTV 设备的订阅列表（按设备，不是按套餐）。
func mytvSubM3u8Key(deviceId string) string {
	return "mytv_sub_m3u8_" + deviceId
}

// ---- EPG 源原始数据（api 独占）----

// EpgSourceXmlKey 某个 EPG 源抓回来的整份 XML。
func EpgSourceXmlKey(name string) string {
	return "epg_src_xml_" + strings.TrimSpace(name)
}

// EpgSourceCntvKey CNTV 接口返回的数据。
func EpgSourceCntvKey(name string) string {
	return "epg_src_cntv_" + strings.ToLower(strings.TrimSpace(name))
}

// ---- 跨进程契约键（引擎也在写，改名必须 api 与引擎同版本发布）----

// caAutoCategoryKey 聚合分组算出来的频道列表。引擎写、api 删。
func caAutoCategoryKey(categoryId int64, show bool) string {
	key := "autoCategory_" + strconv.FormatInt(categoryId, 10)
	if show {
		key += "_show"
	}
	return key
}

// caProxyCheckKey 频道分组的中转检查结果。引擎写、api 写删。
func caProxyCheckKey(categoryId int64) string {
	return "proxyCaCheck_" + strconv.FormatInt(categoryId, 10)
}
