package until

import (
	"regexp"
	"strings"
)

// 频道名归一化

// reChannelKeySeparators 是归一化时要吃掉的"装饰性字符"。
var reChannelKeySeparators = regexp.MustCompile(`[\s\-_·・.,，。/／|]+`)

// NormalizeChannelKey 把频道名归一化成"用于比较的键"。
func NormalizeChannelKey(s string) string {
	s = strings.TrimSpace(toHalfWidth(s))
	if s == "" {
		return ""
	}
	return strings.ToUpper(reChannelKeySeparators.ReplaceAllString(s, ""))
}

// toHalfWidth 把全角 ASCII（U+FF01..U+FF5E）与全角空格（U+3000）折成半角。
func toHalfWidth(s string) string {
	if !strings.ContainsFunc(s, func(r rune) bool {
		return r == '\u3000' || (r >= '\uFF01' && r <= '\uFF5E')
	}) {
		return s
	}

	var b strings.Builder
	b.Grow(len(s))
	for _, r := range s {
		switch {
		case r == '\u3000':
			b.WriteByte(' ')
		case r >= '\uFF01' && r <= '\uFF5E':
			b.WriteRune(r - 0xFEE0)
		default:
			b.WriteRune(r)
		}
	}
	return b.String()
}
