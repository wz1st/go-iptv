package bootstrap

import (
	"errors"
	"fmt"
	"iptv-api/dao"
	"iptv-api/until"
	"log"
	"os"
	"os/exec"
	"path/filepath"
	"regexp"
	"strings"
	"sync/atomic"
	"time"
)

var BuildStatus atomic.Value

func SetBuildStatus(status int64) {
	BuildStatus.Store(status)
}

func GetBuildStatus() int64 {
	v := BuildStatus.Load()
	if v == nil {
		return 0 // 没有值时默认返回 0
	}
	return v.(int64)
}

// FixedPackage 已下沉到 until 包（until.FixedPackage）。

// apk 的两个落点。
func OfficialAPKPath(name string) string { return "/config/app/" + name + ".apk" }

func StagedAPKPath(name string) string { return "/config/app/" + name + "-new.apk" }

// APK 的下载名（浏览器存盘用）与真实文件路径**刻意不同**。
func APKDownloadName(name, version string) string {
	if version == "" {
		return name + ".apk"
	}
	return name + "-" + version + ".apk"
}

// BuildAPK 编译 APK。
func BuildAPK(staged bool) bool {
	SetBuildStatus(1) // 编译中
	defer SetBuildStatus(0)

	log.Println("开始编译APK ...")
	cfg := dao.GetConfig()
	newUrl := cfg.ServerUrl
	apkName := cfg.Build.Name
	apkVersion := cfg.Build.Version
	apkPath := OfficialAPKPath(apkName)
	if staged {
		apkVersion = cfg.Build.NewVersion
		apkPath = StagedAPKPath(apkName)
	}
	if apkVersion == "" {
		log.Println("版本号为空，跳过编译")
		return false
	}
	iconFile := "/config/images/icon/icon.png"

	clientSource := "/client"
	outputDir := "/config/app"

	timeStamp := fmt.Sprintf("%d", time.Now().Unix())
	buildBaseDir := fmt.Sprintf("/tmp/build_%s", timeStamp)
	defer os.RemoveAll(buildBaseDir)
	buildSourceDir := buildBaseDir + clientSource
	os.RemoveAll(apkPath)

	buildKey := buildBaseDir + "/auto_keystore.jks"
	keyAlias := "iptvkey"

	if err := os.MkdirAll(buildBaseDir, 0755); err != nil {
		log.Println("编译目录创建失败:", err)
		return false
	}

	if err := os.MkdirAll(outputDir, 0755); err != nil {
		log.Println("apk输出目录创建失败:", err)
		return false
	}

	cmd := exec.Command("bash", "-c", "cp -rf "+clientSource+" "+buildBaseDir)
	output, err := cmd.CombinedOutput()
	if err != nil {
		log.Printf("编译环境复制失败: %v --- %s\n", err, string(output))
		return false
	}

	if until.Exists(iconFile) {
		log.Println("更换图标")
		if dao.Lic.Type >= 1 {
			until.CopyFile(iconFile, buildSourceDir+"/res/drawable-hdpi/ezpay.png")
		}
		err1 := until.CopyFile(iconFile, buildSourceDir+"/res/drawable-hdpi/icon.png")
		// err2 := until.CopyFile(iconFile, buildSourceDir+"/res/drawable-hdpi/logo.png")
		if err1 != nil {
			log.Println("复制icon文件失败:", err1)
			return false
		}
	}

	if until.GetBg() != "" {
		log.Println("更换背景")
		err := until.CopyFile("/config/images/bj/"+until.GetBg(), buildSourceDir+"/res/drawable-hdpi/ez_bg.png")
		if err != nil {
			log.Println("复制背景文件失败:", err)
			return false
		}
	}

	cmd = exec.Command(
		"keytool", "-genkey", "-v",
		"-keystore", buildKey,
		"-alias", keyAlias,
		"-keyalg", "RSA",
		"-keysize", "2048",
		"-validity", "10000",
		"-storepass", "123456",
		"-keypass", "123456",
		"-dname", "CN=Auto, OU=Dev, O=Company, L=City, S=State, C=CN",
	)

	if err := cmd.Run(); err != nil {
		log.Println("keytool 生成签名失败:", err)
		return false
	}

	if !renameApk(apkName, apkVersion, buildSourceDir) {
		return false
	}

	log.Println("更新服务器地址 ...")

	if err := replaceHost(buildSourceDir+"/smali", newUrl); err != nil {
		log.Println("替换Host失败:", err)
		return false
	}

	log.Println("更新Sign ...")

	if err := replaceSign(buildSourceDir, until.FixedAppSign); err != nil {
		log.Println("替换Sign失败:", err)
		return false
	}
	log.Println("开始编译APK ...")

	if until.IsLowResource() || os.Getenv("LOWOS") == "true" {
		cmd = exec.Command("apktool",
			"-JXmx128M",
			"-JXX:+UseParallelGC",
			"-JXX:+UseStringDeduplication",
			"-JXX:ParallelGCThreads=2",
			"-JDfile.encoding=utf-8",
			"-JDjdk.util.zip.disableZip64ExtraFieldValidation=true",
			"-JDjdk.nio.zipfs.allowDotZipEntry=true",
			"b", buildSourceDir, "-o", apkPath)
	} else {
		cmd = exec.Command("apktool", "b", buildSourceDir, "-o", apkPath)
	}

	if err := cmd.Run(); err != nil {
		log.Println("编译出错:", err)
		return false
	}

	log.Println("开始签名APK ...")
	cmd = exec.Command(
		"jarsigner",
		"-verbose",
		"-sigalg", "SHA256withRSA",
		"-digestalg", "SHA-256",
		"-keystore", buildKey,
		"-storepass", "123456",
		"-keypass", "123456",
		apkPath,
		keyAlias,
	)
	if err := cmd.Run(); err != nil {
		log.Println("签名出错:", err)
		return false
	}

	log.Println("APK编译完成")

	return true
}

func renameApk(apkName, apkVersion, buildSourceDir string) bool {
	log.Println("开始重命名APK")
	log.Println("[*]应用名:", apkName, "版本号:", apkVersion)
	if !until.Exists(buildSourceDir + "/AndroidManifest.xml") {
		log.Println("找不到AndroidManifest.xml文件")
		return false
	}
	log.Println("[*]修改 AndroidManifest.xml ...")

	data, err := os.ReadFile(buildSourceDir + "/AndroidManifest.xml")
	if err != nil {
		log.Println("[!]读取AndroidManifest.xml文件失败:", err)
		return false
	}

	re := regexp.MustCompile(`package="([^"]*)"`)
	match := re.FindStringSubmatch(string(data))
	if len(match) < 2 {
		log.Println("[!]无法解析应用标识")
		return false
	}
	oldPackage := match[1]

	// 应用标识统一改成 until.FixedPackage（不再来自请求/配置）
	updatedData := re.ReplaceAllString(string(data), `package="`+until.FixedPackage+`"`)
	re = regexp.MustCompile(`android:name="` + regexp.QuoteMeta(oldPackage) + `\.`)
	updatedData = re.ReplaceAllString(updatedData, `android:name="`+until.FixedPackage+`.`)

	// 写回文件
	err = os.WriteFile(buildSourceDir+"/AndroidManifest.xml", []byte(updatedData), 0644)
	if err != nil {
		log.Println("[!]写入AndroidManifest.xml文件失败:", err)
		return false
	}

	if !until.Exists(buildSourceDir + "/apktool.yml") {
		log.Println("[!]找不到apktool.yml文件")
		return false
	}

	log.Println("[*]修改 apktool.xml ...")
	apktoolData, err := os.ReadFile(buildSourceDir + "/apktool.yml")
	if err != nil {
		log.Println("[!]读取apktool.xml文件失败:", err)
		return false
	}

	re = regexp.MustCompile(`renameManifestPackage:.*`)
	updatedApktoolData := re.ReplaceAllString(string(apktoolData), `renameManifestPackage: '`+until.FixedPackage+`'`)
	re = regexp.MustCompile(`apkFileName:.*`)
	updatedApktoolData = re.ReplaceAllString(updatedApktoolData, `apkFileName: `+apkName+`.apk`)
	re = regexp.MustCompile(`versionName:.*`)
	updatedApktoolData = re.ReplaceAllString(updatedApktoolData, `versionName: `+apkVersion+``)
	// 写回文件
	err = os.WriteFile(buildSourceDir+"/apktool.yml", []byte(updatedApktoolData), 0644)
	if err != nil {
		log.Println("[!]写入apktool.xml文件失败:", err)
		return false
	}

	log.Println("[*]修改 strings.xml ...")

	if !until.Exists(buildSourceDir + "/res/values/strings.xml") {
		log.Println("[!]找不到strings.xml文件")
		return false
	}
	stringData, err := os.ReadFile(buildSourceDir + "/res/values/strings.xml")
	if err != nil {
		log.Println("[!]读取strings.xml文件失败:", err)
		return false
	}

	re = regexp.MustCompile(`<string name="app_name">.*?</string>`)
	updatedStringData := re.ReplaceAllString(string(stringData), `<string name="app_name">`+apkName+`</string>`)
	// 写回文件
	err = os.WriteFile(buildSourceDir+"/res/values/strings.xml", []byte(updatedStringData), 0644)
	if err != nil {
		log.Println("[!]写入strings.xml文件失败:", err)
		return false
	}

	log.Println("[*]修改 smali 结构 ...")

	// 替换smali文件中的包名
	oldPath := strings.ReplaceAll(oldPackage, ".", "/")
	newPath := strings.ReplaceAll(until.FixedPackage, ".", "/")

	if err := movePackageDir(buildSourceDir+"/smali/", oldPath, newPath); err != nil {
		log.Println("[!]移动应用代码目录失败:", err)
		return false
	}

	if err := replaceSmaliPackage(buildSourceDir+"/smali/", oldPackage, until.FixedPackage); err != nil {
		log.Println("[!]替换应用代码标识失败:", err)
		return false
	}
	return true
}

func replaceSmaliPackage(smaliDir, oldPackage, newPackage string) error {
	oldPath := strings.ReplaceAll(oldPackage, ".", "/")
	newPath := strings.ReplaceAll(newPackage, ".", "/")
	return filepath.WalkDir(smaliDir, func(path string, d os.DirEntry, err error) error {
		if err != nil {
			return err
		}
		// 只处理文件且扩展名为 .smali
		if !d.IsDir() && filepath.Ext(path) == ".smali" {
			data, err := os.ReadFile(path)
			if err != nil {
				return err
			}
			content := strings.ReplaceAll(string(data), oldPath, newPath)
			err = os.WriteFile(path, []byte(content), 0644)
			if err != nil {
				return err
			}
		}
		return nil
	})
}

func replaceHost(smaliDir, newHost string) error {
	// 正则匹配 const-string v0, "xxx/iptv"
	re := regexp.MustCompile(`(const-string\s+v0,\s*").*/iptv`)

	return filepath.WalkDir(smaliDir, func(path string, d os.DirEntry, err error) error {
		if err != nil {
			return err
		}
		if !d.IsDir() && filepath.Ext(path) == ".smali" {
			data, err := os.ReadFile(path)
			if err != nil {
				return err
			}
			// 替换 host 部分
			updated := re.ReplaceAllString(string(data), `${1}`+newHost+`/apk`)
			err = os.WriteFile(path, []byte(updated), 0644)
			if err != nil {
				return err
			}
		}
		return nil
	})
}

func replaceSign(buildSource string, appSign int64) error {
	// 转为十六进制字符串
	hexValue := fmt.Sprintf("0x%x", appSign)

	// 找到 SplashActivity.smali 文件
	var targetFile string
	err := filepath.WalkDir(filepath.Join(buildSource, "smali"), func(path string, d os.DirEntry, err error) error {
		if err != nil {
			return err
		}
		if !d.IsDir() && filepath.Base(path) == "SplashActivity.smali" {
			targetFile = path
			return filepath.SkipDir // 找到后停止遍历
		}
		return nil
	})
	if err != nil {
		return err
	}
	if targetFile == "" {

		return errors.New("[!]找不到 SplashActivity.smali 文件")
	}

	// 读取文件内容
	data, err := os.ReadFile(targetFile)
	if err != nil {
		return err
	}

	// 替换 const/16 v0 的值
	oldLine := `const/16 v0, 0x301b`
	newLine := `const/16 v0, ` + hexValue
	updated := strings.ReplaceAll(string(data), oldLine, newLine)

	// 写回文件
	return os.WriteFile(targetFile, []byte(updated), 0644)
}

func movePackageDir(workDir, oldPackagePath, newPackagePath string) error {
	oldDir := filepath.Join(workDir, oldPackagePath)
	newDir := filepath.Join(workDir, newPackagePath)

	// 检查旧目录是否存在
	info, err := os.Stat(oldDir)
	if err != nil {
		if os.IsNotExist(err) {
			log.Println("[!]旧目录不存在，跳过移动")
			return nil
		}
		return err
	}
	if !info.IsDir() {
		return errors.New("[!]旧路径不是目录")
	}

	// 创建新目录的父目录
	parentDir := filepath.Dir(newDir)
	err = os.MkdirAll(parentDir, 0755)
	if err != nil {
		return err
	}

	// 移动旧目录到新目录
	err = os.Rename(oldDir, newDir)
	if err != nil {
		return err
	}

	return nil
}
