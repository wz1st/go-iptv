package until

import (
	"fmt"
	"os"
	"strings"
	"testing"
)

const mb = 1024 * 1024

// 可用内存 ≥ 1G 且非低资源模式：一律不限制堆，不给编译人为变慢。
func TestBudget_HighMemoryNoLimit(t *testing.T) {
	b := computeBuildBudget(2*1024*mb, true, 10, 4, false)
	if !b.Ok() {
		t.Fatalf("内存充足不该被拒：%s", b.Reason)
	}
	if b.HeapMB != 0 {
		t.Fatalf("可用内存 2G 时堆上限应为 0（不限），实际 %d MB", b.HeapMB)
	}
	if args := b.JavaEnv(); args != nil {
		t.Fatalf("不限堆时不该注入 JVM 参数，实际 %v", args)
	}
}

// 阈值正好落在 1G：属于"不限制"这一侧（判据是 < 1G 才收紧）。
func TestBudget_WatermarkInclusive(t *testing.T) {
	at := computeBuildBudget(uint64(BuildMemWatermark), true, 5, 4, false)
	if at.HeapMB != 0 {
		t.Fatalf("正好 1G 应不限制，实际堆上限 %d MB", at.HeapMB)
	}
	below := computeBuildBudget(uint64(BuildMemWatermark)-1, true, 5, 4, false)
	if below.HeapMB <= 0 {
		t.Fatalf("1G 少 1 字节就该收紧，实际堆上限 %d MB", below.HeapMB)
	}
}

// 低内存：堆上限 = 可用内存 - 保留 256M，且不低于下限。
func TestBudget_LowMemoryReservesForOS(t *testing.T) {
	b := computeBuildBudget(800*mb, true, 20, 4, false)
	if !b.Ok() {
		t.Fatalf("800MB 可用不该被拒：%s", b.Reason)
	}
	if want := 800 - 256; b.HeapMB != want {
		t.Fatalf("堆上限 = %d MB，期望 %d MB（800 - 保留 256）", b.HeapMB, want)
	}
}

// CPU 占用高时再多留 25% 余量。
func TestBudget_BusyCPUTightensFurther(t *testing.T) {
	calm := computeBuildBudget(800*mb, true, 20, 4, false)
	busy := computeBuildBudget(800*mb, true, 92, 4, false)
	if busy.HeapMB >= calm.HeapMB {
		t.Fatalf("CPU 92%% 时堆上限(%d) 应小于 CPU 20%% 时(%d)", busy.HeapMB, calm.HeapMB)
	}
	if want := calm.HeapMB * 3 / 4; busy.HeapMB != want {
		t.Fatalf("忙时堆上限 = %d MB，期望 %d MB（再留 25%%）", busy.HeapMB, want)
	}
}

// 保留 256M 之后不足 128M 下限 ⇒ 必须拒绝，不能闷头跑到 OOM。
func TestBudget_TooLittleMemoryRejected(t *testing.T) {
	// 300MB 可用 - 256MB 保留 = 44MB < 128MB 下限
	b := computeBuildBudget(300*mb, true, 5, 4, false)
	if b.Ok() {
		t.Fatalf("可用内存 300MB 应被拒绝，却拿到了堆上限 %d MB", b.HeapMB)
	}
	if !strings.Contains(b.Reason, "不足") && !strings.Contains(b.Reason, "低于") {
		t.Fatalf("拒绝原因要写清缺内存，实际 %q", b.Reason)
	}
}

// 连给系统保留的 256M 都不到 ⇒ 立刻拒绝。
func TestBudget_BelowReserveRejected(t *testing.T) {
	b := computeBuildBudget(200*mb, true, 5, 4, false)
	if b.Ok() {
		t.Fatal("可用内存 200MB（低于保留线）必须拒绝编译")
	}
}

// 给系统留一个核：GC 线程 = 核数 - 1，下限 1。
func TestBudget_LeavesOneCoreForOS(t *testing.T) {
	cases := []struct{ numCPU, wantThreads int }{
		{1, 1}, // 只有一核也得给系统留一个，不能出现 0 线程
		{2, 1},
		{4, 3},
		{8, 7},
	}
	for _, c := range cases {
		b := computeBuildBudget(800*mb, true, 10, c.numCPU, false)
		if b.GCThreads != c.wantThreads {
			t.Fatalf("%d 核时 GC 线程 = %d，期望 %d", c.numCPU, b.GCThreads, c.wantThreads)
		}
		if !containsStr(b.JavaOptions(), fmt.Sprintf("-XX:ParallelGCThreads=%d", c.wantThreads)) {
			t.Fatalf("%d 核时 JVM 参数缺少正确的 ParallelGCThreads：%v", c.numCPU, b.JavaOptions())
		}
	}
}

// 低资源模式（核数少 / LOWOS）下即使内存充足也保持历史上的 128M 上限。
func TestBudget_ForceLowKeepsLegacyCap(t *testing.T) {
	b := computeBuildBudget(4*1024*mb, true, 10, 1, true)
	if !b.Ok() {
		t.Fatalf("低资源模式不该被拒：%s", b.Reason)
	}
	if b.HeapMB != int(BuildMemMinHeap/mb) {
		t.Fatalf("低资源模式堆上限 = %d MB，期望 %d MB", b.HeapMB, BuildMemMinHeap/mb)
	}
}

// 采样失败不能阻断编译（与旧 IsLowResource 出错即放行一致）。
func TestBudget_SampleFailureDegradesToUnlimited(t *testing.T) {
	b := PlanBuildBudget(false)
	if !b.Ok() {
		t.Fatalf("真实环境采样后不应判定为不可编译：%s", b.Reason)
	}
	if b.HeapMB < 0 {
		t.Fatal("真实环境堆上限不应为负")
	}
	if b.NumCPU < 1 {
		t.Fatalf("NumCPU = %d，应至少为 1", b.NumCPU)
	}
	if b.AvailableMB < 0 {
		t.Fatalf("AvailableMB = %d，不应为负", b.AvailableMB)
	}
}

// 生成的 JVM 参数必须合法、与预算一致，且走 JAVA_TOOL_OPTIONS 通道。
//
// ★反向断言：**不得**出现 apktool 命令行形式的 "-J..." ——
// apktool 2.12.1 不认它，实测 "Unrecognized command: -JXmx470M" 直接 exit 1，
// 旧的低资源参数就是这么写的，命中即编译失败。这条断言就是钉死那个坑。
func TestBudget_JavaOptionsWellFormed(t *testing.T) {
	b := computeBuildBudget(800*mb, true, 20, 4, false)
	opts := b.JavaOptions()
	want := fmt.Sprintf("-Xmx%dM", b.HeapMB)
	found := false
	for _, a := range opts {
		if a == want {
			found = true
		}
		if strings.HasPrefix(a, "-J") {
			t.Fatalf("不能出现 apktool 的 -J 形式参数（2.12.1 会拒绝）：%s", a)
		}
		if strings.HasPrefix(a, "-Xmx") && !strings.HasSuffix(a, "M") {
			t.Fatalf("-Xmx 必须带 M 单位：%s", a)
		}
	}
	if !found {
		t.Fatalf("参数里没有 %s：%v", want, opts)
	}
	// 老参数一个都不能丢（编码/zip64 那两条踩过坑）
	for _, must := range []string{
		"-Dfile.encoding=utf-8",
		"-Djdk.util.zip.disableZip64ExtraFieldValidation=true",
		"-Djdk.nio.zipfs.allowDotZipEntry=true",
	} {
		if !containsStr(opts, must) {
			t.Fatalf("参数丢失 %s：%v", must, opts)
		}
	}

	// 环境变量形态：单条 JAVA_TOOL_OPTIONS，空格分隔
	env := b.JavaEnv()
	if len(env) != 1 || !strings.HasPrefix(env[0], "JAVA_TOOL_OPTIONS=") {
		t.Fatalf("JavaEnv 应返回单条 JAVA_TOOL_OPTIONS，实际 %v", env)
	}
	if !strings.Contains(env[0], want) {
		t.Fatalf("JAVA_TOOL_OPTIONS 里没有 %s：%s", want, env[0])
	}
}

func containsStr(list []string, want string) bool {
	for _, v := range list {
		if v == want {
			return true
		}
	}
	return false
}

// 真实环境采样必须拿到 0~100 的合法百分比，且不崩。
func TestSampleCPUPercent_InRange(t *testing.T) {
	p := sampleCPUPercent()
	if p < 0 || p > 100 {
		t.Fatalf("CPU 占用率 %f 超出 0~100", p)
	}
}

// cgroup v2：限额 - 用量 = 剩余额度。
func TestCgroupHeadroom_V2LimitMinusCurrent(t *testing.T) {
	dir := t.TempDir()
	lp, cp := dir+"/memory.max", dir+"/memory.current"
	// 复现实测：docker run --memory=800m，容器内 memory.max=838860800
	write(t, lp, "838860800\n")
	write(t, cp, "17817600\n")
	got, hasCap := cgroupMemoryHeadroomAt(lp, cp, dir+"/none", dir+"/none2")
	if !hasCap {
		t.Fatal("读到 v2 限额却报告无上限")
	}
	if want := uint64(838860800 - 17817600); got != want {
		t.Fatalf("剩余额度 = %d，期望 %d", got, want)
	}
}

// cgroup v2 的 "max" 表示无限制，不能当成一个巨大的限额去算。
func TestCgroupHeadroom_V2MaxMeansUnlimited(t *testing.T) {
	dir := t.TempDir()
	lp, cp := dir+"/memory.max", dir+"/memory.current"
	write(t, lp, "max\n")
	write(t, cp, "123\n")
	if _, hasCap := cgroupMemoryHeadroomAt(lp, cp, dir+"/none", dir+"/none2"); hasCap {
		t.Fatal("\"max\" 应被识别为无限制")
	}
}

// cgroup v1 兜底：超大的哨兵值同样是「无限制」。
func TestCgroupHeadroom_V1SentinelMeansUnlimited(t *testing.T) {
	dir := t.TempDir()
	v1l, v1c := dir+"/memory.limit_in_bytes", dir+"/memory.usage_in_bytes"
	write(t, v1l, "9223372036854771712\n")
	write(t, v1c, "4096\n")
	if _, hasCap := cgroupMemoryHeadroomAt(dir+"/none", dir+"/none2", v1l, v1c); hasCap {
		t.Fatal("v1 的超大哨兵值应被识别为无限制")
	}
}

// 容器没有任何 cgroup 文件（裸机 / 非 cgroup 环境）⇒ 不设限，按宿主内存算。
func TestCgroupHeadroom_NoFilesMeansNoCap(t *testing.T) {
	dir := t.TempDir()
	miss := dir + "/absent"
	if _, hasCap := cgroupMemoryHeadroomAt(miss, miss, miss, miss); hasCap {
		t.Fatal("读不到 cgroup 文件时必须报告无上限，不能瞎猜")
	}
}

// 端到端语义：限 800M 的容器里，宿主 5.5G 可用也必须按 cgroup 的 ~783M 算，
// 从而触发收紧（否则这套保护在 docker --memory 下就是假的）。
func TestBudget_CgroupCapOverridesHostMemory(t *testing.T) {
	const cgroupAvail = 783 * mb
	b := computeBuildBudget(cgroupAvail, true, 5, 12, false)
	if b.HeapMB == 0 {
		t.Fatal("限内存容器里必须收紧堆上限，实测却判定为不限")
	}
	if want := 783 - 256; b.HeapMB != want {
		t.Fatalf("堆上限 = %d MB，期望 %d MB（cgroup 额度 - 保留 256）", b.HeapMB, want)
	}
}

func write(t *testing.T, path, content string) {
	t.Helper()
	if err := os.WriteFile(path, []byte(content), 0o644); err != nil {
		t.Fatal(err)
	}
}
