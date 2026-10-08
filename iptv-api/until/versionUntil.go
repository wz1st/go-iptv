package until

// Version 是管理系统（api）的版本号，格式 v大版本.大改动.小改动。
// v4.1.0：APK 包名与密钥派生包名统一为 xyz.qingh.qhtv（换应用级变更，进第二段）。
// v4.1.1：CNTV 全量 EPG 的开播时刻补 st 时间戳退路，修复节目单整天空着。
// v4.2.2：客户端基底在线升级后版本号不更新；/getver 下发完整四段版本号。
var Version = "v4.2.2"
