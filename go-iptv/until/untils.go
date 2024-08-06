package until

import (
	"crypto/md5"
	"encoding/hex"
	"encoding/json"
	"fmt"
	"io"
	"net"
	"net/http"
	"os"
	"os/exec"
	"regexp"
	"strconv"
	"strings"
	"time"

	"github.com/gin-gonic/gin"
)

func Md5(str string) (retMd5 string) {
	h := md5.New()
	h.Write([]byte(str))
	return hex.EncodeToString(h.Sum(nil))
}

func ReverseString(s string) string {
	runes := []rune(s)
	for i, j := 0, len(runes)-1; i < j; i, j = i+1, j-1 {
		runes[i], runes[j] = runes[j], runes[i]
	}
	return string(runes)
}

func GetExps() string {
	now := time.Now()

	// 计算一周后的时间
	oneWeekLater := now.AddDate(0, 0, 7)

	// 获取时间戳（秒级）
	timestamp := oneWeekLater.Unix()

	// 将时间戳转换为字符串
	timestampStr := strconv.FormatInt(timestamp, 10)

	return timestampStr
}

func GetUrl(c *gin.Context) string {
	protocol := "http://"
	if c.Request.TLS != nil ||
		c.Request.Header.Get("X-Forwarded-Proto") == "https" ||
		c.Request.Header.Get("Front-End-Https") == "on" {
		protocol = "https://"
	}
	// 获取主机名
	host := c.Request.Host
	// 获取请求URI
	requestURI := c.Request.RequestURI
	parts := strings.Split(requestURI, "/")
	if len(parts) > 1 {
		parts = parts[:len(parts)-1]
	}
	modifiedPath := strings.Join(parts, "/")
	// 构建完整URL
	return protocol + host + modifiedPath
}

func GetUrlData(url string) string {
	resp, err := http.Get(url)
	if err != nil {
		return ""
	}
	defer resp.Body.Close()
	body, err := io.ReadAll(resp.Body)
	if err != nil {
		return ""
	}
	return string(body)
}

func BuildUrl(baseUrl string, targetPath string) string {
	// 移除右侧的 '/'
	trimmedBaseUrl := strings.TrimRight(baseUrl, "/")

	// 找到最后一个斜杠的位置
	lastSlashIndex := strings.LastIndex(trimmedBaseUrl, "/")
	if lastSlashIndex == -1 {
		return trimmedBaseUrl + targetPath
	}

	// 取出baseUrl到最后一个斜杠
	trimmedBaseUrl = trimmedBaseUrl[:lastSlashIndex]

	// 拼接目标路径
	finalUrl := trimmedBaseUrl + targetPath

	return finalUrl
}

func GetIp(ip string) (string, string) {
	cityId := "110000"
	if !isPrivateIP(net.ParseIP(ip)) {
		return ip, cityId
	}
	url := "https://webapi-pc.meitu.com/common/ip_location"
	jsonStr := GetUrlData(url)
	var jsonMap map[string]interface{}
	err := json.Unmarshal([]byte(jsonStr), &jsonMap)
	if err != nil {
		return ip, cityId
	}
	if data, ok := jsonMap["data"].(map[string]interface{}); ok {
		for resIp, info := range data {
			ip = resIp
			if infoMap, ok := info.(map[string]interface{}); ok {
				if city, ok := infoMap["city_id"].(int); ok {
					cityId = strconv.Itoa(city)
				}
			}
			break
		}
	}
	return ip, cityId
}

func isPrivateIP(ip net.IP) bool {
	privateIPBlocks := []*net.IPNet{
		{
			IP:   net.IPv4(10, 0, 0, 0),
			Mask: net.CIDRMask(8, 32),
		},
		{
			IP:   net.IPv4(172, 16, 0, 0),
			Mask: net.CIDRMask(12, 32),
		},
		{
			IP:   net.IPv4(192, 168, 0, 0),
			Mask: net.CIDRMask(16, 32),
		},
	}

	for _, block := range privateIPBlocks {
		if block.Contains(ip) {
			return true
		}
	}
	return false
}

func DecodeUnicode(s string) string {
	re := regexp.MustCompile(`\\u([0-9a-fA-F]{4})`)
	return re.ReplaceAllStringFunc(s, func(match string) string {
		hex := re.FindStringSubmatch(match)[1]
		codePoint, err := strconv.ParseInt(hex, 16, 32)
		if err != nil {
			return match
		}
		return string(rune(codePoint))
	})
}

func GetFileSize(filePath string) string {

	// 获取文件信息
	fileInfo, err := os.Stat(filePath)
	if err != nil {
		return "0"
	}

	// 获取文件大小（字节）
	fileSize := fileInfo.Size()

	// 将文件大小转换为兆字节 (MB)
	fileSizeMB := float64(fileSize) / (1024 * 1024)

	// 输出文件大小（MB）
	return fmt.Sprintf("%.2f", fileSizeMB)
}

func Exists(path string) bool {
	_, err := os.Stat(path)
	if err == nil {
		return true
	}
	if os.IsNotExist(err) {
		return false
	}
	return false
}

func CheckDir(path string) bool {
	_, err := os.Stat(path)
	if err == nil {
		err = os.MkdirAll(path+"/apk", 0755)
		if err != nil {
			fmt.Printf("创建%s目录失败: %v\n", path, err)
			return false
		}
		err = os.MkdirAll(path+"/list", 0755)
		if err != nil {
			fmt.Printf("创建%s目录失败: %v\n", path, err)
			return false
		}
		err = os.MkdirAll(path+"/images", 0755)
		if err != nil {
			fmt.Printf("创建%s目录失败: %v\n", path, err)
			return false
		}
		return true
	}
	if os.IsNotExist(err) {
		return false
	}
	return false
}

func WriteFile(filePath string, content string) bool {
	file, err := os.OpenFile(filePath, os.O_CREATE|os.O_WRONLY, 0644)
	if err != nil {
		return false
	}
	defer file.Close()

	_, err = file.WriteString(content)
	if err != nil {
		return err == nil
	}
	return true
}

func ExecCmd(cmd string) bool {
	args := strings.Split(cmd, " ")
	execCmd := exec.Command(args[0], args[1:]...)
	_, err := execCmd.Output()
	if err != nil {
		fmt.Printf("Error executing command: %s\n", err)
		return false
	}
	return true
}
