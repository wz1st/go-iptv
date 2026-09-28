package dao

import (
	"fmt"
	"strings"
	"sync"
	"testing"
)

// 文件缓存的三个"静默失效"点

func newTestCache(t *testing.T) *FileCache {
	t.Helper()
	c, err := NewFileCache(t.TempDir(), false)
	if err != nil {
		t.Fatalf("创建缓存失败: %v", err)
	}
	return c
}

func TestGetJSONRejectsNonPointer(t *testing.T) {
	c := newTestCache(t)

	payload := map[string]string{"a": "b"}
	if err := c.SetJSON("k", payload); err != nil {
		t.Fatalf("SetJSON 失败: %v", err)
	}

	// 传值：必须**显式报错**，而不是让调用方以为"缓存未命中"。
	var m map[string]string
	if err := c.GetJSON("k", m); err == nil {
		t.Fatal("传非指针应返回错误（这正是改造前缓存永不命中的原因）")
	} else if !strings.Contains(err.Error(), "指针") {
		t.Fatalf("错误信息应说明需要指针，实际: %v", err)
	}

	// 传 nil 也要拦。
	if err := c.GetJSON("k", nil); err == nil {
		t.Fatal("传 nil 应返回错误")
	}
	// 传空指针同样拦。
	var ptr *map[string]string
	if err := c.GetJSON("k", ptr); err == nil {
		t.Fatal("传空指针应返回错误")
	}

	// 正确的用法必须能读回来 —— 否则"报了错但功能还是坏的"。
	if err := c.GetJSON("k", &m); err != nil {
		t.Fatalf("传指针应读取成功，实际: %v", err)
	}
	if m["a"] != "b" {
		t.Fatalf("读回的内容不对: %v", m)
	}
}

func TestGetStructRejectsNonPointer(t *testing.T) {
	c := newTestCache(t)

	type item struct{ N int }
	if err := c.SetStruct("s", &item{N: 7}); err != nil {
		t.Fatalf("SetStruct 失败: %v", err)
	}
	if err := c.GetStruct("s", item{}); err == nil {
		t.Fatal("GetStruct 传非指针应返回错误")
	}
	var got item
	if err := c.GetStruct("s", &got); err != nil {
		t.Fatalf("GetStruct 传指针应成功，实际: %v", err)
	}
	if got.N != 7 {
		t.Fatalf("读回内容不对: %+v", got)
	}
}

// TestCNTVCacheKeyIsCaseAndSpaceInsensitive 缓存键必须与调用方传入的大小写无关。
func TestCNTVCacheKeyIsCaseAndSpaceInsensitive(t *testing.T) {
	want := "cntv_cctv1"
	for _, in := range []string{"cctv1", "CCTV1", "Cctv1", "  cctv1  ", "\tcctv1"} {
		if got := CNTVCacheKey(in); got != want {
			t.Errorf("CNTVCacheKey(%q) = %q，应为 %q", in, got, want)
		}
	}
	// 不同频道不能撞键。
	if CNTVCacheKey("cctv1") == CNTVCacheKey("cctv13") {
		t.Fatal("不同频道不应得到相同缓存键")
	}
}

// TestCacheSetIsAtomicConcurrentRead 并发读不应读到半截 JSON。
func TestCacheSetIsAtomicConcurrentRead(t *testing.T) {
	c := newTestCache(t)
	key := "cntv_big"

	small := []byte(`{"a":1}`)
	big := []byte(`{"a":"` + strings.Repeat("x", 8192) + `"}`)

	if err := c.Set(key, big); err != nil {
		t.Fatal(err)
	}

	stop := make(chan struct{})
	var wg sync.WaitGroup
	bad := make(chan string, 1)

	wg.Add(1)
	go func() {
		defer wg.Done()
		for i := 0; ; i++ {
			select {
			case <-stop:
				return
			default:
			}
			d := small
			if i%2 == 0 {
				d = big
			}
			if err := c.Set(key, d); err != nil {
				return
			}
		}
	}()

	for i := 0; i < 400; i++ {
		b, err := c.Get(key)
		if err != nil {
			continue
		}
		if string(b) != string(small) && string(b) != string(big) {
			select {
			case bad <- fmt.Sprintf("读到了半截缓存内容（长度 %d）", len(b)):
			default:
			}
			break
		}
	}
	close(stop)
	wg.Wait()

	select {
	case msg := <-bad:
		t.Fatalf("缓存写入不是原子的: %s", msg)
	default:
	}
}

// TestCacheDeleteByPattern 保持 Delete 的 glob 语义（有调用方依赖）。
func TestCacheDeleteByPattern(t *testing.T) {
	c := newTestCache(t)
	for _, k := range []string{"epgXmlFrom_a", "epgXmlFrom_b", "cntv_cctv1"} {
		if err := c.Set(k, []byte("x")); err != nil {
			t.Fatal(err)
		}
	}
	if err := c.Delete("epgXmlFrom_*"); err != nil {
		t.Fatalf("Delete 失败: %v", err)
	}
	if c.Exists("epgXmlFrom_a") || c.Exists("epgXmlFrom_b") {
		t.Fatal("epgXmlFrom_* 应被删除")
	}
	if !c.Exists("cntv_cctv1") {
		t.Fatal("不匹配的键不该被删掉")
	}
}
