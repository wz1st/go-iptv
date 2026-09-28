package until

import (
	"errors"
	"fmt"
	"sort"
	"strings"
	"time"

	"iptv-api/dto"
)

// XMLTV 时间的归一化

// XMLTVTimeLayout 是本工程**输出** XMLTV 时间的唯一格式。
const XMLTVTimeLayout = "20060102150405 -0700"

// xmltvInputLayouts 是**解析外部时间**时接受的格式表，最精确的排在前面。
var xmltvInputLayouts = []string{
	"20060102150405 -0700",
	"20060102150405-0700",
	"200601021504050700",
	"20060102150405",
	"200601021504 -0700",
	"200601021504-0700",
	"200601021504",
	"2006010215 -0700",
	"2006010215",
	"2006-01-02 15:04:05.999999999 -0700",
	"2006-01-02 15:04:05 -0700",
	"2006-01-02 15:04:05",
	"2006-01-02 15:04",
	"2006-01-02T15:04:05.999999999Z07:00",
	"2006-01-02T15:04:05Z07:00",
	"2006-01-02T15:04:05",
	"2006-01-02T15:04",
	time.RFC3339,
	time.RFC3339Nano,
}

// EPGLocation 返回站点本地时区。
func EPGLocation() *time.Location {
	if loc, err := time.LoadLocation("Asia/Shanghai"); err == nil {
		return loc
	}
	return time.FixedZone("CST", 8*3600)
}

// ParseEPGTime 容错解析各种精度的 XMLTV 时间。
func ParseEPGTime(s string) (time.Time, error) {
	raw := strings.TrimSpace(s)
	if raw == "" {
		return time.Time{}, errors.New("时间为空")
	}

	loc := EPGLocation()

	// 1) 原样试
	for _, l := range xmltvInputLayouts {
		if t, err := time.ParseInLocation(l, raw, loc); err == nil {
			return t, nil
		}
	}

	// 2) 有的源用 'T' 分隔日期时间，有的用空格，混着来 —— 换一种再试。
	cand := raw
	if strings.ContainsRune(cand, 'T') {
		cand = strings.Replace(cand, "T", " ", 1)
	} else if strings.ContainsRune(cand, ' ') {
		cand = strings.Replace(cand, " ", "T", 1)
	}
	if cand != raw {
		for _, l := range xmltvInputLayouts {
			if t, err := time.ParseInLocation(l, cand, loc); err == nil {
				return t, nil
			}
		}
	}

	return time.Time{}, fmt.Errorf("无法识别的时间格式: %q", raw)
}

// FormatEPGTime 按统一格式输出：**秒级 + 明确时区**，统一用 UTC。
func FormatEPGTime(t time.Time) string {
	return t.UTC().Format(XMLTVTimeLayout)
}

// NormalizeProgrammeTime 把任意精度的输入改写成统一格式。
func NormalizeProgrammeTime(s string) (string, error) {
	t, err := ParseEPGTime(s)
	if err != nil {
		return "", err
	}
	return FormatEPGTime(t), nil
}

// NormalizeXmlTV 就地把一份节目单里的所有时间改写成统一格式。
func NormalizeXmlTV(tv *dto.XmlTV) (fixed int, bad []string) {
	if tv == nil || len(tv.Programmes) == 0 {
		return 0, nil
	}

	kept := make([]dto.Programme, 0, len(tv.Programmes))
	for _, p := range tv.Programmes {
		start, err := ParseEPGTime(p.Start)
		if err != nil {
			// 描述里带上频道与标题，便于直接定位是哪个源在给脏数据。
			bad = append(bad, fmt.Sprintf("channel=%s title=%q start=%q", p.Channel, p.Title.Value, p.Start))
			continue
		}
		newStart := FormatEPGTime(start)
		if newStart != p.Start {
			fixed++
		}
		p.Start = newStart

		if strings.TrimSpace(p.Stop) != "" {
			if stop, err := ParseEPGTime(p.Stop); err != nil {
				// 结束时间不能用时不要编一个：清空比编造安全。
				bad = append(bad, fmt.Sprintf("channel=%s title=%q stop=%q", p.Channel, p.Title.Value, p.Stop))
				p.Stop = ""
			} else if s := FormatEPGTime(stop); s != p.Stop {
				p.Stop = s
				fixed++
			}
		}

		kept = append(kept, p)
	}

	tv.Programmes = kept
	return fixed, bad
}

// SortXmlTV 按「频道在 Channels 里的顺序 + 开始时间」就地排序，同刻再按标题。
func SortXmlTV(tv *dto.XmlTV) {
	if tv == nil || len(tv.Programmes) == 0 {
		return
	}

	order := make(map[string]int, len(tv.Channels))
	for i := range tv.Channels {
		order[tv.Channels[i].ID] = i
	}

	// 先把时间解析出来，排序的比较函数会被调用 O(n log n) 次，
	// 在里面反复 ParseEPGTime 会让节目单变大后明显变慢。
	parsed := make([]time.Time, len(tv.Programmes))
	for i := range tv.Programmes {
		t, err := ParseEPGTime(tv.Programmes[i].Start)
		if err != nil {
			// NormalizeXmlTV 之后本不该再出现解析失败；真出现了就把它
			// 排到最后，而不是 panic，也不是当成零值丢到最前面。
			t = time.Unix(1<<62, 0)
		}
		parsed[i] = t
	}

	// 排序排的是下标：解析结果要和元素一起搬，直接排 Programmes
	// 会让 parsed 与元素错位。
	idx := make([]int, len(tv.Programmes))
	for i := range idx {
		idx[i] = i
	}
	sort.SliceStable(idx, func(a, b int) bool {
		ia, ib := idx[a], idx[b]
		pa, pb := &tv.Programmes[ia], &tv.Programmes[ib]

		oa, oka := order[pa.Channel]
		ob, okb := order[pb.Channel]
		if oka != okb {
			return oka // 出现在 Channels 里的频道排前面
		}
		if oka {
			if oa != ob {
				return oa < ob
			}
		} else if pa.Channel != pb.Channel {
			return pa.Channel < pb.Channel
		}

		if !parsed[ia].Equal(parsed[ib]) {
			return parsed[ia].Before(parsed[ib])
		}
		return pa.Title.Value < pb.Title.Value
	})

	sorted := make([]dto.Programme, len(tv.Programmes))
	for i, j := range idx {
		sorted[i] = tv.Programmes[j]
	}
	tv.Programmes = sorted
}
