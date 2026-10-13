package until

import (
	"bytes"
	"crypto/aes"
	"crypto/cipher"
	"crypto/md5"
	"encoding/base64"
	"encoding/hex"
	"fmt"
	"iptv-api/dao"
)

var Sale = "AD80F93B542B"

// FixedPackage 是 APK 包名，写死在服务端，同时决定 GetAesKey 派生结果与 renameApk 的目标包名。
// 改它等于换一个应用：存量设备升不了级、授权记录也接不上。2026-10-02 由 cn.v1st.player 统一为
// xyz.qingh.qhtv，客户端 Constants.DERIVE_PACKAGE 必须同步。原在 bootstrap，因 GetAesKey 也要用而下沉至此。
const FixedPackage = "xyz.qingh.qhtv"

// FixedAppSign 是 APK 的应用签名，原为 config.yml 的 build.sign。
// 它是 GetAesKey 的输入之一，改值会让已加密数据全部解不开。
// 值必须等于 APK 里 `SplashActivity.s` 的写入值 0x301b（见 bootstrap.BuildAPK 的历史
// replaceSign）—— 客户端拿它参与密钥派生，服务端改了值就是单边改公式。
const FixedAppSign int64 = 12315

// FixedPackageLt 是**骆驼壳**（ez 壳）基包的包名 —— 与 清和壳 的 FixedPackage 各一套。
//
// 为什么必须有这一项：客户端派生登录密钥时用的是**自己的包名**
// （smali `SplashActivity.smali` 的 `getPackageName()` → 静态字段 C，再进
// `util/a.smali` 的 md5 链，详见 AesKeyOf 的推导）。清和壳的包名是
// xyz.qingh.qhtv，而骆驼壳基包（client/Client_lt.apk，经 apktool.yml 的
// renameManifestPackage）是 cn.dsmtv.player —— 两者不可能共用 FixedPackage，
// 否则骆驼壳那边解出的一定是乱码。
//
// 这个值由**基包自己**决定，不是随便写的：换掉 client/Client_lt.apk 就必须同步这里
// （上传基包的准入校验比对的是"与镜像内出厂基包同包名"，所以只要不换基包它不会漂）。
const FixedPackageLt = "cn.dsmtv.player"

// FixedUpdateText 是客户端升级弹窗的固定文案，原为 config.yml 的 app.update.text。
const FixedUpdateText = "update"

type Aes struct {
	Method    string
	SecretKey []byte
	Iv        []byte
}

// 创建新的AES实例
func NewAes(key string, method string, iv string) *Aes {
	aes := &Aes{
		Method:    method,
		SecretKey: []byte(key),
	}

	if iv != "" {
		aes.Iv = []byte(iv)
	}

	return aes
}

// PKCS7填充
func pkcs7Padding(ciphertext []byte, blockSize int) []byte {
	padding := blockSize - len(ciphertext)%blockSize
	padText := bytes.Repeat([]byte{byte(padding)}, padding)
	return append(ciphertext, padText...)
}

// PKCS7去除填充
func pkcs7UnPadding(origData []byte) []byte {
	length := len(origData)
	unPadding := int(origData[length-1])
	return origData[:(length - unPadding)]
}

// 加密数据
func (a *Aes) Encrypt(data string) (string, error) {
	block, err := aes.NewCipher(a.SecretKey)
	if err != nil {
		return "", err
	}

	var cipherText []byte
	if a.Method == "AES-128-ECB" {
		cipherText = a.ecbEncrypt([]byte(data))
	} else {
		cipherText = make([]byte, aes.BlockSize+len(data))
		stream := cipher.NewCFBEncrypter(block, a.Iv)
		stream.XORKeyStream(cipherText[aes.BlockSize:], []byte(data))
		copy(cipherText[:aes.BlockSize], a.Iv)
	}

	return base64.StdEncoding.EncodeToString(cipherText), nil
}

// ECB模式加密
func (a *Aes) ecbEncrypt(data []byte) []byte {
	block, err := aes.NewCipher(a.SecretKey)
	if err != nil {
		panic(err)
	}

	data = pkcs7Padding(data, block.BlockSize())
	ciphertext := make([]byte, len(data))
	for bs, be := 0, block.BlockSize(); bs < len(data); bs, be = bs+block.BlockSize(), be+block.BlockSize() {
		block.Encrypt(ciphertext[bs:be], data[bs:be])
	}
	return ciphertext
}

// 解密数据
func (a *Aes) Decrypt(data string) (string, error) {
	block, err := aes.NewCipher(a.SecretKey)
	if err != nil {
		return "", err
	}

	cipherText, _ := base64.StdEncoding.DecodeString(data)

	var plainText []byte
	if a.Method == "AES-128-ECB" {
		plainText = a.ecbDecrypt(cipherText)
	} else {
		if len(cipherText) < aes.BlockSize {
			return "", fmt.Errorf("ciphertext too short")
		}
		iv := cipherText[:aes.BlockSize]
		cipherText = cipherText[aes.BlockSize:]
		stream := cipher.NewCFBDecrypter(block, iv)
		plainText = make([]byte, len(cipherText))
		stream.XORKeyStream(plainText, cipherText)
	}

	return string(pkcs7UnPadding(plainText)), nil
}

// ECB模式解密
func (a *Aes) ecbDecrypt(data []byte) []byte {
	block, err := aes.NewCipher(a.SecretKey)
	if err != nil {
		panic(err)
	}

	plaintext := make([]byte, len(data))
	for bs, be := 0, block.BlockSize(); bs < len(data); bs, be = bs+block.BlockSize(), be+block.BlockSize() {
		block.Decrypt(plaintext[bs:be], data[bs:be])
	}
	return pkcs7UnPadding(plaintext)
}

// AesKeyOf 按「应用名 + 包名」派生登录密钥 —— 与客户端 smali 逐字同一公式。
//
// ## 公式是从客户端反推出来的，不是猜的
//
// 客户端 `com/eztv/powerful/SplashActivity.smali` 里：
//
//	E = getApplicationLabel(applicationInfo)   // = @string/app_name，即"应用名"
//	C = getPackageName()                       // = APK 自己的包名
//	s = 0x301b (= 12315)                       // 静态字段，硬编码
//	F = md5( md5( s + E + C + getSign() ) + E + C )
//	key = F.substring(5, 21)                   // → AES-128-ECB 的 16 位密钥
//
// `getSign()` 来自 `libgetName.so`，返回 Sale（AD80F93B542B）。服务端这一侧的
// fmt 串 `%d%s%s%s` 就是 `s + E + C + getSign()`，两次 md5 的叠法与客户端一致。
//
// ## 为什么输入必须逐字对齐
//
// 这是**对称**约定：服务端用自己算的密钥加密登录响应，客户端用自己算的密钥解密。
// 两边只有输入完全相同才解得开，而一旦不同，症状是"登录成功但内容乱码"——
// 客户端 `JSONObject.decrypt` 拿到的正文不是 JSON，直接走进 catch 分支，
// 界面上表现为"登录失败/一直转圈"，服务端日志里却看不到任何异常。
// 所以这里坚持**参数化而不是拼字符串**：调用方必须同时说清"哪个应用名、哪个包名"。
func AesKeyOf(appName, pkg string) string {
	h1Md5 := Md5Hex(fmt.Sprintf("%d%s%s%s", FixedAppSign, appName, pkg, Sale))
	return Md5Hex(fmt.Sprintf("%s%s%s", h1Md5, appName, pkg))
}

// GetAesKey 是**清和壳**（Client.apk，包名 xyz.qingh.qhtv）的登录密钥。
func GetAesKey() string {
	cfg := dao.GetConfig()
	return AesKeyOf(cfg.Build.Name, FixedPackage)
}

// GetAesKeyLt 是**骆驼壳**（smali 树编出来的那套）的登录密钥。
//
// 用骆驼壳自己的应用名（cfg.BuildLt.Name）与自己的包名（FixedPackageLt）派生：
// 两个壳的应用名与包名都不相同，密钥自然不同，所以 `/login` 必须能分辨调用方
// （见 api/apkApi.go 的 isLuotuoShell）。早期实现只算一份密钥、两个壳共用，
// 后果是"后配的那个壳登录一定是乱码"。
func GetAesKeyLt() string {
	cfg := dao.GetConfig()
	return AesKeyOf(cfg.BuildLt.Name, FixedPackageLt)
}

func Md5Hex(s string) string {
	sum := md5.Sum([]byte(s))
	return hex.EncodeToString(sum[:])
}
