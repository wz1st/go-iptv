package dao

import (
	"fmt"
	"iptv-api/dto"
	"log"
	"sync"
	"sync/atomic"
	"time"

	"github.com/spf13/viper"
	"gopkg.in/yaml.v3"
)

var (
	CONFIG_PATH  string
	GlobalConfig atomic.Value

	saveMutex sync.Mutex
	saveTimer *time.Timer
	// saveDelay 与引擎侧（iptv-engine/dao/configDao.go）保持一致，
	saveDelay = 500 * time.Millisecond

	// configDirty 表示内存里有一份还没落盘的配置。
	configDirty atomic.Bool

	// lastWrittenConfigHash 是本进程最后一次**成功写盘**的内容哈希。
	lastWrittenConfigHash atomic.Value // string
)

// 加载配置文件
func LoadConfigFile() bool {
	if CONFIG_PATH == "" {
		log.Println("配置文件路径为空")
		return false
	}

	viper.SetConfigFile(CONFIG_PATH)

	if err := viper.ReadInConfig(); err != nil {
		if _, ok := err.(viper.ConfigFileNotFoundError); ok {
			log.Println("找不到配置文件:", CONFIG_PATH)
		} else {
			log.Println("配置文件解析出错:", err)
		}
		return false
	}

	return true
}

func LoadConfig() bool {
	var cfg dto.Config
	if err := viper.Unmarshal(&cfg); err != nil {
		log.Println("解析配置文件出错:", err)
		return false
	}

	GlobalConfig.Store(&cfg)
	log.Println("配置文件加载成功:", CONFIG_PATH)
	return true
}

// ReloadConfigFromDisk 以磁盘为准重新加载配置。
func ReloadConfigFromDisk() bool {
	if CONFIG_PATH == "" {
		return false
	}
	if !LoadConfigFile() || !LoadConfig() {
		return false
	}
	// 同步"已知版本"，避免下一轮对账又把它当成外部改动而反复重载。
	lastWrittenConfigHash.Store(ConfigFileHash())
	return true
}

func GetConfig() *dto.Config {
	v := GlobalConfig.Load()
	if v == nil {
		return nil
	}
	return v.(*dto.Config)
}

func SetConfig(cfg *dto.Config) {
	if cfg == nil {
		log.Println("配置数据为空，跳过")
		return
	}
	GlobalConfig.Store(cfg)
	configDirty.Store(true)
	scheduleSave()
}

// ConfigFileHash 返回磁盘上配置文件当前的短哈希；读不到时返回 ""。
func ConfigFileHash() string {
	return hashFile(CONFIG_PATH)
}

// WrittenConfigHash 返回本进程最后一次成功写盘的内容哈希；没写过时返回 ""。
func WrittenConfigHash() string {
	v := lastWrittenConfigHash.Load()
	if v == nil {
		return ""
	}
	return v.(string)
}

// 关于 WatchConfig（已移除）

// 保存

func SaveConfigToFile() error {
	v := GlobalConfig.Load()
	if v == nil {
		return fmt.Errorf("GlobalConfig为空，无法写入文件")
	}

	cfg := v.(*dto.Config)

	// 序列化为 YAML
	data, err := yaml.Marshal(cfg)
	if err != nil {
		return fmt.Errorf("YAML序列化失败: %v", err)
	}

	// 原子写入：先写同目录临时文件再 rename。直接用 os.WriteFile 会
	if err := writeFileAtomic(CONFIG_PATH, data, 0644); err != nil {
		return fmt.Errorf("写入文件失败: %v", err)
	}

	lastWrittenConfigHash.Store(shortHash(data))
	configDirty.Store(false)

	return nil
}

func scheduleSave() {
	saveMutex.Lock()
	defer saveMutex.Unlock()

	if saveTimer != nil {
		saveTimer.Stop()
	}
	saveTimer = time.AfterFunc(saveDelay, func() {
		if err := SaveConfigToFile(); err != nil {
			log.Println("保存配置文件失败:", err)
			return
		}
		log.Println("全局配置已保存到文件")

		// 落盘后立刻下发一次，保证交互延迟最低。
		go func() {
			if err := WS.pushConfigReload(); err != nil {
				log.Printf("⚠️ 配置下发失败（心跳对账会自动重试）: %v", err)
			}
		}()
	})
}
