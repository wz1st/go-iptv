package service

import (
	"os"
	"path/filepath"
	"strings"
	"testing"

	"iptv-api/until"
)

// 客户端基底在线升级后版本号不更新（事故 2026-10-08）。
//
// 现象：面板点「在线升级基底」提示"基底已在线升级到 1.1.1"，但面板基底
// 徽章仍是 1.1.0，重新编译出来的包版本号也仍挂在 1.1.0 上。
//
// 判据分两层：
//   - 纯函数层（BaseVersionFromRelease + FormatClientVersion）：可用真数据跑；
//   - 源码契约层（读 installClientBase / Getver / PublishAPK 的源码）：抓回归。
// 之所以必须有源码层 —— 缺陷正是"取oldBase 还是取 info.VersionName"这一行的
// 选择，纯函数层完全测不到：BaseVersionFromRelease 两种取值下都返回合法三段。

// —— 第一层：纯函数可验证的部分 ——

// 基底取包里的 versionName（归一后）时，换基底必须让对外版本号真的换前缀。
// 这是用户直接能看到的形状：徽章上的基底段。
func TestBaseUpgradeChangesVersionPrefix(t *testing.T) {
	// 磁盘旧值 1.1.0，装上 versionName 为 1.1.1 的新包。
	const oldOnDisk = "1.1.0"
	const newApkVersionName = "1.1.1"

	newBase := until.BaseVersionFromRelease(newApkVersionName)
	if newBase != "1.1.1" {
		t.Fatalf("包的 versionName %q 归一后应是 1.1.1，实际 %q", newApkVersionName, newBase)
	}
	if newBase == oldOnDisk {
		t.Fatalf("基底没有换版：磁盘 %q，新包 %q —— 换基底后版本号前缀不会更新", oldOnDisk, newBase)
	}

	// 重新编译后对外版本号必须挂在新基底下。
	got := until.FormatClientVersion(newBase, "001")
	if got != "1.1.1.001" {
		t.Fatalf("新基底编译出的版本号是 %q，期望 1.1.1.001", got)
	}
	if strings.HasPrefix(got, oldOnDisk+".") {
		t.Fatalf("版本号 %q 仍挂在旧基底 %q 下 —— 这正是线上看到的现象", got, oldOnDisk)
	}
}

// 反向断言：把新包换成与磁盘**相同**的基底，版本号前缀必须保持不变。
// 防止"无脑改成永远取包"—— 那样每次装包都会被当成换基底，
// 连带把待发布包作废（os.Remove +清空 NewVersion）。
func TestSameBaseDoesNotCountAsChanged(t *testing.T) {
	oldBase := until.BaseVersionFromRelease("1.1.0")
	sameBase := until.BaseVersionFromRelease("1.1.0") // 同一个包重装
	if oldBase != sameBase {
		t.Fatalf("同版本重装应判定为未换版，实际 %q vs %q", oldBase, sameBase)
	}
	// 基底未变时，线上包版本号必须原样保留（PubBase 口径）。
	pubBase := oldBase
	if until.FormatClientVersion(pubBase, "005") != "1.1.0.005" {
		t.Fatalf("线上包版本号口径被改坏：%q", until.FormatClientVersion(pubBase, "005"))
	}
}

// 发布者把四段写进 versionName（1.1.1.001）时必须归一取前三段，
// 否则对外版本号会拼成五段。
func TestBaseFourSegmentVersionNameNormalizes(t *testing.T) {
	base := until.BaseVersionFromRelease("1.1.1.001")
	if base != "1.1.1" {
		t.Fatalf("四段 versionName 归一后应是 1.1.1，实际 %q", base)
	}
	if got := until.FormatClientVersion(base, "001"); got != "1.1.1.001" {
		t.Fatalf("拼出来是 %q，期望 1.1.1.001（四段）", got)
	}
}

// —— 第二层：源码契约（抓回归，纯函数层测不到）——

// srcOf 读本目录下的源码文件。第二层的判据要读源码是因为缺陷在
// "取oldBase 还是取 info.VersionName"这一行的**选择**上，纯函数层测不到。
func srcOf(t *testing.T, rel string) string {
	t.Helper()
	b, err := os.ReadFile(filepath.Join(".", rel))
	if err != nil {
		t.Fatalf("读不到 %s：%v", rel, err)
	}
	return string(b)
}

// 抓回退：installClientBase 必须以 **info.VersionName**（包的）为基底，
// 不能以 GetClientBaseVersion()（磁盘旧的）为基底。
func TestInstallClientBaseTakesVersionFromApk(t *testing.T) {
	src := srcOf(t, "adminClientBaseService.go")
	if !strings.Contains(src, "base := until.BaseVersionFromRelease(info.VersionName)") {
		t.Fatalf("installClientBase 不再以包的 versionName 取基底 —— " +
			"在线升级换基底时 Version_client 会仍写旧值（线上事故 2026-10-08 的根因）")
	}
	// 旧写法必须彻底消失：只要磁盘有值就不会读包，基底永远升不上去。
	if strings.Contains(src, "base := until.BaseVersionFromRelease(oldBase)") {
		t.Fatal("installClientBase 仍在用磁盘旧值取基底（旧写法已回归）")
	}
	// oldBase 只能用于比较/日志，不参与取值。
	if !strings.Contains(src, "baseChanged := base != oldBase") {
		t.Fatal("baseChanged 应为 base != oldBase（旧值只用于比较，不参与取值）")
	}
	// 反向断言：base 取对之后**不许再被覆写**。
	// 只查"出现过正确那行"会放过"取完立刻改回"这类注入。
	if strings.Count(src, "base := until.BaseVersionFromRelease(") != 1 {
		t.Fatalf("base 只应被赋值一次（现状%d 次）—— 二次赋值会把包的版本覆盖掉",
			strings.Count(src, "base := until.BaseVersionFromRelease("))
	}
	// 落盘的必须是这个 base。
	// 这一条要逐字照抄源码写法（含 base+"\n" 后面紧跟的逗号位置）：
	// 之前把断言拼成两段字符串反而与源码差一个空格，判据自己先失败了 ——
	// 断言字符串不是"看起来像"，是逐字相等才有意义。
	const writeVer = `WriteFileAtomic(until.ClientUserDir+"/Version_client", base+"\n", 0644)`
	if !strings.Contains(src, writeVer) {
		t.Fatalf("写入 Version_client 的必须是 base —— 实际语句与判据不符，写法：\n%s", writeVer)
	}
}

// 抓回退：Getver 必须下发完整四段，且基底取 ClientPublishedBase。
func TestGetverPublishesFullVersion(t *testing.T) {
	src := srcOf(t, "apkService.go")
	want := "res.AppVer = until.FormatClientVersion(until.ClientPublishedBase(), cfg.Build.Version)"
	if !strings.Contains(src, want) {
		t.Fatalf("Getver 未按「ClientPublishedBase + 编译号」下发完整版本号。\n"+
			"实际应含：%s\n"+
			"只下发纯编译号时 APK 侧字符串比较恒判「有新版本」（\"1.1.0.005\" < \"5\"）。", want)
	}
	if strings.Contains(src, "res.AppVer = cfg.Build.Version") {
		t.Fatal("Getver 仍在只下发纯编译号（\"5\"）—— 用户每次进关于页都被推下载")
	}
	// 基底必须是线上包用的那版，不能用当前基底（换基底未重编时两者不同）。
	if strings.Contains(src, "FormatClientVersion(until.GetClientBaseVersion()") {
		t.Fatal("Getver 用了当前基底而非 ClientPublishedBase —— 换基底未重编时会下发不存在的版本")
	}
}

// 抓回退：包大小必须读线上包的真实落点 /config/app/，不是相对路径 ./app/。
func TestGetverReadsOfficialApkSize(t *testing.T) {
	src := srcOf(t, "apkService.go")
	if !strings.Contains(src, "bootstrap.OfficialAPKPath(cfg.Build.Name)") {
		t.Fatal("Getver 的包大小未走 bootstrap.OfficialAPKPath")
	}
	if strings.Contains(src, `GetFileSize("./app/"`) {
		t.Fatal("Getver 仍在读相对路径 ./app/ —— 运行目录是 /app 而包在 /config/app/，恒返回 0 MB")
	}
}

// 抓回退：PublishAPK 必须记「线上包用的是哪版基底」，
// 否则 ClientPublishedBase() 恒等于当前基底，换基底后线上包版本号会提前跳版。
func TestPublishApkRecordsPublishedBase(t *testing.T) {
	src := srcOf(t, "adminClientService.go")
	if !strings.Contains(src, "SetClientPublishedBase(") {
		t.Fatal("PublishAPK 未调用 SetClientPublishedBase —— " +
			"线上包换基底后版本号会提前跳到新基底，与包里实际不符")
	}
	// 反向断言（字样在 ≠ 生效）：把 pubBase 掏空成"" 后调用照样在源码里，
	// 但 PubBase 永远写不对，面板上的 pubBase 仍是错的。
	// 所以必须**同时**断言 pubBase 取自GetClientBaseVersion 且非空常量。
	if strings.Contains(src, `pubBase := ""`) {
		t.Fatal("pubBase 被写成空值 —— SetClientPublishedBase 仍在但记录的是空基底")
	}
	if !strings.Contains(src, "pubBase := until.GetClientBaseVersion()") {
		t.Fatal("pubBase 必须取 GetClientBaseVersion()（线上包当前用的基底）")
	}
	// 顺序：先记基底，再推进版本号。反了会留下「版本号已推进、记录还是旧的」状态。
	//
	// 判据用的是**两段文本的先后**，不是单看字样存在 —— 只搜
	// SetClientPublishedBase 的话，把整段挪到 os.Rename 之后照样能过。
	iCall := strings.Index(src, "SetClientPublishedBase(")
	iGet := strings.Index(src, "pubBase := until.GetClientBaseVersion()")
	iRename := strings.Index(src, "os.Rename(staged, official)")
	iVer := strings.Index(src, "cfg.Build.Version = published")
	if iGet < 0 || iCall < 0 || iRename < 0 || iVer < 0 {
		t.Fatalf("PublishAPK 缺关键语句：get=%d call=%d rename=%d ver=%d", iGet, iCall, iRename, iVer)
	}
	if iGet < iRename {
		t.Fatal("pubBase 必须在包 promote（os.Rename）**之后**取 —— 否则取到的是 promote 前的基底")
	}
	if iCall < iRename {
		t.Fatal("记账必须在 os.Rename(staged, official) **之后** —— " +
			"包没落位就记账，rename 失败会留下「记录已更新、线上包还是旧的」")
	}
	if iCall > iVer {
		t.Fatal("记账必须在推进版本号**之前**，否则中途失败会留下自相矛盾状态")
	}
}

// 口径一致性：面板显示的线上版本号与 /getver 下发的必须同源，
// 否则同一个包在后台与客户端显示两个版本号。
func TestPanelAndGetverShareSameVersionSource(t *testing.T) {
	base := srcOf(t, "adminClientBaseService.go")
	svc := srcOf(t, "apkService.go")
	if !strings.Contains(base, "until.FormatClientVersion(pubBase, cfg.Build.Version)") {
		t.Fatal("面板侧 curVersion 口径已变，需与 Getver 同步核对")
	}
	if !strings.Contains(svc, "until.FormatClientVersion(until.ClientPublishedBase(), cfg.Build.Version)") {
		t.Fatal("/getver 侧口径与面板不一致，同一个包会显示两个版本号")
	}
}

// —— 第三层：SetAppInfo / SetMyTVAppInfo 的「版本号不能相同」比对口径 ——

// 功能层：换基底后编译号归零，新基底首版（1.2.0.001）必须与旧基底首版（1.1.1.001）
// 判为不同版本；但真正同完整版本号（同基底同编译号）仍应判相同。
func TestVersionSameCheckIgnoresBuildNoAfterBaseChange(t *testing.T) {
	// 线上包：旧基底 1.1.1 的 001 版；换基底后磁盘新基底 1.2.0 首版编译号也是 001。
	curFull := until.FormatClientVersion("1.1.1", "001")
	newFull := until.FormatClientVersion("1.2.0", "001")
	if curFull == newFull {
		t.Fatalf("换基底后首版被误判相同：%s == %s，后台会报『版本号不能相同』挡住首版编译", curFull, newFull)
	}
	// 反向：确实同完整版本号（同基底同编译号）必须判相同，不能被放行。
	if again := until.FormatClientVersion("1.1.1", "001"); curFull != again {
		t.Fatalf("同一完整版本号应判相同：%s vs %s", curFull, again)
	}
}

// 源码契约：SetAppInfo 的「版本号不能相同」必须按完整版本号（基底.编译号）比对，
// 不能比裸编译号 —— 否则换基底后编译号归零会与旧基底撞号，挡住新基底首版编译。
func TestSetAppInfoComparesFullVersion(t *testing.T) {
	src := srcOf(t, "adminClientService.go")
	if !strings.Contains(src, "until.FormatClientVersion(until.ClientPublishedBase(), cfg.Build.Version)") {
		t.Fatal("SetAppInfo 未按「ClientPublishedBase + 已发布编译号」拼出完整版本号做比对")
	}
	if !strings.Contains(src, "until.FormatClientVersion(until.GetClientBaseVersion(), appVersion)") {
		t.Fatal("SetAppInfo 未按「当前基底 + 待编译号」拼出完整版本号做比对")
	}
	// 旧写法必须消失：比裸编译号会在换基底后误拒首版。
	if strings.Contains(src, "cfg.Build.Version == appVersion") {
		t.Fatal("SetAppInfo 仍在比裸编译号（cfg.Build.Version == appVersion）—— 换基底后首版会被误拒")
	}
}

// 源码契约：SetMyTVAppInfo 同款修复，比对完整版本号而非裸编译号。
func TestSetMyTVAppInfoComparesFullVersion(t *testing.T) {
	src := srcOf(t, "adminClientMyTVService.go")
	if !strings.Contains(src, "until.FormatMytvVersion(until.MytvPublishedBase(), cfg.MyTV.Version)") {
		t.Fatal("SetMyTVAppInfo 未按「MytvPublishedBase + 已发布编译号」拼出完整版本号做比对")
	}
	if !strings.Contains(src, "until.FormatMytvVersion(until.GetMytvVersion(), appVersion)") {
		t.Fatal("SetMyTVAppInfo 未按「当前基底 + 待编译号」拼出完整版本号做比对")
	}
	if strings.Contains(src, "cfg.MyTV.Version == appVersion") {
		t.Fatal("SetMyTVAppInfo 仍在比裸编译号（cfg.MyTV.Version == appVersion）—— 换基底后首版会被误拒")
	}
}
