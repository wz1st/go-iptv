package dao

import (
	"crypto/sha256"
	"encoding/hex"
	"os"
	"path/filepath"
)

// 配置文件的安全落盘与指纹

// writeFileAtomic 原子地把 data 写到 path。
func writeFileAtomic(path string, data []byte, perm os.FileMode) error {
	dir := filepath.Dir(path)

	tmp, err := os.CreateTemp(dir, "."+filepath.Base(path)+".tmp*")
	if err != nil {
		return err
	}
	tmpName := tmp.Name()

	// 正常路径上 rename 已经把它移走了，这次 Remove 会返回 ENOENT，忽略即可；
	// 出错路径上它负责收拾残局。
	defer func() { _ = os.Remove(tmpName) }()

	if _, err := tmp.Write(data); err != nil {
		_ = tmp.Close()
		return err
	}
	if err := tmp.Sync(); err != nil {
		_ = tmp.Close()
		return err
	}
	if err := tmp.Close(); err != nil {
		return err
	}
	if err := os.Chmod(tmpName, perm); err != nil {
		return err
	}
	return os.Rename(tmpName, path)
}

// shortHash 取内容的 sha256 前 16 个十六进制字符。
func shortHash(b []byte) string {
	sum := sha256.Sum256(b)
	return hex.EncodeToString(sum[:8])
}

// hashFile 读取文件并返回短哈希；文件不存在或读不动时返回 ""。
func hashFile(path string) string {
	b, err := os.ReadFile(path)
	if err != nil {
		return ""
	}
	return shortHash(b)
}
