package service

import (
	"iptv-api/dao"
	"iptv-api/dto"
	"iptv-api/models"
	"iptv-api/until"
	"time"
)

func SubmitAuthorForever(req dto.AuthorsAuthorizeReq, username string) dto.ReturnJsonDto {
	ids := req.IDs
	meal := req.MealID

	if len(ids) == 0 {
		return dto.ReturnJsonDto{Code: 0, Msg: "请选择用户", Type: "danger"}
	}
	if meal == "" || meal == "0" {
		return dto.ReturnJsonDto{Code: 0, Msg: "请选择套餐", Type: "danger"}
	}
	if !until.IsSafe(meal) {
		return dto.ReturnJsonDto{Code: 0, Msg: "输入不合法", Type: "danger"}
	}

	dao.DB.Model(&models.IptvUser{}).Where("name IN (?)", ids).Updates(map[string]interface{}{
		"meal_id":     meal,
		"status":      999,
		"expire_time": 0,
		"author":      username,
		"author_time": time.Now().Unix(),
		"marks":       username + "已授权",
	})
	return dto.ReturnJsonDto{
		Code: 1,
		Msg:  "操作成功",
		Type: "success",
	}
}

func ForbiddenUser(req dto.ReqIDs) dto.ReturnJsonDto {
	ids := req.IDs

	if len(ids) == 0 {
		return dto.ReturnJsonDto{Code: 0, Msg: "请选择用户", Type: "danger"}
	}
	dao.DB.Model(&models.IptvUser{}).Where("name IN (?)", ids).Updates(map[string]interface{}{
		"status": 0,
	})
	return dto.ReturnJsonDto{
		Code: 1,
		Msg:  "操作成功",
		Type: "success",
	}
}

func DelUsers(req dto.ReqIDs) dto.ReturnJsonDto {
	ids := req.IDs

	if len(ids) == 0 {
		return dto.ReturnJsonDto{Code: 0, Msg: "请选择用户", Type: "danger"}
	}
	dao.DB.Model(&models.IptvUser{}).
		Where("name IN ?", ids).
		Delete(&models.IptvUser{})

	return dto.ReturnJsonDto{
		Code: 1,
		Msg:  "操作成功",
		Type: "success",
	}
}

func DelUnAuthorOneDayBefore() dto.ReturnJsonDto {

	dao.DB.Model(&models.IptvUser{}).Where("status = ? and last_time < ?", -1, time.Date(time.Now().Year(), time.Now().Month(), time.Now().Day(), 0, 0, 0, 0, time.Now().Location()).Unix()).Delete(&models.IptvUser{})

	return dto.ReturnJsonDto{
		Code: 1,
		Msg:  "操作成功",
		Type: "success",
	}
}

func DelAllUsers() dto.ReturnJsonDto {
	dao.DB.Model(&models.IptvUser{}).Where("status = ?", -1).Delete(&models.IptvUser{})
	return dto.ReturnJsonDto{
		Code: 1,
		Msg:  "操作成功",
		Type: "success",
	}
}
