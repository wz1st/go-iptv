package dao

import (
	"strings"
	"testing"
)

// 缓存不可用（dao.Cache 为 nil）时，所有方法必须**安全返回**，绝不能 panic。
//
// 背景：dao.Cache 是进程级全局，未安装态/降级启动时可能是 nil。
// 只要有一处 `dao.Cache.Exists(...)` 在 nil 上取字段，整条请求就 panic，
// 表现为接口 500 或空白 —— 而缓存只是加速手段，它坏了不该影响正确性。

func TestNilFileCacheIsSafe(t *testing.T) {
	var fc *FileCache

	if fc.ready() {
		t.Fatal("nil 缓存不应 ready")
	}

	if err := fc.Set("k", []byte("v")); err == nil {
		t.Fatal("nil 缓存 Set 应返回错误")
	}
	if _, err := fc.Get("k"); err == nil {
		t.Fatal("nil 缓存 Get 应返回错误")
	}
	if _, err := fc.GetNotExpired("k"); err == nil {
		t.Fatal("nil 缓存 GetNotExpired 应返回错误")
	}
	if fc.Exists("k") {
		t.Fatal("nil 缓存 Exists 应为 false")
	}
	if fc.ChannelExists("k") {
		t.Fatal("nil 缓存 ChannelExists 应为 false")
	}
	if fc.Fresh("k", 0) {
		t.Fatal("nil 缓存 Fresh 应为 false")
	}
	if err := fc.Delete("k"); err == nil {
		t.Fatal("nil 缓存 Delete 应返回错误")
	}
	if err := fc.Clear(); err == nil {
		t.Fatal("nil 缓存 Clear 应返回错误")
	}
}

func TestNilFileCacheJSONSafe(t *testing.T) {
	var fc *FileCache
	var m map[string]string

	// GetJSON 必须先判指针 —— 传 nil 指针不能 panic。
	if err := fc.GetJSON("k", &m); err == nil {
		t.Fatal("nil 缓存 GetJSON 应返回错误")
	}
	if err := fc.GetJSON("k", nil); err == nil {
		t.Fatal("传 nil 应返回错误")
	} else if !strings.Contains(err.Error(), "指针") {
		t.Fatalf("错误信息应说明需要指针，实际: %v", err)
	}

	var s struct{ A int }
	if err := fc.SetStruct("k", &s); err == nil {
		t.Fatal("nil 缓存 SetStruct 应返回错误")
	}
	if err := fc.GetStruct("k", &s); err == nil {
		t.Fatal("nil 缓存 GetStruct 应返回错误")
	}
}

func TestEmptyDirCacheIsNotReady(t *testing.T) {
	// Dir 为空 ⇒ 同样按"不可用"处理（否则会往 "" 下面写文件）。
	fc := &FileCache{}
	if fc.ready() {
		t.Fatal("空目录不应 ready")
	}
	if fc.Exists("k") {
		t.Fatal("空目录缓存 Exists 应为 false")
	}
}
