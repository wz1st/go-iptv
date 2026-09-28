package crontab

import (
	"errors"
	"fmt"
	"io"
	"iptv-api/dao"
	"iptv-api/models"
	"iptv-api/until"
	"log"
	"net/http"
	"runtime/debug"
	"strconv"
	"strings"
	"sync"
	"time"

	"gorm.io/gorm"
)

// 并发状态

// 任务状态机。

type cronState struct {
	mu       sync.Mutex
	running  bool          // Crontab 循环是否在运行
	stop     chan struct{} // 停止信号：close 即通知循环退出；nil 表示未启动过
	updating bool          // 是否有频道更新任务在执行
}

var cronSt = cronState{}

// ResetCrontab 准备一次新的启动：丢弃旧的停止信号与间隔。
func ResetCrontab() {
	cronSt.mu.Lock()
	defer cronSt.mu.Unlock()
	cronSt.stop = nil
}

// StopCrontab 通知定时循环退出。可重复调用（内部判重，不会重复 close）。
func StopCrontab() {
	cronSt.mu.Lock()
	stop := cronSt.stop
	cronSt.stop = nil
	cronSt.running = false
	cronSt.mu.Unlock()

	if stop == nil {
		return
	}
	// 判重：只有还没关闭过才 close。这里再裹一层 recover 是防御性的 ——
	// 即便将来有人绕过 StopCrontab 直接动这个通道，也不会把进程带走。
	defer func() { _ = recover() }()
	select {
	case <-stop:
		// 已关闭
	default:
		close(stop)
	}
}

// IsCrontabRunning 报告定时循环是否在运行。
func IsCrontabRunning() bool {
	cronSt.mu.Lock()
	defer cronSt.mu.Unlock()
	return cronSt.running
}

// IsUpdating 报告是否有频道更新任务正在执行。
func IsUpdating() bool {
	cronSt.mu.Lock()
	defer cronSt.mu.Unlock()
	return cronSt.updating
}

// BeginUpdate 原子地「检查并置位」更新标记：已在更新中则返回 false。
func BeginUpdate() bool {
	cronSt.mu.Lock()
	defer cronSt.mu.Unlock()
	if cronSt.updating {
		return false
	}
	cronSt.updating = true
	return true
}

// EndUpdate 清除更新标记，与 BeginUpdate 配对。
func EndUpdate() {
	cronSt.mu.Lock()
	cronSt.updating = false
	cronSt.mu.Unlock()
}

// 定时任务

// Crontab 启动「按源独立间隔」的频道自动更新管理器。
const scanInterval = 60 * time.Second

// sourceLastRun 记每个源上次触发更新的时刻（内存，不落库）。
var sourceLastRun sync.Map // id(int64) -> time.Time

func Crontab() {
	if dao.GetConfig() == nil || dao.DB == nil {
		log.Println("定时任务服务未开启...")
		return
	}

	cronSt.mu.Lock()
	if cronSt.running {
		cronSt.mu.Unlock()
		log.Println("定时任务已在运行")
		return
	}
	if cronSt.stop == nil {
		cronSt.stop = make(chan struct{})
	}
	stop := cronSt.stop
	cronSt.running = true
	cronSt.mu.Unlock()

	log.Println("定时任务服务启动（按源独立间隔更新）...")
	defer func() {
		cronSt.mu.Lock()
		cronSt.running = false
		cronSt.mu.Unlock()
	}()

	ticker := time.NewTicker(scanInterval)
	defer ticker.Stop()

	for {
		select {
		case <-ticker.C:
			scanSourcesAndUpdate()
		case <-stop:
			log.Println("收到停止信号，停止更新频道任务")
			return
		}
	}
}

// scanSourcesAndUpdate 扫描所有「启用且开启自动更新」的源，对到点的源触发一次更新。
func scanSourcesAndUpdate() {
	if IsUpdating() {
		// 上一轮还没结束：本轮整批跳过，下一轮再判。各源各自的间隔仍由
		// sourceLastRun 保证不会因此被「吃掉」（这里不更新 lastRun）。
		return
	}

	var lists []models.IptvCategoryList
	if err := dao.DB.
		Where("enable = ? AND auto = ? AND interval > 0", true, true).
		Find(&lists).Error; err != nil {
		return
	}

	now := time.Now()
	for _, list := range lists {
		last, ok := sourceLastRun.Load(list.ID)
		var lastT time.Time
		if ok {
			lastT = last.(time.Time)
		}
		if !ok {
			// 首次见到该源：先记基线、本轮跳过，避免启动时所有源同时爆发更新。
			sourceLastRun.Store(list.ID, now)
			continue
		}
		if now.Sub(lastT) < time.Duration(list.Interval)*time.Second {
			continue
		}
		// 注意：**不能**在这里就把 lastRun 推到 now。
		l := list
		go func() {
			if !BeginUpdate() {
				return
			}
			defer EndUpdate()
			sourceLastRun.Store(l.ID, time.Now())
			log.Println("开始更新频道源：", l.Name, " ", now.Format("2006-01-02 15:04:05"))
			updateSource(l)
		}()
	}
}

// UpdateList 更新全部频道列表。
func UpdateList() {
	if !BeginUpdate() {
		log.Println("正在更新频道，请稍后...")
		return
	}
	defer EndUpdate()

	var lists []models.IptvCategoryList
	if err := dao.DB.Model(&models.IptvCategoryList{}).Where("1=1").Find(&lists).Error; err != nil {
		return
	}
	if len(lists) == 0 {
		log.Println("没有可更新的频道列表")
		return
	}

	for _, list := range lists {
		updateSource(list)
	}

	// 全量更新会把每份订阅列表整份读进内存再解析（多源、单源几十 MB 的场景下
	debug.FreeOSMemory()

	log.Println("定时执行更新频道任务结束")
}

// updateSource 更新单个频道源（抓取 url -> 落库频道/分组）。
func updateSource(list models.IptvCategoryList) {
	client := &http.Client{}
	req, err := http.NewRequest("GET", strings.TrimSpace(list.Url), nil)
	if err != nil {
		log.Println("更新频道列表失败--->创建请求错误:: ", err.Error(), " URL: ", list.Url)
		return
	}

	// 添加自定义 User-Agent
	req.Header.Set("User-Agent", list.UA)

	resp, err := client.Do(req)
	if err != nil {
		log.Println("更新频道列表失败--->无法访问url: ", err.Error(), " URL: ", list.Url)
		return
	}

	// 注意：这里不能用 defer resp.Body.Close()。defer 在循环里会累积到
	if resp.StatusCode != 200 {
		resp.Body.Close()
		log.Println("更新频道列表失败--->读取响应失败-状态码：", resp.StatusCode, " URL: ", list.Url)
		return
	}

	body, err := io.ReadAll(resp.Body)
	resp.Body.Close()
	if err != nil {
		log.Println("更新频道列表失败--->读取响应失败：", " URL: ", list.Url)
		return
	}

	urlData := until.FilterEmoji(string(body)) // 过滤emoji表情

	if until.IsM3UContent(urlData) {
		urlData = until.M3UToGenreTXT(urlData)
	}

	var doRepeat = false
	if list.Dedup {
		doRepeat = true
	}

	updata := map[string]interface{}{
		"latest_time": time.Now().Format("2006-01-02 15:04:05"),
	}

	var oldC models.IptvCategory
	err = dao.DB.Model(&models.IptvCategory{}).Where("source_id = ?", list.ID).First(&oldC).Error
	if err != nil {
		if errors.Is(err, gorm.ErrRecordNotFound) {
			return
		}
		log.Println("获取频道分类失败:", err)
		return
	}

	if list.AutoCategory {
		if !strings.Contains(urlData, "#genre#") {
			updata["auto_category"] = false
			var oldC models.IptvCategory
			dao.DB.Model(&models.IptvCategory{}).Where("source_id = ?", list.ID).First(&oldC)
			until.AddChannelList(urlData, oldC.ID, list.ID, doRepeat)
		}
		if list.AutoGroup {
			GenreChannels(urlData, list, doRepeat, true)
		}
		GenreChannels(urlData, list, doRepeat, false)
	} else {
		until.AddChannelList(urlData, oldC.ID, list.ID, doRepeat)
	}
	dao.DB.Model(&models.IptvCategoryList{}).Where("id = ?", list.ID).Updates(updata)
}

func GenreChannels(srclist string, list models.IptvCategoryList, doRepeat, group bool) {

	data := until.ConvertDataToMap(srclist, group)

	for genreName, genreList := range data {
		genreName = strings.TrimSpace(genreName)
		if genreName == "" {
			continue
		}

		categoryName := strings.ReplaceAll(fmt.Sprintf("%s(%s)", genreName, list.Name), " ", "")

		var category models.IptvCategory
		dao.DB.Model(&models.IptvCategory{}).Where("name = ?", categoryName).First(&category)

		if category.ID == 0 {
			var maxSort int64
			dao.DB.Model(&models.IptvCategory{}).Select("IFNULL(MAX(sort),0)").Scan(&maxSort)
			category := models.IptvCategory{
				Name:     categoryName,
				Sort:     maxSort + 1,
				Type:     "add",
				SourceID: list.ID,
				UA:       list.UA,
			}

			if list.Ku9 {
				category.Ku9 = genreList.Ku9
			}

			if err := dao.DB.Create(&category).Error; err != nil {
				continue
			}
			until.SyncCaToEpg(category.ID)
			until.AddChannelList(genreList.SrcList, category.ID, list.ID, doRepeat)
		} else {
			until.AddChannelList(genreList.SrcList, category.ID, list.ID, doRepeat)
			proxyCaCheck := "proxyCaCheck_" + strconv.FormatInt(category.ID, 10)
			dao.Cache.Delete(proxyCaCheck)
		}
	}
	log.Println("更新" + list.Name + "分类结束")
}
