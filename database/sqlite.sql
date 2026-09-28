PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE iptv_admin (
    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    username TEXT NOT NULL,
    password_hash TEXT NOT NULL
);

CREATE TABLE iptv_category (
    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    name TEXT NOT NULL UNIQUE,
    enable INTEGER NOT NULL DEFAULT 1,
    type TEXT NOT NULL DEFAULT 'user',
    proxy INTEGER NOT NULL DEFAULT 0,
    ua TEXT,
    ku9 TEXT,
    sort INTEGER,
    rules TEXT,
    auto_rename INTEGER DEFAULT 1,
    source_id INTEGER DEFAULT 0,
    raw_count INTEGER DEFAULT 0
);

CREATE TABLE iptv_category_list (
    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    name TEXT NOT NULL UNIQUE,
    enable INTEGER NOT NULL DEFAULT 1,
    url TEXT DEFAULT NULL,
    ua TEXT,
    auto_rename INTEGER DEFAULT 1,
    auto_group INTEGER DEFAULT 0,
    ku9 INTEGER DEFAULT 0,
    auto_category INTEGER DEFAULT 0,
    latest_time TEXT DEFAULT NULL,
    dedup INTEGER DEFAULT 0
);

CREATE TABLE iptv_channels (
    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    name TEXT NOT NULL,
    url TEXT DEFAULT NULL,
    sort INTEGER,
    resolution TEXT,
    res_time INTEGER,
    speed TEXT,
    status INTEGER NOT NULL DEFAULT 1,
    epg_id INTEGER DEFAULT 0,
    category_id INTEGER DEFAULT 0,
    source_id INTEGER DEFAULT 0
);

CREATE TABLE iptv_epg_list (
    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    name TEXT NOT NULL,
    url TEXT DEFAULT NULL,
    status INTEGER NOT NULL DEFAULT 1,
    ua TEXT,
    last_time BIGINT NOT NULL,
    remarks TEXT DEFAULT NULL
);
INSERT INTO iptv_epg_list VALUES(1,'51zmt','http://epg.51zmt.top:8000/e.xml',1,'',0,'51zmt');

CREATE TABLE iptv_epg (
    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    name TEXT NOT NULL,
    content TEXT DEFAULT NULL,
    from_list TEXT,
    cas TEXT,
    status INTEGER NOT NULL DEFAULT 1,
    remarks TEXT DEFAULT NULL
);
INSERT INTO iptv_epg VALUES(1,'CCTV1','CCTV1','0','',1,'CCTV1|CCTV-1');
INSERT INTO iptv_epg VALUES(2,'CCTV2','CCTV2','0','',1,'CCTV2|CCTV-2');
INSERT INTO iptv_epg VALUES(3,'CCTV3','CCTV3','0','',1,'CCTV3|CCTV-3');
INSERT INTO iptv_epg VALUES(4,'CCTV4','CCTV4','0','',1,'CCTV4|CCTV-4');
INSERT INTO iptv_epg VALUES(5,'CCTV5','CCTV5','0','',1,'CCTV5|CCTV-5');
INSERT INTO iptv_epg VALUES(6,'CCTV5+','CCTV5+','0','',1,'CCTV5+|CCTV-5+');
INSERT INTO iptv_epg VALUES(7,'CCTV6','CCTV6','0','',1,'CCTV6|CCTV-6');
INSERT INTO iptv_epg VALUES(8,'CCTV7','CCTV7','0','',1,'CCTV7|CCTV-7');
INSERT INTO iptv_epg VALUES(9,'CCTV8','CCTV8','0','',1,'CCTV8|CCTV-8');
INSERT INTO iptv_epg VALUES(10,'CCTV9','CCTV9','0','',1,'CCTV9|CCTV-9');
INSERT INTO iptv_epg VALUES(11,'CCTV10','CCTV10','0','',1,'CCTV10|CCTV-10');
INSERT INTO iptv_epg VALUES(12,'CCTV11','CCTV11','0','',1,'CCTV11|CCTV-11');
INSERT INTO iptv_epg VALUES(13,'CCTV12','CCTV12','0','',1,'CCTV12|CCTV-12');
INSERT INTO iptv_epg VALUES(14,'CCTV13','CCTV13','0','',1,'CCTV13|CCTV-13');
INSERT INTO iptv_epg VALUES(15,'CCTV14','CCTV14','0','',1,'CCTV14|CCTV-14');
INSERT INTO iptv_epg VALUES(16,'CCTV15','CCTV15','0','',1,'CCTV15|CCTV-15');
INSERT INTO iptv_epg VALUES(17,'CCTV16','CCTV16','0','',1,'CCTV16|CCTV-16');
INSERT INTO iptv_epg VALUES(18,'CCTV17','CCTV17','0','',1,'CCTV17|CCTV-17');

CREATE TABLE iptv_meals (
    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    name TEXT NOT NULL,
    content TEXT DEFAULT NULL,
    status INTEGER NOT NULL DEFAULT 1
);
INSERT INTO iptv_meals VALUES(1000,'默认套餐','',1);
INSERT INTO iptv_meals VALUES(1001,'卧室套餐','',1);
CREATE TABLE iptv_users (
    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    name BIGINT NOT NULL,
    mac TEXT NOT NULL,
    device_id TEXT NOT NULL,
    model TEXT NOT NULL,
    ip TEXT NOT NULL,
    region TEXT DEFAULT NULL,
    expire_time BIGINT NOT NULL,
    vpn INTEGER NOT NULL DEFAULT 0,
    id_change INTEGER NOT NULL DEFAULT 0,
    author TEXT DEFAULT NULL,
    author_time BIGINT NOT NULL DEFAULT 0,
    status INTEGER NOT NULL DEFAULT -1,
    last_time BIGINT NOT NULL,
    marks TEXT DEFAULT NULL,
    meal_id INTEGER NOT NULL DEFAULT 1000
);

CREATE TABLE short_url (
    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    token TEXT NOT NULL,
    key TEXT NOT NULL
);

-- iptv_movie：点播数据源表。
-- 管理端的「点播管理」模块已移除（不再有建表/读写它的 Go 代码），
-- 但这里刻意保留建表语句：已部署的实例卷里可能还有历史数据，
-- 删表属于不可逆的数据销毁，不应由一次功能下线来触发。
-- 新装实例会建出一张永远为空的表，代价可忽略。
CREATE TABLE IF NOT EXISTS "iptv_movie"  (id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,`name` text,api TEXT DEFAULT NULL,`state` integer);
COMMIT;
