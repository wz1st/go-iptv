package until

import (
	"context"
	"fmt"
	"os"
	"os/exec"
	"regexp"
	"strings"
	"sync"
	"time"
)

// APK 元信息探测（aapt2 dump badging）。

// aaptCandidates 是探测工具的候选路径，按顺序试第一个能跑的。
// 允许 IPTV_AAPT2 覆盖：换镜像/换 build-tools 版本时不用改代码。
var aaptCandidates = func() []string {
	if custom := os.Getenv("IPTV_AAPT2"); custom != "" {
		return []string{custom}
	}
	return []string{
		"/opt/android-sdk/build-tools/aapt2",
		"/opt/android-sdk/build-tools/aapt",
		"aapt2",
		"aapt",
	}
}

// ApkInfo 是从 badging 输出里取到的关键字段。
type ApkInfo struct {
	Package     string // 包名，如 xyz.qingh.mytv
	VersionName string // versionName，如 1.2.2.001
	VersionCode string
}

// aaptProbeTimeout 是单次探测的上限。30s 远大于实测（<1s），
// 只是防止 aapt 因为坏包卡死把上传请求拖到 nginx 超时。
const aaptProbeTimeout = 30 * time.Second

var (
	pkgRe     = regexp.MustCompile(`name='([^']*)'`)
	verNameRe = regexp.MustCompile(`versionName='([^']*)'`)
	verCodeRe = regexp.MustCompile(`versionCode='([^']*)'`)
)

// ProbeApk 读出 APK 的包名与版本名。
func ProbeApk(path string) (ApkInfo, error) {
	var errs []string
	for _, bin := range aaptCandidates() {
		info, err := probeWith(bin, path)
		if err == nil {
			return info, nil
		}
		errs = append(errs, err.Error())
	}
	if len(errs) == 0 {
		return ApkInfo{}, fmt.Errorf("未找到可用的 aapt/aapt2")
	}
	// 报**第一个**候选的失败原因，不是最后一个。
	// 候选表末尾是裸 "aapt"（依赖 PATH，镜像里通常没有），
	// 报它会把「包本身不是 zip」这类真因掩盖成
	// "aapt: executable file not found in $PATH" —— 排查时被带偏很久。
	return ApkInfo{}, fmt.Errorf("%s", errs[0])
}

func probeWith(bin, path string) (ApkInfo, error) {
	ctx, cancel := context.WithTimeout(context.Background(), aaptProbeTimeout)
	defer cancel()

	out, err := exec.CommandContext(ctx, bin, "dump", "badging", path).Output()
	if err != nil {
		return ApkInfo{}, fmt.Errorf("%s 探测失败: %v", bin, err)
	}

	// 只认第一行 "package: name='…' versionCode='…' versionName='…' …"，
	for _, line := range strings.Split(string(out), "\n") {
		if !strings.HasPrefix(line, "package:") {
			continue
		}
		info := ApkInfo{
			Package:     firstGroup(pkgRe, line),
			VersionName: firstGroup(verNameRe, line),
			VersionCode: firstGroup(verCodeRe, line),
		}
		if info.Package == "" {
			return ApkInfo{}, fmt.Errorf("未能从 %s 的输出里解析出包名", bin)
		}
		return info, nil
	}
	return ApkInfo{}, fmt.Errorf("%s 未输出 package 信息（可能不是有效 APK）", bin)
}

func firstGroup(re *regexp.Regexp, s string) string {
	if m := re.FindStringSubmatch(s); len(m) == 2 {
		return m[1]
	}
	return ""
}

var (
	factoryPkgOnce sync.Once
	factoryPkg     string
)

// MytvFactoryPackage 返回镜像出厂底包（/app/mytv/MyTV.apk）的包名。
func MytvFactoryPackage() string {
	factoryPkgOnce.Do(func() {
		info, err := ProbeApk(MytvDir + "/MyTV.apk")
		if err != nil {
			return
		}
		factoryPkg = info.Package
	})
	return factoryPkg
}

// BaseVersionFromVersionName 从底包 versionName 反推「基底版本」。
func BaseVersionFromVersionName(versionName string) (string, bool) {
	parts := strings.Split(strings.TrimSpace(versionName), ".")
	if len(parts) < 4 {
		return "", false
	}
	build := parts[len(parts)-1]
	base := strings.Join(parts[:len(parts)-1], ".")
	if len(build) < 3 || !isThreeNumericSegments(base) {
		return "", false
	}
	return base, true
}

// isThreeNumericSegments 判断是否形如 1.2.2（三段、每段非空纯数字）。
func isThreeNumericSegments(v string) bool {
	parts := strings.Split(v, ".")
	if len(parts) != 3 {
		return false
	}
	for _, p := range parts {
		if p == "" {
			return false
		}
		for _, r := range p {
			if r < '0' || r > '9' {
				return false
			}
		}
	}
	return true
}
