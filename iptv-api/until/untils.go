package until

import (
	"crypto/md5"
	"encoding/hex"
	"encoding/json"
	"fmt"
	"io"
	"io/fs"
	"log"
	"math"
	"math/rand"
	"net"
	"net/http"
	"net/url"
	"os"
	"os/exec"
	"path/filepath"
	"regexp"
	"runtime"
	"sort"
	"strconv"
	"strings"
	"time"
	"unicode/utf8"

	"github.com/gin-gonic/gin"
	"github.com/shirou/gopsutil/mem"
	"golang.org/x/net/publicsuffix"
)

func Md5(str string) (retMd5 string) {
	h := md5.New()
	h.Write([]byte(str))
	return hex.EncodeToString(h.Sum(nil))
}

// Md5File 求文件的 MD5（十六进制小写）。
func Md5File(path string) string {
	f, err := os.Open(path)
	if err != nil {
		return ""
	}
	defer f.Close()

	h := md5.New()
	if _, err := io.Copy(h, f); err != nil {
		return ""
	}
	return hex.EncodeToString(h.Sum(nil))
}

func ReverseString(s string) string {
	runes := []rune(s)
	for i, j := 0, len(runes)-1; i < j; i, j = i+1, j-1 {
		runes[i], runes[j] = runes[j], runes[i]
	}
	return string(runes)
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

func GetUrlData(url string, ua ...string) string {
	defaultUA := "Go-http-client/1.1"
	useUA := defaultUA

	if len(ua) > 0 && ua[0] != "" {
		useUA = ua[0]
	}

	req, err := http.NewRequest("GET", url, nil)
	if err != nil {
		return ""
	}

	req.Header.Set("User-Agent", useUA)

	client := &http.Client{}
	resp, err := client.Do(req)
	if err != nil {
		log.Println(url, " 请求失败:", err)
		return ""
	}
	defer resp.Body.Close()

	body, err := io.ReadAll(resp.Body)
	if err != nil {
		return ""
	}

	return string(body)
}

func GetIpRegion(ip string) string {
	city := "局域网"
	if !isPrivateIP(net.ParseIP(ip)) {
		return city
	}
	url := "https://api.mir6.com/api/ip_json?ip=" + ip
	jsonStr := GetUrlData(url)
	var jsonMap map[string]interface{}
	err := json.Unmarshal([]byte(jsonStr), &jsonMap)
	if err != nil {
		return city
	}
	if data, ok := jsonMap["data"].(map[string]interface{}); ok {
		if cityStr, ok := data["location"].(string); ok && cityStr != "" {
			city = cityStr
		}
	}
	return city
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
		return "0 MB"
	}

	// 获取文件大小（字节）
	fileSize := fileInfo.Size()

	// 将文件大小转换为兆字节 (MB)
	fileSizeMB := float64(fileSize) / (1024 * 1024)

	// 输出文件大小（MB）
	return fmt.Sprintf("%.2f MB", fileSizeMB)
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

func CopyFile(from, to string) error {
	// 打开源文件
	src, err := os.Open(from)
	if err != nil {
		return err
	}
	defer src.Close()

	// 创建目标文件（如果存在会覆盖）
	dst, err := os.Create(to)
	if err != nil {
		return err
	}
	defer dst.Close()

	// 复制内容
	_, err = io.Copy(dst, src)
	if err != nil {
		return err
	}

	// 同步写入磁盘
	return dst.Sync()
}

func CheckJava() bool {
	log.Println("检查Java版本...")
	cmd := exec.Command("java", "-version")
	output, err := cmd.CombinedOutput()

	if err != nil {
		log.Println("Java版本检查失败:", err)
		return false
	}

	outputStr := string(output)
	lines := strings.Split(outputStr, "\n")

	if len(lines) > 0 {
		javaVersionLine := lines[0]
		log.Println("Java版本信息:", javaVersionLine)

		// 解析版本号，例如 'java version "1.8.0_361"' 或 'openjdk version "17.0.7"'
		var versionStr string
		if strings.Contains(javaVersionLine, `"`) {
			parts := strings.Split(javaVersionLine, `"`)
			if len(parts) >= 2 {
				versionStr = parts[1]
			}
		}

		if versionStr == "" {
			log.Println("无法解析Java版本")
			return false
		}

		// 取主版本号和次版本号
		versionParts := strings.Split(versionStr, ".")
		major := 0
		minor := 0
		if len(versionParts) >= 2 {
			major, _ = strconv.Atoi(versionParts[0])
			minor, _ = strconv.Atoi(versionParts[1])
		} else if len(versionParts) == 1 {
			major, _ = strconv.Atoi(versionParts[0])
			minor = 0
		}

		// Java 1.x 系列，1.8对应 major=1, minor=8；Java 9+ 直接是 major=9+
		if major > 1 || (major == 1 && minor >= 8) {
			return true
		} else {
			log.Println("Java版本低于 1.8")
			return false
		}
	} else {
		log.Println("无法确定 Java 版本")
		return false
	}
}

func CheckApktool() bool {
	log.Println("检查Apktool版本...")
	cmd := exec.Command("apktool", "-version")
	output, err := cmd.CombinedOutput()

	if err != nil {
		log.Println("Apktool检查失败:", err)
		return false
	}

	// 解析输出结果
	outputStr := string(output)
	lines := strings.Split(outputStr, "\n")

	// 输出 Apktool 版本信息
	if len(lines) > 0 {
		apktoolVersion := lines[0]
		log.Println("Apktool版本:", apktoolVersion)
		return true
	} else {
		log.Println("无法确定 Apktool 版本")
		return false
	}
}

func CheckPort(port string) bool {
	log.Println("检查端口占用...")
	// 尝试监听给定端口
	listener, err := net.Listen("tcp", fmt.Sprintf(":%s", port))
	if err != nil {
		log.Println("端口" + port + "被占用...")
		return false // 端口被占用
	}
	listener.Close() // 关闭监听器
	return true      // 端口未被占用
}

func FilterEmoji(s string) string {
	result := make([]rune, 0, len(s))
	for _, r := range s {
		if utf8.RuneLen(r) < 4 {
			result = append(result, r)
		}
	}
	return string(result)
}

func GetPngFileNames(dir string) ([]string, error) {
	var names []string

	entries, err := os.ReadDir(dir)
	if err != nil {
		return nil, err
	}

	for _, entry := range entries {
		if entry.IsDir() {
			continue
		}
		if strings.EqualFold(filepath.Ext(entry.Name()), ".png") {
			name := strings.TrimSuffix(entry.Name(), filepath.Ext(entry.Name()))
			names = append(names, name)
		}
	}

	return names, nil
}

func IsSafeImgName(inputPath string) bool {
	// 清理输入路径
	imgName := filepath.Clean(inputPath)

	// 检查是否包含 ..
	if strings.Contains(imgName, "..") {
		return false
	}

	// 检查是否包含 .
	if strings.Contains(imgName, ".") {
		return false
	}

	// 检查是否是绝对路径
	if filepath.IsAbs(imgName) {
		return false
	}

	// 检查是否包含可疑字符
	if strings.ContainsAny(imgName, `:*?"<>|'`) {
		return false
	}
	pattern := `^[a-fA-F0-9]{32}$`
	match, _ := regexp.MatchString(pattern, imgName)
	return match
}

func IsSafe(input string) bool {

	if input == "" {
		return true
	}

	// 检查是否包含可疑字符
	if strings.ContainsAny(input, `:*?"<>|'+`) {
		return false
	}

	return true
}

func GetFileModTimeStr(filePath string) (string, error) {
	info, err := os.Stat(filePath)
	if err != nil {
		return "", err
	}
	// 使用自定义格式 YYYY.MM.DD
	return info.ModTime().Format("2006.01.02"), nil
}

func DiffDays(ts1, ts2 int64) int {
	// 转换为 time.Time
	t1 := time.Unix(ts1, 0)
	t2 := time.Unix(ts2, 0)

	// 计算差值
	diff := t2.Sub(t1)
	if diff < 0 {
		diff = -diff // 保证正数
	}

	days := diff.Hours() / 24

	return int(math.Ceil(days))
}

func GetContainerID() (string, error) {
	hostname, err := os.ReadFile("/etc/hostname")
	if err != nil {
		return "", err
	}
	id := strings.TrimSpace(string(hostname))
	return id, nil
}

func GetBg() string {
	// 获取指定目录下的所有png文件
	dir := "/config/images/bj"
	files, err := filepath.Glob(filepath.Join(dir, "*.png"))
	if err != nil {
		return ""
	}
	if len(files) == 0 {
		return ""
	}

	pngs := make([]string, len(files))
	for i, file := range files {
		pngs[i] = filepath.Base(file)
	}
	randomIndex := rand.Intn(len(pngs))
	return pngs[randomIndex]
}

func CheckLogo(path string) (bool, error) {
	// 检查路径是否存在
	info, err := os.Stat(path)
	if os.IsNotExist(err) {
		return false, nil // 不存在
	}
	if err != nil {
		return false, err // 其他错误
	}

	// 判断是否是目录
	if !info.IsDir() {
		return false, fmt.Errorf("%s 不是目录", path)
	}

	// 打开目录
	dir, err := os.Open(path)
	if err != nil {
		return false, err
	}
	defer dir.Close()

	// 读取目录内容（最多读一个即可判断是否为空）
	entries, err := dir.ReadDir(1)
	if err != nil && err != fs.ErrClosed {
		return false, err
	}

	// 如果有内容返回 true，否则 false
	if len(entries) > 0 {
		return true, nil
	}

	return false, nil
}

func GetLogos() []string {
	// 获取指定目录下的所有png文件
	dir := "/config/logo"
	files, err := filepath.Glob(filepath.Join(dir, "*.png"))
	if err != nil {
		return []string{}
	}
	if len(files) == 0 {
		return []string{}
	}

	pngs := make([]string, len(files))
	for i, file := range files {
		pngs[i] = filepath.Base(file)
	}
	return pngs
}

func EpgNameGetLogo(eNmae string) string {
	// 获取指定目录下的所有png文件
	dir := "/config/logo"
	files, err := filepath.Glob(filepath.Join(dir, "*.png"))
	if err != nil {
		return ""
	}
	if len(files) == 0 {
		return ""
	}

	pngs := make([]string, len(files))
	for i, file := range files {
		pngs[i] = filepath.Base(file)
	}

	for _, logo := range pngs {
		logoName := strings.Split(logo, ".")[0]
		if strings.EqualFold(eNmae, logoName) {
			return "/logo/" + logo
		}
	}
	return ""
}

func IsValidHost(host string) bool {
	if host == "" {
		return false
	}

	// 去掉端口
	if strings.Contains(host, ":") {
		h, _, err := net.SplitHostPort(host)
		if err == nil {
			host = h
		}
	}

	// 如果是 IP
	if net.ParseIP(host) != nil {
		return true
	}

	// 匹配域名
	domainPattern := `^([a-zA-Z0-9-]+\.)+[a-zA-Z]{2,}$`
	matched, _ := regexp.MatchString(domainPattern, host)
	return matched
}

func GetMainDomain(input string) string {
	// 补全 URL 协议前缀，避免解析失败
	if !strings.HasPrefix(input, "http://") && !strings.HasPrefix(input, "https://") {
		input = "https://" + input
	}

	u, err := url.Parse(input)
	if err != nil {
		return ""
	}

	domain := u.Hostname()
	if domain == "" {
		return ""
	}

	// 获取主域 + 后缀（如 51zmt.top / bbc.co.uk）
	eTLDPlusOne, err := publicsuffix.EffectiveTLDPlusOne(domain)
	if err != nil {
		return ""
	}

	// 获取后缀（如 top / co.uk）
	suffix, _ := publicsuffix.PublicSuffix(domain)

	// 去掉后缀部分，保留主域
	mainDomain := strings.TrimSuffix(eTLDPlusOne, "."+suffix)
	return mainDomain
}

// MergeAndUnique 合并两个切片并去重，**保持首次出现的顺序**，同时丢掉空串。
func MergeAndUnique(a, b []string) []string {
	seen := make(map[string]struct{}, len(a)+len(b))
	result := make([]string, 0, len(a)+len(b))

	for _, v := range append(a, b...) {
		// 去掉空字符串
		if v == "" {
			continue
		}
		// 去重
		if _, exists := seen[v]; exists {
			continue
		}
		seen[v] = struct{}{}
		result = append(result, v)
	}

	return result
}

// GetVersion 返回管理系统（api）自己的版本号 —— 直接取自编译期常量。
func GetVersion() string { return Version }

// MytvDir 是 mytv 客户端底包在镜像里的出厂落点（替代曾经的 assets/baseApk embed）。
const MytvDir = "/app/mytv"

// MytvUserDir 是**用户上传**的底包落点，放在持久卷里。
const MytvUserDir = "/config/mytv"

// MytvBaseDir 返回当前生效的底包目录：用户上传的优先，没有才用镜像自带的。
func MytvBaseDir() string {
	if ReadFile(MytvUserDir+"/Version_mytv") != "" && Exists(MytvUserDir+"/MyTV.apk") {
		return MytvUserDir
	}
	return MytvDir
}

// 这里曾有 GetMytvBaseApkPath()，只服务于已被删除的 GET /mytv/baseApk

// GetMytvVersion 读 mytv 底包版本号（用户上传目录优先，回落镜像）。
// 读不到时回空串：调用方（admin 后台、客户端启动检查）据此展示"未安装"。
func GetMytvVersion() string { return ReadFile(MytvBaseDir() + "/Version_mytv") }

// PadBuildNo 把 mytv 的编译号补成三位（1 → 001、11 → 011、111 → 111）。
//
// 只认**结尾那一段纯数字**，其余一律归一到那一段：
//   - 完整版本号（1.0.0.001 → 001）—— 前端曾把它当编译号发过来，
//     拼版本号时再多叠一层，且全程不报错。
//   - 带小数的脏数据（1.0 → 0）—— 旧数据里真实出现过，编译号只可能
//     是 1-999 的整数，"1.0" 不是一个合法的编译号，取末段是最保守的收拾。
//
// 原来是纯 `len(s) >= 3 就原样返回`，于是 "1.0"（长度正好 3）被当成合法编译号，
// 与基底拼出 5 段的 `1.0.0.1.0`。
func PadBuildNo(v string) string {
	no := lastNumericSegment(v)
	if no == "" {
		return ""
	}
	if len(no) >= 3 {
		return no
	}
	return strings.Repeat("0", 3-len(no)) + no
}

// lastNumericSegment 取串里结尾那一段连续数字（"1.0.0.001" → "001"、"12" → "12"、
// "abc" → ""）。编译号与版本号的拼接都靠它归一，是防叠加的单一入口。
func lastNumericSegment(v string) string {
	s := strings.TrimSpace(v)
	if s == "" {
		return ""
	}
	// 先砍掉最后一段点号之后的内容，再在剩下的尾部找数字。
	if i := strings.LastIndex(s, "."); i >= 0 {
		s = s[i+1:]
	}
	j := len(s)
	for j > 0 && s[j-1] >= '0' && s[j-1] <= '9' {
		j--
	}
	return s[j:]
}

// FormatMytvVersion 拼 mytv 的对外版本号：基底版本 + "." + 三位编译号。
// 归一在 PadBuildNo 里，所以误传完整版本号只会得到 4 段结果，不会越叠越长。
func FormatMytvVersion(base, buildNo string) string {
	if base == "" || strings.TrimSpace(buildNo) == "" {
		return ""
	}
	no := PadBuildNo(buildNo)
	if no == "" {
		return ""
	}
	return base + "." + no
}

func EqualStringSets(a, b []string) bool {
	if len(a) != len(b) {
		return false
	}
	aCopy := append([]string(nil), a...)
	bCopy := append([]string(nil), b...)
	sort.Strings(aCopy)
	sort.Strings(bCopy)
	for i := range aCopy {
		if aCopy[i] != bCopy[i] {
			return false
		}
	}
	return true
}

func RemoveEmptyStrings(slice []string) []string {
	result := make([]string, 0, len(slice))
	seen := make(map[string]struct{})

	for _, s := range slice {
		s = strings.TrimSpace(s)
		if s != "" {
			if _, exists := seen[s]; !exists {
				result = append(result, s)
				seen[s] = struct{}{}
			}
		}
	}
	return result
}

func Int64InStringSlice(target int64, list []string) bool {
	s := strconv.FormatInt(target, 10) // int64 转字符串
	for _, v := range list {
		if v == s {
			return true
		}
	}
	return false
}

func InStringSlice(target string, list []string) bool {
	for _, v := range list {
		if v == target {
			return true
		}
	}
	return false
}

func CheckRam() bool {
	// 判断可用内存
	vmStat, err := mem.VirtualMemory()
	if err != nil {
		return false
	}
	log.Printf("可用内存: %d MB (%d GB)\n", vmStat.Available/1024/1024, vmStat.Available/1024/1024/1024)
	return vmStat.Available < 256*1024*1024
}

func IsLowResource() bool {
	// 判断 CPU 核心数
	if runtime.NumCPU() < 2 {
		return true
	}

	// 判断可用内存
	vmStat, err := mem.VirtualMemory()
	if err != nil {
		return false
	}
	return vmStat.Available < 256*1024*1024
}

func ReadFile(path string) string {
	data, err := os.ReadFile(path)
	if err != nil {
		return ""
	}
	return strings.TrimSpace(string(data))
}

func FixPerm(path string) error {
	return filepath.Walk(path, func(p string, info os.FileInfo, err error) error {
		if err != nil {
			return err
		}
		return os.Chmod(p, 0777)
	})
}
