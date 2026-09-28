package bootstrap

import (
	"encoding/json"
	"iptv-api/dao"
	"iptv-api/dto"
	"log"
)

func InitEngine() {
	// dao.StartLicense()
	log.Println("引擎初始化中")
	err := dao.WS.Start("ws://127.0.0.1:81/ws")
	if err != nil {
		log.Println("引擎初始化错误: ", err)
		return
	}
	res, err := dao.WS.SendWS(dao.Request{Action: "getlic"})
	if err == nil {
		// 解到局部变量再 SetLic（见 dao/engineDao.go 的 licMu 说明）：
		var fresh dto.Lic
		if err := json.Unmarshal(res.Data, &fresh); err == nil {
			dao.SetLic(fresh)
			log.Println("引擎初始化成功")
			log.Println("机器码:", fresh.ID)
		} else {
			log.Println("授权信息解析错误:", err)
		}
	} else {
		log.Println("引擎初始化错误")
		return
	}
}
