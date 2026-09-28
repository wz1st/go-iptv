package until

import (
	"bytes"
	"compress/zlib"
	"crypto/sha256"
	"encoding/base64"
	"fmt"
	"io"

	"golang.org/x/crypto/salsa20/salsa"
)

// deriveNonceFromKey 根据 key 派生固定 nonce（16字节）
func deriveNonceFromKey(key []byte) [16]byte {
	h := sha256.Sum256(key)
	var n [16]byte
	copy(n[:], h[:16])
	return n
}

// zlib 压缩
func compress(data []byte) ([]byte, error) {
	var buf bytes.Buffer
	w := zlib.NewWriter(&buf)
	if _, err := w.Write(data); err != nil {
		return nil, err
	}
	w.Close()
	return buf.Bytes(), nil
}

// zlib 解压
func decompress(data []byte) ([]byte, error) {
	r, err := zlib.NewReader(bytes.NewReader(data))
	if err != nil {
		return nil, err
	}
	defer r.Close()
	return io.ReadAll(r)
}

// UrlEncrypt 压缩 + Salsa20 加密 + Base64(URL安全)
func UrlEncrypt(keyStr, plainStr string) (string, error) {
	key := []byte(keyStr)
	if len(key) != 32 {
		return "", fmt.Errorf("key must be 32 bytes")
	}

	plain := []byte(plainStr)
	comp, err := compress(plain)
	if err != nil {
		return "", err
	}

	var salsaKey [32]byte
	copy(salsaKey[:], key)
	nonce := deriveNonceFromKey(key)

	cipher := make([]byte, len(comp))
	salsa.XORKeyStream(cipher, comp, &nonce, &salsaKey)

	// 使用 RawURLEncoding，无“=”填充，URL安全
	return base64.RawURLEncoding.EncodeToString(cipher), nil
}

// UrlDecrypt Base64解码 + Salsa20解密 + 解压
func UrlDecrypt(keyStr, encoded string) ([]byte, error) {
	key := []byte(keyStr)
	if len(key) != 32 {
		return nil, fmt.Errorf("key must be 32 bytes")
	}

	cipher, err := base64.RawURLEncoding.DecodeString(encoded)
	if err != nil {
		return nil, err
	}

	var salsaKey [32]byte
	copy(salsaKey[:], key)
	nonce := deriveNonceFromKey(key)

	comp := make([]byte, len(cipher))
	salsa.XORKeyStream(comp, cipher, &nonce, &salsaKey)

	return decompress(comp)
}
