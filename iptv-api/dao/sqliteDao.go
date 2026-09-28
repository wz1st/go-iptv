package dao

import (
	"log"
	"time"

	"github.com/glebarez/sqlite"
	"gorm.io/gorm"
	"gorm.io/gorm/logger"
)

var DB *gorm.DB

// InitDB 初始化数据库
func InitDB(dbPath string) bool {
	var err error
	DB, err = gorm.Open(sqlite.Open(dbPath), &gorm.Config{
		Logger: logger.New(
			log.New(log.Writer(), "\r\n", log.LstdFlags), // 使用标准日志输出
			logger.Config{
				SlowThreshold:             time.Second, // 慢 SQL 阈值
				LogLevel:                  logger.Warn, // LogLevel 可选: Silent, Error, Warn, Info
				IgnoreRecordNotFoundError: true,        // 忽略记录未找到错误
				Colorful:                  true,        // 彩色输出
			},
		),
	})
	if err != nil {
		log.Fatal("无法连接数据库: ", err)
		return false
	}

	if err := DB.Exec(`PRAGMA journal_mode = WAL;`).Error; err != nil {
		log.Println("设置 WAL 模式失败:", err)
		return false
	}

	// 临时表存内存
	if err := DB.Exec(`PRAGMA temp_store = MEMORY;`).Error; err != nil {
		log.Println("设置 temp_store 失败:", err)
		return false
	}

	// 缓存页大小（负数表示以 KB 为单位）
	if err := DB.Exec(`PRAGMA cache_size = -20000;`).Error; err != nil {
		log.Println("设置 cache_size 失败:", err)
		return false
	}

	// （可选）同步模式 NORMAL，兼顾安全与速度
	if err := DB.Exec(`PRAGMA synchronous = NORMAL;`).Error; err != nil {
		log.Println("设置 synchronous 失败:", err)
		return false
	}
	return true
	// Migrate the schema
	// DB.AutoMigrate(&User{})
}

func InitDBDebug(dbPath string) bool {
	var err error
	DB, err = gorm.Open(sqlite.Open(dbPath), &gorm.Config{
		Logger: logger.New(
			log.New(log.Writer(), "\r\n", log.LstdFlags), // 使用标准日志输出
			logger.Config{
				SlowThreshold:             time.Millisecond, // 慢 SQL 阈值
				LogLevel:                  logger.Info,      // LogLevel 可选: Silent, Error, Warn, Info
				IgnoreRecordNotFoundError: true,             // 忽略记录未找到错误
				Colorful:                  true,             // 彩色输出
			},
		),
	})
	if err != nil {
		log.Fatal("无法连接数据库: ", err)
		return false
	}
	if err := DB.Exec(`PRAGMA journal_mode = WAL;`).Error; err != nil {
		log.Println("设置 WAL 模式失败:", err)
		return false
	}

	// 临时表存内存
	if err := DB.Exec(`PRAGMA temp_store = MEMORY;`).Error; err != nil {
		log.Println("设置 temp_store 失败:", err)
		return false
	}

	// 缓存页大小（负数表示以 KB 为单位）
	if err := DB.Exec(`PRAGMA cache_size = -20000;`).Error; err != nil {
		log.Println("设置 cache_size 失败:", err)
		return false
	}

	// （可选）同步模式 NORMAL，兼顾安全与速度
	if err := DB.Exec(`PRAGMA synchronous = NORMAL;`).Error; err != nil {
		log.Println("设置 synchronous 失败:", err)
		return false
	}
	return true
	// Migrate the schema
	// DB.AutoMigrate(&User{})
}
