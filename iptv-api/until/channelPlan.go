package until

import (
	"fmt"
	"log"
	"regexp"
	"strings"

	"iptv-api/models"

	"gorm.io/gorm"
)

// 频道列表写入：解析 → 比对 → 落库

// 清洗用的正则。
var (
	reChannelSpaces = regexp.MustCompile(`\s+`)
	reChannelGenre  = regexp.MustCompile(`#genre#`)
	reChannelVer    = regexp.MustCompile(`ver\..*?\.m3u8`)
	reChannelTme    = regexp.MustCompile(`t\.me.*?\.m3u8`)
	reChannelBbsok  = regexp.MustCompile(`https(.*)www\.bbsok\.cf[^>]*`)
)

// channelURLTrimmer 去掉 URL 两端常见的引号与花括号残留。
var channelURLTrimmer = strings.NewReplacer(`"`, "", `'`, "", "}", "", "{", "")

// submittedChannel 是清洗后的一条「频道名 + URL + 启停」。
type submittedChannel struct {
	Name   string
	Url    string
	Status bool
}

// ParseChannelList 把播放列表文本解析成有序的 submittedChannel 序列。
func ParseChannelList(srclist string) []submittedChannel {
	lines := strings.Split(srclist, "\n")
	out := make([]submittedChannel, 0, len(lines))

	for _, line := range lines {
		line = strings.ReplaceAll(line, " ,", ",")
		line = strings.ReplaceAll(line, "\r", "")
		line = reChannelSpaces.ReplaceAllString(line, "")
		line = reChannelGenre.ReplaceAllString(line, "")
		line = reChannelVer.ReplaceAllString(line, "")
		line = reChannelTme.ReplaceAllString(line, "")
		line = reChannelBbsok.ReplaceAllString(line, "")

		// 注释行、以及清洗后变成空行的 `分组名,#genre#` 头
		if line == "" || strings.HasPrefix(line, "#") {
			continue
		}

		parts := strings.SplitN(line, ",", 2)
		if len(parts) < 2 {
			continue
		}

		name := parts[0]
		status := true
		if strings.Contains(name, "|") {
			tmp := strings.SplitN(name, "|", 2)
			if tmp[0] == "0" {
				status = false
			}
			name = tmp[1]
		}
		if name == "" {
			continue
		}

		for _, src := range strings.Split(parts[1], "#") {
			url := strings.Trim(channelURLTrimmer.Replace(src), " \r\n\t")
			if url == "" {
				continue
			}
			out = append(out, submittedChannel{Name: name, Url: url, Status: status})
		}
	}
	return out
}

// channelRowPatch 是一次「原地改写」。
type channelRowPatch struct {
	ID     int64
	Sort   int64
	Status bool
	Rename bool
	Name   string
}

// channelWritePlan 是一次提交要落库的全部动作。
type channelWritePlan struct {
	Insert   []models.IptvChannel
	Patch    []channelRowPatch
	Delete   []int64
	Repeat   int   // 因重复而跳过的条数（同一份文本内重复 + 命中手工分组去重）
	RawCount int64 // 文本里的原始条目数，写回 iptv_category.raw_count
}

// Changed 报告这次提交是否真的改动了库里的东西。
// 没改动就不该清缓存、也不该触发 EPG 重绑。
func (p channelWritePlan) Changed() bool {
	return len(p.Insert) > 0 || len(p.Patch) > 0 || len(p.Delete) > 0
}

// planChannelWrite 把「提交的文本」与「库里现有的行」比对成三份清单。
func planChannelWrite(entries []submittedChannel, old []models.IptvChannel, cId, listId int64, doRepeat bool, hand map[string]string) channelWritePlan {
	// ① URL 索引：比对不再线性扫描
	byUrl := make(map[string][]models.IptvChannel, len(old))
	for _, ch := range old {
		if ch.Url == "" {
			continue
		}
		byUrl[ch.Url] = append(byUrl[ch.Url], ch)
	}

	seen := make(map[string]struct{}, len(entries))
	plan := channelWritePlan{}
	var sortIndex int64 = 1

	for _, e := range entries {
		plan.RawCount++

		if _, dup := seen[e.Url]; dup {
			plan.Repeat++
			continue
		}
		seen[e.Url] = struct{}{}

		rows := byUrl[e.Url]

		if doRepeat {
			if _, ok := hand[e.Url]; ok {
				plan.Repeat++
				for _, ch := range rows {
					plan.Delete = append(plan.Delete, ch.ID)
				}
				continue
			}
		}

		if len(rows) == 0 {
			plan.Insert = append(plan.Insert, models.IptvChannel{
				Name:       e.Name,
				Url:        e.Url,
				CategoryID: cId,
				SourceID:   listId,
				Sort:       sortIndex,
				Status:     e.Status,
			})
			sortIndex++
			continue
		}

		keep := rows[0]
		for _, extra := range rows[1:] {
			plan.Delete = append(plan.Delete, extra.ID)
		}

		switch {
		case keep.Name != e.Name:
			plan.Patch = append(plan.Patch, channelRowPatch{
				ID: keep.ID, Name: e.Name, Sort: sortIndex, Status: e.Status, Rename: true,
			})
		case keep.Sort != sortIndex || keep.Status != e.Status:
			plan.Patch = append(plan.Patch, channelRowPatch{
				ID: keep.ID, Sort: sortIndex, Status: e.Status,
			})
		}
		sortIndex++
	}

	// ② 文本里没出现的旧行 → 删除（"文本即真值"）
	for url, rows := range byUrl {
		if _, ok := seen[url]; ok {
			continue
		}
		for _, ch := range rows {
			plan.Delete = append(plan.Delete, ch.ID)
		}
	}

	plan.Delete = dedupeInt64(plan.Delete)
	return plan
}

// dedupeInt64 就地去重（调用方拥有 in，可以复用底层数组）。
func dedupeInt64(in []int64) []int64 {
	if len(in) < 2 {
		return in
	}
	seen := make(map[int64]struct{}, len(in))
	out := in[:0]
	for _, v := range in {
		if _, ok := seen[v]; ok {
			continue
		}
		seen[v] = struct{}{}
		out = append(out, v)
	}
	return out
}

// 分块大小。
const (
	channelDeleteBatch = 400
	channelPatchBatch  = 200
	channelInsertBatch = 50
)

// execChannelPlan 在**一个事务**里按清单落库。
func execChannelPlan(db *gorm.DB, plan channelWritePlan) error {
	return db.Transaction(func(tx *gorm.DB) error {
		if err := deleteChannelsByID(tx, plan.Delete); err != nil {
			return err
		}
		for i := 0; i < len(plan.Insert); i += channelInsertBatch {
			end := i + channelInsertBatch
			if end > len(plan.Insert) {
				end = len(plan.Insert)
			}
			if err := tx.Create(plan.Insert[i:end]).Error; err != nil {
				return err
			}
		}
		return patchChannels(tx, plan.Patch)
	})
}

func deleteChannelsByID(tx *gorm.DB, ids []int64) error {
	for i := 0; i < len(ids); i += channelDeleteBatch {
		end := i + channelDeleteBatch
		if end > len(ids) {
			end = len(ids)
		}
		if err := tx.Where("id IN ?", ids[i:end]).Delete(&models.IptvChannel{}).Error; err != nil {
			return err
		}
	}
	return nil
}

// patchChannels 把一批「原地改写」合并成少数几条 UPDATE。
func patchChannels(tx *gorm.DB, patches []channelRowPatch) error {
	for i := 0; i < len(patches); i += channelPatchBatch {
		end := i + channelPatchBatch
		if end > len(patches) {
			end = len(patches)
		}
		if err := patchChannelChunk(tx, patches[i:end]); err != nil {
			return err
		}
	}
	return nil
}

func patchChannelChunk(tx *gorm.DB, chunk []channelRowPatch) error {
	if len(chunk) == 0 {
		return nil
	}

	var b strings.Builder
	args := make([]interface{}, 0, len(chunk)*3+8)
	renames := 0
	for _, p := range chunk {
		if p.Rename {
			renames++
		}
	}

	fmt.Fprintf(&b, "UPDATE %s SET sort = CASE id", models.IptvChannel{}.TableName())
	for _, p := range chunk {
		b.WriteString(" WHEN ? THEN ?")
		args = append(args, p.ID, p.Sort)
	}
	b.WriteString(" ELSE sort END, status = CASE id")
	for _, p := range chunk {
		b.WriteString(" WHEN ? THEN ?")
		args = append(args, p.ID, p.Status)
	}
	b.WriteString(" ELSE status END")

	if renames > 0 {
		b.WriteString(", name = CASE id")
		for _, p := range chunk {
			if !p.Rename {
				continue
			}
			b.WriteString(" WHEN ? THEN ?")
			args = append(args, p.ID, p.Name)
		}
		b.WriteString(" ELSE name END, epg_id = CASE id")
		for _, p := range chunk {
			if !p.Rename {
				continue
			}
			// 改名后旧绑定失效 → 归零，等 BindChannel 按新名字重算
			b.WriteString(" WHEN ? THEN 0")
			args = append(args, p.ID)
		}
		b.WriteString(" ELSE epg_id END")
	}

	b.WriteString(" WHERE id IN (")
	for i, p := range chunk {
		if i > 0 {
			b.WriteString(",")
		}
		b.WriteString("?")
		args = append(args, p.ID)
	}
	b.WriteString(")")

	if err := tx.Exec(b.String(), args...).Error; err != nil {
		log.Printf("⚠️ 频道原地更新失败（%d 行）: %v", len(chunk), err)
		return err
	}
	return nil
}
