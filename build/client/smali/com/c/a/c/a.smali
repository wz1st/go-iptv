.class Lcom/c/a/c/a;
.super Landroid/database/sqlite/SQLiteOpenHelper;

# interfaces
.implements Lcom/c/a/c/b;


# static fields
.field private static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "url"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "length"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "mime"

    aput-object v2, v0, v1

    sput-object v0, Lcom/c/a/c/a;->a:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "AndroidVideoCache.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    invoke-static {p1}, Lcom/c/a/l;->a(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private a(Lcom/c/a/r;)Landroid/content/ContentValues;
    .locals 4

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "url"

    iget-object v2, p1, Lcom/c/a/r;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "length"

    iget-wide v2, p1, Lcom/c/a/r;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "mime"

    iget-object v2, p1, Lcom/c/a/r;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private a(Landroid/database/Cursor;)Lcom/c/a/r;
    .locals 5

    new-instance v0, Lcom/c/a/r;

    const-string v1, "url"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "length"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-string v4, "mime"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/c/a/r;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/c/a/r;
    .locals 9

    const/4 v8, 0x0

    invoke-static {p1}, Lcom/c/a/l;->a(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    invoke-virtual {p0}, Lcom/c/a/c/a;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "SourceInfo"

    sget-object v2, Lcom/c/a/c/a;->a:[Ljava/lang/String;

    const-string v3, "url=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    move-object v0, v8

    :goto_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v0

    :cond_2
    :try_start_2
    invoke-direct {p0, v1}, Lcom/c/a/c/a;->a(Landroid/database/Cursor;)Lcom/c/a/r;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_1
    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    :catchall_1
    move-exception v0

    move-object v8, v1

    goto :goto_1
.end method

.method public a(Ljava/lang/String;Lcom/c/a/r;)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    aput-object p2, v0, v1

    invoke-static {v0}, Lcom/c/a/l;->a([Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/c/a/c/a;->a(Ljava/lang/String;)Lcom/c/a/r;

    move-result-object v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {p0, p2}, Lcom/c/a/c/a;->a(Lcom/c/a/r;)Landroid/content/ContentValues;

    move-result-object v3

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/c/a/c/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v4, "SourceInfo"

    const-string v5, "url=?"

    new-array v1, v1, [Ljava/lang/String;

    aput-object p1, v1, v2

    invoke-virtual {v0, v4, v3, v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/c/a/c/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "SourceInfo"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_1
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    invoke-static {p1}, Lcom/c/a/l;->a(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "CREATE TABLE SourceInfo (_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,url TEXT NOT NULL,mime TEXT,length INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Should not be called. There is no any migration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
