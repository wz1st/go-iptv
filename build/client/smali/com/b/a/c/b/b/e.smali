.class public Lcom/b/a/c/b/b/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/b/a/c/b/b/a;


# instance fields
.field private final a:Lcom/b/a/c/b/b/j;

.field private final b:Ljava/io/File;

.field private final c:J

.field private final d:Lcom/b/a/c/b/b/c;

.field private e:Lcom/b/a/a/a;


# direct methods
.method protected constructor <init>(Ljava/io/File;J)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/b/a/c/b/b/c;

    invoke-direct {v0}, Lcom/b/a/c/b/b/c;-><init>()V

    iput-object v0, p0, Lcom/b/a/c/b/b/e;->d:Lcom/b/a/c/b/b/c;

    iput-object p1, p0, Lcom/b/a/c/b/b/e;->b:Ljava/io/File;

    iput-wide p2, p0, Lcom/b/a/c/b/b/e;->c:J

    new-instance v0, Lcom/b/a/c/b/b/j;

    invoke-direct {v0}, Lcom/b/a/c/b/b/j;-><init>()V

    iput-object v0, p0, Lcom/b/a/c/b/b/e;->a:Lcom/b/a/c/b/b/j;

    return-void
.end method

.method private declared-synchronized a()Lcom/b/a/a/a;
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/b/a/c/b/b/e;->e:Lcom/b/a/a/a;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/b/a/c/b/b/e;->b:Ljava/io/File;

    const/4 v1, 0x1

    const/4 v2, 0x1

    iget-wide v4, p0, Lcom/b/a/c/b/b/e;->c:J

    invoke-static {v0, v1, v2, v4, v5}, Lcom/b/a/a/a;->a(Ljava/io/File;IIJ)Lcom/b/a/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/c/b/b/e;->e:Lcom/b/a/a/a;

    :cond_0
    iget-object v0, p0, Lcom/b/a/c/b/b/e;->e:Lcom/b/a/a/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static a(Ljava/io/File;J)Lcom/b/a/c/b/b/a;
    .locals 1

    new-instance v0, Lcom/b/a/c/b/b/e;

    invoke-direct {v0, p0, p1, p2}, Lcom/b/a/c/b/b/e;-><init>(Ljava/io/File;J)V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/b/a/c/h;)Ljava/io/File;
    .locals 4

    iget-object v0, p0, Lcom/b/a/c/b/b/e;->a:Lcom/b/a/c/b/b/j;

    invoke-virtual {v0, p1}, Lcom/b/a/c/b/b/j;->a(Lcom/b/a/c/h;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "DiskLruCacheWrapper"

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DiskLruCacheWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Get: Obtained: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for for Key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/b/a/c/b/b/e;->a()Lcom/b/a/a/a;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/b/a/a/a;->a(Ljava/lang/String;)Lcom/b/a/a/a$d;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/b/a/a/a$d;->a(I)Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "DiskLruCacheWrapper"

    const/4 v3, 0x5

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "DiskLruCacheWrapper"

    const-string v3, "Unable to get from disk cache"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public a(Lcom/b/a/c/h;Lcom/b/a/c/b/b/a$b;)V
    .locals 4

    iget-object v0, p0, Lcom/b/a/c/b/b/e;->a:Lcom/b/a/c/b/b/j;

    invoke-virtual {v0, p1}, Lcom/b/a/c/b/b/j;->a(Lcom/b/a/c/h;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/b/a/c/b/b/e;->d:Lcom/b/a/c/b/b/c;

    invoke-virtual {v0, v1}, Lcom/b/a/c/b/b/c;->a(Ljava/lang/String;)V

    :try_start_0
    const-string v0, "DiskLruCacheWrapper"

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DiskLruCacheWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Put: Obtained: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for for Key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/b/a/c/b/b/e;->a()Lcom/b/a/a/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/b/a/a/a;->a(Ljava/lang/String;)Lcom/b/a/a/a$d;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/b/a/c/b/b/e;->d:Lcom/b/a/c/b/b/c;

    invoke-virtual {v0, v1}, Lcom/b/a/c/b/b/c;->b(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    :try_start_2
    invoke-virtual {v0, v1}, Lcom/b/a/a/a;->b(Ljava/lang/String;)Lcom/b/a/a/a$b;

    move-result-object v2

    if-nez v2, :cond_3

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Had two simultaneous puts for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_0
    move-exception v0

    :try_start_3
    const-string v2, "DiskLruCacheWrapper"

    const/4 v3, 0x5

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "DiskLruCacheWrapper"

    const-string v3, "Unable to put to disk cache"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/b/a/c/b/b/e;->d:Lcom/b/a/c/b/b/c;

    invoke-virtual {v0, v1}, Lcom/b/a/c/b/b/c;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :try_start_4
    invoke-virtual {v2, v0}, Lcom/b/a/a/a$b;->a(I)Ljava/io/File;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/b/a/c/b/b/a$b;->a(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v2}, Lcom/b/a/a/a$b;->a()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_4
    :try_start_5
    invoke-virtual {v2}, Lcom/b/a/a/a$b;->c()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/b/a/c/b/b/e;->d:Lcom/b/a/c/b/b/c;

    invoke-virtual {v2, v1}, Lcom/b/a/c/b/b/c;->b(Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    :try_start_6
    invoke-virtual {v2}, Lcom/b/a/a/a$b;->c()V

    throw v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method
