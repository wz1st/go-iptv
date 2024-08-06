package service

import (
	"go-iptv/bootstrap"
	"go-iptv/dto"
	"go-iptv/until"
	"strconv"

	"math/rand"
)

func Getver() dto.GetverRes {
	var config dto.GetverRes
	iptv_config := bootstrap.IPTV_CON
	config.AppVer = iptv_config["appver"]
	config.UpSets = iptv_config["upsets"]
	config.UpText = iptv_config["uptext"]
	return config
}

func Login(user dto.IptvUser) dto.LoginRes {
	var result dto.LoginRes
	iptv_config := bootstrap.IPTV_CON

	result.DataVer = "1"
	result.SetVer = "8"
	result.ShowInterval = "60"
	result.CategoryCount = 0
	result.ShowTime = "0"
	result.TipUserNoReg = "未被授权使用"
	result.TipUserExpired = "账号已到期"
	result.TipUserForbidden = "账号已禁用"
	result.RandKey = "6d7caa26b6de5941e3b24fd7c573d0bb"
	result.Status = 999

	result.AdText = "欢迎使用 " + iptv_config["app_appname"] + "，当前套餐：" + iptv_config["mealname"] + "。"
	result.Decoder = iptv_config["decoder"]
	result.AppVer = iptv_config["appver"]
	result.AutoUpdate = iptv_config["autoupdate"]
	result.UpdateInterval = iptv_config["updateinterval"]
	result.BuffTimeOut = iptv_config["buffTimeOut"]
	result.QQInfo = iptv_config["qqinfo"]
	result.MealName = iptv_config["mealname"]
	result.TipLoading = iptv_config["tiploading"]
	result.Location = iptv_config["location"]

	result.Exps = until.GetExps()
	result.Exp = 999
	result.MovieEngine = "{\"model\": []}"
	result.CanSeekList = []string{""}

	min := 1000
	max := 999999
	randomNumber := rand.Intn(max-min+1) + min
	result.ID = strconv.Itoa(randomNumber)

	return result
}
