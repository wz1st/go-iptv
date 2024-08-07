package main

import (
	"flag"
	"fmt"
	"go-iptv/bootstrap"
	"go-iptv/router"
	"go-iptv/until"
)

func main() {
	conf := flag.String("conf", "/config", "配置文件目录 eg: /config")
	build := flag.String("build", "/build", "编译环境目录 eg: /build")
	javaBin := flag.String("java", "", "java环境 eg: /usr/bin")
	port := flag.String("port", "8080", "启动端口 eg: 8080")
	flag.Parse()
	if !until.CheckPort(*port) {
		return
	}
	fmt.Println("加载配置文件..")
	if !bootstrap.LoadConfig(*conf) {
		fmt.Println("配置文件出错..")
		return
	}
	if !bootstrap.BuildAPK(*build, *javaBin) {
		fmt.Println("APK编译错误")
		return
	}
	fmt.Println("启动接口...")
	router := router.InitRouter(*conf)
	router.Run(":" + *port)
}
