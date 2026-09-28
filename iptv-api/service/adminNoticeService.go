package service

import (
	"iptv-api/dao"
	"iptv-api/dto"
)

// Notice 保存广告位文案与展示节奏。
func Notice(req dto.NoticeReq) dto.ReturnJsonDto {
	cfg := dao.GetConfig()

	cfg.Ad.AdText = req.AdText
	cfg.Ad.ShowInterval = req.ShowInterval
	cfg.Ad.ShowTime = req.ShowTime

	dao.SetConfig(cfg)

	// 广告字段（adtext / showtime / showinterval）由 ApkLogin 在客户端每次登录时
	return dto.ReturnJsonDto{Code: 1, Msg: "修改成功", Type: "success"}
}
