package crontab

import (
	"fmt"
	"iptv-api/until"
	"log"
	"math/rand"
	"sync"
	"time"

	"github.com/robfig/cron/v3"
)

// EPG 自动更新调度器。
var (
	epgCronMu sync.Mutex
	epgCron   *cron.Cron
)

func EpgCron() {
	epgCronMu.Lock()
	defer epgCronMu.Unlock()

	if epgCron != nil {
		log.Println("EPG 定时任务已在运行，忽略重复启动")
		return
	}

	c := cron.New(cron.WithSeconds()) // 支持秒级别 cron 表达式

	// 生成1:00:00到5:59:59之间的随机时间
	r := rand.New(rand.NewSource(time.Now().UnixNano()))
	hour := r.Intn(5) + 1 // 1-5点
	minute := r.Intn(60)  // 0-59分
	second := r.Intn(60)  // 0-59秒

	// 构建cron表达式（秒 分 时 * * *）
	cronExpr := fmt.Sprintf("%d %d %d * * *", second, minute, hour)
	log.Printf("设置随机EPG自动更新时间为: %02d:%02d:%02d", hour, minute, second)

	// cron 表达式格式: 秒 分 时 日 月 星期
	if _, err := c.AddFunc(cronExpr, func() {
		log.Println("自动更新EPG列表任务开始执行:", time.Now().Format("2006-01-02 15:04:05"))
		if until.UpdataEpgList() {
			log.Println("自动更新EPG列表任务执行成功:", time.Now().Format("2006-01-02 15:04:05"))
		} else {
			log.Println("自动更新EPG列表任务执行失败:", time.Now().Format("2006-01-02 15:04:05"))
		}
	}); err != nil {
		// 表达式由上面的数值拼装，正常不会失败；真失败了要留痕，
		// 否则会表现为「EPG 永远不自动更新」这种难查的静默故障。
		log.Println("注册 EPG 定时任务失败:", err, " 表达式:", cronExpr)
		return
	}

	c.Start()
	epgCron = c
}

// StopEpgCron 停止 EPG 调度器（当前无调用点，留作运维/升级时收尾用）。
func StopEpgCron() {
	epgCronMu.Lock()
	c := epgCron
	epgCron = nil
	epgCronMu.Unlock()

	if c != nil {
		c.Stop()
	}
}
