package bootstrap

import (
	"fmt"
	"go-iptv/until"
	"os"
	"regexp"
	"strings"
)

func BuildAPK() bool {
	newUrl := CONFIG["api_addr"]
	buildPath := CONFIG["build"]
	javaPath := CONFIG["java_bin"]
	apktoolPath := buildPath + "/apktool"

	oldPlayer := buildPath + "/smali/PlayerActivity.smali"
	oldSplash := buildPath + "/smali/SplashActivity.smali"

	playerActivity := buildPath + "/client/smali/com/eztv/powerful/PlayerActivity.smali"
	splashActivity := buildPath + "/client/smali/com/eztv/powerful/SplashActivity.smali"

	if writeSmali(oldPlayer, playerActivity, newUrl) && writeSmali(oldSplash, splashActivity, newUrl) {
		fmt.Println("编译APP...")
		cmd1 := javaPath + "/java -Djava.io.tmpdir=" + buildPath + "/temp -jar " + apktoolPath + "/apktool.jar b " + buildPath + "/client/ -o " + buildPath + "/temp/unsignapk.apk"
		cmd2 := javaPath + "/java -jar " + apktoolPath + "/SignApk/signapk.jar " + apktoolPath + "/SignApk/certificate.pem " + apktoolPath + "/SignApk/key.pk8 " + buildPath + "/temp/unsignapk.apk /config/apk/DSMTV.apk"
		// cmd1 := "java -Djava.io.tmpdir=" + buildPath + "/temp -jar " + apktoolPath + "/apktool.jar b " + buildPath + "/client/ -o " + buildPath + "/temp/unsignapk.apk"
		// cmd2 := "java -jar " + apktoolPath + "/SignApk/signapk.jar " + apktoolPath + "/SignApk/certificate.pem " + apktoolPath + "/SignApk/key.pk8 " + buildPath + "/temp/unsignapk.apk /config/apk/DSMTV.apk"
		if until.ExecCmd(cmd1) {
			return until.ExecCmd(cmd2)
		}
		return false
	}
	return false
}

func writeSmali(oldFileName string, newFileNmae string, newURL string) bool {
	newProtocol, newDomain, newPort, _ := getApiConfig(newURL)

	if newProtocol == "" || newDomain == "" || newPort == "" {
		return false
	}
	// 读取文件内容
	fileContent, err := os.ReadFile(oldFileName)
	if err != nil {
		fmt.Println("读取文件出错:", err)
		return false
	}
	fileData := string(fileContent)
	updatedContent := strings.ReplaceAll(fileData, "wwwwwwwwwwwww", newURL)

	// 写回文件
	err = os.WriteFile(newFileNmae, []byte(updatedContent), 0644)
	if err != nil {
		fmt.Println("写入文件出错:", err)
		return false
	}
	return true
}

func getApiConfig(addr string) (string, string, string, string) {
	// 编译正则表达式，提取协议、域名/IP、端口和路径
	re := regexp.MustCompile(`^(https?)://([^:/\s]+)(:\d{2,5})?(/.*)?$`)

	// 查找匹配项
	match := re.FindStringSubmatch(addr)

	if match == nil {
		fmt.Println("接口地址格式不正确")
		return "", "", "", ""
	}

	// 提取协议、域名/IP、端口和路径
	protocol := match[1]   // 协议部分，如 http 或 https
	domainOrIP := match[2] // 域名或 IP 地址部分
	port := "80"           // 默认端口
	path := ""             // 默认路径为空

	if match[3] != "" {
		port = match[3][1:] // 去掉冒号
	}

	if match[4] != "" {
		path = match[4] // 获取路径部分
	}

	return protocol, domainOrIP, port, path
}
