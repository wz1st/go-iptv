package until

// EPG 源下载物的「暂存」层。
//
// 为什么需要它：节目单是**按套餐**聚合的 —— 一次全量重建里，
// 同一个 EPG 源会被 N 个套餐各读一次（N = 引用该源的套餐数）。
// 缓存一旦失效（/tmp/cache 每次启动被清空、或写盘失败被回落路径丢弃），
// 每个套餐都会重新下载同一个源 ⇒ 一次重建能下载几十遍，
// 既慢又把源站打挂。
//
// 暂存物落在**持久卷** /config/epg_stage（不是 /tmp/cache —— 那个每次启动就没了）：
//   - EPG 源 XML：写入时机 = 源更新/抓取成功；有效期 = 到该源下次更新为止（覆盖写）
//   - CNTV 数据：  写入时机 = 抓取成功；有效期 = 当天（按日期分目录）
//
// 读路径优先级：**缓存 → 暂存 → 现场下载**。
// 暂存命中即顺手回填缓存（尽力而为，失败不影响返回）。
//
// 语义边界：暂存是"下载物"，不是"计算结果" —— 节目单聚合结果仍归缓存管。

import (
	"encoding/json"
	"os"
	"path/filepath"
	"strings"
	"time"
)

// EpgStageDir 是暂存根目录（持久卷）。
//
// 做成变量而不是常量：测试要指向临时目录，否则会污染真实持久卷。
var EpgStageDir = "/config/epg_stage"

// epgStageMeta 记录暂存物的来源与时间，用于判"暂存物是否还对得上"。
type epgStageMeta struct {
	URL  string `json:"url"`
	Time int64  `json:"time"`
}

// stagePath 返回某个暂存项的路径。tag 用于区分同名的不同用途。
func stagePath(kind, tag, name string) string {
	// 源名可能含中文/斜杠等 ⇒ 用 md5 做文件名，原名只存 meta。
	safe := Md5(strings.TrimSpace(name))
	return filepath.Join(EpgStageDir, kind, tag, safe)
}

// stageWrite 原子地写一个暂存文件（内容 + 同名 .meta）。
func stageWrite(path string, meta epgStageMeta, data []byte) error {
	if err := os.MkdirAll(filepath.Dir(path), 0755); err != nil {
		return err
	}
	if err := WriteFileAtomic(path, string(data), 0644); err != nil {
		return err
	}
	raw, err := json.Marshal(meta)
	if err != nil {
		return err
	}
	return WriteFileAtomic(path+".meta", string(raw), 0644)
}

// stageRead 读一个暂存文件。metaOK 用于校验暂存物是否仍然适用。
func stageRead(path string, metaOK func(epgStageMeta) bool) ([]byte, bool) {
	raw, err := os.ReadFile(path + ".meta")
	if err != nil {
		return nil, false
	}
	var meta epgStageMeta
	if err := json.Unmarshal(raw, &meta); err != nil {
		return nil, false
	}
	if metaOK != nil && !metaOK(meta) {
		return nil, false
	}
	data, err := os.ReadFile(path)
	if err != nil || len(data) == 0 {
		return nil, false
	}
	return data, true
}

// stageRemove 删掉一个暂存项（含 meta）。
func stageRemove(path string) {
	os.Remove(path)
	os.Remove(path + ".meta")
}

// ---- EPG 源 XML ----

// StageEpgSource 暂存一份 EPG 源 XML（源名 + 源地址 + 内容）。
//
// 同一个源名再次暂存 = 覆盖 ⇒ 语义就是"暂存到下次更新前"。
func StageEpgSource(name, url string, data []byte) error {
	if strings.TrimSpace(name) == "" || len(data) == 0 {
		return os.ErrInvalid
	}
	meta := epgStageMeta{URL: strings.TrimSpace(url), Time: time.Now().Unix()}
	return stageWrite(stagePath("xml", "source", name), meta, data)
}

// LoadEpgSourceStage 读暂存的 EPG 源 XML。
//
// url 非空时要求暂存物的源地址一致 —— 用户改了源的 URL 之后，
// 旧暂存物就不该再被用（内容对不上新地址）。
func LoadEpgSourceStage(name, url string) ([]byte, bool) {
	want := strings.TrimSpace(url)
	return stageRead(stagePath("xml", "source", name), func(m epgStageMeta) bool {
		if want == "" {
			return true
		}
		return m.URL == want
	})
}

// RemoveEpgSourceStage 清掉某个源的暂存物（源被删除时调用）。
func RemoveEpgSourceStage(name string) {
	stageRemove(stagePath("xml", "source", name))
}

// ---- CNTV 数据 ----

// StageEpgCntv 暂存一份 CNTV 抓取结果。
//
// tag 区分调用方（until 的 CntvJsonChannel 与 service 的 map 结构不同，
// 共用同一个文件会互相覆盖）；目录按日期分 ⇒ 天然"当天有效"。
func StageEpgCntv(name, tag string, data []byte) error {
	if strings.TrimSpace(name) == "" || len(data) == 0 {
		return os.ErrInvalid
	}
	day := time.Now().Format("20060102")
	meta := epgStageMeta{Time: time.Now().Unix()}
	return stageWrite(stagePath("cntv", tag+"_"+day, name), meta, data)
}

// LoadEpgCntvStage 读暂存的 CNTV 数据（只认当天那份）。
func LoadEpgCntvStage(name, tag string) ([]byte, bool) {
	day := time.Now().Format("20060102")
	return stageRead(stagePath("cntv", tag+"_"+day, name), nil)
}
