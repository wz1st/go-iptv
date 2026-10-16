package service

import (
	"bytes"
	"compress/zlib"
	"crypto/aes"
	"encoding/base64"
	"fmt"
	"io"
	"strings"
	"testing"

	"iptv-api/until"
)

// 缺陷3 的行为闸门（2026-10-13 实测，docker 验证容器 iptv-lt-verify）：
//
//	/apk/lt/channels 与 /apk/channels 在同一个 rand 下返回 **384 B 逐字节相同**的密文，
//	而且只有清和壳的密钥能解开（骆驼壳的密钥解出来是 `UnicodeDecodeError 0xdd`）。
//	根因：encrypt() 自己读 until.GetAesKey()，两个壳共用一把钥匙。
//
// 表现极具迷惑性：骆驼壳"登录成功、频道列表永远空"。解密失败在客户端不报错，
// 只是 probe 出来的 JSON 不是 JSON，直接被丢掉。
//
// 下面这条是**真行为**验证：同一明文、同一 rand、只换 appKey，密文必须不同，
// 且各自只能用自己的钥匙还原出原文。
//
// ⚠ 载荷格式有个**尺寸下限**：encrypt() 里 `reversed := ReverseString(encrypted[44:172])`
// 只有到 128 字符时才成立 —— 也就是说 AES 密文串（base64）必须 ≥172 字符，
// `raw[128:]` 才恰好等于密文本体。真实频道表很长，天然满足；测试用的假数据必须
// 造得够长（约 20 个频道），否则测的是格式下限而不是本缺陷。
const testRand = "28936b7a1c4dd2d9391aed8aa4cbdd46"

// testPlainLong 造一份**够长**的频道 JSON：字段各不相同，压缩率低，
// 保证走完 compress→AES→base64 之后密文串 ≥172 字符。
func testPlainLong() string {
	var b strings.Builder
	b.WriteString(`[{"name":"LT测试分组","data":[`)
	for i := 0; i < 20; i++ {
		if i > 0 {
			b.WriteString(",")
		}
		fmt.Fprintf(&b, `{"num":"%d","name":"LT测试台%02d号频道","source":"http://10.10.220.162:18160/stream/%d.ts","logo":"/logo/lt%02d.png"}`,
			i+1, i+1, i+1, i+1)
	}
	b.WriteString(`]}]`)
	return b.String()
}

// unshuffleChannel 是 encrypt() 里那两轮字符替换的逆：f<->b、t<->y。
// 用 \x00/\x01 当临时位（base64 字母表里不会出现）。
func unshuffleChannel(s string) string {
	s = strings.ReplaceAll(s, "f", "\x00")
	s = strings.ReplaceAll(s, "b", "f")
	s = strings.ReplaceAll(s, "\x00", "b")
	s = strings.ReplaceAll(s, "t", "\x01")
	s = strings.ReplaceAll(s, "y", "t")
	s = strings.ReplaceAll(s, "\x01", "y")
	return s
}

// aesECBDecryptRaw 按**客户端**的方式做一次 AES-128-ECB 解密 + PKCS5 去填充。
//
// 这里刻意不用 until.NewAes(...).Decrypt：那个实现会**去两次填充**
// （ecbDecrypt 内部已经 pkcs7UnPadding 过一次，Decrypt 末尾又调了一次），
// 结果是截掉前一段明文。生产链路里服务端只调 Encrypt、从不调 Decrypt
// （仅 rssService 用，且不是 ECB 路径），所以这个畸形一直没暴露 ——
// 但它是"基准"的反例：本测试要复刻的是**客户端**，客户端只去一次填充。
func aesECBDecryptRaw(b64, key16 string) (string, bool) {
	raw, err := base64.StdEncoding.DecodeString(b64)
	if err != nil || len(raw) == 0 || len(raw)%aes.BlockSize != 0 {
		return "", false
	}
	block, err := aes.NewCipher([]byte(key16))
	if err != nil {
		return "", false
	}
	out := make([]byte, len(raw))
	for bs := 0; bs < len(raw); bs += aes.BlockSize {
		block.Decrypt(out[bs:bs+aes.BlockSize], raw[bs:bs+aes.BlockSize])
	}
	pad := int(out[len(out)-1])
	if pad < 1 || pad > aes.BlockSize || pad > len(out) {
		return "", false
	}
	return string(out[:len(out)-pad]), true
}

// decodeChannelPayload 复刻客户端 ChannelDataCodec 的解码链：
// 丢前 128 字符 → 反乱序 → AES-128-ECB 解（key = md5(appKey+rand)[7:23]）
// → base64 解 → zlib 解。ok=false 表示这条链上任何一步失败（钥匙不对时必然如此）。
func decodeChannelPayload(raw, appKey, rand string) (out string, ok bool) {
	if len(raw) <= 128 {
		return "", false
	}
	body := unshuffleChannel(raw[128:])

	sub := until.Md5(appKey + rand)[7:23]
	if len(sub) != 16 {
		return "", false
	}

	inner, ok := aesECBDecryptRaw(body, sub)
	if !ok {
		return "", false
	}

	packed, err := base64.StdEncoding.DecodeString(inner)
	if err != nil {
		return "", false
	}

	zr, err := zlib.NewReader(bytes.NewReader(packed))
	if err != nil {
		return "", false
	}
	defer zr.Close()
	plain, err := io.ReadAll(zr)
	if err != nil {
		return "", false
	}
	return string(plain), true
}

func TestEncryptChannelPayloadIsPerShell(t *testing.T) {
	plain := testPlainLong()

	// 两个壳的真实登录密钥：应用名与包名各自不同 ⇒ 派生结果必然不同。
	qhKey := until.AesKeyOf("清和电视", until.FixedPackage)
	ltKey := until.AesKeyOf("骆驼电视", until.FixedPackageLt)
	if qhKey == ltKey {
		t.Fatal("两个壳的登录密钥相同 —— FixedPackage / FixedPackageLt 一定有一个配错了")
	}

	ctQh := encrypt(plain, testRand, qhKey)
	ctLt := encrypt(plain, testRand, ltKey)
	if ctQh == "" || ctLt == "" {
		t.Fatal("encrypt 返回空载荷")
	}
	// 前置自检：测例本身必须长到满足格式下限，否则下面测的是尺寸而不是缺陷。
	if len(ctQh) < 172+128 {
		t.Fatalf("测例明文太短（密文 %d 字符，需 ≥300）—— 请调大 testPlainLong 里的频道数", len(ctQh))
	}

	if ctQh == ctLt {
		t.Fatal("只换 appKey、明文与 rand 都不变，密文却逐字节相同 —— " +
			"encrypt 根本没把 appKey 用进密钥派生。这正是缺陷3：" +
			"服务端用清和壳的钥匙加密骆驼壳的频道数据，客户端只能解出乱码" +
			"（表现为「登录成功、频道列表永远空」）")
	}

	// 各自只能用**自己**的钥匙还原
	if got, ok := decodeChannelPayload(ctLt, ltKey, testRand); !ok || got != plain {
		t.Fatalf("骆驼壳钥匙解自己的载荷失败/不符：ok=%v got=%q", ok, got)
	}
	if got, ok := decodeChannelPayload(ctQh, qhKey, testRand); !ok || got != plain {
		t.Fatalf("清和壳钥匙解自己的载荷失败/不符：ok=%v got=%q", ok, got)
	}

	// 交叉：清和壳的钥匙解不开骆驼壳的载荷
	if got, ok := decodeChannelPayload(ctLt, qhKey, testRand); ok && got == plain {
		t.Fatal("用清和壳的钥匙还原出了骆驼壳的原文 —— 两个壳的密钥没有真正分开")
	}
}

// 源码契约：GetChannels 必须**按壳选钥匙**，且两条返回路径都用同一把。
//
// 缺陷3 的修法是把 appKey 提到函数最前面算一次，再作为参数传给 encrypt()。
// 漏改"该套餐无频道"那条 early-return，那种情况下的客户端就永远解不开 ——
// 而这条路径平时跑不到，很容易在重构里被退回。
func TestGetChannelsSelectsKeyByShell(t *testing.T) {
	src := srcOf(t, "apkService.go")

	for _, want := range []string{
		"func GetChannels(channel dto.DataReqDto, base string, lt bool) string",
		"appKey := until.AesKeyForShell(channel.AppName, lt)",
		"func encrypt(str string, randkey string, appKey string) string",
		"hashedKey := until.Md5(appKey + randkey)",
	} {
		if !strings.Contains(src, want) {
			t.Errorf("按壳派生频道载荷密钥的代码被动了：缺少 %q", want)
		}
	}

	// 反向断言：encrypt 不许再退化成"自己读全局钥匙"或只收两个参数。
	if strings.Contains(src, "until.Md5(until.GetAesKey()") {
		t.Error("encrypt 里又出现了 until.Md5(until.GetAesKey() …) —— 两个壳共用一把钥匙的老写法回来了")
	}
	if strings.Contains(src, "encrypt(jsonStr, channel.Rand)") {
		t.Error("存在只传两个参数的 encrypt(jsonStr, channel.Rand) —— 调用点漏传了本壳的 appKey")
	}

	// 两条返回路径都必须传 appKey（early-return 那条最容易漏）。
	if n := strings.Count(src, "return encrypt(jsonStr, channel.Rand, appKey)"); n != 2 {
		t.Errorf("encrypt 的调用点应为 2 处（正常列表 + 「该套餐无频道」），实际 %d 处 —— "+
			"少一处意味着那种情况下客户端永远解不开", n)
	}
}
