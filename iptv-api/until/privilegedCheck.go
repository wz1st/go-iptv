package until

import (
	"log"
	"os"
	"strings"
)

// 检查 CapEff 是否为 ffffffffffffffff
func hasAllCaps() bool {
	data, err := os.ReadFile("/proc/self/status")
	if err != nil {
		return false
	}
	for _, line := range strings.Split(string(data), "\n") {
		if strings.HasPrefix(line, "CapEff:") {
			val := strings.TrimSpace(strings.TrimPrefix(line, "CapEff:"))
			return strings.HasPrefix(val, "ffffffff") // full caps
		}
	}
	return false
}

// 检查是否可写入特权文件
func canWritePrivilegedFiles() bool {
	// /dev/kmsg（普通容器不可写）
	if f, err := os.OpenFile("/dev/kmsg", os.O_WRONLY, 0o0); err == nil {
		f.Close()
		return true
	}

	// /proc/sysrq-trigger（普通容器不可写）
	if f, err := os.OpenFile("/proc/sysrq-trigger", os.O_WRONLY, 0o0); err == nil {
		f.Close()
		return true
	}
	return false
}

// 检查是否能读取受限内核参数
func canAccessRestrictedKernelInfo() bool {
	_, err := os.ReadFile("/proc/kcore") // 普通容器不可读
	return err == nil
}

func hasHostDevices() bool {
	entries, err := os.ReadDir("/dev")
	if err != nil {
		return false
	}
	// 普通容器一般 20~40 项，privileged 通常超过 200+
	return len(entries) > 100
}

func canAccessKernelSecurity() bool {
	_, err := os.ReadDir("/sys/kernel/security")
	return err == nil
}

func hasSysAdminCap() bool {
	data, err := os.ReadFile("/proc/self/status")
	if err != nil {
		return false
	}

	for _, line := range strings.Split(string(data), "\n") {
		if strings.HasPrefix(line, "CapEff:") {
			val := strings.TrimSpace(strings.TrimPrefix(line, "CapEff:"))
			// SYS_ADMIN 位 = bit 21 = 0x02000000
			return strings.Contains(val, "02000000")
		}
	}
	return false
}

func hasHostMounts() bool {
	data, err := os.ReadFile("/proc/mounts")
	if err != nil {
		return false
	}
	mounts := string(data)

	// 宿主机级设备
	deviceKeywords := []string{
		"/dev/sda",
		"/dev/nvme",
		"/dev/vd",
		"/dev/xv",
		"/dev/loop",
		"/dev/zvol",
		"/dev/mmcblk",
		"/dev/mapper",
		"/dev/bcache",
		"/dev/md",
	}

	for _, key := range deviceKeywords {
		if strings.Contains(mounts, key) {
			return true
		}
	}
	return false
}

// 最终接口：一行调用即可
func IsPrivileged() bool {
	log.Println("运行环境检查...")

	if hasHostDevices() {
		return true
	}

	if hasSysAdminCap() {
		return true
	}

	if canAccessKernelSecurity() {
		return true
	}

	if hasHostMounts() {
		return true
	}
	// 一层：capabilities
	if hasAllCaps() {
		return true
	}
	// 二层：写敏感设备
	if canWritePrivilegedFiles() {
		return true
	}
	// 三层：读取内核核心区
	if canAccessRestrictedKernelInfo() {
		return true
	}
	return false
}
