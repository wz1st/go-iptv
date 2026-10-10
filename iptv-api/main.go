package main

import (
	"flag"
	"fmt"
	"iptv-api/bootstrap"
	"iptv-api/crontab"
	"iptv-api/dao"
	"iptv-api/router"
	"iptv-api/service"
	"iptv-api/until"
	"log"
	"os"
	"time"
)

// 命令行参数在**任何检查之前**解析：`-version` 必须能在未 privileged、
var (
	port        = flag.String("port", "80", "启动端口 eg: 80")
	showVersion = flag.Bool("version", false, "显示版本号并退出")
	// 监听地址。默认空串 = 绑所有网卡，保持"单独运行 ./iptv"时的老行为。
	host = flag.String("host", "", "监听地址，空=所有网卡 eg: 127.0.0.1")
)

func main() {
	time.Local, _ = time.LoadLocation("Asia/Shanghai") // 设置时区

	flag.Parse()
	if *showVersion {
		fmt.Println(until.GetVersion())
		return
	}

	// 容器里本进程由启动器（/app/start，容器 PID 1）拉起，启动器已经做过
	prechecked := os.Getenv("IPTV_PRECHECKED") == "true"

	if !prechecked && !until.Exists("/tmp/check_privileged") {
		if !until.IsPrivileged() {
			log.Println("请使用privileged(特权模式、高权限执行容器)运行")
			return
		}
	}

	if !prechecked && !until.Exists("/tmp/check_start_ram") {
		if until.CheckRam() {
			log.Println("可用内存不足256MB，无法运行")
			return
		}
	}

	build := true
	if os.Getenv("NOBUILD") == "true" || os.Getenv("IPTVDEV") == "true" {
		build = false
	}

	if !prechecked {
		if !until.CheckPort(*port) {
			return
		}

		if !until.CheckJava() {
			log.Println("请安装大于Java JDK 1.8环境")
			return
		}

		if !until.CheckApktool() {
			log.Println("请安装apktool环境")
			return
		}
	}

	var debug bool = false
	if os.Getenv("DEBUG") == "true" || os.Getenv("IPTVDEV") == "true" {
		debug = true
	}

	// 安装态必须先判定，而且要在连接引擎之前判定。
	bootstrap.SetInstalled(until.Exists("/config/iptv.db") &&
		until.Exists("/config/config.yml") &&
		until.Exists("/config/install.lock"))

	log.Println("初始化EPG缓存...")
	cache, err := dao.NewFileCache("/tmp/cache/", true)
	if err != nil {
		log.Println("初始化缓存失败:", err)
		return
	}
	dao.Cache = cache
	if dao.Cache.Clear() != nil {
		log.Println("初始化清除缓存失败:", err)
		return
	}

	bootstrap.InitAlias() // 初始化epg别名

	if !bootstrap.IsInstalled() {
		// 安装向导不需要引擎，也还没到需要初始化数据库/定时任务的阶段；
		// 装完后安装流程会调启动器的 /engineRestart 把引擎拉起来。
		log.Println("检测到未安装，请浏览器访问镜像映射的80端口执行安装流程...")
		log.Println("启动接口...")
		router := router.InitRouter(debug)
		router.Run(listenAddr(*host, *port))
		return
	}

	if os.Getenv("NOLICENSE") != "true" {
		go bootstrap.InitEngine() // 初始化授权信息
	}

	dao.CONFIG_PATH = "/config/config.yml"
	dao.LoadConfigFile()

	if !dao.LoadConfig() {
		log.Println("conf加载错误")
		return
	}

	log.Println("加载数据库...")
	if debug {
		dao.InitDBDebug("/config/iptv.db")
	} else {
		dao.InitDB("/config/iptv.db")
	}

	if !bootstrap.InitDB() {
		log.Println("数据库初始化失败,请删除/config/iptv.db重新安装")
		return
	}
	until.PasswordReset() // 密码重置

	if !bootstrap.InitLogo() {
		log.Println("logo目录初始化错误")
		return
	}

	go crontab.Crontab()
	go crontab.EpgCron()
	go until.InitCacheRebuild()

	// SSL：容器重建后 /config 里的证书还在、config.yml 也还在，但 /config/nginx
	// 下生成的片段**可能丢了**（换过部署方式、手工删过）。按配置重放一次，
	// 否则症状是"config.yml 里写着 HTTPS 开着，实际 80/443 都上不去"。
	//
	// 放 goroutine 且延后几秒：它要跑 `nginx -t` / `nginx -s reload`，
	// 得等启动器把 nginx 拉起来（nginx 没在跑时 `-s reload` 会直接失败），
	// 而且不该挡住接口启动。失败只记日志 —— HTTPS 没配好不该拦启动。
	go func() {
		time.Sleep(3 * time.Second)
		if err := service.SSLReconcile(); err != nil {
			log.Println("SSL 配置重建失败（不影响启动）:", err)
		}
	}()

	if !debug {
		bootstrap.InitJwtKey() // 初始化JWTkey
		// 启动时补一次编译 —— 但**只在线上 apk 还不存在时**才编。
		if build {
			// GetConfig 在配置未就绪时返回 nil，取字段前先判空
			if cfg := dao.GetConfig(); cfg == nil {
				log.Println("配置未就绪，跳过启动编译")
			} else if apkPath := bootstrap.OfficialAPKPath(cfg.Build.Name); until.Exists(apkPath) {
				log.Println("已存在编译好的APK，跳过编译")
			} else {
				go bootstrap.BuildAPK(false)
			}
		}
	}

	log.Println("启动接口...")
	router := router.InitRouter(debug)
	router.Run(listenAddr(*host, *port))
}

// listenAddr 拼出 router.Run 需要的监听地址。
func listenAddr(host, port string) string {
	return host + ":" + port
}
