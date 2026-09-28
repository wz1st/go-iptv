package api

import (
	"encoding/json"
	"errors"
	"io"
	"net/http"
	"strings"

	"iptv-api/dto"
	"iptv-api/until"

	"github.com/gin-gonic/gin"
)

// 管理端接口契约（前后端分离后统一）

// reply 写出一条业务响应。HTTP 状态码恒为 200 —— 沿用旧契约，
func reply(c *gin.Context, v any) {
	c.JSON(http.StatusOK, v)
}

// fail 是「参数不合法」的快捷响应。
func fail(c *gin.Context, msg string) {
	c.JSON(http.StatusOK, dto.ReturnJsonDto{Code: 0, Msg: msg, Type: "danger"})
}

// bindJSON 把 JSON 请求体解析到 dst，失败时自行写出错误响应并返回 false，
func bindJSON(c *gin.Context, dst any) bool {
	if err := c.ShouldBindJSON(dst); err != nil {
		if errors.Is(err, io.EOF) {
			return true
		}
		fail(c, "请求参数格式错误")
		return false
	}
	return true
}

// queryValue 是「前端可能传字符串、也可能传数字」的请求体字段类型。
type queryValue string

func (q *queryValue) UnmarshalJSON(b []byte) error {
	s := strings.TrimSpace(string(b))
	switch {
	case s == "" || s == "null":
		*q = ""
	case s[0] == '"':
		var v string
		if err := json.Unmarshal(b, &v); err != nil {
			return err
		}
		*q = queryValue(v)
	default:
		// 数字 / true / false：原样保留字面量
		*q = queryValue(s)
	}
	return nil
}

// String 返回收敛后的字符串；空值（缺失 / null）是 ""。
func (q queryValue) String() string { return string(q) }

// WantsHTML 判断调用方是否期望 HTML 页面（浏览器导航）而非接口数据。
func WantsHTML(c *gin.Context) bool {
	return strings.Contains(c.GetHeader("Accept"), "text/html")
}

// authName 取当前登录管理员的用户名。
func authName(c *gin.Context) (string, bool) {
	name, ok := until.GetAuthName(c)
	if !ok {
		c.JSON(http.StatusOK, dto.NewAdminRedirectDto())
		return "", false
	}
	return name, true
}
