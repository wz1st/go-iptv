package dao

import (
	"bytes"
	"encoding/gob"
	"encoding/json"
	"fmt"
	"os"
	"path/filepath"
	"reflect"
	"strings"
	"time"
)

type FileCache struct {
	Dir          string // 缓存目录
	ExpireAtZero bool   // 是否每天 0 点过期
}

var Cache *FileCache

// CNTVCacheKey 是央视（CNTV）接口返回数据的缓存键。
func CNTVCacheKey(name string) string {
	return "cntv_" + strings.ToLower(strings.TrimSpace(name))
}

// NewFileCache 准备缓存目录。
func NewFileCache(dir string, expireAtZero bool) (*FileCache, error) {
	os.RemoveAll("/config/cache") // 历史遗留目录，顺手清一次
	if err := os.MkdirAll(dir, 0755); err != nil {
		return nil, err
	}
	return &FileCache{
		Dir:          dir,
		ExpireAtZero: expireAtZero,
	}, nil
}

// epgLoc 是 EPG 缓存判"当天"用的时区，固定东八区。
//
// 为什么不能用服务器本地时区：容器跑 UTC，`time.Now()` 的 Location 是 UTC，
// 于是"今天 0 点"算成**北京 08:00**。后果是双向错的：
//   - 北京 00:00~08:00（正是用户问"现在在播什么"的时段）会被判成"昨天"，
//     缓存反复失效、且当天早上拉到的数据写不进缓存；
//   - 北京 16:00 之后写下的缓存会被当成"今天"一直用到第二天早上。
//
// 实测症状：北京 13:34 查CCTV1，simple 接口仍回 `06:00朝闻天下`。
//
// EPG 的"当天"本来就是节目单的语义（节目表按电视台所在地时间编排），
// 与服务器跑在哪个时区无关，所以固定东八区而不是改容器 TZ。
var epgLoc = time.FixedZone("CST", 8*3600)

// 判断是否今天 0 点之后
func expiredAtMidnight(modTime time.Time) bool {
	return expiredAtMidnightSince(modTime, time.Now())
}

// expiredAtMidnightSince 是可注入"现在"的纯判定，测试用它固定时刻。
// 拆出来是因为直接调 time.Now() 的函数没法写稳定的时区回归测试。
func expiredAtMidnightSince(modTime, now time.Time) bool {
	n := now.In(epgLoc)
	midnight := time.Date(n.Year(), n.Month(), n.Day(), 0, 0, 0, 0, epgLoc)
	return modTime.In(epgLoc).Before(midnight)
}

// 保存缓存（字节）
func (fc *FileCache) Set(key string, data []byte) error {
	path := filepath.Join(fc.Dir, key)
	return writeFileAtomic(path, data, 0644)
}

// 读取缓存（字节）
func (fc *FileCache) Get(key string) ([]byte, error) {
	path := filepath.Join(fc.Dir, key)

	info, err := os.Stat(path)
	if err != nil {
		return nil, err
	}

	// 检查是否过期
	if fc.ExpireAtZero && expiredAtMidnight(info.ModTime()) {
		os.Remove(path)
		return nil, os.ErrNotExist
	}

	return os.ReadFile(path)
}

func (fc *FileCache) GetNotExpired(key string) ([]byte, error) {
	path := filepath.Join(fc.Dir, key)

	_, err := os.Stat(path)
	if err != nil {
		return nil, err
	}

	return os.ReadFile(path)
}

// 判断缓存是否存在
func (fc *FileCache) Exists(key string) bool {
	path := filepath.Join(fc.Dir, key)
	info, err := os.Stat(path)
	if err != nil {
		return false
	}

	if fc.ExpireAtZero && expiredAtMidnight(info.ModTime()) {
		os.Remove(path)
		return false
	}
	return true
}

// Fresh 判断缓存是否存在且未超过 ttl。
//
// 与 Exists 的区别：Exists 只判"跨天"，同一份当天缓存可以一直用到午夜，
// 而 simple 接口需要在同一天内也能识别"这份缓存已经陈旧"。
func (fc *FileCache) Fresh(key string, ttl time.Duration) bool {
	path := filepath.Join(fc.Dir, key)
	info, err := os.Stat(path)
	if err != nil {
		return false
	}
	if fc.ExpireAtZero && expiredAtMidnight(info.ModTime()) {
		return false
	}
	return time.Since(info.ModTime()) < ttl
}

// 判断缓存是否存在
func (fc *FileCache) ChannelExists(key string) bool {
	path := filepath.Join(fc.Dir, key)
	_, err := os.Stat(path)
	return err == nil
}

// 删除缓存
func (fc *FileCache) Delete(pattern string) error {
	fullPattern := filepath.Join(fc.Dir, pattern)

	matches, err := filepath.Glob(fullPattern)
	if err != nil {
		return err
	}

	for _, path := range matches {
		if err := os.Remove(path); err != nil {
			return err
		}
	}
	return nil
}

// 清空所有缓存
func (fc *FileCache) Clear() error {
	files, err := os.ReadDir(fc.Dir)
	if err != nil {
		return err
	}
	for _, f := range files {
		_ = os.Remove(filepath.Join(fc.Dir, f.Name()))
	}
	return nil
}

// JSON 封装

// checkPtr 校验目标必须是非空指针。
func checkPtr(op string, v interface{}) error {
	if v == nil {
		return fmt.Errorf("%s: 目标为 nil，需要非空指针", op)
	}
	rv := reflect.ValueOf(v)
	if rv.Kind() != reflect.Ptr {
		return fmt.Errorf("%s: 需要指针，收到 %T（值类型传参无法回填）", op, v)
	}
	if rv.IsNil() {
		return fmt.Errorf("%s: 目标是空指针 %T", op, v)
	}
	return nil
}

// 保存任意结构为 JSON
func (fc *FileCache) SetJSON(key string, v interface{}) error {
	data, err := json.MarshalIndent(v, "", "  ")
	if err != nil {
		return err
	}
	return fc.Set(key, data)
}

// 读取 JSON 并解析到 v（v 必须是**非空指针**）
func (fc *FileCache) GetJSON(key string, v interface{}) error {
	if err := checkPtr("GetJSON", v); err != nil {
		return err
	}
	data, err := fc.Get(key)
	if err != nil {
		return err
	}
	return json.Unmarshal(data, v)
}

// 保存任意结构体
func (fc *FileCache) SetStruct(key string, v interface{}) error {
	var buf bytes.Buffer
	enc := gob.NewEncoder(&buf)
	if err := enc.Encode(v); err != nil {
		return err
	}
	return fc.Set(key, buf.Bytes())
}

// 读取结构体（v 必须是**非空指针**）
func (fc *FileCache) GetStruct(key string, v interface{}) error {
	if err := checkPtr("GetStruct", v); err != nil {
		return err
	}
	data, err := fc.Get(key)
	if err != nil {
		return err
	}
	dec := gob.NewDecoder(bytes.NewReader(data))
	return dec.Decode(v)
}
