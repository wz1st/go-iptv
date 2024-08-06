package main

import (
	"fmt"
	"go-iptv/bootstrap"
	"go-iptv/router"
)

func main() {
	fmt.Println("加载配置文件..")
	if !bootstrap.LoadConfig() {
		fmt.Println("配置文件出错..")
		return
	}
	if !bootstrap.BuildAPK() {
		fmt.Println("APK编译错误")
		return
	}
	fmt.Println("启动接口...")
	router := router.InitRouter()
	router.Run(":8080")
}
