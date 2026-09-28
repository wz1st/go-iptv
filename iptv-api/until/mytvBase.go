package until

import (
	"io"
	"os"
	"path/filepath"
	"strings"
)

// mytv 底包（编译基底）与"线上包用的是哪版基底"的记账。

// PubBaseFile 是"线上包编译时所用基底版本"的记录文件。
func PubBaseFile() string { return MytvUserDir + "/PubBase" }

// MytvPublishedBase 返回线上包所用的基底版本。
func MytvPublishedBase() string {
	if v := ReadFile(PubBaseFile()); v != "" {
		return v
	}
	return GetMytvVersion()
}

// SetMytvPublishedBase 记录线上包所用的基底版本（发布时写一次）。
func SetMytvPublishedBase(base string) error {
	if base == "" {
		return nil
	}
	if err := os.MkdirAll(MytvUserDir, 0755); err != nil {
		return err
	}
	return WriteFileAtomic(PubBaseFile(), base+"\n", 0644)
}

// WriteFileAtomic 先写同目录临时文件再 rename —— 目标文件要么是旧的、
// 要么是新的，不会出现"写了一半"的中间态（底包版本号这种判据文件尤其要紧）。
func WriteFileAtomic(path, content string, mode os.FileMode) error {
	tmp := path + ".tmp"
	if err := os.WriteFile(tmp, []byte(content), mode); err != nil {
		return err
	}
	if err := os.Rename(tmp, path); err != nil {
		os.Remove(tmp)
		return err
	}
	return nil
}

// CopyFileAtomic 把 src 复制到 dst（同样走"临时文件 + rename"）。
func CopyFileAtomic(src, dst string, mode os.FileMode) error {
	in, err := os.Open(src)
	if err != nil {
		return err
	}
	defer in.Close()

	tmp := dst + ".tmp"
	out, err := os.OpenFile(tmp, os.O_CREATE|os.O_TRUNC|os.O_WRONLY, mode)
	if err != nil {
		return err
	}
	if _, err := io.Copy(out, in); err != nil {
		out.Close()
		os.Remove(tmp)
		return err
	}
	if err := out.Close(); err != nil {
		os.Remove(tmp)
		return err
	}
	if err := os.Rename(tmp, dst); err != nil {
		os.Remove(tmp)
		return err
	}
	return nil
}

// MytvApkPath 返回 mytv 产物（线上包 / 待发布包）在持久卷里的路径。
// staged=true 取待发布包（编译产物），false 取线上包。
func MytvApkPath(name string, staged bool) string {
	suffix := "-mytv.apk"
	if staged {
		suffix = "-mytv-new.apk"
	}
	return filepath.Join("/config/app", name+suffix)
}

// IsMytvApkName 判断文件名是否是一个 APK（上传接口用）。
func IsMytvApkName(name string) bool {
	return strings.EqualFold(filepath.Ext(name), ".apk")
}
