package until

import (
	"encoding/json"
	"strings"
	"testing"

	"iptv-api/dao"
	"iptv-api/dto"
	"iptv-api/models"
)

// 中转地址（purl）的拼法

const testHostID = "0123456789abcdef0123456789abcdef" // 机器码固定 32 字节

// newTestConfig 装一份干净的全局配置。
func newTestConfig(t *testing.T) *dto.Config {
	t.Helper()

	cfg := &dto.Config{}
	old := dao.GetConfig()
	dao.GlobalConfig.Store(cfg)
	t.Cleanup(func() {
		if old != nil {
			dao.GlobalConfig.Store(old)
			return
		}
		dao.GlobalConfig.Store(&dto.Config{})
	})
	return cfg
}

// withMachineAndProxy 准备"已授权（有机器码）+ 全局中转已开"的环境。
func withMachineAndProxy(t *testing.T) *dto.Config {
	t.Helper()

	cfg := newTestConfig(t)
	cfg.Proxy.Status = 1

	oldID := dao.Lic.ID
	dao.Lic.ID = testHostID
	t.Cleanup(func() { dao.Lic.ID = oldID })

	return cfg
}

func TestProxyURLEmbedsBaseAndPrefix(t *testing.T) {
	if got := ProxyURL("http://10.0.0.1:8090", "ABC"); got != "http://10.0.0.1:8090/p/ABC" {
		t.Fatalf("拼法不对: %q", got)
	}
	// base 末尾多一个斜杠不能拼出 `//p/`
	if got := ProxyURL("https://tv.example.com/", "ABC"); got != "https://tv.example.com/p/ABC" {
		t.Fatalf("base 末尾的斜杠没被吃掉: %q", got)
	}
}

func TestEncryptChannelURLRoundTripsThroughDecrypt(t *testing.T) {
	oldID := dao.Lic.ID
	dao.Lic.ID = testHostID
	t.Cleanup(func() { dao.Lic.ID = oldID })

	// 带引号与反斜杠的源地址：这正是 fmt.Sprintf 拼 JSON 会翻车的输入。
	src := `http://a.example/live?x="1"\&y=2`
	enc, err := EncryptChannelURL(7, src)
	if err != nil {
		t.Fatalf("加密失败: %v", err)
	}

	raw, err := UrlDecrypt(testHostID, enc)
	if err != nil {
		t.Fatalf("解密失败: %v", err)
	}
	var got struct {
		C int64  `json:"c"`
		U string `json:"u"`
	}
	if err := json.Unmarshal(raw, &got); err != nil {
		t.Fatalf("密文不是合法 JSON（源地址里的特殊字符把 JSON 拼坏了）: %v\n%s", err, raw)
	}
	if got.C != 7 || got.U != src {
		t.Fatalf("回环不一致: 得到 c=%d u=%q，期望 c=7 u=%q", got.C, got.U, src)
	}
}

func TestEncryptChannelURLNeedsMachineCode(t *testing.T) {
	oldID := dao.Lic.ID
	dao.Lic.ID = "" // 未授权 / 机器码还没算出来
	t.Cleanup(func() { dao.Lic.ID = oldID })

	if _, err := EncryptChannelURL(1, "http://a.example/x.m3u8"); err == nil {
		t.Fatal("没有机器码时必须报错，而不是给出一串谁都能解的密文")
	}
}

func TestCaGetChannelsBuildsPUrlFromRequestBase(t *testing.T) {
	setupChannelDB(t)
	withMachineAndProxy(t)

	caID := newTestCategory(t, "中转分组")
	if err := dao.DB.Model(&models.IptvCategory{}).Where("id = ?", caID).
		Update("proxy", true).Error; err != nil {
		t.Fatal(err)
	}
	channels := []models.IptvChannel{
		{Name: "WR1", Url: "http://a.example/1.m3u8", Status: true, Sort: 1, CategoryID: caID},
		{Name: "WR2", Url: "http://a.example/2.m3u8", Status: true, Sort: 2, CategoryID: caID},
	}
	if err := dao.DB.Create(&channels).Error; err != nil {
		t.Fatal(err)
	}

	var ca models.IptvCategory
	if err := dao.DB.Where("id = ?", caID).First(&ca).Error; err != nil {
		t.Fatal(err)
	}

	const base = "http://10.10.220.162:8090"
	got := CaGetChannels(ca, true, base)
	if len(got) != 2 {
		t.Fatalf("应取到 2 条频道，实际 %d", len(got))
	}
	for _, ch := range got {
		if !strings.HasPrefix(ch.PUrl, base+"/p/") {
			t.Fatalf("purl 必须以「访问域名 + /p/」开头，实际 %q", ch.PUrl)
		}
		enc := strings.TrimPrefix(ch.PUrl, base+"/p/")
		raw, err := UrlDecrypt(testHostID, enc)
		if err != nil {
			t.Fatalf("密文解不开: %v", err)
		}
		var msg struct {
			C int64  `json:"c"`
			U string `json:"u"`
		}
		if err := json.Unmarshal(raw, &msg); err != nil {
			t.Fatalf("密文不是合法 JSON: %v", err)
		}
		if msg.C != caID || msg.U != ch.Url {
			t.Fatalf("密文内容不对: c=%d u=%q，期望 c=%d u=%q", msg.C, msg.U, caID, ch.Url)
		}
	}
}

func TestCaGetChannelsSkipsPUrlWithoutBase(t *testing.T) {
	setupChannelDB(t)
	withMachineAndProxy(t)

	caID := newTestCategory(t, "中转分组2")
	if err := dao.DB.Model(&models.IptvCategory{}).Where("id = ?", caID).
		Update("proxy", true).Error; err != nil {
		t.Fatal(err)
	}
	if err := dao.DB.Create(&models.IptvChannel{
		Name: "WR3", Url: "http://a.example/3.m3u8", Status: true, Sort: 1, CategoryID: caID,
	}).Error; err != nil {
		t.Fatal(err)
	}

	var ca models.IptvCategory
	if err := dao.DB.Where("id = ?", caID).First(&ca).Error; err != nil {
		t.Fatal(err)
	}

	// base 为空 = "这次调用不需要 purl"（首页统计就传空串，省掉每条频道的加密）。
	// 关键是**绝不能**退化成"拼一个没有域名的 /p/xxx"，那在播放器里是废地址。
	for _, ch := range CaGetChannels(ca, true, "") {
		if ch.PUrl != "" {
			t.Fatalf("base 为空时不该产出 purl，实际 %q", ch.PUrl)
		}
	}
}

func TestCaGetChannelsSkipsPUrlWhenProxyOff(t *testing.T) {
	setupChannelDB(t)
	newTestConfig(t) // 全局中转保持默认的 0

	caID := newTestCategory(t, "未开中转")
	if err := dao.DB.Model(&models.IptvCategory{}).Where("id = ?", caID).
		Update("proxy", true).Error; err != nil {
		t.Fatal(err)
	}
	if err := dao.DB.Create(&models.IptvChannel{
		Name: "WR4", Url: "http://a.example/4.m3u8", Status: true, Sort: 1, CategoryID: caID,
	}).Error; err != nil {
		t.Fatal(err)
	}

	var ca models.IptvCategory
	if err := dao.DB.Where("id = ?", caID).First(&ca).Error; err != nil {
		t.Fatal(err)
	}

	// 全局中转关着 → 不给 purl，播放列表那边会据此回落到源地址。
	oldID := dao.Lic.ID
	dao.Lic.ID = testHostID
	t.Cleanup(func() { dao.Lic.ID = oldID })

	for _, ch := range CaGetChannels(ca, true, "http://10.0.0.1:8090") {
		if ch.PUrl != "" {
			t.Fatalf("全局中转关闭时不该产出 purl，实际 %q", ch.PUrl)
		}
	}
}

func TestCaGetChannelsSkipsPUrlWhenCategoryProxyOff(t *testing.T) {
	setupChannelDB(t)
	withMachineAndProxy(t)

	// 分组自己没开中转 → 同样不给 purl（全局开了也没用）
	caID := newTestCategory(t, "分组没开中转")
	if err := dao.DB.Create(&models.IptvChannel{
		Name: "WR5", Url: "http://a.example/5.m3u8", Status: true, Sort: 1, CategoryID: caID,
	}).Error; err != nil {
		t.Fatal(err)
	}

	var ca models.IptvCategory
	if err := dao.DB.Where("id = ?", caID).First(&ca).Error; err != nil {
		t.Fatal(err)
	}

	for _, ch := range CaGetChannels(ca, true, "http://10.0.0.1:8090") {
		if ch.PUrl != "" {
			t.Fatalf("分组未开中转时不该产出 purl，实际 %q", ch.PUrl)
		}
	}
}

// 聚合分组的地址补全（ProxyURLFromPath）。
func TestProxyURLFromPath(t *testing.T) {
	const base = "http://10.10.220.162:8090"

	// 需要补全的：裸路径
	for _, in := range []string{"/p/abc", "/p/abc?x=1"} {
		if got := ProxyURLFromPath(in, base); got != base+in {
			t.Fatalf("裸路径必须补成绝对地址: %q -> %q，期望 %q", in, got, base+in)
		}
	}

	// base 自带尾斜杠时不能拼出双斜杠
	if got := ProxyURLFromPath("/p/abc", base+"/"); got != base+"/p/abc" {
		t.Fatalf("base 带尾斜杠时补出了双斜杠: %q", got)
	}

	// 不许动的：已经是绝对地址 / 其它协议 / 空串
	for _, in := range []string{
		base + "/p/abc",
		"http://a.example/x.m3u8",
		"rtmp://a.example/live",
		"https://a.example:8443/hls/1.m3u8",
		"",
	} {
		if got := ProxyURLFromPath(in, base); got != in {
			t.Fatalf("非裸路径必须原样返回: %q -> %q", in, got)
		}
	}

	// base 缺失（内部只数字数的场景）时不许拼出半个地址
	if got := ProxyURLFromPath("/p/abc", ""); got != "/p/abc" {
		t.Fatalf("没有 base 时应原样返回: %q", got)
	}
}

// 聚合分组结果里的两条字段都要补全（NormalizeProxyPaths）。
func TestNormalizeProxyPaths(t *testing.T) {
	const base = "http://10.10.220.162:8090"

	list := []models.IptvChannelShow{
		// 所属分组开了中转 → 两个都是裸路径，两个都要补
		{Name: "A", Url: "/p/aaa", PUrl: "/p/aaa"},
		// 所属分组没开中转 → Url 是源地址（不许动），PUrl 仍是裸路径
		{Name: "B", Url: "http://a.example/b.m3u8", PUrl: "/p/bbb"},
		// 频道被停用 / 未授权 → 引擎没产出 purl，两个都空
		{Name: "C", Url: "http://a.example/c.m3u8", PUrl: ""},
	}

	NormalizeProxyPaths(list, base)

	if list[0].Url != base+"/p/aaa" || list[0].PUrl != base+"/p/aaa" {
		t.Fatalf("两条裸路径都该补全: url=%q purl=%q", list[0].Url, list[0].PUrl)
	}
	if list[1].Url != "http://a.example/b.m3u8" {
		t.Fatalf("源地址不许被改写，实际 %q", list[1].Url)
	}
	if list[1].PUrl != base+"/p/bbb" {
		t.Fatalf("purl 该补全，实际 %q", list[1].PUrl)
	}
	if list[2].Url != "http://a.example/c.m3u8" || list[2].PUrl != "" {
		t.Fatalf("空 purl 与源地址都应保持原样: url=%q purl=%q", list[2].Url, list[2].PUrl)
	}

	// 空 base = 这次调用不需要绝对地址（首页只数字数），整批保持原样
	list2 := []models.IptvChannelShow{{Url: "/p/x", PUrl: "/p/x"}}
	NormalizeProxyPaths(list2, "")
	if list2[0].Url != "/p/x" || list2[0].PUrl != "/p/x" {
		t.Fatalf("没有 base 时不该改动: url=%q purl=%q", list2[0].Url, list2[0].PUrl)
	}
}

// CaGetChannels 的两条分支都要带 ca_name / ca_proxy（v31）。
func TestCaGetChannelsCarriesCategoryInfo(t *testing.T) {
	setupChannelDB(t)
	newTestConfig(t)

	caID := newTestCategory(t, "来源分组甲")
	if err := dao.DB.Create(&models.IptvChannel{
		Name: "WR6", Url: "http://a.example/6.m3u8", Status: true, Sort: 1, CategoryID: caID,
	}).Error; err != nil {
		t.Fatal(err)
	}

	var ca models.IptvCategory
	if err := dao.DB.Where("id = ?", caID).First(&ca).Error; err != nil {
		t.Fatal(err)
	}

	got := CaGetChannels(ca, true, "")
	if len(got) != 1 {
		t.Fatalf("应取到 1 条频道，实际 %d", len(got))
	}
	if got[0].CaName != "来源分组甲" {
		t.Fatalf("caName 必须带出分组名，实际 %q", got[0].CaName)
	}
	if got[0].Proxy {
		t.Fatalf("这个分组没开中转，proxy 应为 false")
	}
}

// 「避免中转已中转的链接」（v32）。
func TestIsProxyPathOnlyMatchesBareProxyPath(t *testing.T) {
	cases := []struct {
		in   string
		want bool
	}{
		{"/p/abc", true},
		{"/p/", true},
		{"/p", false},
		{"http://a.example/p/abc", false},
		{"http://a.example/live.m3u8", false},
		{"rtmp://a.example/live", false},
		{"", false},
	}
	for _, c := range cases {
		if got := IsProxyPath(c.in); got != c.want {
			t.Errorf("IsProxyPath(%q) = %v，期望 %v", c.in, got, c.want)
		}
	}
}

func TestCaGetChannelsRefusesToProxyAProxyPath(t *testing.T) {
	setupChannelDB(t)
	withMachineAndProxy(t)
	const base = "http://10.0.0.1:8090"

	ca := models.IptvCategory{Name: "开了中转的分组", Enable: true, Type: "add", Proxy: true, Sort: 1}
	if err := dao.DB.Create(&ca).Error; err != nil {
		t.Fatal(err)
	}
	rows := []struct{ name, url string }{
		{"WR-A", "http://a.example/ok.m3u8"}, // 正常源地址
		{"WR-B", "/p/ALREADY_PROXIED"},       // 已经是中转地址（异常数据）
	}
	for i, r := range rows {
		if err := dao.DB.Create(&models.IptvChannel{
			Name: r.name, Url: r.url, Status: true, Sort: int64(i + 1), CategoryID: ca.ID,
		}).Error; err != nil {
			t.Fatal(err)
		}
	}

	got := CaGetChannels(ca, false, base)
	if len(got) != 2 {
		t.Fatalf("应取到 2 条频道，实际 %d", len(got))
	}
	// 原始源地址：正常产出 {base}/p/{密文}
	if !strings.HasPrefix(got[0].PUrl, base+"/p/") {
		t.Fatalf("原始源地址该产出中转地址，实际 purl = %q", got[0].PUrl)
	}
	// 已经是中转地址的：**不产出**，且原值原样保留（既不清空也不改写）
	if got[1].PUrl != "" {
		t.Fatalf("源地址已是 /p/… 时不该再包一层，实际 purl = %q", got[1].PUrl)
	}
	if got[1].Url != "/p/ALREADY_PROXIED" {
		t.Fatalf("源地址应原样保留，实际 url = %q", got[1].Url)
	}
}
