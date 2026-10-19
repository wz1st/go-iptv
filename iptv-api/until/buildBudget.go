package until

import (
	"fmt"
	"os"
	"runtime"
	"strconv"
	"strings"
	"time"

	"github.com/shirou/gopsutil/cpu"
	"github.com/shirou/gopsutil/mem"
)

// 编译前的资源预算。
//
// apktool 是 JVM，堆上限默认取物理内存的 1/4 —— 在小内存机器（1~2G 的小盒子、
// 同机还跑着 nginx + 引擎 + 数据库）上，这一刀下去系统可用内存会被瞬间抽干，
// 连带把本服务自己拖进 OOM Killer，表现为「点编译按钮、整个后台没响应」。
// 所以编译前必须先算一个能给的堆上限，并给系统留出保底。
//
// 取值口径（写在这里，改动前先看下面 computeBuildBudget 的注释）：
//   - 可用内存 ≥ 1G：一律不限制，沿用 JVM 默认（老行为，不给编译变慢）。
//   - 可用内存 < 1G：堆上限 = 可用内存 - 256M（给系统留的可用内存保底）。
//   - CPU 占用 ≥ 85%：系统正忙着，再多留 25% 余量。
//   - GC 并行线程 = CPU 核数 - 1，至少 1 —— 给系统留一个核。
//   - 算出来的堆上限 < 128M：内存已经不够跑一次编译，直接拒绝并说清原因，
//     而不是让它跑到一半 OOM 抛一句看不懂的 Java 堆栈。
const (
	// BuildMemWatermark 是"是否需要主动收紧"的可用内存分界线（1G）。
	BuildMemWatermark = 1 << 30
	// BuildMemReservedForOS 是无论如何都要留给系统的可用内存（256M）。
	BuildMemReservedForOS = 256 << 20
	// BuildMemMinHeap 是收紧后的堆下限；低于它拒绝编译。
	BuildMemMinHeap = 128 << 20
	// BuildCpuBusyPercent 是"系统正忙"的 CPU 占用线。
	BuildCpuBusyPercent = 85.0
	// BuildCpuSampleWindow 是 CPU 采样窗口。
	// cpu.Percent 的 interval 必须是正数：不阻塞就拿不到"这段时间"的占用率，
	// 而首次调用返回的是自启动以来的平均值 —— 那不是当前负载，不能用来判断。
	BuildCpuSampleWindow = 300 * time.Millisecond
)

// cgroup v2 / v1 的内存限额与用量文件。v2 是当前主流，v1 兜底老内核。
var (
	cgroupV2Limit   = "/sys/fs/cgroup/memory.max"
	cgroupV2Current = "/sys/fs/cgroup/memory.current"
	cgroupV1Limit   = "/sys/fs/cgroup/memory/memory.limit_in_bytes"
	cgroupV1Current = "/sys/fs/cgroup/memory/memory.usage_in_bytes"
	// cgroupUnlimited 是 v1 里表示"无限制"的哨兵值（PAGE_COUNTER_MAX 的量级）。
	cgroupUnlimited = uint64(1) << 62
)

// BuildBudget 是一次编译的资源预算。
// HeapMB == 0 表示不限堆（可用内存充足），此时不应给 apktool 传 -Xmx。
type BuildBudget struct {
	AvailableMB int     // 生效的可用内存（宿主与 cgroup 取小）
	CPUPercent  float64 // 采样到的整机 CPU 占用率
	NumCPU      int     // 可用核数（已按 cgroup 配额收敛）
	HeapMB      int     // 给 JVM 的堆上限；0 = 不限制；负数 = 内存不足必须拒绝
	GCThreads   int     // ParallelGCThreads；0 = 不限制
	Reason      string  // 人话解释，进日志
}

// PlanBuildBudget 采样当前系统状态并算出编译预算。
// 采样失败时**不阻断编译**：退回"不限制堆"，与旧的 IsLowResource 出错即放行一致。
func PlanBuildBudget(forceLow bool) BuildBudget {
	avail, availOK := uint64(0), false
	if vm, err := mem.VirtualMemory(); err == nil && vm != nil {
		avail, availOK = vm.Available, true
	}

	// ★ 容器里 /proc/meminfo 报的是**宿主机**内存，不是本容器的额度。
	// 实测：docker run --memory=800m 的容器里 MemAvailable 仍显示 5.5G
	// （宿主总量），照它算会得出"内存充足、不限制堆"，限额形同虚设、
	// JVM 照样被 cgroup OOM Killer 干掉。所以必须再取 cgroup 的剩余额度，取小。
	capped := false
	if host, hostOK := avail, availOK; hostOK {
		if cg, hasCap := cgroupMemoryHeadroom(); hasCap && cg < host {
			avail = cg
			capped = true
		}
	}
	if capped {
		availOK = true
	}

	busy := sampleCPUPercent()

	// 用 GOMAXPROCS 而不是 NumCPU：Go 1.25 起 GOMAXPROCS 默认读 cgroup 配额，
	// 容器限了 --cpus 时它才是真正能并行执行的核数（NumCPU 仍报宿主核数）。
	cpus := runtime.GOMAXPROCS(0)

	b := computeBuildBudget(avail, availOK, busy, cpus, forceLow)
	if !availOK {
		b.HeapMB, b.GCThreads = 0, 0
		b.Reason = fmt.Sprintf("采样可用内存失败，按不限堆处理（CPU %.1f%%，%d 核）", busy, cpus)
	}
	return b
}

// cgroupMemoryHeadroom 返回本容器/进程组的剩余内存额度。
// hasCap=false 表示没有设限额（或读不到），调用方按"无上限"处理。
//
// 没有这一步的话，保护在「docker run --memory=xxx」这类部署下是假的 ——
// 实测限 800M 的容器里 MemAvailable 报的是宿主的 5.5G。
func cgroupMemoryHeadroom() (uint64, bool) {
	return cgroupMemoryHeadroomAt(cgroupV2Limit, cgroupV2Current, cgroupV1Limit, cgroupV1Current)
}

// cgroupMemoryHeadroomAt 是可注入路径的版本，便于把阈值边界钉在单测里。
func cgroupMemoryHeadroomAt(v2Limit, v2Cur, v1Limit, v1Cur string) (uint64, bool) {
	if limit, cur, ok := readCgroupPair(v2Limit, v2Cur); ok {
		if limit >= cgroupUnlimited {
			return 0, false // v2 的 "max"
		}
		if cur >= limit {
			return 0, true
		}
		return limit - cur, true
	}
	if limit, cur, ok := readCgroupPair(v1Limit, v1Cur); ok {
		if limit >= cgroupUnlimited {
			return 0, false
		}
		if cur >= limit {
			return 0, true
		}
		return limit - cur, true
	}
	return 0, false
}

// readCgroupPair 读一对「限额 / 当前用量」文件。
// v2 的限额文件内容可能是字符串 "max"，那表示无限制。
func readCgroupPair(limitPath, curPath string) (limit, current uint64, ok bool) {
	raw, err := os.ReadFile(limitPath)
	if err != nil {
		return 0, 0, false
	}
	s := strings.TrimSpace(string(raw))
	if s == "max" {
		return cgroupUnlimited, 0, true
	}
	limit, err = strconv.ParseUint(s, 10, 64)
	if err != nil {
		return 0, 0, false
	}
	if curRaw, err := os.ReadFile(curPath); err == nil {
		current, _ = strconv.ParseUint(strings.TrimSpace(string(curRaw)), 10, 64)
	}
	return limit, current, true
}

// sampleCPUPercent 采样整机 CPU 占用率。
// 采样失败一律当 0%（= 不收紧），不阻断编译 —— 与旧的 IsLowResource 出错即放行一致。
func sampleCPUPercent() float64 {
	ps, err := cpu.Percent(BuildCpuSampleWindow, false)
	if err != nil || len(ps) == 0 {
		return 0
	}
	return ps[0]
}

// computeBuildBudget 是纯计算部分，便于把阈值边界钉在单测里。
// availOK=false 表示采样失败，由调用方决定降级策略。
func computeBuildBudget(avail uint64, availOK bool, busy float64, numCPU int, forceLow bool) BuildBudget {
	b := BuildBudget{
		AvailableMB: int(avail / 1024 / 1024),
		CPUPercent:  busy,
		NumCPU:      numCPU,
	}

	if !availOK {
		b.Reason = "可用内存采样失败"
		return b
	}

	// 给系统留一个核；只有一核的机器至少留一个线程出去，别把系统也抢死。
	threads := numCPU - 1
	if threads < 1 {
		threads = 1
	}

	availMB := int(avail / 1024 / 1024)
	if avail >= BuildMemWatermark && !forceLow {
		b.Reason = fmt.Sprintf("可用内存 %d MB 已达 1G 门槛，不限制堆上限", availMB)
		return b
	}

	var heap uint64
	switch {
	case avail < BuildMemWatermark:
		if avail <= BuildMemReservedForOS {
			b.Reason = fmt.Sprintf("可用内存仅 %d MB，已低于给系统保留的 %d MB，无可用编译内存",
				availMB, BuildMemReservedForOS/1024/1024)
			b.HeapMB = -1 // 负值 = 必须拒绝
			return b
		}
		heap = avail - BuildMemReservedForOS
		b.Reason = fmt.Sprintf("可用内存 %d MB 低于 1G 门槛，堆上限压到 %d MB（给系统留 %d MB）",
			availMB, int(heap/1024/1024), BuildMemReservedForOS/1024/1024)
		if busy >= BuildCpuBusyPercent {
			heap = heap / 4 * 3
			b.Reason += fmt.Sprintf("；CPU 占用 %.0f%% 偏高，再留 25%% 余量 -> %d MB",
				busy, int(heap/1024/1024))
		}
	default:
		// 内存够，但命中低资源模式（核数少 / LOWOS / 旧阈值），保持历史上的 128M 上限。
		heap = BuildMemMinHeap
		b.Reason = fmt.Sprintf("可用内存 %d MB 充足，但处于低资源模式，堆上限固定 %d MB",
			availMB, int(heap/1024/1024))
	}

	if heap < BuildMemMinHeap {
		b.HeapMB = -1
		b.Reason += fmt.Sprintf("；扣掉保留后不足 %d MB，无法编译",
			BuildMemMinHeap/1024/1024)
		return b
	}

	b.HeapMB = int(heap / 1024 / 1024)
	b.GCThreads = threads
	b.Reason += fmt.Sprintf("；GC 线程 %d（%d 核留 1 核给系统）", threads, numCPU)
	return b
}

// Ok 判断这次预算能不能编译。HeapMB 为负表示内存不够，应当拒绝。
func (b BuildBudget) Ok() bool { return b.HeapMB >= 0 }

// JavaOptions 返回本次编译要加给 JVM 的参数（-Xmx / -XX / -D）。
// 不限制堆时返回 nil。
//
// ★不能走 apktool 命令行的 `-J` 参数：apktool 2.12.1 不认它，实测直接
// "Unrecognized command: -JXmx470M" 并打帮助 exit 1。旧的低资源参数就是这么
// 写的 —— 一旦条件命中，编译必然失败（只是该分支极少走到，一直没暴露）。
// 正确通道是 JAVA_TOOL_OPTIONS：那是 HotSpot 自己读的环境变量，
// 与 apktool 怎么转发参数无关。
func (b BuildBudget) JavaOptions() []string {
	if b.HeapMB == 0 {
		return nil
	}
	threads := b.GCThreads
	if threads < 1 {
		threads = 2
	}
	return []string{
		fmt.Sprintf("-Xmx%dM", b.HeapMB),
		"-XX:+UseParallelGC",
		"-XX:+UseStringDeduplication",
		fmt.Sprintf("-XX:ParallelGCThreads=%d", threads),
		"-Dfile.encoding=utf-8",
		"-Djdk.util.zip.disableZip64ExtraFieldValidation=true",
		"-Djdk.nio.zipfs.allowDotZipEntry=true",
	}
}

// JavaEnv 把上面的参数包成一条 JAVA_TOOL_OPTIONS 环境变量，供 runToolEnv /
// apksigner 使用。返回 nil 表示这次不限制。
func (b BuildBudget) JavaEnv() []string {
	opts := b.JavaOptions()
	if len(opts) == 0 {
		return nil
	}
	return []string{"JAVA_TOOL_OPTIONS=" + strings.Join(opts, " ")}
}

// String 是给日志/前端看的一行摘要。
func (b BuildBudget) String() string {
	return fmt.Sprintf("[编译预算] 可用内存 %d MB / CPU %.1f%% / %d 核 -> 堆上限 %s；%s",
		b.AvailableMB, b.CPUPercent, b.NumCPU, heapDesc(b.HeapMB), b.Reason)
}

func heapDesc(mb int) string {
	switch {
	case mb < 0:
		return "无（内存不足，拒绝编译）"
	case mb == 0:
		return "不限（JVM 默认）"
	default:
		return fmt.Sprintf("%d MB", mb)
	}
}
