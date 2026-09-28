package dao

import (
	"database/sql"
	"errors"
	"fmt"
	"log"
	"os"
)

// 结构标记 —— 决定"这次启动要不要跑迁移"

// schemaRevision 是「迁移清单」的版本号。
const schemaRevision = 2

// metaTable 存放基础设施状态。它不是业务表，没有对应的 models 结构体，
// 用纯 SQL 建 —— 不值得为了它再养一个模型，也要避免它被当成业务表读走。
const metaTable = "iptv_meta"

// schemaMarkerKey 是 iptv_meta 里存结构标记的那一行。
const schemaMarkerKey = "schema_marker"

// SchemaMarker 返回"当前二进制期望的库结构"标识。
func SchemaMarker(version string) string {
	return fmt.Sprintf("%s|r%d", version, schemaRevision)
}

// ensureMetaTable 建 iptv_meta（已存在则什么都不做）。
func ensureMetaTable() error {
	return DB.Exec(`CREATE TABLE IF NOT EXISTS "` + metaTable + `" (
		"key"   TEXT PRIMARY KEY NOT NULL,
		"value" TEXT NOT NULL
	)`).Error
}

// ReadSchemaMarker 读结构标记；第二个返回值为 false 表示标记还不存在。
func ReadSchemaMarker() (string, bool, error) {
	if err := ensureMetaTable(); err != nil {
		return "", false, err
	}

	var value string
	row := DB.Raw(`SELECT "value" FROM "`+metaTable+`" WHERE "key" = ?`, schemaMarkerKey).Row()
	if err := row.Scan(&value); err != nil {
		if errors.Is(err, sql.ErrNoRows) {
			return "", false, nil
		}
		return "", false, err
	}
	return value, true, nil
}

// WriteSchemaMarker 记录"当前期望的库结构已经就位"。
func WriteSchemaMarker(version string) error {
	if err := ensureMetaTable(); err != nil {
		return err
	}
	return DB.Exec(
		`INSERT INTO "`+metaTable+`" ("key", "value") VALUES (?, ?)
		 ON CONFLICT("key") DO UPDATE SET "value" = excluded."value"`,
		schemaMarkerKey, SchemaMarker(version),
	).Error
}

// SchemaInitNeeded 判断这次启动要不要真的跑迁移。
func SchemaInitNeeded(version string) bool {
	if forceSchemaInit() {
		log.Printf("IPTV_FORCE_DB_INIT=true：强制重跑一次数据库迁移")
		return true
	}

	got, ok, err := ReadSchemaMarker()
	if err != nil {
		// 读不出来就当作"需要迁移"：多跑一遍幂等的迁移，好过因为读标记
		// 失败而跳过本该做的事。
		log.Printf("读取数据库结构标记失败，按需要迁移处理: %v", err)
		return true
	}
	if !ok {
		log.Printf("库里没有结构标记（标记机制上线前装的库，或从旧备份恢复），执行一次迁移")
		return true
	}

	want := SchemaMarker(version)
	if got != want {
		log.Printf("数据库结构标记 %s 与当前 %s 不一致（版本已更新），执行一次迁移", got, want)
		return true
	}
	return false
}

// forceSchemaInit 读 IPTV_FORCE_DB_INIT 排障开关。
func forceSchemaInit() bool {
	return os.Getenv("IPTV_FORCE_DB_INIT") == "true"
}
