package service

import (
	"iptv-api/dao"
	"iptv-api/dto"
	"iptv-api/models"
)

// 设备列表（/api/users）的批量操作。

// UsersDelete 批量删除设备账号。
func UsersDelete(req dto.ReqIDs) dto.ReturnJsonDto {
	if len(req.IDs) == 0 {
		return dto.ReturnJsonDto{Code: 0, Msg: "请选择要删除的用户账号", Type: "danger"}
	}
	dao.DB.Where("name in (?)", req.IDs).Delete(&models.IptvUser{})
	return dto.ReturnJsonDto{Code: 1, Msg: "已删除选中的用户账号", Type: "success"}
}

// UsersMarks 批量修改备注。
func UsersMarks(req dto.UsersMarksReq) dto.ReturnJsonDto {
	if len(req.IDs) == 0 {
		return dto.ReturnJsonDto{Code: 0, Msg: "请选择要修改备注的用户账号", Type: "danger"}
	}
	dao.DB.Model(&models.IptvUser{}).Where("name in (?)", req.IDs).Update("marks", req.Marks)
	return dto.ReturnJsonDto{Code: 1, Msg: "已修改选中的用户账号的备注", Type: "success"}
}

// UsersForbid 批量取消授权（status 置 -1）。
func UsersForbid(req dto.ReqIDs) dto.ReturnJsonDto {
	if len(req.IDs) == 0 {
		return dto.ReturnJsonDto{Code: 0, Msg: "请选择要取消授权的用户账号", Type: "danger"}
	}
	dao.DB.Model(&models.IptvUser{}).Where("name in (?)", req.IDs).Updates(map[string]interface{}{
		"status": -1,
	})
	return dto.ReturnJsonDto{Code: 1, Msg: "已取消选中的用户账号的授权", Type: "success"}
}

// UsersSetMeals 批量改套餐，并把状态置为 999（已授权）。
func UsersSetMeals(req dto.UsersMealsReq) dto.ReturnJsonDto {
	if len(req.IDs) == 0 {
		return dto.ReturnJsonDto{Code: 0, Msg: "请选择要修改套餐的用户账号", Type: "danger"}
	}

	var meal models.IptvMeals
	if err := dao.DB.Where("id = ?", req.MealID).First(&meal).Error; err != nil {
		return dto.ReturnJsonDto{Code: 0, Msg: "选择的套餐不存在", Type: "danger"}
	}

	dao.DB.Model(&models.IptvUser{}).Where("name in (?)", req.IDs).Updates(map[string]interface{}{
		"meal_id": meal.ID,
		"status":  999,
	})
	return dto.ReturnJsonDto{Code: 1, Msg: "已修改选中的用户账号的套餐", Type: "success"}
}
