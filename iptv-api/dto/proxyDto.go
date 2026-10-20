package dto

// 出网代理页（/api/proxy）的数据形状。

// OutProxyDataDto 代理页的初始数据：配置本身 + 「中转」这项能不能勾。
//
// RelayAllowed 是给前端的硬约束：全部授权账号都可让中转取流走代理
// （不限授权类型，判据 = dao.LicStillValid()，与中转开关本身同一把尺）。
// 前端据此禁用该勾选项，后端保存时还会再挡一次 ——
// 隐藏只是让界面诚实，后端才是真正的关卡。
type OutProxyDataDto struct {
	OutProxy
	RelayAllowed bool `json:"relayAllowed"`
}

// OutProxyTestDto 保存前的连通性测试结果。
//
// FailType 直接回给前端选文案：""=通过，"dial"=代理连不通，
// "overseas"=代理能连上但访问不了境外。两种失败的处置完全不同，
// 混成一句「测试失败」等于让用户自己猜。
type OutProxyTestDto struct {
	OK        bool   `json:"ok"`
	FailType  string `json:"failType"`
	Stage     string `json:"stage"`
	Detail    string `json:"detail"`
	LatencyMs int64  `json:"latencyMs"`
}
