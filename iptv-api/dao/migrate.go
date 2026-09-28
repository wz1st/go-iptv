package dao

import (
	"errors"
	"fmt"
	"log"
)

// M1 · 列名迁移：历史列名 → 当前命名

// legacyColumnRenames 是迁移表。顺序无关（各列互相独立），但分组顺序与
// models 包的文件顺序一致，便于对照。
var legacyColumnRenames = []struct {
	Table string
	Old   string
	New   string
}{
	// iptv_users
	{"iptv_users", "deviceid", "device_id"},
	{"iptv_users", "idchange", "id_change"},
	{"iptv_users", "authortime", "author_time"},
	{"iptv_users", "lasttime", "last_time"},
	{"iptv_users", "exp", "expire_time"},
	{"iptv_users", "meal", "meal_id"},
	// iptv_category
	{"iptv_category", "rename", "auto_rename"},
	{"iptv_category", "list_id", "source_id"},
	{"iptv_category", "rawcount", "raw_count"},
	// iptv_category_list
	{"iptv_category_list", "rename", "auto_rename"},
	{"iptv_category_list", "latesttime", "latest_time"},
	{"iptv_category_list", "autocategory", "auto_category"},
	{"iptv_category_list", "autogroup", "auto_group"},
	{"iptv_category_list", "repeat", "dedup"},
	// iptv_channels
	{"iptv_channels", "c_id", "category_id"},
	{"iptv_channels", "e_id", "epg_id"},
	{"iptv_channels", "list_id", "source_id"},
	// iptv_epg
	{"iptv_epg", "fromlist", "from_list"},
	// iptv_epg_list
	{"iptv_epg_list", "lasttime", "last_time"},
	// iptv_admin —— 存的是 md5 摘要，列名不再叫 password
	{"iptv_admin", "password", "password_hash"},
}

// RenameLegacyColumns 执行列名迁移。幂等，可重复调用。
func RenameLegacyColumns() error {
	renamed := 0
	var errs []error
	for _, r := range legacyColumnRenames {
		ok, err := migrateOneColumn(r.Table, r.Old, r.New)
		if err != nil {
			errs = append(errs, fmt.Errorf("%s.%s -> %s: %w", r.Table, r.Old, r.New, err))
		}
		if ok {
			renamed++
		}
	}
	if renamed > 0 {
		log.Printf("数据库列名迁移完成：本轮改名 %d 列（共 %d 条规则）", renamed, len(legacyColumnRenames))
	}
	return errors.Join(errs...)
}

// migrateOneColumn 改一列；返回是否真的改了。
func migrateOneColumn(table, oldCol, newCol string) (bool, error) {
	cols := tableColumns(table)
	if cols == nil {
		// 表还不存在（全新安装）——AutoMigrate 会按新模型建表，无需改名
		return false, nil
	}
	if !cols[oldCol] {
		return false, nil
	}
	if cols[newCol] {
		// 新老列同时存在：不猜、不动。
		log.Printf("⚠️  %s 同时存在新老列 %q / %q，跳过改名：老列里的数据不会自动合并，请人工确认",
			table, oldCol, newCol)
		return false, nil
	}

	stmt := `ALTER TABLE "` + table + `" RENAME COLUMN "` + oldCol + `" TO "` + newCol + `"`
	if err := DB.Exec(stmt).Error; err != nil {
		// 改名失败不能静默：继续跑下去就是"数据消失"。
		log.Printf("❌ 列改名失败 %s: %s -> %s : %v", table, oldCol, newCol, err)
		return false, err
	}
	log.Printf("列改名 %s: %s -> %s", table, oldCol, newCol)
	return true, nil
}

// ColumnExists 报告某张表当前是否存在某一列；表不存在时返回 false。
func ColumnExists(table, column string) bool {
	cols := tableColumns(table)
	if cols == nil {
		return false
	}
	return cols[column]
}

// tableColumns 返回表的列名集合；表不存在时返回 nil。
func tableColumns(table string) map[string]bool {
	rows, err := DB.Raw(`PRAGMA table_info("` + table + `")`).Rows()
	if err != nil {
		return nil
	}
	defer rows.Close()

	cols := map[string]bool{}
	for rows.Next() {
		var (
			cid        int
			name       string
			ctype      string
			notNull    int
			dfltValue  interface{}
			primaryKey int
		)
		if err := rows.Scan(&cid, &name, &ctype, &notNull, &dfltValue, &primaryKey); err != nil {
			return nil
		}
		cols[name] = true
	}
	if len(cols) == 0 {
		return nil
	}
	return cols
}
