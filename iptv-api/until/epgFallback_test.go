package until

import (
	"os"
	"path/filepath"
	"strings"
	"testing"

	"iptv-api/dao"
	"iptv-api/models"
)

// setupEpgFallbackDB 建一个最小可用的库：一个套餐 + 一个分组 + 一条频道。
func setupEpgFallbackDB(t *testing.T) int64 {
	t.Helper()

	notifyChannelWrite = func(int64) {}
	t.Cleanup(func() { notifyChannelWrite = realNotifyChannelWrite })

	if !dao.InitDB(filepath.Join(t.TempDir(), "iptv.db")) {
		t.Fatal("初始化测试数据库失败")
	}
	// sqlite 在 Windows 上会锁住库文件 ⇒ t.TempDir 的清理会失败。
	// 用例结束前主动关连接，把锁放开。
	t.Cleanup(func() {
		if sqlDB, err := dao.DB.DB(); err == nil {
			sqlDB.Close()
		}
	})
	if _, err := dao.MigrateAll("test"); err != nil {
		t.Fatalf("建表失败: %v", err)
	}

	ca := models.IptvCategory{Name: "央视", Enable: true, Type: "add", Sort: 1}
	if err := dao.DB.Create(&ca).Error; err != nil {
		t.Fatalf("建分组失败: %v", err)
	}

	// 用 IptvChannel（不是 Show）建行：Show 带 epg_name/ca_name 等 JOIN 别名字段，
	// 直接 Create 会往 iptv_channels 写不存在的列。
	ch := models.IptvChannel{
		CategoryID: ca.ID,
		Name:       "CCTV1",
		Status:     true,
		Url:        "http://a/live.m3u8",
	}
	if err := dao.DB.Create(&ch).Error; err != nil {
		t.Fatalf("建频道失败: %v", err)
	}

	meal := models.IptvMeals{
		Name:    "测试套餐",
		Status:  true,
		Content: itoa(ca.ID),
	}
	if err := dao.DB.Create(&meal).Error; err != nil {
		t.Fatalf("建套餐失败: %v", err)
	}
	return meal.ID
}

func itoa(v int64) string {
	if v == 0 {
		return "0"
	}
	var b []byte
	for v > 0 {
		b = append([]byte{byte('0' + v%10)}, b...)
		v /= 10
	}
	return string(b)
}

// TestEnsureMealEpgPayloadFallsBackWhenCacheUnavailable
//
// 核心承诺：缓存坏了也不能让接口返回空白节目单。
//
// 场景：dao.Cache 为 nil（缓存目录建不出来 / 未安装态降级启动）。
// 判据：EnsureMealEpgPayload 必须返回 ok=true 且 body 非空。
func TestEnsureMealEpgPayloadFallsBackWhenCacheUnavailable(t *testing.T) {
	mealID := setupEpgFallbackDB(t)

	old := dao.Cache
	dao.Cache = nil
	t.Cleanup(func() { dao.Cache = old })

	path, body, ok := EnsureMealEpgPayload(mealID)
	if !ok {
		t.Fatal("缓存不可用时仍应返回内容（ok=true）")
	}
	if path != "" {
		t.Fatalf("缓存不可用时不应有路径，实际: %q", path)
	}
	if len(body) == 0 {
		t.Fatal("缓存不可用时 body 不能为空 —— 这正是「接口返回空白」的根因")
	}
	if !strings.Contains(string(body), "<?xml") {
		t.Fatalf("body 应含 XML 声明头，实际: %q", string(body)[:min(40, len(body))])
	}
}

// TestEnsureMealEpgPayloadUsesCachePathWhenAvailable
//
// 缓存可用时：给路径（流式直发），body 为空。
func TestEnsureMealEpgPayloadUsesCachePathWhenAvailable(t *testing.T) {
	mealID := setupEpgFallbackDB(t)

	old := dao.Cache
	c, err := dao.NewFileCache(t.TempDir(), false)
	if err != nil {
		t.Fatalf("建缓存失败: %v", err)
	}
	dao.Cache = c
	t.Cleanup(func() { dao.Cache = old })

	path, body, ok := EnsureMealEpgPayload(mealID)
	if !ok {
		t.Fatal("应返回 ok=true")
	}
	if path == "" {
		t.Fatal("缓存可用时应返回文件路径")
	}
	if len(body) != 0 {
		t.Fatal("缓存可用时 body 应为空（走流式直发）")
	}
	if _, err := os.Stat(path); err != nil {
		t.Fatalf("缓存文件应存在: %v", err)
	}
}

// TestEnsureMealEpgPayloadCacheWriteFailureStillReturnsBody
//
// 缓存目录存在但写不进去（模拟磁盘满 / 权限问题）⇒ 必须回落成内容，
// 不能返回空白，也不能 panic。
func TestEnsureMealEpgPayloadCacheWriteFailureStillReturnsBody(t *testing.T) {
	mealID := setupEpgFallbackDB(t)

	old := dao.Cache
	// Dir 指向一个**不存在的路径**，写盘必然失败（CreateTemp 会报错）。
	dao.Cache = &dao.FileCache{Dir: filepath.Join(t.TempDir(), "no-such-dir", "x")}
	t.Cleanup(func() { dao.Cache = old })

	path, body, ok := EnsureMealEpgPayload(mealID)
	if !ok {
		t.Fatal("写盘失败时仍应返回内容（ok=true）")
	}
	if path != "" {
		t.Fatalf("写盘失败时不应有路径，实际: %q", path)
	}
	if len(body) == 0 {
		t.Fatal("写盘失败时 body 不能为空")
	}
}

// TestEnsureMealEpgPayloadUnknownMealReportsNotFound
//
// 套餐不存在 ⇒ ok=false（"本来就没内容"），与"缓存故障"要区分开。
func TestEnsureMealEpgPayloadUnknownMealReportsNotFound(t *testing.T) {
	setupEpgFallbackDB(t)

	old := dao.Cache
	dao.Cache = nil
	t.Cleanup(func() { dao.Cache = old })

	_, _, ok := EnsureMealEpgPayload(999999)
	if ok {
		t.Fatal("不存在的套餐应返回 ok=false")
	}
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}
