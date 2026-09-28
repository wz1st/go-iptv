package until

import (
	"crypto/aes"
	"crypto/sha256"
	"encoding/base64"
)

// --- PKCS5 填充 ---
func pkcs5Padding(data []byte, blockSize int) []byte {
	padding := blockSize - len(data)%blockSize
	padText := make([]byte, padding)
	for i := range padText {
		padText[i] = byte(padding)
	}
	return append(data, padText...)
}

// --- PKCS5 去填充 ---
func pkcs5UnPadding(data []byte) []byte {
	if len(data) == 0 {
		return data
	}
	padding := int(data[len(data)-1])
	if padding > len(data) {
		return data
	}
	return data[:len(data)-padding]
}

// --- SHA256 生成 32 字节 AES 密钥 ---
func makeKey(seed string) []byte {
	hash := sha256.Sum256([]byte(seed))
	return hash[:] // 返回 32 字节 key
}

// --- AES-ECB 加密 ---
func AESEncrypt(plainText, keySeed string) (string, error) {
	key := makeKey(keySeed)
	block, err := aes.NewCipher(key)
	if err != nil {
		return "", err
	}

	data := pkcs5Padding([]byte(plainText), block.BlockSize())
	encrypted := make([]byte, len(data))

	// ECB 手动分块加密
	for bs, be := 0, block.BlockSize(); bs < len(data); bs, be = bs+block.BlockSize(), be+block.BlockSize() {
		block.Encrypt(encrypted[bs:be], data[bs:be])
	}

	return base64.StdEncoding.EncodeToString(encrypted), nil
}

// --- AES-ECB 解密 ---
func AESDecrypt(cipherBase64, keySeed string) (string, error) {
	key := makeKey(keySeed)
	block, err := aes.NewCipher(key)
	if err != nil {
		return "", err
	}

	cipherData, err := base64.StdEncoding.DecodeString(cipherBase64)
	if err != nil {
		return "", err
	}

	decrypted := make([]byte, len(cipherData))

	// ECB 手动分块解密
	for bs, be := 0, block.BlockSize(); bs < len(cipherData); bs, be = bs+block.BlockSize(), be+block.BlockSize() {
		block.Decrypt(decrypted[bs:be], cipherData[bs:be])
	}

	decrypted = pkcs5UnPadding(decrypted)
	return string(decrypted), nil
}
