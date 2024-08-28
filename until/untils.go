package until

import (
	"archive/tar"
	"compress/gzip"
	"crypto/md5"
	"encoding/base64"
	"encoding/hex"
	"encoding/json"
	"fmt"
	"go-iptv/core"
	"io"
	"io/fs"
	"net"
	"net/http"
	"os"
	"os/exec"
	"path/filepath"
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
	return false
}

func CheckBuild(filePath string) bool {
	_, err := os.Stat(filePath)
	if err != nil {
		if os.IsNotExist(err) {
			err1 := os.MkdirAll(filePath, 0755)
			if err1 != nil {
				fmt.Printf("创建%s目录失败: %v\n", filePath, err1)
				return false
			} else {
				CheckBuild(filePath)
			}
		} else {
			fmt.Printf("error: %v\n", err)
			return false
		}
	}

	tarData, err := base64.StdEncoding.DecodeString(core.BUILD_DATA)
	if err != nil {
		fmt.Println("Base64解码失败:", err)
		return false
	}
	tmpFile, err := os.CreateTemp("", "build.tar.gz")
	if err != nil {
		fmt.Println("创建临时文件失败:", err)
		return false
	}
	defer os.Remove(tmpFile.Name())
	defer tmpFile.Close()
	_, err = tmpFile.Write(tarData)
	if err != nil {
		fmt.Println("写入临时文件失败:", err)
		return false
	}
	err = extractTarGz(tmpFile.Name(), filePath)
	if err != nil {
		fmt.Println("解压 tar.gz 文件失败:", err)
		return false
	}
	return true
}

func extractTarGz(src string, dest string) error {
	// 打开 .tar.gz 文件
	file, err := os.Open(src)
	if err != nil {
		return fmt.Errorf("打开 tar.gz 文件失败: %w", err)
	}
	defer file.Close()

	// 创建 gzip 解压读取器
	gzipReader, err := gzip.NewReader(file)
	if err != nil {
		return fmt.Errorf("创建 gzip 解压读取器失败: %w", err)
	}
	defer gzipReader.Close()

	// 创建 tar 归档读取器
	tarReader := tar.NewReader(gzipReader)

	// 创建目标目录
	if err := os.MkdirAll(dest, 0755); err != nil {
		return fmt.Errorf("创建目标目录失败: %w", err)
	}

	// 读取 tar 文件中的每个条目
	for {
		header, err := tarReader.Next()
		if err == io.EOF {
			break
		}
		if err != nil {
			return fmt.Errorf("读取 tar 条目失败: %w", err)
		}

		// 构建输出路径
		targetPath := filepath.Join(dest, header.Name)

		switch header.Typeflag {
		case tar.TypeDir:
			// 创建目录
			if err := os.MkdirAll(targetPath, fs.FileMode(header.Mode)); err != nil {
				return fmt.Errorf("创建目录失败: %w", err)
			}
		case tar.TypeReg:
			// 创建文件并写入内容
			outFile, err := os.Create(targetPath)
			if err != nil {
				return fmt.Errorf("创建文件失败: %w", err)
			}
			defer outFile.Close()

			if _, err := io.Copy(outFile, tarReader); err != nil {
				return fmt.Errorf("写入文件失败: %w", err)
			}
		default:
			return fmt.Errorf("未知 tar 类型: %c", header.Typeflag)
		}
	}
	return nil
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

func CheckJava(javaBin string) bool {
	fmt.Println("检查Java版本...")
	cmd := exec.Command(javaBin+"java", "-version")
	output, err := cmd.CombinedOutput()

	if err != nil {
		fmt.Println("Java版本检查失败:", err)
		return false
	}

	// 解析输出结果
	outputStr := string(output)
	lines := strings.Split(outputStr, "\n")

	// 输出 Java 版本信息
	if len(lines) > 0 {
		javaVersion := lines[0]
		fmt.Println("Java版本:", javaVersion)

		// 判断 Java 版本是否为 1.8
		if strings.Contains(javaVersion, "1.8") {
			return true
		} else {
			fmt.Println("Java版本不是 1.8")
			return false
		}
	} else {
		fmt.Println("无法确定 Java 版本")
		return false
	}
}

func CheckPort(port string) bool {
	fmt.Println("检查端口占用...")
	// 尝试监听给定端口
	listener, err := net.Listen("tcp", fmt.Sprintf(":%s", port))
	if err != nil {
		fmt.Println("端口" + port + "被占用...")
		return false // 端口被占用
	}
	listener.Close() // 关闭监听器
	return true      // 端口未被占用
}
