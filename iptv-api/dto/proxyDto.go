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

// OutProxyScopeDto 单独提交一个作用范围开关（/api/proxy/scope）。
//
// 四个开关各自即时生效，不跟「保存配置」捆在一起 —— 拨开关就想看到结果，
// 还要再点一次保存才生效，是把一次简单操作变成两步的典型反模式。
type OutProxyScopeDto struct {
	// Key 开关名：useEpg / useSrc / useUp / useRelay。
	Key string `json:"key"`
	// Value 只接受 0（关）或 1（开）。允许全关 —— 那就是"暂时不用代理"。
	Value int64 `json:"value"`
}

// OutProxySaveDto 保存代理的请求体（/api/proxy/save）。
//
// Force 是「强制保存」：测试不通过时仍然落盘。
//
// **能不能强存由服务端判定，前端说了算不算数**：只有「代理能连上、
// 但访问不了境外」（overseas）这一种失败允许强存 —— 那种代理对
// 只需要访问国内资源的用途仍然有用；而「连不上代理」（dial）时
// 存下去必然是一条坏配置，运行时表现是静默失败，比不配更难排查。
//
// TestToken 是「刚才测过的那份配置」的凭据：客户端主动点过「测试代理」
// 且通过后拿到；保存时带回来，服务端核对它对应的配置指纹与这次要存的
// 一致（地址/端口/账号/协议都没动过）才跳过重复的连通性测试。
type OutProxySaveDto struct {
	OutProxy
	Force     int64  `json:"force"`
	TestToken string `json:"testToken"`
}

// OutProxyTestDto 保存前的连通性测试结果。
//
// FailType 直接回给前端选文案：""=通过，"dial"=代理连不通，
// "overseas"=代理能连上但访问不了境外。两种失败的处置完全不同，
// 混成一句「测试失败」等于让用户自己猜。
//
// CanForce 告诉前端「这次失败要不要给用户一个强制保存的出口」——
// 由服务端按 FailType 判定，避免前后端各写一套规则而漂移。
//
// TestToken 只在测试通过时下发：它把「刚测过的那份配置」这件事
// 变成服务端可核对的凭据，保存时凭它免掉一次重复的外网探测。
type OutProxyTestDto struct {
	OK        bool   `json:"ok"`
	FailType  string `json:"failType"`
	Stage     string `json:"stage"`
	Detail    string `json:"detail"`
	LatencyMs int64  `json:"latencyMs"`
	CanForce  bool   `json:"canForce"`
	TestToken string `json:"testToken"`
}
