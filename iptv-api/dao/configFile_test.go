package dao

import (
	"fmt"
	"os"
	"path/filepath"
	"strings"
	"sync"
	"testing"
	"time"

	"iptv-api/dto"

	"gopkg.in/yaml.v3"
)

// 配置文件的落盘与字段完整性

// TestWriteFileAtomicNeverExposesPartialContent 并发地读，永远不应读到半截内容。
func TestWriteFileAtomicNeverExposesPartialContent(t *testing.T) {
	dir := t.TempDir()
	path := filepath.Join(dir, "config.yml")

	// 交替写两份长度差很大的内容：只要读到"既不是 A 也不是 B"的中间态，
	// 就说明暴露了写了一半的内容。
	contentA := []byte(strings.Repeat("a", 4096) + "\n")
	contentB := []byte("b\n")

	if err := writeFileAtomic(path, contentA, 0644); err != nil {
		t.Fatalf("首次写入失败: %v", err)
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
			c := contentB
			if i%2 == 0 {
				c = contentA
			}
			if err := writeFileAtomic(path, c, 0644); err != nil {
				select {
				case bad <- "写入失败: " + err.Error():
				default:
				}
				return
			}
		}
	}()

	deadline := time.Now().Add(300 * time.Millisecond)
	for time.Now().Before(deadline) {
		b, err := os.ReadFile(path)
		if err != nil {
			// 文件始终存在（rename 是原子的），读不到本身就是异常。
			select {
			case bad <- "读取失败: " + err.Error():
			default:
			}
			break
		}
		if string(b) != string(contentA) && string(b) != string(contentB) {
			select {
			case bad <- fmt.Sprintf("读到了半截内容：长度 %d（应是 4097 或 2）", len(b)):
			default:
			}
			break
		}
	}

	close(stop)
	wg.Wait()

	select {
	case msg := <-bad:
		t.Fatalf("原子写被破坏: %s", msg)
	default:
	}
}

// TestWriteFileAtomicLeavesNoTempFiles 落盘后目录里只该有目标文件。
func TestWriteFileAtomicLeavesNoTempFiles(t *testing.T) {
	dir := t.TempDir()
	path := filepath.Join(dir, "config.yml")

	for i := 0; i < 3; i++ {
		if err := writeFileAtomic(path, []byte("hello: world\n"), 0644); err != nil {
			t.Fatalf("写入失败: %v", err)
		}
	}

	entries, err := os.ReadDir(dir)
	if err != nil {
		t.Fatal(err)
	}
	if len(entries) != 1 || entries[0].Name() != "config.yml" {
		names := make([]string, 0, len(entries))
		for _, e := range entries {
			names = append(names, e.Name())
		}
		t.Fatalf("目录里有残留文件: %v", names)
	}

	// 权限不该受临时文件影响（CreateTemp 默认 0600）。
	info, err := os.Stat(path)
	if err != nil {
		t.Fatal(err)
	}
	if info.Mode().Perm() != 0644 {
		t.Fatalf("权限被写成 %v，应为 0644", info.Mode().Perm())
	}
}

// TestConfigYAMLRoundTripKeepsAllSections 守住"写盘抹掉字段"。
func TestConfigYAMLRoundTripKeepsAllSections(t *testing.T) {
	var cfg dto.Config
	cfg.ServerUrl = "http://example.test"
	cfg.Build.Name = "iptv"
	cfg.App.BuffTimeout = 3
	cfg.Tips.Loading = "loading"
	cfg.Ad.AdText = "ad"
	cfg.Rss.Key = "rsskey"
	// 中转段现在只剩一个开关（协议/地址/端口已写死进引擎，见 until/proxyAddr.go）。
	cfg.Proxy = dto.Proxy{Status: 1}
	cfg.Resolution = dto.Resolution{Auto: 1, DisCh: 2}
	cfg.Epg.Fuzz = 1
	// MyTV 段：baseversion 已在 v3.1.0 删除（引擎改为本地读基底，
	cfg.MyTV = dto.MyTV{Version: "1.0.0", Update: "u"}
	// ↓ 下面这组是"引擎消费、管理端只是路过"的字段，正是历史上丢过的地方。
	// （`system.start_index` 曾在这里当例子，该键已随"删除引擎独立页面"删除。）
	cfg.System = dto.System{ShortURL: 1}
	cfg.Site = dto.Site{
		SiteName: "站点名", Copyright: "版权", Ad: "广告",
		ShowEz: 1, ShowMytv: 2, MyTVName: "电视名", ShowOther: 3,
	}

	data, err := yaml.Marshal(&cfg)
	if err != nil {
		t.Fatalf("序列化失败: %v", err)
	}

	var got dto.Config
	if err := yaml.Unmarshal(data, &got); err != nil {
		t.Fatalf("反序列化失败: %v", err)
	}
	if got.Site != cfg.Site {
		t.Errorf("site 段未能往返:\n got  %+v\n want %+v", got.Site, cfg.Site)
	}
	if got.System != cfg.System {
		t.Errorf("system 段未能往返:\n got  %+v\n want %+v", got.System, cfg.System)
	}

	// 再直接检查 YAML 文本里确实有这些键 —— 防的是 tag 被写成 "-"、
	// 或者字段被挪进被注释掉的结构体里（编译能过，但键没了）。
	text := string(data)
	// 注意：这里**没有** "channel" —— 频道的更新间隔/自动更新已从全局配置
	// 下移到 iptv_category_list 的 interval / auto 两列，config.yml 不再有该段。
	for _, key := range []string{
		"server_url", "build", "app", "tips", "ad", "rss",
		"proxy", "resolution", "epg", "system", "mytv",
		"site",
		"site_name", "copyright", "show_ez", "show_mytv", "mytv_name", "show_other",
		"short_url",
	} {
		if !strings.Contains(text, key+":") {
			t.Errorf("写出的 YAML 里缺少键 %q（管理端写盘会把它从 config.yml 抹掉）", key)
		}
	}

	// 反向断言：**已删除功能**的键不能继续出现在写出的 YAML 里。
	for _, gone := range []string{"start_index", "php_web"} {
		if strings.Contains(text, gone+":") {
			t.Errorf("写出的 YAML 里仍出现已删除功能的键 %q（应随功能一起下线）", gone)
		}
	}
}

// TestShortHashIsStableAndShort 指纹算法必须稳定且两侧一致。
func TestShortHashIsStableAndShort(t *testing.T) {
	h := shortHash([]byte("site:\n    site_name: 清和电视\n"))
	if len(h) != 16 {
		t.Fatalf("短哈希长度应为 16，实际 %d（%q）", len(h), h)
	}
	if h != shortHash([]byte("site:\n    site_name: 清和电视\n")) {
		t.Fatal("同样内容的哈希不稳定")
	}
	if h == shortHash([]byte("site:\n    site_name: 清和电视")) {
		t.Fatal("不同内容得到了相同哈希")
	}
}

// TestHashFileMissingIsEmpty 读不到文件时必须是 ""（"未知"）而不是某个值。
func TestHashFileMissingIsEmpty(t *testing.T) {
	if got := hashFile(filepath.Join(t.TempDir(), "不存在.yml")); got != "" {
		t.Fatalf("文件不存在时应返回空串，实际 %q", got)
	}
}

// TestWriteFileAtomicReplacesExistingContent 覆盖写必须整份替换。
func TestWriteFileAtomicReplacesExistingContent(t *testing.T) {
	dir := t.TempDir()
	path := filepath.Join(dir, "config.yml")

	if err := writeFileAtomic(path, []byte(strings.Repeat("x", 1000)), 0644); err != nil {
		t.Fatal(err)
	}
	if err := writeFileAtomic(path, []byte("short"), 0644); err != nil {
		t.Fatal(err)
	}
	b, err := os.ReadFile(path)
	if err != nil {
		t.Fatal(err)
	}
	if string(b) != "short" {
		t.Fatalf("覆盖写没有整份替换，实际长度 %d", len(b))
	}
}
