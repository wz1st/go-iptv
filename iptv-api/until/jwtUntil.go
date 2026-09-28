package until

import (
	"strconv"
	"time"

	"github.com/gin-gonic/gin"
	"github.com/golang-jwt/jwt/v5"
)

var JwtKey = []byte("test")
var RssKey = []byte("e10adc3949ba59abbe56e057f20f883e")

// 验证 JWT
func ParseJWT(tokenString string) (*jwt.Token, error) {
	token, err := jwt.Parse(tokenString, func(token *jwt.Token) (interface{}, error) {
		return JwtKey, nil
	})
	return token, err
}

// 验证 JWT

// 生成 JWT
func GenerateJWT(username string, duration time.Duration) (string, error) {
	claims := jwt.MapClaims{
		"username": username,
		"exp":      time.Now().Add(duration).Unix(),
	}

	token := jwt.NewWithClaims(jwt.SigningMethodHS256, claims)
	return token.SignedString(JwtKey)
}

// 验证 JWT
func VerifyJWT(tokenString string) (jwt.MapClaims, error, bool) {
	token, err := jwt.Parse(tokenString, func(token *jwt.Token) (interface{}, error) {
		// 验证签名算法
		if _, ok := token.Method.(*jwt.SigningMethodHMAC); !ok {
			return nil, jwt.ErrTokenSignatureInvalid
		}
		return JwtKey, nil
	})

	if err != nil || !token.Valid {
		return nil, err, false
	}

	if claims, ok := token.Claims.(jwt.MapClaims); ok {
		exp := int64(claims["exp"].(float64))
		now := time.Now().Unix()
		if exp-now < 1800 {
			return claims, nil, true
		}
		return claims, nil, false
	}

	return nil, jwt.ErrTokenMalformed, false
}

func GetAuthName(c *gin.Context) (string, bool) {
	auth, exists := c.Get("auth")
	if !exists {
		return "", false
	}
	claims, ok := auth.(jwt.MapClaims)
	if !ok {
		return "", false
	}
	if int64(claims["exp"].(float64)) < time.Now().Unix() {
		return "", false
	}
	return claims["username"].(string), true
}

func GetAuthExp(claims jwt.MapClaims) int64 {
	return int64(claims["exp"].(float64))
}

func GenerateJWTRss(rssType, id string) (string, error) {
	claims := jwt.MapClaims{
		"type": rssType,
		"id":   id,
	}

	token := jwt.NewWithClaims(jwt.SigningMethodHS256, claims)
	return token.SignedString(RssKey)
}

func VerifyJWTRss(tokenString string) (string, int64, error) {
	token, err := jwt.Parse(tokenString, func(token *jwt.Token) (interface{}, error) {
		// 验证签名算法
		if _, ok := token.Method.(*jwt.SigningMethodHMAC); !ok {
			return nil, jwt.ErrTokenSignatureInvalid
		}
		return RssKey, nil
	})

	if err != nil || !token.Valid {
		return "", 0, err
	}

	if claims, ok := token.Claims.(jwt.MapClaims); ok {
		userType := claims["type"].(string)

		// claims["id"] 实际是 string
		idStr := claims["id"].(string)
		userID, err := strconv.ParseInt(idStr, 10, 64)
		if err != nil {
			return "", 0, err
		}

		return userType, userID, nil
	}

	return "", 0, jwt.ErrTokenMalformed
}
