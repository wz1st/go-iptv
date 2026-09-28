package dao

import (
	"errors"
	"fmt"
	"log"
	"strings"

	"iptv-api/models"

	"gorm.io/gorm"
)

// 数据库迁移清单 —— 唯一入口

// ────────────────────────────────────────────────────────────────────────────

// legacyShape 是"启动时这些表还是不是老样子"的采样结果。
type legacyShape struct {
	// M3：iptv_category 还有 url 列 —— 那时分组与频道源还没分家
	urlEraSources bool
	// M4：iptv_category 还有 latesttime 列 —— url 时代留下的列，要 DROP
	legacyCategoryColumns bool
	// M5：iptv_channels 还没有 sort 列 —— 排序号是后加的，需要回填
	missingChannelSort bool
	// M6：iptv_channels 还有 category 列 —— 分组名待翻译成 category_id
	channelCategoryName bool
}

// detectLegacyShape 采样老库形态。**必须在 ReconcileSchema()（M2）之前调用。**
func detectLegacyShape() legacyShape {
	return legacyShape{
		urlEraSources:         ColumnExists("iptv_category", "url"),
		legacyCategoryColumns: ColumnExists("iptv_category", "latesttime"),
		missingChannelSort:    !ColumnExists("iptv_channels", "sort"),
		channelCategoryName:   ColumnExists("iptv_channels", "category"),
	}
}

// migration 是清单里的一条。
type migration struct {
	// ID 是编号（M1..Mn），出现在日志与错误信息里，用来对上面那张表。
	ID string
	// Name 是一句话说明，出现在日志里。
	Name string
	// When 是"这条要不要跑"的判据，nil 表示每次都跑（靠自身幂等）。
	// 读的是 legacyShape，也就是**启动时**采样的结果，不受前面迁移的影响。
	When func(legacyShape) bool
	// Apply 执行迁移。第一个返回值表示"内置 EPG 被改动过，需要重抓节目单"。
	Apply func() (needRefresh bool, err error)
}

// migrationList 是迁移的执行顺序：编号顺序即执行顺序。
func migrationList() []migration {
	return []migration{
		{ID: "M1", Name: "列名统一", Apply: applyRenameLegacyColumns},
		{ID: "M2", Name: "按模型补齐表结构", Apply: applyReconcileSchema},

		{ID: "M3", Name: "迁移 url 时代的频道源",
			When:  func(s legacyShape) bool { return s.urlEraSources },
			Apply: applyMigrateUrlEraSources},
		{ID: "M4", Name: "删除分组表残留列",
			When:  func(s legacyShape) bool { return s.legacyCategoryColumns },
			Apply: applyDropLegacyCategoryColumns},
		{ID: "M5", Name: "回填频道排序号",
			When:  func(s legacyShape) bool { return s.missingChannelSort },
			Apply: applyBackfillChannelSort},
		{ID: "M6", Name: "频道分组名翻成 category_id",
			When:  func(s legacyShape) bool { return s.channelCategoryName },
			Apply: applyResolveLegacyChannelCategory},

		{ID: "M7", Name: "清理孤儿频道", Apply: applyCleanupOrphanChannels},
		{ID: "M8", Name: "修正内置 EPG 名字", Apply: applyFixBuiltinEpgNames},
		{ID: "M9", Name: "频道源独立更新间隔（默认 2h）", Apply: applySourceInterval},
	}
}

// ────────────────────────────────────────────────────────────────────────────

// RunMigrations 按清单顺序执行全部迁移。
func RunMigrations() (needRefresh bool, err error) {
	// 采样必须早于任何"结构性"迁移（M2），理由见 legacyShape。
	legacy := detectLegacyShape()

	var errs []error
	for _, m := range migrationList() {
		if m.When != nil && !m.When(legacy) {
			continue
		}

		refresh, err := m.Apply()
		if err != nil {
			// 不提前返回：一条失败不该拦住后面互不相关的迁移。
			errs = append(errs, fmt.Errorf("%s %s: %w", m.ID, m.Name, err))
		}
		if refresh {
			needRefresh = true
		}
	}
	return needRefresh, errors.Join(errs...)
}

// MigrateAll 是启动时的唯一入口：门控 -> 跑迁移 -> 记账。
func MigrateAll(version string) (needRefresh bool, err error) {
	if !SchemaInitNeeded(version) {
		log.Printf("数据库结构已就绪（%s），跳过迁移", SchemaMarker(version))
		return false, nil
	}

	needRefresh, err = RunMigrations()
	if err != nil {
		log.Printf("数据库迁移未全部成功: %v", err)
		log.Printf("已保留重试：下次启动会重跑迁移；也可用 IPTV_FORCE_DB_INIT=true 立即重跑")
		return needRefresh, err
	}

	if err := WriteSchemaMarker(version); err != nil {
		// 只是记账失败：下次启动会重跑一遍迁移（幂等），不该因此拦住服务。
		// 仍然把 error 返回去，让调用方的日志里留下痕迹。
		return needRefresh, fmt.Errorf("记录数据库结构标记: %w", err)
	}

	log.Printf("数据库迁移完成，结构标记 = %s", SchemaMarker(version))
	return needRefresh, nil
}

// ────────────────────────────────────────────────────────────────────────────

// 老列名（deviceid / c_id / e_id / lasttime …）-> 当前命名。规则表与实现都在
func applyRenameLegacyColumns() (bool, error) {
	return false, RenameLegacyColumns()
}

// ────────────────────────────────────────────────────────────────────────────

// applyReconcileSchema 缺表建表、缺列补列。
func applyReconcileSchema() (bool, error) {
	return false, ReconcileSchema()
}

// schemaModels 是迁移要保证存在的全部模型。
func schemaModels() []interface{} {
	return []interface{}{
		&models.IptvAdmin{},
		&models.IptvUser{},
		&models.IptvCategory{},
		&models.IptvCategoryList{},
		&models.IptvChannel{},
		&models.IptvEpg{},
		&models.IptvEpgList{},
		&models.IptvMeals{},
	}
}

// ReconcileSchema 让表结构与模型一致：缺表建表、缺列补列。幂等。
func ReconcileSchema() error {
	var errs []error
	for _, m := range schemaModels() {
		if err := DB.AutoMigrate(m); err != nil {
			errs = append(errs, fmt.Errorf("建表/补列 %T: %w", m, err))
		}
	}
	return errors.Join(errs...)
}

// ────────────────────────────────────────────────────────────────────────────

// 把 url 时代的"频道源行"搬进 iptv_category_list。
func applyMigrateUrlEraSources() (bool, error) {
	const insertSQL = `
INSERT OR IGNORE INTO "iptv_category_list"
    (name, enable, url, ua, auto_rename, auto_group, ku9, auto_category, latest_time, dedup)
SELECT name, enable, url, ua, 0, 0, 0, autocategory, NULL, repeat
FROM "iptv_category"
WHERE url != ''`

	res := DB.Exec(insertSQL)
	if res.Error != nil {
		// 这条失败不清理原表：宁可下次启动重试，也不要在数据没搬走时先删。
		return false, fmt.Errorf("迁移 url 时代的频道源: %w", res.Error)
	}

	// 无论实际插入了几行都要清理老行：与 iptv_category_list 里已有源重名时，
	if err := DB.Exec(`DELETE FROM "iptv_category" WHERE url != ''`).Error; err != nil {
		return false, fmt.Errorf("清理 url 时代的 iptv_category 行: %w", err)
	}
	log.Printf("M3 已从 url 时代的 iptv_category 迁移 %d 个频道源到 iptv_category_list", res.RowsAffected)
	return false, nil
}

// ────────────────────────────────────────────────────────────────────────────

// 删掉 iptv_category 上 url 时代的残留列。
func applyDropLegacyCategoryColumns() (bool, error) {
	var errs []error
	for _, col := range []string{"url", "latesttime", "autocategory", "repeat"} {
		// 只删确实存在的列：DROP COLUMN 在列不存在时直接报错，而本函数的触发
		// 条件只是"还有 latesttime"，并不保证另外三列都在。
		if !ColumnExists("iptv_category", col) {
			continue
		}
		stmt := `ALTER TABLE "iptv_category" DROP COLUMN "` + col + `"`
		if err := DB.Exec(stmt).Error; err != nil {
			errs = append(errs, fmt.Errorf("删除 iptv_category.%s: %w", col, err))
		}
	}
	return false, errors.Join(errs...)
}

// ────────────────────────────────────────────────────────────────────────────

// 给老库的频道回填排序号：老库没有这一列，用 id 当初始顺序，至少保证列表顺序稳定。
func applyBackfillChannelSort() (bool, error) {
	err := DB.Transaction(func(tx *gorm.DB) error {
		var channels []models.IptvChannel
		if err := tx.Model(&models.IptvChannel{}).Order("id").Find(&channels).Error; err != nil {
			return err
		}
		for _, ch := range channels {
			if err := tx.Model(&models.IptvChannel{}).
				Where("id = ?", ch.ID).Update("sort", ch.ID).Error; err != nil {
				return err
			}
		}
		return nil
	})
	if err != nil {
		return false, fmt.Errorf("回填频道 sort（已整体回滚）: %w", err)
	}
	return false, nil
}

// ────────────────────────────────────────────────────────────────────────────

// 把频道上残留的分组名翻成 category_id。
func applyResolveLegacyChannelCategory() (bool, error) {
	var errs []error

	var names []string
	err := DB.Raw(`SELECT DISTINCT "category" FROM "iptv_channels"
		WHERE "category" IS NOT NULL AND "category" != ''`).Scan(&names).Error
	if err != nil {
		return false, fmt.Errorf("读取 iptv_channels.category: %w", err)
	}

	var categories []models.IptvCategory
	if err := DB.Model(&models.IptvCategory{}).Find(&categories).Error; err != nil {
		return false, fmt.Errorf("读取 iptv_category: %w", err)
	}
	byName := make(map[string]models.IptvCategory, len(categories))
	for _, ca := range categories {
		byName[ca.Name] = ca
	}

	for _, name := range names {
		ca, ok := byName[name]
		if !ok {
			continue
		}
		err := DB.Model(&models.IptvChannel{}).Where("category = ?", name).
			Updates(map[string]interface{}{
				"category_id": ca.ID,
				"source_id":   ca.SourceID,
				"status":      true,
			}).Error
		if err != nil {
			errs = append(errs, fmt.Errorf("回填频道所属分组 %s: %w", name, err))
		}
	}

	if err := DB.Exec(`ALTER TABLE "iptv_channels" DROP COLUMN "category"`).Error; err != nil {
		errs = append(errs, fmt.Errorf("删除 iptv_channels.category: %w", err))
	}
	// 自动分类失败时会留下 rules 为空的分组，没有任何规则也就永远不会产出频道。
	if err := DB.Model(&models.IptvCategory{}).
		Delete(&models.IptvCategory{}, "type = ? and rules = ''", "auto").Error; err != nil {
		errs = append(errs, fmt.Errorf("清理空的自动分组: %w", err))
	}
	return false, errors.Join(errs...)
}

// ────────────────────────────────────────────────────────────────────────────

// 清掉归不到任何分组的孤儿频道（category_id 为 0）。
func applyCleanupOrphanChannels() (bool, error) {
	err := DB.Model(&models.IptvChannel{}).
		Delete(&models.IptvChannel{}, "category_id = 0").Error
	if err != nil {
		return false, fmt.Errorf("清理 category_id 为 0 的频道: %w", err)
	}
	return false, nil
}

// ────────────────────────────────────────────────────────────────────────────

// 处理内置 EPG 种子的两次改名，并决定是否需要重新抓一次节目单。
func applyFixBuiltinEpgNames() (bool, error) {
	var epgs []models.IptvEpg
	if err := DB.Model(&models.IptvEpg{}).Find(&epgs).Error; err != nil {
		return false, fmt.Errorf("读取 iptv_epg: %w", err)
	}

	needRefresh := false
	var errs []error
	for _, epg := range epgs {
		parts := strings.SplitN(epg.Name, "-", 2)
		if len(parts) < 2 {
			continue
		}
		prefix, rest := parts[0], parts[1]

		if epg.ID <= 18 {
			epg.Name = rest
			epg.FromList = "0"
			needRefresh = true
			if err := DB.Save(&epg).Error; err != nil {
				errs = append(errs, fmt.Errorf("修正内置 EPG %d: %w", epg.ID, err))
			}
			continue
		}

		if prefix == "CCTV" {
			continue
		}
		needRefresh = true
		if err := DB.Delete(&epg).Error; err != nil {
			errs = append(errs, fmt.Errorf("删除不成形的 EPG %d(%s): %w", epg.ID, epg.Name, err))
		}
	}

	return needRefresh, errors.Join(errs...)
}

// ────────────────────────────────────────────────────────────────────────────

// 给存量频道源补默认更新间隔。
func applySourceInterval() (bool, error) {
	res := DB.Model(&models.IptvCategoryList{}).
		Where("interval = 0 OR interval IS NULL").
		Update("interval", 7200)
	if res.Error != nil {
		return false, fmt.Errorf("回填频道源更新间隔: %w", res.Error)
	}
	if res.RowsAffected > 0 {
		log.Printf("M9 已为 %d 个频道源补默认更新间隔 7200（2h）", res.RowsAffected)
	}
	return false, nil
}
