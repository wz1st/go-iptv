package bootstrap

import (
	"errors"
	"fmt"
	"iptv-api/dao"
	"iptv-api/until"
	"log"
	"os"
	"path/filepath"
	"slices"
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

	log.Println("开始编译客户端APK ...")
	cfg := dao.GetConfig()

	buildNo := cfg.Build.Version
	apkPath := OfficialAPKPath(cfg.Build.Name)
	if staged {
		buildNo = cfg.Build.NewVersion
		apkPath = StagedAPKPath(cfg.Build.Name)
	}
	if buildNo == "" {
		log.Println("版本号为空，跳过编译")
		return false
	}

	baseApk := until.ClientBaseDir() + "/Client.apk"
	if !until.Exists(baseApk) {
		log.Println("找不到编译基底:", baseApk, " ，请先上传或在线升级基底")
		return false
	}

	// 先把旧产物挪走：apktool 写失败时会留下半截 APK，
	// 而它会顶替掉线上包的位置 —— 用户下一次点下载拿到的是编坏的包。
	_ = os.Remove(apkPath)

	base := until.GetClientBaseVersion()
	workDir := filepath.Join(os.TempDir(), fmt.Sprintf("client_build_%d", time.Now().UnixNano()))
	values := until.ClientBuildValues{
		ServerURL:   cfg.ServerUrl,
		AppName:     cfg.Build.Name,
		Version:     buildNo,
		VersionName: until.FormatClientVersion(base, buildNo),
		// 没上传 logo / 背景时传空串，编译侧就保留包内默认图。
		IconPath:       clientIconPath(),
		BackgroundPath: clientBackgroundPath(),
	}

	err := until.BuildClientApk(baseApk, apkPath, workDir, values)
	// 工作目录一定要清：apktool 的中间产物能到几百 MB，
	// 容器磁盘被塞满会让后面所有写盘失败（连日志都写不进去）。
	defer os.RemoveAll(workDir)
	if err != nil {
		log.Println("客户端APK编译失败:", err)
		return false
	}

	log.Println("客户端APK编译完成:", apkPath)
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

// clientBgDir 是上传的启动背景图目录；编译期会挑其中一张打进包内。
const clientBgDir = "/config/images/bj"

// clientIconPath 返回上传的 logo；没上传返回空串（保留包内默认图）。
func clientIconPath() string {
	p := "/config/images/icon/icon.png"
	if !until.Exists(p) {
		return ""
	}
	return p
}

// clientBackgroundPath 返回要打进包的启动背景；没上传返回空串。
//
// 刻意**不**在这里随机挑图（until.GetBg 会随机）：
// 打进包里的那张必须是稳定的一张，否则同一版 APK 在不同机器上 logo/背景不一致，
// 用户会当成"发了不同的版本"。
func clientBackgroundPath() string {
	if !until.Exists(clientBgDir) {
		return ""
	}
	picks, err := filepath.Glob(filepath.Join(clientBgDir, "*.png"))
	if err != nil || len(picks) == 0 {
		return ""
	}
	// 按文件名排序取第一个：与 GetBg 的随机策略相反，编译期要的是可复现。
	slices.Sort(picks)
	return picks[0]
}
