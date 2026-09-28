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

	caList := strings.Split(epg.Cas, ",")

	var channeList []models.IptvChannel
	if err := dao.DB.Model(&models.IptvChannel{}).Select("distinct name").Where("category_id in ? and status = 1", caList).Order("category_id,id").Find(&channeList).Error; err != nil {
		return dto.ReturnJsonDto{Code: 0, Msg: "查询频道失败", Type: "danger"}
	}

	CheckList := until.MergeAndUnique(strings.Split(epg.Content, ","), strings.Split(epg.Remarks, "|"))

	var dataList []dto.EpgsReturnDto

	for _, v := range channeList {
		var data dto.EpgsReturnDto
		data.Name = v.Name
		data.Value = v.Name
		data.Selected = false
		for _, v1 := range CheckList {
			if strings.EqualFold(v1, v.Name) {
				data.Selected = true
				break
			}
		}
		if strings.EqualFold(epg.Name, v.Name) {
			data.Selected = true
		}
		dataList = append(dataList, data)
	}

	return dto.ReturnJsonDto{Code: 1, Msg: "操作成功", Type: "success", Data: dataList}
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

	epgData.Cas = req.CaList
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

	oldList := strings.Split(epgData.Content, ",")

	if until.EqualStringSets(oldList, namesList) {
		return dto.ReturnJsonDto{Code: 0, Msg: "EPG " + epgData.Name + "绑定未修改", Type: "success"}
	}

	epgData.Content = strings.Join(namesList, ",")

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
	dao.DB.Where("id = ?", id).Delete(&models.IptvEpg{})
	// 删掉的 EPG 可能还挂着一批频道的 epg_id：重算一次让它们回落到别的认领者
	// 或 0，不要留下指向已删行的悬空 id。
	until.RequestChannelRefresh()
	return dto.ReturnJsonDto{Code: 1, Msg: "EPG删除成功", Type: "success"}
}

func BindChannel() dto.ReturnJsonDto {
	// ClearBind() // 清空绑定
	until.BindChannel() // 绑定频道

	return dto.ReturnJsonDto{Code: 1, Msg: "绑定成功", Type: "success"}
}

func ClearBind() dto.ReturnJsonDto {
	dao.DB.Model(&models.IptvEpg{}).Where("content != ''").Update("content", "")
	until.BindChannel() // 绑定频道
	return dto.ReturnJsonDto{Code: 1, Msg: "清除绑定成功", Type: "success"}
}

func ClearCache() dto.ReturnJsonDto {
	go until.CleanMealsEpgCacheAll()
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
	go until.CleanMealsEpgCacheAll()
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
