package bootstrap

import (
	"bytes"
	"iptv-api/dao"
	"iptv-api/models"
	"iptv-api/until"
	"log"
	"os"
	"os/exec"
	"sync/atomic"
)

// 安装态标记。
var installed atomic.Bool

// IsInstalled 报告系统是否已安装完成。
func IsInstalled() bool { return installed.Load() }

// SetInstalled 设置安装态（仅供安装流程与启动引导调用）。
func SetInstalled(v bool) { installed.Store(v) }

func Install() (bool, string) {

	if !until.Exists("/config") {
		log.Println("请映射config文件夹到容器/config中")
		return false, "请映射config文件夹到容器/config中"
	}

	err := os.Chmod("/config", 0777)
	if err != nil {
		log.Println("/config文件夹权限设置失败,请手动设置")
		return false, "/config文件夹权限设置失败,请手动设置"
	}

	if !until.Exists("/app/database/sqlite.sql") || !until.Exists("/app/config.yml") {
		log.Println("缺少必要的文件")
		return false, "缺少必要的文件"
	}

	if err := os.RemoveAll("/config/bin/"); err != nil {
		log.Println("删除/bin文件夹失败:", err)
		return false, err.Error()
	}
	if err := os.RemoveAll("/config/updata/"); err != nil {
		log.Println("删除/updata文件夹失败:", err)
		return false, err.Error()
	}
	if err := os.RemoveAll("/config/images/"); err != nil {
		log.Println("删除/images文件夹失败:", err)
		return false, err.Error()
	}
	if err := os.RemoveAll("/config/cache/"); err != nil {
		log.Println("删除/cache文件夹失败:", err)
		return false, err.Error()
	}
	if err := os.RemoveAll("/config/iptv.db"); err != nil {
		log.Println("删除iptv.db文件失败:", err)
		return false, err.Error()
	}
	if err := os.RemoveAll("/config/install.lock"); err != nil {
		log.Println("删除install.lock文件失败:", err)
		return false, err.Error()
	}
	if err := os.RemoveAll("/config/config.yml"); err != nil {
		log.Println("删除config.yml文件失败:", err)
		return false, err.Error()
	}

	if err := os.MkdirAll("/config", 0755); err != nil {
		log.Println("创建/config文件夹失败:", err)
		return false, err.Error()
	}

	cmd := exec.Command("bash", "-c", "mkdir -p /config/images/icon && mkdir -p /config/images/bj && mkdir -p /config/cache")
	output, err := cmd.CombinedOutput()
	if err != nil {
		log.Println("创建/config子文件夹失败", err, string(output))
		return false, err.Error()
	}

	if err := until.CopyFile("/app/config.yml", "/config/config.yml"); err != nil {
		log.Println("复制配置文件失败:", err)
		return false, "复制配置文件失败:" + err.Error()
	}

	cmd = exec.Command("sqlite3", "/config/iptv.db")

	sqlFile, err := os.Open("/app/database/sqlite.sql")
	if err != nil {
		log.Println("无法打开 SQL 文件:", err)
		return false, err.Error()
	}
	cmd.Stdin = sqlFile

	// 捕获输出
	var out bytes.Buffer
	var stderr bytes.Buffer
	cmd.Stdout = &out
	cmd.Stderr = &stderr

	if err := cmd.Run(); err != nil {
		// stderr.String() 会包含 SQLite 的具体报错
		log.Println("初始化数据库失败:", stderr.String(), err)
		return false, "初始化数据库失败: " + stderr.String()
	}
	log.Println("初始化数据库完成")
	err = os.Chmod("/config/iptv.db", 0777)
	if err != nil {
		log.Println("数据库权限设置失败,请手动设置")
		return false, "数据库权限设置失败,请手动设置"
	}
	log.Println("加载数据库...")
	dao.InitDB("/config/iptv.db")
	// sqlite.sql 现在直接建"新列名"的表；但卷里若带着旧版 sqlite.sql 建的库
	if err := dao.RenameLegacyColumns(); err != nil {
		log.Println("列名迁移失败（安装继续，下面会按当前模型对齐表结构）:", err)
	}
	// 安装流程**不跑** dao 的整套迁移（新库里没有老数据可搬，那些迁移本来
	if err := dao.ReconcileSchema(); err != nil {
		log.Println("对齐数据库表结构失败:", err)
		return false, "对齐数据库表结构失败: " + err.Error()
	}
	log.Println("初始化EPG缓存...")
	cache, err := dao.NewFileCache("/tmp/cache/", true)
	if err != nil {
		log.Println("初始化缓存失败:", err)
		return false, "初始化缓存失败:" + err.Error()
	}
	dao.Cache = cache

	if !InitLogo() {
		log.Println("初始化Logo失败")
		return false, "初始化Logo失败"
	}
	InitAlias()

	dao.CONFIG_PATH = "/config/config.yml"
	dao.LoadConfigFile()

	if !dao.LoadConfig() {
		log.Println("配置加载错误")
		return false, "配置加载错误"
	}
	file, err := os.Create("/config/install.lock") // 创建文件
	if err != nil {
		log.Println("创建install.lock失败:", err)
		return false, "创建install.lock失败:" + err.Error()
	}
	defer file.Close()

	err = until.FixPerm("/config")
	if err != nil {
		log.Println("/config文件夹权限设置失败,请手动设置")
		return false, "/config文件夹权限设置失败,请手动设置"
	}

	InitJwtKey()
	initIptvEpgList()
	// 库已经是"当前模型"的形态，把结构标记写上 —— 装完之后的第一次启动
	if err := dao.WriteSchemaMarker(until.Version); err != nil {
		log.Println("记录数据库结构标记失败（下次启动会重跑一次初始化）:", err)
	}
	dao.WS.RestartEngine()
	return true, "success"
}

func initIptvEpgList() {
	var epgList []models.IptvEpgList
	if err := dao.DB.Model(&models.IptvEpgList{}).Find(&epgList).Error; err != nil {
		return
	}
	if len(epgList) == 0 {
		dao.DB.Where("name like ?", "51zmt-%").Delete(&models.IptvEpg{})
		var update = models.IptvEpgList{
			Name:    "51zmt",
			Remarks: "51zmt",
			Url:     "http://epg.51zmt.top:8000/e.xml",
			Status:  true,
		}
		dao.DB.Model(&models.IptvEpgList{}).Save(&update)
		a, _ := until.UpdataEpgListOne(update, true)
		if !a {
			log.Println("初始化51zmt失败")
		}
	}
}
