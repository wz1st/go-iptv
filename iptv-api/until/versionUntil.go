package until

// Version 是管理系统（api）的版本号，格式 v大版本.大改动.小改动。
// 定制分支在主线版本后追加 -custom.N。
// v4.3.0：后台新增「SSL 证书」页（443 / 80 强制跳转 / 证书信息，证书落 /config/cert）；
// 分组自定义 UA 随登录下发、客户端按「下发 > 自定义 > 默认」生效；
// 下发地址改按请求基址拼，站点挂 HTTPS 后不再下发 http 明文包地址。
var Version = "v4.3.0-custom.1"
