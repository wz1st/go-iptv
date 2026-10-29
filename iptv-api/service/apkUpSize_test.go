package service

import (
	"iptv-api/until"
	"os"
	"path/filepath"
	"testing"
)

// 没有线上包时 appsize 必须是 0.0.0.000，不能是 "0 MB"。
// 客户端把 appver 与本机 versionName 做纯字典序比较，NoApkVersion 恒小于真实版本。
func TestClientApkUpSize_MissingFileFallsBackToNoApkVersion(t *testing.T) {
	missing := filepath.Join(t.TempDir(), "not-exist.apk")
	if until.Exists(missing) {
		t.Fatalf("前提不成立：%s 不该存在", missing)
	}
	got := ClientApkUpSize(missing)
	if got != until.NoApkVersion {
		t.Fatalf("缺包时 appsize = %q，期望 %q", got, until.NoApkVersion)
	}
	if got == "0 MB" {
		t.Fatal("appsize 不能回落到 \"0 MB\"：那会让客户端显示半成品大小文案")
	}
}

// 有文件时必须照常返回真实大小，不能被占位值吃掉。
func TestClientApkUpSize_ExistingFileReturnsRealSize(t *testing.T) {
	p := filepath.Join(t.TempDir(), "a.apk")
	if err := os.WriteFile(p, make([]byte, 2*1024*1024), 0o644); err != nil {
		t.Fatal(err)
	}
	got := ClientApkUpSize(p)
	if got == until.NoApkVersion {
		t.Fatal("有文件时不能返回占位版本号")
	}
	if got != until.GetFileSize(p) {
		t.Fatalf("有文件时 appsize = %q，与 GetFileSize %q 不一致", got, until.GetFileSize(p))
	}
}

// 占位版本号必须恒小于任何真实版本，否则客户端会对着空包弹更新。
// 真实版本形态为 0.NN.S[.BBB]，这里覆盖几个真实用过的段位。
func TestNoApkVersion_IsLowerThanRealVersions(t *testing.T) {
	reals := []string{
		"0.0.1", "0.0.1.001",
		"0.22.1.000", "0.28.0", "0.28.0.001",
		"0.32.1", "0.32.1.000",
		"1.0.0.001",
	}
	for _, r := range reals {
		if until.NoApkVersion >= r {
			t.Fatalf("NoApkVersion(%q) 必须小于真实版本 %q，否则客户端会弹假更新",
				until.NoApkVersion, r)
		}
	}
}

// 下层哨兵语义不能被改坏：GetFileSize 的失败值仍是 "0 MB"
// （api/spaSiteApi.go 用 == / != "0 MB" 判断线上包是否存在）。
func TestGetFileSize_KeepsZeroMBSentinel(t *testing.T) {
	missing := filepath.Join(t.TempDir(), "nope.apk")
	if got := until.GetFileSize(missing); got != "0 MB" {
		t.Fatalf("GetFileSize 缺文件时应返回哨兵 \"0 MB\"，实际 %q", got)
	}
}
