.class public Lcom/b/a/i/d;
.super Ljava/io/InputStream;


# static fields
.field private static final a:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/b/a/i/d;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Ljava/io/InputStream;

.field private c:Ljava/io/IOException;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/b/a/i/j;->a(I)Ljava/util/Queue;

    move-result-object v0

    sput-object v0, Lcom/b/a/i/d;->a:Ljava/util/Queue;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method

.method public static a(Ljava/io/InputStream;)Lcom/b/a/i/d;
    .locals 2

    sget-object v1, Lcom/b/a/i/d;->a:Ljava/util/Queue;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/b/a/i/d;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/i/d;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    new-instance v0, Lcom/b/a/i/d;

    invoke-direct {v0}, Lcom/b/a/i/d;-><init>()V

    :cond_0
    invoke-virtual {v0, p0}, Lcom/b/a/i/d;->b(Ljava/io/InputStream;)V

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a()Ljava/io/IOException;
    .locals 1

    iget-object v0, p0, Lcom/b/a/i/d;->c:Ljava/io/IOException;

    return-object v0
.end method

.method public available()I
    .locals 1

    iget-object v0, p0, Lcom/b/a/i/d;->b:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/b/a/i/d;->c:Ljava/io/IOException;

    iput-object v0, p0, Lcom/b/a/i/d;->b:Ljava/io/InputStream;

    sget-object v1, Lcom/b/a/i/d;->a:Ljava/util/Queue;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/b/a/i/d;->a:Ljava/util/Queue;

    invoke-interface {v0, p0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method b(Ljava/io/InputStream;)V
    .locals 0

    iput-object p1, p0, Lcom/b/a/i/d;->b:Ljava/io/InputStream;

    return-void
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/b/a/i/d;->b:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public mark(I)V
    .locals 1

    iget-object v0, p0, Lcom/b/a/i/d;->b:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    return-void
.end method

.method public markSupported()Z
    .locals 1

    iget-object v0, p0, Lcom/b/a/i/d;->b:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public read()I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/b/a/i/d;->b:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    iput-object v0, p0, Lcom/b/a/i/d;->c:Ljava/io/IOException;

    const/4 v0, -0x1

    goto :goto_0
.end method

.method public read([B)I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/b/a/i/d;->b:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    iput-object v0, p0, Lcom/b/a/i/d;->c:Ljava/io/IOException;

    const/4 v0, -0x1

    goto :goto_0
.end method

.method public read([BII)I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/b/a/i/d;->b:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    iput-object v0, p0, Lcom/b/a/i/d;->c:Ljava/io/IOException;

    const/4 v0, -0x1

    goto :goto_0
.end method

.method public declared-synchronized reset()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/b/a/i/d;->b:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public skip(J)J
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/b/a/i/d;->b:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    iput-object v0, p0, Lcom/b/a/i/d;->c:Ljava/io/IOException;

    const-wide/16 v0, 0x0

    goto :goto_0
.end method
