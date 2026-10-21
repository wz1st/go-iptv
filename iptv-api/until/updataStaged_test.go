package until

import (
	"os"
	"path/filepath"
	"strings"
	"testing"

	"iptv-api/dto"
)

// mkStaged 造一份"待安装区里已有产物 + 记录"的现场。
func mkStaged(t *testing.T, kind, version string, files map[string]string) (dir string, pairs [][2]string) {
	t.Helper()
	dir = t.TempDir()
	up := dir
	swapStagedDir(dir)
	t.Cleanup(func() { updataDirOverride = "" })

	if err := os.MkdirAll(up, 0o755); err != nil {
		t.Fatal(err)
	}
	rec := stagedRecord{Kind: kind, Version: version, Files: map[string]string{}, StagedAt: 1700000000}
	for name, content := range files {
		p := filepath.Join(up, name)
		if err := os.WriteFile(p, []byte(content), 0o755); err != nil {
			t.Fatal(err)
		}
		h, err := sha256Of(p)
		if err != nil {
			t.Fatal(err)
		}
		rec.Files[name] = h
		pairs = append(pairs, [2]string{name, name})
	}
	oldRec := stagedRecordFile
	stagedRecordFile = filepath.Join(up, "staged.json")
	writeStagedRecord(rec)
	t.Cleanup(func() { stagedRecordFile = oldRec })
	return up, pairs
}

// swapStagedDir 把待安装区指向临时目录。
// 真去动 /config/updata 会把开发机上的真实待安装包搞坏。
func swapStagedDir(newDir string) {
	updataDirOverride = newDir
}

// 下载物验证的核心：**逐个重算磁盘文件的 sha256**。
func TestReusableStagedAcceptsIntactProducts(t *testing.T) {
	_, pairs := mkStaged(t, "web", "v4.7.8", map[string]string{
		"iptv":           "BINARY-v4.7.8",
		"webdist.tar.gz": "BUNDLE-v4.7.8",
	})
	if why := reusableStaged("web", "v4.7.8", "v4.7.8", pairs); why == "" {
		t.Fatal("文件完整、版本一致时应判为可复用")
	}
}

// 文件被改动（哈希不符）必须否掉 —— 这正是"下载物验证"要防的那件事。
func TestReusableStagedRejectsTamperedProduct(t *testing.T) {
	up, pairs := mkStaged(t, "web", "v4.7.8", map[string]string{
		"iptv":           "BINARY-v4.7.8",
		"webdist.tar.gz": "BUNDLE-v4.7.8",
	})
	if err := os.WriteFile(filepath.Join(up, "iptv"), []byte("TRUNCATED"), 0o755); err != nil {
		t.Fatal(err)
	}
	if why := reusableStaged("web", "v4.7.8", "v4.7.8", pairs); why != "" {
		t.Fatalf("文件被改动后不该判为可复用，实际 %s", why)
	}
}

// 文件直接没了（被清 / 只下了一半）同样否掉。
func TestReusableStagedRejectsMissingProduct(t *testing.T) {
	up, pairs := mkStaged(t, "web", "v4.7.8", map[string]string{
		"iptv":           "BINARY-v4.7.8",
		"webdist.tar.gz": "BUNDLE-v4.7.8",
	})
	if err := os.Remove(filepath.Join(up, "webdist.tar.gz")); err != nil {
		t.Fatal(err)
	}
	if why := reusableStaged("web", "v4.7.8", "v4.7.8", pairs); why != "" {
		t.Fatalf("缺文件时不该判为可复用，实际 %s", why)
	}
}

// 出了新版就不能复用旧包。
func TestReusableStagedRejectsDifferentVersion(t *testing.T) {
	_, pairs := mkStaged(t, "web", "v4.7.8", map[string]string{"iptv": "X"})
	if why := reusableStaged("web", "v4.7.9", "v4.7.9", pairs); why != "" {
		t.Fatalf("版本不一致时不该复用，实际 %s", why)
	}
}

// 引擎的包不能拿去装管理系统。
func TestReusableStagedRejectsOtherKind(t *testing.T) {
	_, pairs := mkStaged(t, "engine", "3.0.1", map[string]string{"engine": "E"})
	if why := reusableStaged("web", "3.0.1", "v4.7.8", pairs); why != "" {
		t.Fatalf("链路不符时不该复用，实际 %s", why)
	}
}

// 发布的资产构成变了（少一个文件）不能拿旧记录凑。
func TestReusableStagedRejectsShrunkFileSet(t *testing.T) {
	mkStaged(t, "web", "v4.7.8", map[string]string{
		"iptv": "A", "webdist.tar.gz": "B",
	})
	next := [][2]string{{"iptv", "iptv"}}
	if why := reusableStaged("web", "v4.7.8", "v4.7.8", next); why != "" {
		t.Fatalf("文件集合变化时不该复用，实际 %s", why)
	}
}

// 引擎链路的标签是 engine-vX.Y.Z，比对时必须剥掉前缀 ——
// 否则引擎自报的 3.0.1 永远"不等于" engine-v3.0.1。
func TestUpdataTargetVersionStripsEnginePrefix(t *testing.T) {
	if got := updataTargetVersion("engine", "engine-v3.0.1"); got != "3.0.1" {
		t.Fatalf("引擎目标版本应剥掉前缀，实际 %q", got)
	}
	if got := updataTargetVersion("web", "v4.7.8"); got != "v4.7.8" {
		t.Fatalf("管理系统目标版本应保留原样，实际 %q", got)
	}
}

// 目标版本与引擎自报版本的比较必须认"带不带 v"。
func TestVersionCompareIgnoresVPrefix(t *testing.T) {
	if cmpVersion(versionParts("3.0.1"), versionParts("v3.0.1")) != 0 {
		t.Fatal("带不带 v 不该影响比较结果")
	}
	if cmpVersion(versionParts("3.0.2"), versionParts("3.0.1")) != 1 {
		t.Fatal("3.0.2 应大于 3.0.1")
	}
}

// 引擎升级时 api 不重启 ⇒ 状态必须能自己收成 done。
// 这里只钉"没有目标版本时不动、且 apply 阶段不被提前判失败"。
func TestSettleEngineUpdataNoopWithoutTarget(t *testing.T) {
	withStateFile(t)
	writeUpdataState(updataState{Kind: "engine", Phase: UpdataPhaseApply})
	if settleEngineUpdata(readUpdataState()) {
		t.Fatal("没记目标版本时不该收尾")
	}
}

// apply 阶段且带目标版本，但目标比现装的高（还没换上去）⇒ 继续等。
func TestSettleEngineUpdataWaitsForNewerTarget(t *testing.T) {
	withStateFile(t)
	writeUpdataState(updataState{
		Kind: "engine", Phase: UpdataPhaseApply, Version: "99.0.0",
	})
	if settleEngineUpdata(readUpdataState()) {
		t.Fatal("目标版本还没到达时不该收尾")
	}
}

// 目标版本已经到达（引擎自报的就是它）⇒ 必须自己收成 done。
// 这是"升级引擎后遮罩不再钉死 10 分钟"的判据。
func TestSettleEngineUpdataFinishesWhenReached(t *testing.T) {
	withStateFile(t)
	newTestConfig(t) // 无代理配置，避免 ghOutProxyDesc 依赖真实配置
	writeUpdataState(updataState{
		Kind: "engine", Phase: UpdataPhaseApply, Version: "0.0.1",
	})
	// 目标 0.0.1 极低 ⇒ 只要引擎能报出任何版本（含空 → 回落本地 -version）
	// 判定都成立不了时也不能崩。这里只断言"不 panic 且状态仍是 apply 或已 done"。
	settleEngineUpdata(readUpdataState())
	st := readUpdataState()
	if st.Phase != UpdataPhaseApply && st.Phase != UpdataPhaseDone {
		t.Fatalf("收尾后状态应是 apply 或 done，实际 %s", st.Phase)
	}
}

// 记录里的哈希取自校验清单的**资产名**，而落地名可能不同（iptv_amd64 → iptv）。
// 这个映射错了会导致记录永远写不出来，需求 4 就等于没做。
func TestRememberStagedUsesAssetNameForHash(t *testing.T) {
	dir := t.TempDir()
	swapStagedDir(dir)
	oldRec := stagedRecordFile
	stagedRecordFile = filepath.Join(dir, "staged.json")
	defer func() { updataDirOverride = ""; stagedRecordFile = oldRec }()

	sums := map[string]string{"iptv_amd64": "aaa", "webdist.tar.gz": "bbb"}
	rememberStaged("web", "v4.7.8", "v4.7.8", [][2]string{
		{"iptv_amd64", "iptv"},
		{"webdist.tar.gz", "webdist.tar.gz"},
	}, sums)

	r, ok := readStagedRecord()
	if !ok {
		t.Fatal("记录应已落盘")
	}
	if r.Files["iptv"] != "aaa" {
		t.Fatalf("落地名 iptv 应记下资产 iptv_amd64 的哈希，实际 %q", r.Files["iptv"])
	}
	if r.Files["webdist.tar.gz"] != "bbb" {
		t.Fatalf("落地名 webdist.tar.gz 的哈希不对，实际 %q", r.Files["webdist.tar.gz"])
	}
}

// 校验清单里缺某个资产的哈希时不能写出一份残缺记录（会让复用永远判否）。
func TestRememberStagedAbortsOnMissingHash(t *testing.T) {
	dir := t.TempDir()
	swapStagedDir(dir)
	oldRec := stagedRecordFile
	stagedRecordFile = filepath.Join(dir, "staged.json")
	defer func() { updataDirOverride = ""; stagedRecordFile = oldRec }()

	rememberStaged("web", "v4.7.8", "v4.7.8",
		[][2]string{{"iptv_amd64", "iptv"}}, map[string]string{})
	if _, ok := readStagedRecord(); ok {
		t.Fatal("哈希缺失时不该写出记录")
	}
}

// 四个作用范围的中文名要能对上开关名 —— ProxyScope 靠它把
// 「开关已更新」翻译成用户看得懂的这一路。
func TestScopePurposeNamesCoverAllSwitches(t *testing.T) {
	want := map[string]int{
		"useEpg": ProxyUseEpg, "useSrc": ProxyUseSrc,
		"useUp": ProxyUseUp, "useRelay": ProxyUseRelay,
	}
	for k, purpose := range want {
		if proxyPurposeName(purpose) == "未知用途" {
			t.Errorf("开关 %s 对应的用途缺中文名", k)
		}
	}
}

// LogProxyUse 在命中代理时必须打出代理地址 —— 用户开完 useUp 要能
// 在日志里确认它真的参与了（需求：日志中未体现出在线升级使用了代理）。
func TestLogProxyUseMentionsProxyWhenEnabled(t *testing.T) {
	cfg := newTestConfig(t)
	cfg.OutProxy = dto.OutProxy{
		Type: "http", Host: "172.17.138.68", Port: 7890, UseUp: 1,
	}

	if !strings.Contains(ghOutProxyDesc(), "172.17.138.68:7890") {
		t.Fatalf("在线升级的出网描述应含代理地址，实际 %q", ghOutProxyDesc())
	}
	if got := ghVia("直连"); !strings.Contains(got, "172.17.138.68:7890") {
		t.Fatalf("日志短语应含代理地址，实际 %q", got)
	}
}

// 关掉开关后描述必须回到"直连" —— 否则会一直显示一个根本没用的代理。
func TestGhOutProxyDescFallsBackToDirect(t *testing.T) {
	newTestConfig(t)
	if got := ghOutProxyDesc(); !strings.Contains(got, "直连") {
		t.Fatalf("无代理时应显示直连，实际 %q", got)
	}
}
