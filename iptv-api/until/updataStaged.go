package until

import (
	"crypto/sha256"
	"encoding/hex"
	"encoding/json"
	"io"
	"log"
	"os"
	"path/filepath"
	"strings"
	"time"
)

// 已下载产物的记录与复用。
//
// ## 要解决的问题
//
// 「下载完成 → 确认升级」之间隔着一次用户确认，可能几分钟也可能用户直接
// 关闭窗口。于是待安装区（/config/updata）里躺着一份**已校验通过**的完整
// 升级包，但磁盘上没有任何东西说明"它属于哪个版本、装没装过"。
// 下次再走更新流程时，只能把它当不存在、从头再下一遍 30MB ——
// 表现为"我明明下过了，怎么又要下"。
//
// 启动器 ApplyUpdate 也不会清这个目录（它只认 iptv/engine/webdist.tar.gz
// 这几个文件名），所以"已下载未安装"与"已安装"在磁盘上确实分不出来。
//
// ## 记录什么
//
// 一个 /config/updata/staged.json，记 kind / 版本 / 每个落地文件的 sha256。
// 判"能不能复用"时**重新算一遍磁盘文件的哈希**与记录比对，而不是只看
// 文件在不在：文件可能只下了一半、可能被别的进程覆盖过，也可能被手工改过。
// 哈希对不上就当没有，重新下载 —— 这正是"下载物验证"。
//
// ## 为什么不复用"已安装"的产物
//
// 装完之后那一版就是当前版本，检查更新会直接说"已是最新"，根本走不到下载。
// 而版本一旦再前进（新的 release 出来），tag 对不上，复用判据的第一条
// 就会否掉。所以 Installed 这个标记只是**兜底**：万一同一个版本被重装
// （回滚场景），宁可重下一份干净的，也不把"上次装过的"当成"这次要装的"。
// 实际上升级动作本身会把 /config/updata 里同名文件覆盖掉，所以它主要用于
// 避免"记录说是装过了、文件其实还是旧的"这种组合。

// stagedRecordFile 是待安装区的产物记录。与升级包同目录 ⇒ 容器重建不丢
// （/config 是持久卷），换镜像也不会把它清掉。
var stagedRecordFile = filepath.Join(updataDir(), "staged.json")

// stagedRecord 是一次下载的产物清单。
type stagedRecord struct {
	// Kind 是链路：web / engine。
	Kind string `json:"kind"`
	// Version 是这轮的目标版本（形态与 updataTargetVersion 一致）。
	Version string `json:"version"`
	// Tag 是下载时的 release 标签，引擎链路带 engine- 前缀。
	Tag string `json:"tag"`
	// Files 是落地名 → sha256。落地名与 pairs 的第二项一致（iptv / engine /
	// webdist.tar.gz），不是资产名。
	Files map[string]string `json:"files"`
	// StagedAt 是落盘时间（Unix 秒）。
	StagedAt int64 `json:"stagedAt"`
}

// updataDirOverride 只给测试用：非空时压过默认目录。
// 整套代码里"待安装区"只有一个，但测试要反复构造/清空一个临时目录，
// 真去动 /config/updata 会把开发机上的真实待安装包搞坏。
var updataDirOverride string

func updataDir() string {
	if updataDirOverride != "" {
		return updataDirOverride
	}
	return "/config/updata"
}

// readStagedRecord 读产物记录；没有或坏了都按"没有记录"处理。
func readStagedRecord() (stagedRecord, bool) {
	var r stagedRecord
	b, err := os.ReadFile(stagedRecordFile)
	if err != nil {
		return r, false
	}
	if err := json.Unmarshal(b, &r); err != nil {
		log.Println("已下载产物记录解析失败，按无记录处理:", err)
		return r, false
	}
	if r.Kind == "" || r.Version == "" || len(r.Files) == 0 {
		return r, false
	}
	return r, true
}

// writeStagedRecord 落盘产物记录（原子写，与升级状态同一个理由）。
func writeStagedRecord(r stagedRecord) {
	if err := os.MkdirAll(updataDir(), 0755); err != nil {
		log.Println("待安装区目录创建失败，无法记录已下载产物:", err)
		return
	}
	b, err := json.Marshal(r)
	if err != nil {
		return
	}
	tmp := stagedRecordFile + ".tmp"
	if err := os.WriteFile(tmp, b, 0644); err != nil {
		log.Println("已下载产物记录写入失败:", err)
		return
	}
	if err := os.Rename(tmp, stagedRecordFile); err != nil {
		log.Println("已下载产物记录落盘失败:", err)
		_ = os.Remove(tmp)
	}
}

// sha256Of 算文件 sha256。
func sha256Of(path string) (string, error) {
	f, err := os.Open(path)
	if err != nil {
		return "", err
	}
	defer f.Close()
	h := sha256.New()
	if _, err := io.Copy(h, f); err != nil {
		return "", err
	}
	return hex.EncodeToString(h.Sum(nil)), nil
}

// reusableStaged 判断待安装区里那份产物能不能直接拿来装。
//
// 四道判据缺一不可：
//  1. 记录的 kind 与当前链路一致 —— 引擎的包不能拿去装管理系统；
//  2. 版本与本次要下的目标版本一致 —— 有新版了必须重新下；
//  3. 记录里的文件集合与本次要装的落地名集合**完全相同** —— 发布改了资产
//     构成时不能拿旧记录凑（少一个文件会让启动器装到半个新版）；
//  4. 逐个文件重算 sha256 与记录一致 —— 真正防住"文件被截断/覆盖/改动"。
//
// 返回可复用的原因（供日志），不可复用时返回空串。
func reusableStaged(kind, target, tag string, pairs [][2]string) string {
	r, ok := readStagedRecord()
	if !ok {
		return ""
	}
	if r.Kind != kind {
		return ""
	}
	if r.Version != target {
		return ""
	}
	if len(r.Files) != len(pairs) {
		return ""
	}
	for _, p := range pairs {
		want, has := r.Files[p[1]]
		if !has {
			return ""
		}
		path := filepath.Join(updataDir(), p[1])
		got, err := sha256Of(path)
		if err != nil {
			log.Printf("已下载产物 %s 不可用（%v），将重新下载", p[1], err)
			return ""
		}
		if !strings.EqualFold(got, want) {
			log.Printf("已下载产物 %s 哈希不符（记录 %s，实测 %s），将重新下载", p[1], want, got)
			return ""
		}
	}
	_ = tag // 标签形态随链路不同（engine-vX.Y.Z / vX.Y.Z），判据统一用归一后的 target。
	return "同版本 " + target + " 的产物已完整落地并通过哈希校验"
}

// rememberStaged 在落盘成功后记下这批产物（哈希用刚校验过的那份，
// 不再重算 —— 上面 verifySHA 已经逐个对过了）。
func rememberStaged(kind, target, tag string, pairs [][2]string, sums map[string]string) {
	files := map[string]string{}
	for _, p := range pairs {
		// sums 的键是**资产名**（iptv_amd64），而落地名可能不同（iptv），
		// 所以这里按资产名取哈希、按落地名记账。
		h, ok := sums[p[0]]
		if !ok || h == "" {
			log.Println("校验清单里没有", p[0], "的哈希，无法记录已下载产物")
			return
		}
		files[p[1]] = h
	}
	writeStagedRecord(stagedRecord{
		Kind: kind, Version: target, Tag: tag, Files: files, StagedAt: time.Now().Unix(),
	})
	log.Printf("已记录待安装产物：%s %s（%d 个文件）", kind, target, len(files))
}

// clearStaged 清掉产物记录。启动器把包应用掉、或记录与磁盘对不上时调用。
func clearStaged() {
	if err := os.Remove(stagedRecordFile); err != nil && !os.IsNotExist(err) {
		log.Println("清理已下载产物记录失败:", err)
	}
}
