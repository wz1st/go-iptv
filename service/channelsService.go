package service

import (
	"bytes"
	"compress/zlib"
	"encoding/base64"
	"encoding/json"
	"go-iptv/bootstrap"
	"go-iptv/dto"
	"go-iptv/until"
	"regexp"
	"sort"
	"strconv"
	"strings"
)

func GetChannels(channel dto.DataReqDto) string {
	resList := []dto.ChannelListDto{}
	resList = append(resList, dto.ChannelListDto{
		Name: "我的收藏",
		Psw:  "",
		Data: []dto.ChannelData{},
	})

	for _, channel := range bootstrap.CHANNELS {
		listUrl := channel.ListURL
		urlData := until.GetUrlData(listUrl)
		if urlData == "" {
			continue
		}

		// 解析频道列表
		classList := parseUrlData(urlData)
		resList = append(resList, dto.ChannelListDto{
			Name: channel.Class,
			Psw:  "",
			Data: classList,
		})

	}
	jsonData, _ := json.Marshal(resList)
	jsonStr := until.DecodeUnicode(string(jsonData))
	return encrypt(jsonStr, channel.Rand)
}

func parseUrlData(urlData string) []dto.ChannelData {
	channelMap := make(map[string][]string)
	lines := strings.Split(urlData, "\n")
	for _, line := range lines {
		line = strings.ReplaceAll(line, "\n", "")
		line = strings.ReplaceAll(line, "\r", "")
		// 按逗号分割每行数据
		parts := strings.Split(line, ",")
		if len(parts) == 2 {
			name := parts[0]
			source := parts[1]
			channelMap[name] = append(channelMap[name], source)
		}
	}

	// 将map转换为ChannelData结构体切片
	var classList []dto.ChannelData
	i := 1
	var keys []string
	for key := range channelMap {
		keys = append(keys, key)
	}
	sort.Slice(keys, func(i, j int) bool {
		// 使用正则表达式检查字符串末尾是否是数字
		re := regexp.MustCompile(`(\d+)$`)
		matchI := re.FindStringSubmatch(keys[i])
		matchJ := re.FindStringSubmatch(keys[j])

		if matchI != nil && matchJ != nil {
			// 两者都以数字结尾，按数字排序
			numI, _ := strconv.Atoi(matchI[1])
			numJ, _ := strconv.Atoi(matchJ[1])
			return numI < numJ
		} else if matchI != nil {
			// 只有 i 以数字结尾，排在前面
			return true
		} else if matchJ != nil {
			// 只有 j 以数字结尾，排在前面
			return false
		}

		// 两者都不以数字结尾，按中文排序
		return keys[i] < keys[j]
	})
	for _, key := range keys {
		classList = append(classList, dto.ChannelData{
			Num:    i,
			Name:   key,
			Source: channelMap[key],
		})
		i += 1
	}
	return classList
}

func encrypt(str string, randkey string) string {
	compressed, _ := CompressString(str)
	encoded := base64.StdEncoding.EncodeToString([]byte(compressed))

	// Step 2: MD5 加密 key
	hashedKey := until.Md5(bootstrap.KEY + randkey)

	// Step 3: 截取 hashedKey 的一部分
	subKey := hashedKey[7:23]

	// Step 3: AES 加密
	aes := until.NewAes(subKey, "AES-128-ECB", "")
	ciphertext, err := aes.Encrypt(encoded)
	if err != nil {
		return ""
	}

	// Step 4: 替换字符
	encrypted := string(ciphertext)
	encrypted = strings.ReplaceAll(encrypted, "f", "&")
	encrypted = strings.ReplaceAll(encrypted, "b", "f")
	encrypted = strings.ReplaceAll(encrypted, "&", "b")
	encrypted = strings.ReplaceAll(encrypted, "t", "#")
	encrypted = strings.ReplaceAll(encrypted, "y", "t")
	encrypted = strings.ReplaceAll(encrypted, "#", "y")

	// Step 5: 反转和截取
	coded := encrypted[44 : 44+128]
	reversed := until.ReverseString(coded)
	finalEncrypted := reversed + encrypted

	return finalEncrypted
}

func CompressString(input string) (string, error) {
	var buf bytes.Buffer
	w := zlib.NewWriter(&buf)

	_, err := w.Write([]byte(input))
	if err != nil {
		return "", err
	}
	err = w.Close()
	if err != nil {
		return "", err
	}
	return buf.String(), nil
}
