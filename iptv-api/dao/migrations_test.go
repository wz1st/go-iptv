package dao

import (
	"fmt"
	"path/filepath"
	"testing"

	"iptv-api/models"
)

// 迁移清单 + 结构标记门控的回归测试

// testVersion 是测试里冒充的编译期版本号。
const testVersion = "v-test"

var legacySchema = []string{
	`CREATE TABLE iptv_admin (
		id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
		username TEXT NOT NULL,
		password TEXT NOT NULL
	)`,
	`CREATE TABLE iptv_category (
		id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
		name TEXT NOT NULL UNIQUE,
		enable INTEGER NOT NULL DEFAULT 1,
		type TEXT NOT NULL DEFAULT 'hand',
		url TEXT,
		ua TEXT,
		latesttime TEXT,
		autocategory INTEGER,
		repeat INTEGER,
		sort INTEGER,
		rawcount INTEGER DEFAULT 0
	)`,
	`CREATE TABLE iptv_category_list (
		id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
		name TEXT NOT NULL UNIQUE,
		enable INTEGER NOT NULL DEFAULT 1,
		url TEXT DEFAULT NULL,
		ua TEXT,
		rename INTEGER DEFAULT 1,
		autogroup INTEGER DEFAULT 0,
		ku9 INTEGER DEFAULT 0,
		autocategory INTEGER DEFAULT 0,
		latesttime TEXT DEFAULT NULL,
		repeat INTEGER DEFAULT 0
	)`,
	`CREATE TABLE iptv_channels (
		id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
		name TEXT NOT NULL,
		url TEXT DEFAULT NULL,
		category TEXT,
		status INTEGER NOT NULL DEFAULT 1,
		e_id INTEGER DEFAULT 0,
		c_id INTEGER DEFAULT 0,
		list_id INTEGER DEFAULT 0
	)`,
	`CREATE TABLE iptv_users (
		id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
		name BIGINT NOT NULL,
		mac TEXT NOT NULL,
		deviceid TEXT NOT NULL,
		model TEXT NOT NULL,
		ip TEXT NOT NULL,
		region TEXT DEFAULT NULL,
		exp BIGINT NOT NULL,
		vpn INTEGER NOT NULL DEFAULT 0,
		idchange INTEGER NOT NULL DEFAULT 0,
		author TEXT DEFAULT NULL,
		authortime BIGINT NOT NULL DEFAULT 0,
		status INTEGER NOT NULL DEFAULT -1,
		lasttime BIGINT NOT NULL,
		marks TEXT DEFAULT NULL,
		meal INTEGER NOT NULL DEFAULT 1000
	)`,
	`CREATE TABLE iptv_epg_list (
		id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
		name TEXT NOT NULL,
		url TEXT DEFAULT NULL,
		status INTEGER NOT NULL DEFAULT 1,
		ua TEXT,
		lasttime BIGINT NOT NULL,
		remarks TEXT DEFAULT NULL
	)`,
	`CREATE TABLE iptv_epg (
		id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
		name TEXT NOT NULL,
		content TEXT DEFAULT NULL,
		fromlist TEXT,
		cas TEXT,
		status INTEGER NOT NULL DEFAULT 1,
		remarks TEXT DEFAULT NULL
	)`,
	`INSERT INTO iptv_admin (username, password) VALUES ('test', 'md5hash')`,
	// url 时代的"频道源"躺在分组表里；第二行是正常分组（url 为空）
	`INSERT INTO iptv_category (name, enable, type, url, ua, latesttime, autocategory, repeat, sort, rawcount)
	 VALUES ('我的源', 1, 'hand', 'http://example.com/list.txt', 'okhttp', '2024-01-01 00:00:00', 1, 1, 1, 12)`,
	`INSERT INTO iptv_category (name, enable, type, url, ua, sort, rawcount)
	 VALUES ('央视', 1, 'user', '', '', 2, 0)`,
	`INSERT INTO iptv_channels (name, url, category, status) VALUES ('CCTV1', 'http://a/1.m3u8', '央视', 0)`,
	`INSERT INTO iptv_channels (name, url, category, status) VALUES ('CCTV2', 'http://a/2.m3u8', '央视', 0)`,
	`INSERT INTO iptv_channels (name, url, category, status) VALUES ('孤儿台', 'http://a/9.m3u8', '不存在的分组', 1)`,
	`INSERT INTO iptv_users (name, mac, deviceid, model, ip, exp, idchange, authortime, status, lasttime, meal)
	 VALUES (101, 'aa:bb', 'DEV1', 'M1', '1.2.3.4', 1700000000, 1, 1600000000, 1, 1699999999, 1001)`,
	`INSERT INTO iptv_epg_list (name, url, status, ua, lasttime, remarks)
	 VALUES ('51zmt', 'http://epg.51zmt.top:8000/e.xml', 1, '', 0, '51zmt')`,
	`INSERT INTO iptv_epg (name, content, fromlist, cas, status, remarks)
	 VALUES ('CCTV1', 'CCTV1', '0', '', 1, 'CCTV1|CCTV-1')`,
}

// setupLegacyDB 造一个"列名统一之前"的库并接上 DB。
func setupLegacyDB(t *testing.T) {
	t.Helper()
	if !InitDB(filepath.Join(t.TempDir(), "iptv.db")) {
		t.Fatal("InitDB 失败")
	}
	for i, stmt := range legacySchema {
		if err := DB.Exec(stmt).Error; err != nil {
			t.Fatalf("第 %d 条老库语句执行失败: %v\n%s", i+1, err, stmt)
		}
	}
}

// setupFreshDB 造一个"全新安装"的库（没有任何表、也没有结构标记）。
func setupFreshDB(t *testing.T) {
	t.Helper()
	if !InitDB(filepath.Join(t.TempDir(), "iptv.db")) {
		t.Fatal("InitDB 失败")
	}
}

// migrateLegacy 造老库并执行一次迁移。返回后 DB 指向迁移完成的库。
func migrateLegacy(t *testing.T) {
	t.Helper()
	setupLegacyDB(t)
	if _, err := RunMigrations(); err != nil {
		t.Fatalf("RunMigrations 失败: %v", err)
	}
}

func mustHaveColumn(t *testing.T, table, column string) {
	t.Helper()
	if !ColumnExists(table, column) {
		t.Errorf("%s 缺少列 %s", table, column)
	}
}

func mustNotHaveColumn(t *testing.T, table, column string) {
	t.Helper()
	if ColumnExists(table, column) {
		t.Errorf("%s 不该再有列 %s", table, column)
	}
}

// 零、清单本身的形状

// TestMigrationListIsWellFormed 保证清单是"能当目录读"的：编号连续、有名字、
func TestMigrationListIsWellFormed(t *testing.T) {
	list := migrationList()
	if len(list) == 0 {
		t.Fatal("迁移清单是空的")
	}
	for i, m := range list {
		want := fmt.Sprintf("M%d", i+1)
		if m.ID != want {
			t.Errorf("第 %d 条迁移编号应为 %s，实际 %q", i+1, want, m.ID)
		}
		if m.Name == "" {
			t.Errorf("%s 缺少 Name", m.ID)
		}
		if m.Apply == nil {
			t.Errorf("%s 缺少 Apply", m.ID)
		}
	}
	if schemaRevision < 1 {
		t.Errorf("schemaRevision 应为正整数，实际 %d", schemaRevision)
	}
	if SchemaMarker(testVersion) != fmt.Sprintf("%s|r%d", testVersion, schemaRevision) {
		t.Errorf("SchemaMarker 的拼法与 schemaRevision 不一致: %s", SchemaMarker(testVersion))
	}
}

// 一、迁移本身

// TestLegacyUpgradeRenamesUserColumns 验证 iptv_users / iptv_admin 的缩写列名被
// 搬走（M1），且数据跟着过去（改名而不是"新列全 NULL"）。
func TestLegacyUpgradeRenamesUserColumns(t *testing.T) {
	migrateLegacy(t)

	for _, c := range []string{"device_id", "expire_time", "id_change", "author_time", "last_time", "meal_id"} {
		mustHaveColumn(t, "iptv_users", c)
	}
	for _, c := range []string{"deviceid", "exp", "idchange", "authortime", "lasttime", "meal"} {
		mustNotHaveColumn(t, "iptv_users", c)
	}

	var u models.IptvUser
	if err := DB.Model(&models.IptvUser{}).Where("mac = ?", "aa:bb").First(&u).Error; err != nil {
		t.Fatalf("读回用户失败: %v", err)
	}
	if u.DeviceID != "DEV1" {
		t.Errorf("device_id 数据没搬过来: %q", u.DeviceID)
	}
	if u.ExpireTime != 1700000000 {
		t.Errorf("expire_time 数据没搬过来: %d", u.ExpireTime)
	}
	if u.MealID != 1001 {
		t.Errorf("meal_id 数据没搬过来: %d", u.MealID)
	}
	if !u.IDChange {
		t.Error("id_change 数据没搬过来（应为 true）")
	}
	if u.AuthorTime != 1600000000 {
		t.Errorf("author_time 数据没搬过来: %d", u.AuthorTime)
	}

	mustHaveColumn(t, "iptv_admin", "password_hash")
	mustNotHaveColumn(t, "iptv_admin", "password")
	var admin models.IptvAdmin
	if err := DB.Model(&models.IptvAdmin{}).Where("id = 1").First(&admin).Error; err != nil {
		t.Fatalf("读回管理员失败: %v", err)
	}
	if admin.Username != "test" || admin.PasswordHash != "md5hash" {
		t.Errorf("管理员数据没搬过来: %+v", admin)
	}

	// iptv_category_list 的缩写列名同样要搬走
	for _, c := range []string{"auto_rename", "auto_group", "auto_category", "latest_time", "dedup"} {
		mustHaveColumn(t, "iptv_category_list", c)
	}
	for _, c := range []string{"rename", "autogroup", "autocategory", "latesttime", "repeat"} {
		mustNotHaveColumn(t, "iptv_category_list", c)
	}

	// iptv_channels 的三根外键列
	for _, c := range []string{"category_id", "epg_id", "source_id"} {
		mustHaveColumn(t, "iptv_channels", c)
	}
	for _, c := range []string{"c_id", "e_id", "list_id"} {
		mustNotHaveColumn(t, "iptv_channels", c)
	}

	// iptv_epg 与 iptv_epg_list
	mustHaveColumn(t, "iptv_epg", "from_list")
	mustNotHaveColumn(t, "iptv_epg", "fromlist")
	mustHaveColumn(t, "iptv_epg_list", "last_time")
	mustNotHaveColumn(t, "iptv_epg_list", "lasttime")
}

// TestLegacyUpgradeMovesUrlEraSources 验证 url 时代的"频道源行"被搬进
// iptv_category_list 且从分组表里清掉（M3），残留列被 DROP（M4）。
func TestLegacyUpgradeMovesUrlEraSources(t *testing.T) {
	migrateLegacy(t)

	// 分组表里不该再有 url 时代的列
	for _, c := range []string{"url", "latesttime", "autocategory", "repeat"} {
		mustNotHaveColumn(t, "iptv_category", c)
	}

	// "我的源"应以频道源的身份出现在 iptv_category_list，且开关位跟着过来
	var src models.IptvCategoryList
	if err := DB.Model(&models.IptvCategoryList{}).
		Where("name = ?", "我的源").First(&src).Error; err != nil {
		t.Fatalf("频道源没被搬过去: %v", err)
	}
	if src.Url != "http://example.com/list.txt" {
		t.Errorf("url 没搬过来: %q", src.Url)
	}
	if src.UA != "okhttp" {
		t.Errorf("ua 没搬过来: %q", src.UA)
	}
	if !src.Enable {
		t.Error("enable 没搬过来（应为 true）")
	}
	if !src.AutoCategory {
		t.Error("autocategory -> auto_category 没搬过来（应为 true）")
	}
	if !src.Dedup {
		t.Error("repeat -> dedup 没搬过来（应为 true）")
	}

	// 老行必须从分组表里删掉，否则界面会把它当成一个正常分组显示
	var leftover int64
	DB.Raw(`SELECT COUNT(*) FROM iptv_category WHERE name = ?`, "我的源").Scan(&leftover)
	if leftover != 0 {
		t.Errorf("url 时代的行没从 iptv_category 清掉，还剩 %d 行", leftover)
	}

	// 正常分组（url 为空）不受影响
	var kept int64
	DB.Raw(`SELECT COUNT(*) FROM iptv_category WHERE name = ?`, "央视").Scan(&kept)
	if kept != 1 {
		t.Errorf("正常分组被误删，当前 %d 行", kept)
	}
}

// TestLegacyUpgradeBackfillsChannel 验证没有 sort 列的老频道表被回填排序号（M5），
// 且残留的分组名被翻译成 category_id（M6：命中的置为上线、归不到分组的被清掉）。
func TestLegacyUpgradeBackfillsChannel(t *testing.T) {
	migrateLegacy(t)

	mustNotHaveColumn(t, "iptv_channels", "category")
	mustHaveColumn(t, "iptv_channels", "sort")

	var ca models.IptvCategory
	if err := DB.Model(&models.IptvCategory{}).Where("name = ?", "央视").First(&ca).Error; err != nil {
		t.Fatalf("读回分组失败: %v", err)
	}

	var channels []models.IptvChannel
	if err := DB.Model(&models.IptvChannel{}).Order("id").Find(&channels).Error; err != nil {
		t.Fatalf("读回频道失败: %v", err)
	}
	// 归不到分组的"孤儿台"应被清掉（M7），剩下的两条都挂在"央视"下
	if len(channels) != 2 {
		var names []string
		for _, c := range channels {
			names = append(names, c.Name)
		}
		t.Fatalf("频道数应为 2（孤儿台被清掉），实际 %d: %v", len(channels), names)
	}
	for _, c := range channels {
		if c.CategoryID != ca.ID {
			t.Errorf("频道 %s 的 category_id 应为 %d，实际 %d", c.Name, ca.ID, c.CategoryID)
		}
		if !c.Status {
			t.Errorf("频道 %s 命中分组后应被置为上线", c.Name)
		}
		if c.Sort != c.ID {
			t.Errorf("频道 %s 的 sort 应按 id 回填：sort=%d id=%d", c.Name, c.Sort, c.ID)
		}
	}
}

// TestRunMigrationsIsIdempotent 保证老库升级路径重复执行无害：
// 再跑一次不该改动数据（否则每次重启都在"搬运"）。
func TestRunMigrationsIsIdempotent(t *testing.T) {
	migrateLegacy(t)

	count := func() (ch, ca, src int64) {
		DB.Model(&models.IptvChannel{}).Count(&ch)
		DB.Model(&models.IptvCategory{}).Count(&ca)
		DB.Model(&models.IptvCategoryList{}).Count(&src)
		return
	}
	chCount, caCount, srcCount := count()

	if _, err := RunMigrations(); err != nil {
		t.Fatalf("第二次 RunMigrations 失败: %v", err)
	}

	chCount2, caCount2, srcCount2 := count()
	if chCount != chCount2 || caCount != caCount2 || srcCount != srcCount2 {
		t.Errorf("第二次 RunMigrations 改动了数据：channels %d->%d, category %d->%d, 源 %d->%d",
			chCount, chCount2, caCount, caCount2, srcCount, srcCount2)
	}
}

// 二、结构标记门控

// TestSchemaGateRunsWhenMarkerMissingOrStale 覆盖门控的三种判定：
func TestSchemaGateRunsWhenMarkerMissingOrStale(t *testing.T) {
	setupLegacyDB(t)

	if !SchemaInitNeeded(testVersion) {
		t.Fatal("老库没有结构标记，应当判定为需要迁移")
	}

	if _, err := MigrateAll(testVersion); err != nil {
		t.Fatalf("MigrateAll 失败: %v", err)
	}

	// 跑过之后必须把标记写上，否则每次启动都在重跑
	got, ok, err := ReadSchemaMarker()
	if err != nil {
		t.Fatalf("读结构标记失败: %v", err)
	}
	if !ok {
		t.Fatal("迁移完成后没有写下结构标记")
	}
	if got != SchemaMarker(testVersion) {
		t.Fatalf("结构标记应为 %q，实际 %q", SchemaMarker(testVersion), got)
	}
	if SchemaInitNeeded(testVersion) {
		t.Error("标记与当前一致时不该再判定为需要迁移")
	}

	// 模拟"换了新二进制"：把标记改成一个更旧的版本号
	if err := DB.Exec(`UPDATE "iptv_meta" SET "value" = ? WHERE "key" = ?`,
		"v0.0.0.0|r0", schemaMarkerKey).Error; err != nil {
		t.Fatalf("改写结构标记失败: %v", err)
	}
	if !SchemaInitNeeded(testVersion) {
		t.Error("标记过期时应当判定为需要迁移")
	}

	// 删掉标记行：等价于"库是从旧备份恢复的"，同样要跑
	if err := DB.Exec(`DELETE FROM "iptv_meta" WHERE "key" = ?`, schemaMarkerKey).Error; err != nil {
		t.Fatalf("删除结构标记失败: %v", err)
	}
	if !SchemaInitNeeded(testVersion) {
		t.Error("标记缺失时应当判定为需要迁移")
	}

	// 顺带确认 iptv_meta 不是业务表：它不该出现在要迁移的模型清单里
	for _, m := range schemaModels() {
		if fmt.Sprintf("%T", m) == "*models.IptvMeta" {
			t.Error("iptv_meta 不该被当成业务模型")
		}
	}
}

// TestMigrateAllSkipsWhenMarkerMatches 从数据侧证明"跳过"是真的跳过。
func TestMigrateAllSkipsWhenMarkerMatches(t *testing.T) {
	migrateLegacy(t)
	if _, err := MigrateAll(testVersion); err != nil {
		t.Fatalf("MigrateAll 失败: %v", err)
	}

	if err := DB.Exec(
		`INSERT INTO "iptv_channels" ("name", "url", "category_id") VALUES (?, ?, 0)`,
		"哨兵台", "http://sentinel/1.m3u8").Error; err != nil {
		t.Fatalf("插入哨兵频道失败: %v", err)
	}

	if _, err := MigrateAll(testVersion); err != nil {
		t.Fatalf("第二次 MigrateAll 失败: %v", err)
	}

	var n int64
	DB.Raw(`SELECT COUNT(*) FROM "iptv_channels" WHERE "name" = ?`, "哨兵台").Scan(&n)
	if n != 1 {
		t.Error("第二次 MigrateAll 没有跳过（哨兵行被清理了），门控失效")
	}
}

// TestForceSchemaInitOverridesMarker 覆盖排障开关：
// 库被外部工具动过时，IPTV_FORCE_DB_INIT=true 应当无视标记强制重跑。
func TestForceSchemaInitOverridesMarker(t *testing.T) {
	migrateLegacy(t)
	if _, err := MigrateAll(testVersion); err != nil {
		t.Fatalf("MigrateAll 失败: %v", err)
	}
	if SchemaInitNeeded(testVersion) {
		t.Fatal("前提不成立：标记还没就位")
	}

	t.Setenv("IPTV_FORCE_DB_INIT", "true")
	if !forceSchemaInit() {
		t.Fatal("IPTV_FORCE_DB_INIT=true 时 forceSchemaInit() 应为 true")
	}
	if !SchemaInitNeeded(testVersion) {
		t.Error("IPTV_FORCE_DB_INIT=true 时应当强制判定为需要迁移")
	}
}

// 三、两个"无需迁移"的入口

// TestMigrateAllSkipsAfterFreshInstall 模拟"安装向导刚走完"的库：
func TestMigrateAllSkipsAfterFreshInstall(t *testing.T) {
	setupFreshDB(t)

	// install.go 里的等价动作：对齐表结构 -> 写标记
	if err := ReconcileSchema(); err != nil {
		t.Fatalf("ReconcileSchema 失败: %v", err)
	}
	if err := WriteSchemaMarker(testVersion); err != nil {
		t.Fatalf("WriteSchemaMarker 失败: %v", err)
	}

	if SchemaInitNeeded(testVersion) {
		t.Fatal("安装完成的库不该再判定为需要迁移")
	}
	if _, err := MigrateAll(testVersion); err != nil {
		t.Fatalf("MigrateAll 失败: %v", err)
	}
}

// TestMigrateAllBuildsSchemaOnEmptyDB 覆盖"库是空的、且没有结构标记"的情形
func TestMigrateAllBuildsSchemaOnEmptyDB(t *testing.T) {
	setupFreshDB(t)

	if !SchemaInitNeeded(testVersion) {
		t.Fatal("空库没有任何标记，应当判定为需要迁移")
	}
	if _, err := MigrateAll(testVersion); err != nil {
		t.Fatalf("MigrateAll 失败: %v", err)
	}

	tables := map[string][]string{
		"iptv_admin":         {"id", "username", "password_hash"},
		"iptv_users":         {"device_id", "expire_time", "meal_id", "id_change", "author_time", "last_time"},
		"iptv_category":      {"auto_rename", "source_id", "raw_count"},
		"iptv_category_list": {"auto_rename", "auto_group", "ku9", "auto_category", "latest_time", "dedup"},
		"iptv_channels":      {"category_id", "epg_id", "source_id", "sort", "status"},
		"iptv_epg":           {"from_list", "cas"},
		"iptv_epg_list":      {"last_time"},
		"iptv_meals":         {"name", "content", "status"},
	}
	for table, cols := range tables {
		for _, c := range cols {
			mustHaveColumn(t, table, c)
		}
	}
	mustNotHaveColumn(t, "iptv_category", "url")
	mustNotHaveColumn(t, "iptv_channels", "category")

	if SchemaInitNeeded(testVersion) {
		t.Error("迁移成功后应当写下结构标记")
	}
}
