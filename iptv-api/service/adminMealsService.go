package service

import (
	"iptv-api/dao"
	"iptv-api/dto"
	"iptv-api/models"
	"iptv-api/until"
	"strconv"
	"strings"
)

// 套餐管理。

// MealsChangeStatus 上线 / 下线套餐。
func MealsChangeStatus(req dto.ReqID) dto.ReturnJsonDto {
	mealId := req.ID

	if mealId == 0 {
		return dto.ReturnJsonDto{Code: 0, Msg: "套餐ID不能为空", Type: "danger"}
	}

	if mealId == 1000 {
		return dto.ReturnJsonDto{Code: 0, Msg: "默认套餐不能修改状态", Type: "danger"}
	}

	var meals models.IptvMeals
	if err := dao.DB.Model(&models.IptvMeals{}).Where("id = ?", mealId).First(&meals).Error; err != nil {
		return dto.ReturnJsonDto{Code: 0, Msg: mealMissingMsg(mealId), Type: "danger"}
	}
	if meals.Status {
		go until.CleanMealsCacheOne(meals.ID)
		dao.DB.Model(&models.IptvMeals{}).Where("id = ?", meals.ID).Update("status", 0)
		return dto.ReturnJsonDto{Code: 1, Msg: "套餐 " + meals.Name + " 下线", Type: "success"}
	}
	go until.CleanMealsCacheOne(meals.ID)
	dao.DB.Model(&models.IptvMeals{}).Where("id = ?", meals.ID).Update("status", 1)
	return dto.ReturnJsonDto{Code: 1, Msg: "套餐 " + meals.Name + " 上线", Type: "success"}
}

// MealsEdit 取「套餐编辑」用的频道分类勾选列表。
func MealsEdit(req dto.ReqID, editing bool) dto.ReturnJsonDto {
	if editing {
		mealId := req.ID
		if mealId == 0 {
			return dto.ReturnJsonDto{Code: 0, Msg: "套餐id不能为空", Type: "danger"}
		}
		var meal models.IptvMeals
		if err := dao.DB.Model(&models.IptvMeals{}).Where("id = ?", mealId).First(&meal).Error; err != nil {
			return dto.ReturnJsonDto{Code: 0, Msg: mealMissingMsg(mealId), Type: "danger"}
		}
		var categoryList []models.IptvCategory
		if err := dao.DB.Model(&models.IptvCategory{}).Where("enable = 1").Find(&categoryList).Error; err != nil {
			return dto.ReturnJsonDto{Code: 0, Msg: "没有频道分类信息，无法生成套餐", Type: "danger"}
		}

		mealList := strings.Split(meal.Content, ",")

		var dataList []dto.MealsReturnDto
		for _, v := range categoryList {
			var data dto.MealsReturnDto
			data.Id = v.ID
			data.Name = v.Name
			data.Checked = until.Int64InStringSlice(v.ID, mealList)
			dataList = append(dataList, data)
		}
		return dto.ReturnJsonDto{Code: 1, Data: dataList, Msg: "获取成功", Type: "success"}
	}

	var categoryList []models.IptvCategory
	if err := dao.DB.Model(&models.IptvCategory{}).Where("enable = 1").Find(&categoryList).Error; err != nil {
		return dto.ReturnJsonDto{Code: 0, Msg: "没有频道分类信息，无法生成套餐", Type: "danger"}
	}
	var dataList []dto.MealsReturnDto
	for _, v := range categoryList {
		var data dto.MealsReturnDto
		data.Id = v.ID
		data.Name = v.Name
		data.Checked = false
		dataList = append(dataList, data)
	}
	return dto.ReturnJsonDto{Code: 1, Data: dataList, Msg: "获取成功", Type: "success"}
}

// MealsDel 删除套餐。
func MealsDel(req dto.ReqID) dto.ReturnJsonDto {
	mealId := req.ID
	if mealId == 0 {
		return dto.ReturnJsonDto{Code: 0, Msg: "没有获取到套餐ID", Type: "danger"}
	}
	if mealId == 1000 {
		return dto.ReturnJsonDto{Code: 0, Msg: "默认套餐无法删除", Type: "danger"}
	}
	if err := dao.DB.Where("id = ?", mealId).Delete(&models.IptvMeals{}).Error; err != nil {
		return dto.ReturnJsonDto{Code: 0, Msg: "删除失败", Type: "danger"}
	}
	go until.CleanMealsXmlCacheOne(mealId)
	return dto.ReturnJsonDto{Code: 1, Msg: "删除成功", Type: "success"}
}

// MealsSubmit 新增（ID=0）或编辑套餐。
func MealsSubmit(req dto.MealsSaveReq) dto.ReturnJsonDto {
	if req.Name == "" {
		return dto.ReturnJsonDto{Code: 0, Msg: "套餐名称不能为空", Type: "danger"}
	}

	iptvMeals := models.IptvMeals{
		Name:    req.Name,
		Content: strings.Join(req.IDList, ","),
		Status:  true,
	}

	if req.ID == 0 {
		if err := dao.DB.Create(&iptvMeals).Error; err != nil {
			return dto.ReturnJsonDto{Code: 0, Msg: "添加失败", Type: "danger"}
		}
		go until.CleanMealsCacheRebuildOne(iptvMeals.ID)
		return dto.ReturnJsonDto{Code: 1, Msg: "添加成功", Type: "success"}
	}

	var old models.IptvMeals
	dao.DB.Model(&models.IptvMeals{}).Where("id = ?", req.ID).First(&old)
	if old.ID == 0 {
		return dto.ReturnJsonDto{Code: 0, Msg: "套餐不存在", Type: "danger"}
	}
	iptvMeals.ID = req.ID
	if err := dao.DB.Save(&iptvMeals).Error; err != nil {
		return dto.ReturnJsonDto{Code: 0, Msg: "编辑失败", Type: "danger"}
	}
	go until.CleanMealsCacheRebuildOne(iptvMeals.ID)
	return dto.ReturnJsonDto{Code: 1, Msg: "编辑成功", Type: "success"}
}

// mealMissingMsg 拼「套餐 N 不存在」的提示文案。
// 旧代码直接把字符串 id 拼进 msg，改成 int64 后需要显式格式化。
func mealMissingMsg(mealId int64) string {
	return "套餐 " + strconv.FormatInt(mealId, 10) + " 不存在"
}
