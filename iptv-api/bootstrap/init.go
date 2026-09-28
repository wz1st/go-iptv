package bootstrap

import (
	"log"
	"os"
	"os/exec"

	"iptv-api/dao"
	"iptv-api/until"
)

// 启动时的数据库初始化

// InitDB 是启动时的入口。返回值沿用既有约定：true = 库可用
func InitDB() bool {
	needRefresh, err := dao.MigrateAll(until.Version)

	// 先处理重抓：即使后面还有别的迁移失败，已改名的内置 EPG 也该刷新一次
	// （与迁移内部的顺序一致）。
	if needRefresh {
		go until.UpdataEpgList()
	}

	if err != nil {
		// dao.MigrateAll 在失败时**不写结构标记**，于是下次启动整段重跑
		log.Printf("数据库初始化未全部成功，已保留重试: %v", err)
	}
	return true
}

func InitLogo() bool {
	is, err := until.CheckLogo("/config/logo")
	if err != nil || !is {
		if err := os.RemoveAll("/config/logo"); err != nil {
			log.Println("删除logo失败:", err)
			return false
		}
		if err := os.MkdirAll("/config/logo", os.ModePerm); err != nil {
			log.Println("创建logo失败:", err)
			return false
		}
		cmd := exec.Command("bash", "-c", "cp -rf ./logo/* /config/logo")
		output, err := cmd.CombinedOutput()
		if err != nil {
			log.Printf("复制logo失败: %v --- %s\n", err, string(output))
			return false
		}
	}
	return true
}

func InitAlias() {
	if until.Exists("/config/alias.json") {
		return
	}
	until.CopyFile("./alias.json", "/config/alias.json")
}
