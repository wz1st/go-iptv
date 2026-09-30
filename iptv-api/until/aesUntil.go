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

// FixedPackage 是 APK 包名，写死在服务端。改它等于换一个应用：
// 存量设备升不了级、授权记录也接不上。原在 bootstrap，因 GetAesKey 也要用而下沉至此。
const FixedPackage = "cn.v1st.player"

// FixedAppSign 是 APK 的应用签名，原为 config.yml 的 build.sign。
// 它是 GetAesKey 的输入之一，改值会让已加密数据全部解不开。
const FixedAppSign int64 = 12315

// FixedUpdateText 是客户端升级弹窗的固定文案，原为 config.yml 的 app.update.text。
const FixedUpdateText = "update"

// FixedAdInfo 是客户端退出弹窗里那行「广告内容」（下发字段 qqinfo）的默认文案，
// 原先是写死在 service.ApkLogin 里的一串字面量。
// **必须与引擎侧 iptv-engine/dao/configDao.go 里 cfg.Site.Ad 的默认值逐字一致**：
// 定制授权下这份内容可以在后台改（配置落在 config.yml 的 site.ad），
// 其余情况（非定制授权、授权失效后被清成 Type 0）一律回落到这个值。
const FixedAdInfo = "作者博客: www.qingh.xyz"

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

func GetAesKey() string {

	cfg := dao.GetConfig()

	h1Md5 := Md5Hex(fmt.Sprintf("%d%s%sAD80F93B542B", FixedAppSign, cfg.Build.Name, FixedPackage))

	md5Str := Md5Hex(fmt.Sprintf("%s%s%s", h1Md5, cfg.Build.Name, FixedPackage))

	return md5Str //[5:21]
}

func Md5Hex(s string) string {
	sum := md5.Sum([]byte(s))
	return hex.EncodeToString(sum[:])
}
