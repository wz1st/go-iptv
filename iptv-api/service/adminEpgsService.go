package service

import (
	"errors"
	"fmt"
	"iptv-api/dao"
	"iptv-api/dto"
	"iptv-api/models"
	"iptv-api/until"
	"net/http"
	"os"
	"strings"

	"github.com/gin-gonic/gin"
	"gorm.io/gorm"
)

func GetChName(req dto.ReqID) dto.ReturnJsonDto {
	//编辑
	epgId := req.ID
	if epgId == 0 {
		return dto.ReturnJsonDto{Code: 0, Msg: "EPG id不能为空", Type: "danger"}
	}

	var epg models.IptvEpg
	if err := dao.DB.Where("id = ?", epgId).First(&epg).Error; err != nil {
		return dto.ReturnJsonDto{Code: 0, Msg: "查询EPG 失败", Type: "danger"}
	}

	// 2026-10-29：不再按分组过滤候选频道。
	// 绑定已经改成"全局按频道名判定"，候选集就应该是**全部**频道名 ——
	// 否则用户想手动绑定某个台都做不到。
	var channeList []models.IptvChannel
	if err := dao.DB.Model(&models.IptvChannel{}).
		Select("distinct name").
		Where("status = 1").
		Order("name").
		Find(&channeList).Error; err != nil {
		return dto.ReturnJsonDto{Code: 0, Msg: "查询频道失败", Type: "danger"}
	}

	// 判定"已绑定"要走与 BindChannel 同一套规则（手动名单 > EPG 名 > 别名，
	// 并跳过排除名单），否则弹窗里勾上的状态与真正落库的结果会对不上。
	matcher := until.NewEpgNameMatcher()

	// 黑名单：这个 EPG 不要的台。名单里可能有库里根本没有的名字
	//（用户手动输入的，供后续频道导入后直接生效），所以它与频道列表分开给。
	blackSet := make(map[string]struct{})
	blacklist := make([]string, 0, 8)
	for _, n := range strings.Split(epg.Blacklist, ",") {
		n = strings.TrimSpace(n)
		if n == "" {
			continue
		}
		if _, dup := blackSet[n]; dup {
			continue
		}
		blackSet[n] = struct{}{}
		blacklist = append(blacklist, n)
	}

	channels := make([]string, 0, len(channeList))
	selected := make([]string, 0, 8)
	for _, v := range channeList {
		if _, black := blackSet[v.Name]; black {
			// 已在排除名单里的台不再出现在候选里（否则能同时"绑定"和"排除"）。
			continue
		}
		channels = append(channels, v.Name)
		// 命中本 EPG 的规则 ⇒ 已经绑着（这是拖拽源：用户可以把台拖进黑名单）。
		if matcher.Resolve(v.Name) == epgId {
			selected = append(selected, v.Name)
		}
	}

	return dto.ReturnJsonDto{
		Code: 1, Msg: "操作成功", Type: "success",
		Data: dto.EpgBindableDto{
			Channels:  channels,
			Selected:  selected,
			Blacklist: blacklist,
		},
	}
}

func SaveEpg(req dto.EpgSaveReq) dto.ReturnJsonDto {
	if req.Name == "" {
		return dto.ReturnJsonDto{Code: 0, Msg: "EPG 名称不能为空", Type: "danger"}
	}

	var epgData models.IptvEpg
	id := req.ID
	if id != 0 {
		if err := dao.DB.First(&epgData, "id = ?", id).Error; err != nil {
			if errors.Is(err, gorm.ErrRecordNotFound) {
				return dto.ReturnJsonDto{Code: 0, Msg: "EPG记录不存在", Type: "danger"}
			}
			return dto.ReturnJsonDto{Code: 0, Msg: "查询EPG失败", Type: "danger"}
		}
	}

	epgData.Name = req.Name
	epgData.Remarks = req.Remarks

	epgData.FromList = req.FromList

	if err := dao.DB.Save(&epgData).Error; err != nil {
		return dto.ReturnJsonDto{Code: 0, Msg: "保存EPG失败", Type: "danger"}
	}
	until.RequestChannelRefresh()
	return dto.ReturnJsonDto{Code: 1, Msg: "EPG " + epgData.Name + "保存成功", Type: "success"}
}

func BdingEpg(req dto.EpgBindReq) dto.ReturnJsonDto {
	id := req.ID
	chList := req.Channels
	if id == 0 {
		return dto.ReturnJsonDto{Code: 0, Msg: "EPG id不能为空", Type: "danger"}
	}

	namesList := strings.Split(chList, ",")

	var epgData models.IptvEpg

	if err := dao.DB.First(&epgData, "id = ?", id).Error; err != nil {
		if errors.Is(err, gorm.ErrRecordNotFound) {
			return dto.ReturnJsonDto{Code: 0, Msg: "EPG记录不存在", Type: "danger"}
		}
		return dto.ReturnJsonDto{Code: 0, Msg: "查询EPG失败", Type: "danger"}
	}

	// 黑名单（排除名单）：这个 EPG 不要的台。
	// 允许"库里还没有的名字"—— 用户先录进去，等频道导入后自动生效。
	blackList := until.RemoveEmptyStrings(strings.Split(req.Blacklist, ","))

	oldList := strings.Split(epgData.Content, ",")
	oldBlack := strings.Split(epgData.Blacklist, ",")

	bindSame := until.EqualStringSets(oldList, namesList)
	blackSame := until.EqualStringSets(oldBlack, blackList)
	if bindSame && blackSame {
		return dto.ReturnJsonDto{Code: 0, Msg: "EPG " + epgData.Name + "绑定未修改", Type: "success"}
	}

	epgData.Content = strings.Join(namesList, ",")
	epgData.Blacklist = strings.Join(blackList, ",")

	if err := dao.DB.Save(&epgData).Error; err != nil {
		return dto.ReturnJsonDto{Code: 0, Msg: "保存EPG失败", Type: "danger"}
	}
	// 手动勾选是"整份名单"的语义，所以其它 EPG 上还挂着这些名字的要摘掉，
	go func() {
		until.ReleaseNamesFromOtherEpgs(epgData.ID, namesList)
		until.RequestChannelRefresh()
	}()
	return dto.ReturnJsonDto{Code: 1, Msg: "EPG " + epgData.Name + "保存成功", Type: "success"}
}

func ChangeStatus(req dto.ReqID) dto.ReturnJsonDto {
	id := req.ID
	if id == 0 {
		return dto.ReturnJsonDto{Code: 0, Msg: "EPG id不能为空", Type: "danger"}
	}

	var epgData models.IptvEpg
	if err := dao.DB.Model(&models.IptvEpg{}).Where("id = ?", id).First(&epgData).Error; err != nil {
		return dto.ReturnJsonDto{Code: 0, Msg: "查询EPG失败", Type: "danger"}
	}

	if epgData.Status {
		dao.DB.Model(&models.IptvEpg{}).Where("id = ?", id).Update("status", 0)
	} else {
		dao.DB.Model(&models.IptvEpg{}).Where("id = ?", id).Update("status", 1)
	}
	// status 是绑定的前提：BindChannel 只认启用中的 EPG，SyncCaToEpg 也只写启用中的。
	until.RequestChannelRefresh()
	return dto.ReturnJsonDto{Code: 1, Msg: "EPG " + epgData.Name + "状态修改成功", Type: "success"}
}

func ChangeListStatus(req dto.ReqID) dto.ReturnJsonDto {
	id := req.ID
	if id == 0 {
		return dto.ReturnJsonDto{Code: 0, Msg: "EPG 列表不能为空", Type: "danger"}
	}

	var epgData models.IptvEpgList
	if err := dao.DB.Model(&models.IptvEpgList{}).Where("id = ?", id).First(&epgData).Error; err != nil {
		return dto.ReturnJsonDto{Code: 0, Msg: "查询EPG失败", Type: "danger"}
	}

	if epgData.Status {
		dao.DB.Model(&models.IptvEpgList{}).Where("id = ?", id).Update("status", 0)
		dao.DB.Model(&models.IptvEpg{}).Where("name like ?", epgData.Remarks+"-%").Update("status", 0)
	} else {
		dao.DB.Model(&models.IptvEpgList{}).Where("id = ?", id).Update("status", 1)
		dao.DB.Model(&models.IptvEpg{}).Where("name like ?", epgData.Remarks+"-%").Update("status", 1)
	}
	// 级联改了 derived EPG 行的 status（也就是改了绑定的前提），同样要重算。
	until.RequestChannelRefresh()
	return dto.ReturnJsonDto{Code: 1, Msg: "EPG 列表 " + epgData.Name + "状态修改成功", Type: "success"}
}

func DeleteEpg(req dto.ReqID) dto.ReturnJsonDto {
	id := req.ID
	if id == 0 {
		return dto.ReturnJsonDto{Code: 0, Msg: "EPG id不能为空", Type: "danger"}
	}
	if id <= 18 {
		return dto.ReturnJsonDto{Code: 0, Msg: "CNTV EPG不能删除", Type: "danger"}
	}
	// ★先把它挂着的频道解绑，再删 EPG 那一行。
	// 少了这一步，频道的 epg_id 会指向一条已经不存在的 EPG（悬空 id）：
	// 重算绑定时"没有规则命中"的频道是**保持原样**的，不会自动归零，
	// 于是那些频道永远挂着一个查不到节目单的幽灵 EPG。
	res := dao.DB.Model(&models.IptvChannel{}).Where("epg_id = ?", id).Update("epg_id", 0)
	unbound := res.RowsAffected
	dao.DB.Where("id = ?", id).Delete(&models.IptvEpg{})
	// 删掉的 EPG 可能还挂着一批频道的 epg_id：重算一次让它们回落到别的认领者
	// 或 0，不要留下指向已删行的悬空 id。
	until.RequestChannelRefresh()
	if unbound > 0 {
		return dto.ReturnJsonDto{
			Code: 1,
			Msg:  fmt.Sprintf("EPG删除成功，已解绑 %d 个频道", unbound),
			Type: "success",
		}
	}
	return dto.ReturnJsonDto{Code: 1, Msg: "EPG删除成功", Type: "success"}
}
func BindChannel() dto.ReturnJsonDto {
	// 手动重算绑定：走统一收尾出口（重算绑定 + 作废受影响套餐缓存）。
	until.RequestChannelRefresh()
	return dto.ReturnJsonDto{Code: 1, Msg: "绑定成功", Type: "success"}
}

// ClearBind 清空全部 EPG 绑定。
//
// 两处都要清：
//   - iptv_epg.content（EPG 上的手动绑定名单）—— 清掉它，手动绑定规则就没了；
//   - iptv_channels.epg_id（频道当前挂着的 EPG）—— 清掉它，频道才真的"没有节目单"。
//
// 只清 content 的话，频道的 epg_id 还指着旧 EPG，节目单照旧下发，
// 用户看到的是"绑定列表空了但节目单还在"——这就是以前的毛病。
func ClearBind() dto.ReturnJsonDto {
	// 1) 清 EPG 表里的手动绑定名单 + 自动绑定结果清单。
	if err := dao.DB.Model(&models.IptvEpg{}).Where("content != '' OR bound_names != ''").
		Updates(map[string]interface{}{"content": "", "bound_names": ""}).Error; err != nil {
		return dto.ReturnJsonDto{Code: 0, Msg: "清除绑定失败:" + err.Error(), Type: "danger"}
	}

	// 2) 清频道上挂着的 EPG 绑定（真正解绑）。
	res := dao.DB.Model(&models.IptvChannel{}).Where("epg_id != 0").Update("epg_id", 0)
	if res.Error != nil {
		return dto.ReturnJsonDto{Code: 0, Msg: "清除绑定失败:" + res.Error.Error(), Type: "danger"}
	}
	chCount := res.RowsAffected

	// 3) 全量收尾：清聚合分组缓存 + 全部套餐的节目单/订阅缓存并重建。
	//    这里**不**走 RequestChannelRefresh —— 那条路会把绑定重算一遍，
	//    于是"刚清掉的手动绑定"又被自动规则重新绑上，等于没清。
	//    自动绑定是另一个独立操作（由用户主动触发）。
	until.InvalidateAutoCategoryFiles()
	until.InvalidateAllMealCachesAndRebuild()

	return dto.ReturnJsonDto{
		Code: 1,
		Msg:  fmt.Sprintf("清除绑定成功：已解绑 %d 个频道", chCount),
		Type: "success",
	}
}

func ClearCache() dto.ReturnJsonDto {
	// 手工清缓存：作废全部套餐的聚合节目单并重算（不跑测速）。
	go until.InvalidateAllMealEpgCachesAndRebuild()
	return dto.ReturnJsonDto{Code: 1, Msg: "清除缓存成功", Type: "success"}
}

func EpgImport(req dto.EpgFromSaveReq) dto.ReturnJsonDto {
	listName := req.Name
	url := strings.TrimSpace(req.Url)
	ua := req.UA
	eId := req.ID

	if listName == "" {
		return dto.ReturnJsonDto{Code: 0, Msg: "请输入频道列表", Type: "danger"}
	}

	// eId 现在是 int64，已经没有「字符串里带特殊字符」的风险，
	// 因此只校验名称。旧代码对 eId 也调了一次 IsSafe，等价于恒真。
	if !until.IsSafe(listName) {
		return dto.ReturnJsonDto{Code: 0, Msg: "输入不合法", Type: "danger"}
	}

	remarks := until.GetMainDomain(url)
	if remarks == "" {
		return dto.ReturnJsonDto{Code: 0, Msg: "请输入正确的频道列表地址", Type: "danger"}
	}
	var eOld models.IptvEpgList
	dao.DB.Model(&models.IptvEpgList{}).Where("url = ?", url).First(&eOld)
	if eOld.ID != 0 && eId == 0 {
		return dto.ReturnJsonDto{Code: 0, Msg: "该频道列表已存在", Type: "danger"}
	}

	iptvEpgList := models.IptvEpgList{Name: listName, Url: url, Status: true, Remarks: remarks, UA: ua}
	if eId != 0 {
		if err := dao.DB.Model(&models.IptvEpgList{}).Where("id = ?", eId).First(&eOld).Error; err != nil {
			return dto.ReturnJsonDto{Code: 0, Msg: "频道列表不存在", Type: "danger"}
		}
		// 改名了 ⇒ 旧名下的暂存下载物作废（否则下次更新前一直占着卷）。
		if eOld.Name != "" && eOld.Name != listName {
			until.RemoveEpgSourceStage(eOld.Name)
		}
		iptvEpgList.ID = eOld.ID
		if err := dao.DB.Model(&models.IptvEpgList{}).Where("id = ?", eId).Updates(&iptvEpgList).Error; err != nil {
			return dto.ReturnJsonDto{Code: 0, Msg: "更新失败", Type: "danger"}
		}
		do, err := until.UpdataEpgListOne(iptvEpgList, true)
		if do {
			return dto.ReturnJsonDto{Code: 1, Msg: "更新成功", Type: "success"}
		}
		return dto.ReturnJsonDto{Code: 0, Msg: err.Error(), Type: "danger"}
	} else {
		if err := dao.DB.Model(&models.IptvEpgList{}).Create(&iptvEpgList).Error; err != nil {
			return dto.ReturnJsonDto{Code: 0, Msg: "添加失败", Type: "danger"}
		}
		do, err := until.UpdataEpgListOne(iptvEpgList, true)
		if do {
			return dto.ReturnJsonDto{Code: 1, Msg: "添加成功", Type: "success"}
		}
		return dto.ReturnJsonDto{Code: 0, Msg: err.Error(), Type: "danger"}
	}
}

func UploadLogo(c *gin.Context) dto.ReturnJsonDto {

	epgFromName := c.PostForm("epgname")
	if epgFromName == "" || !until.IsSafe(epgFromName) {
		return dto.ReturnJsonDto{Code: 0, Msg: "EPG名称不合法", Type: "danger"}
	}

	file, err := c.FormFile("uploadlogo")
	if err != nil {
		return dto.ReturnJsonDto{Code: 0, Msg: "获取文件失败:" + err.Error(), Type: "danger"}
	}

	f, err := file.Open()
	if err != nil {
		return dto.ReturnJsonDto{Code: 0, Msg: "打开文件失败:" + err.Error(), Type: "danger"}
	}
	defer f.Close()

	// 读取前 512 字节判断 MIME 类型
	buf := make([]byte, 512)
	n, _ := f.Read(buf)
	contentType := http.DetectContentType(buf[:n])

	if contentType != "image/png" {
		return dto.ReturnJsonDto{Code: 0, Msg: "只允许上传 PNG 文件", Type: "danger"}
	}

	dst := "/config/logo/" + epgFromName + ".png"
	if err := c.SaveUploadedFile(file, dst); err != nil {
		return dto.ReturnJsonDto{Code: 0, Msg: "保存文件失败:" + err.Error(), Type: "danger"}
	}
	// logo 变了：节目单里的图标要跟着变 ⇒ 作废聚合节目单并重算（不跑测速）。
	go until.InvalidateAllMealEpgCachesAndRebuild()
	return dto.ReturnJsonDto{Code: 1, Msg: "上传成功", Type: "success"}
}

func UpdateEpgList(req dto.ReqID) dto.ReturnJsonDto {
	listId := req.ID
	if listId == 0 {
		return dto.ReturnJsonDto{Code: 0, Msg: "请输入频道列表", Type: "danger"}
	}
	var epgList models.IptvEpgList
	if err := dao.DB.Model(&models.IptvEpgList{}).Where("id = ?", listId).First(&epgList).Error; err != nil {
		return dto.ReturnJsonDto{Code: 0, Msg: "获取频道列表失败:" + err.Error(), Type: "danger"}
	}
	do, err := until.UpdataEpgListOne(epgList, false)
	if do {
		return dto.ReturnJsonDto{Code: 1, Msg: "更新成功", Type: "success"}
	}
	return dto.ReturnJsonDto{Code: 0, Msg: err.Error(), Type: "danger"}
}

func UpdateEpgListAll() dto.ReturnJsonDto {
	if until.UpdataEpgList() {
		return dto.ReturnJsonDto{Code: 1, Msg: "更新成功", Type: "success"}
	}
	return dto.ReturnJsonDto{Code: 0, Msg: "更新失败", Type: "danger"}
}

func DelEpgList(req dto.ReqID) dto.ReturnJsonDto {
	listId := req.ID
	if listId == 0 {
		return dto.ReturnJsonDto{Code: 0, Msg: "请输入频道列表", Type: "danger"}
	}
	var epgList models.IptvEpgList
	if err := dao.DB.Model(&models.IptvEpgList{}).Where("id = ?", listId).First(&epgList).Error; err != nil {
		return dto.ReturnJsonDto{Code: 0, Msg: "获取频道列表失败:" + err.Error(), Type: "danger"}
	}
	if err := dao.DB.Where("id = ?", listId).Delete(&models.IptvEpgList{}).Error; err != nil {
		return dto.ReturnJsonDto{Code: 0, Msg: "删除列表失败:" + err.Error(), Type: "danger"}
	}
	// 源没了，它的暂存下载物也一起清掉（否则会一直占着持久卷）。
	until.RemoveEpgSourceStage(epgList.Name)

	var epgs []models.IptvEpg
	dao.DB.Model(&models.IptvEpg{}).Where("from_list like ?", "%"+fmt.Sprintf("%d", epgList.ID)+"%").Find(&epgs)
	for _, epg := range epgs {
		fromList := strings.Split(epg.FromList, ",")
		for i, v := range fromList {
			if v == fmt.Sprintf("%d", epgList.ID) {
				fromList = append(fromList[:i], fromList[i+1:]...)
				break // 若只删除第一个匹配项
			}
		}
		dao.DB.Model(&models.IptvEpg{}).Where("id = ?", epg.ID).Update("from_list", strings.Join(fromList, ","))
	}
	until.RequestChannelRefresh()
	return dto.ReturnJsonDto{Code: 1, Msg: "删除成功", Type: "success"}
}

func DeleteLogo(req dto.ReqID) dto.ReturnJsonDto {
	bjId := req.ID
	if bjId == 0 {
		return dto.ReturnJsonDto{Code: 0, Msg: "请输入epg ID", Type: "danger"}
	}
	var epg models.IptvEpg
	if err := dao.DB.Model(&models.IptvEpg{}).Where("id = ?", bjId).First(&epg).Error; err != nil {
		return dto.ReturnJsonDto{Code: 0, Msg: "获取频道列表失败:" + err.Error(), Type: "danger"}
	}
	logoFile := "/config/logo/" + epg.Name + ".png"
	if err := os.Remove(logoFile); err != nil {
		return dto.ReturnJsonDto{Code: 0, Msg: "删除失败", Type: "danger"}
	}
	return dto.ReturnJsonDto{Code: 1, Msg: "删除成功", Type: "success"}
}

func DelNotFrom() dto.ReturnJsonDto {
	dao.DB.Where("id > 18 and (from_list is null or from_list = '' or from_list = ' ')").Delete(&models.IptvEpg{})
	until.RequestChannelRefresh()
	return dto.ReturnJsonDto{Code: 1, Msg: "删除成功", Type: "success"}
}
