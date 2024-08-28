package bootstrap

import (
	"fmt"
	"go-iptv/dto"
	"go-iptv/until"
	"os"
	"strings"

	"github.com/spf13/viper"
)

var (
	CONFIG      map[string]string
	KEY         string = "26b6d4fa7f3580dc87302aa8df6f8514"
	AES_KEY     string = "4fa7f3580dc87302"
	IPTV_CON    map[string]string
	CHANNELS    []dto.ConfigChannel
	CONFIG_PATH string = "/config"
	// GAODE_KEY string
)

// 加载配置文件
func LoadConfig(conf string) bool {
	if conf != "/" {
		conf = strings.TrimSuffix(conf, "/")
	}
	if CONFIG_PATH != conf {
		CONFIG_PATH = conf
	}
	config := viper.New()
	config.AddConfigPath(CONFIG_PATH)
	config.SetConfigName("conf")
	config.SetConfigType("yaml")
	if err := config.ReadInConfig(); err != nil {
		if _, ok := err.(viper.ConfigFileNotFoundError); ok {
			if !until.Exists(CONFIG_PATH) {
				err := os.MkdirAll(CONFIG_PATH, 0755)
				if err != nil {
					fmt.Println("创建配置文件目录失败.." + err.Error())
					return false
				}
				if !until.CheckDir(CONFIG_PATH) {
					return false
				}
				return LoadConfig(CONFIG_PATH)
			}
			fmt.Println("找不到配置文件..")
			fmt.Println("创建配置文件..")
			configData := `
config:
  api_addr: http://192.168.147.139:8080   # APK接口地址，即应用/容器地址
iptv_config:
  background: 1  #  apk背景  0关闭 1开启，多张png随机显示 png放config/images目录下
  mealname: 会员套餐  #随便写
  app_appname: 哲♂学屋 #随便写
  tiploading: 正在加载中... #随便写
  location: 未知   # 位置  没啥用
  appver: 1.0   # 大于2.5.0每次打开apk会触发重装  和autoupdate配合使用
  upsets: 0  # 是否强制更新 0关闭 1开启
  uptext: 更新公告  #随便写
  autoupdate: 0   # 是否自动更新 0关闭 1开启
  updateinterval: 7  # 更新间隔  大概是天
  decoder: 2  #apk默认解码选项  智能解码
  buffTimeOut: 30  #超时时间
  qqinfo: 1111   #联系信息
channels:
  - class: CCTV  # 自己定义
    list_url: http://192.168.147.139:8080/list/cctv.txt  # 自己定义
`
			if !until.WriteFile(CONFIG_PATH+"/conf.yaml", configData) {
				fmt.Println("创建配置文件失败..")
				return false
			}
			fmt.Println("请修改配置文件后重新启动")
			return false
		} else {
			fmt.Println("配置文件出错..")
			return false
		}
	}
	if !until.CheckDir(CONFIG_PATH) {
		return false
	}

	// GAODE_KEY = config.GetString("gaode.key")
	CONFIG = config.GetStringMapString("config")
	IPTV_CON = config.GetStringMapString("iptv_config")
	err := config.UnmarshalKey("channels", &CHANNELS)
	if err != nil {
		fmt.Println("解析配置文件出错..", err)
	}
	return true
}
