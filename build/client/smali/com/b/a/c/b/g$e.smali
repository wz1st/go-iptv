.class Lcom/b/a/c/b/g$e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/c/b/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b(Z)Z
    .locals 1

    iget-boolean v0, p0, Lcom/b/a/c/b/g$e;->c:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/b/a/c/b/g$e;->b:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/b/a/c/b/g$e;->a:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method declared-synchronized a()Z
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/b/a/c/b/g$e;->b:Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/b/a/c/b/g$e;->b(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(Z)Z
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/b/a/c/b/g$e;->a:Z

    invoke-direct {p0, p1}, Lcom/b/a/c/b/g$e;->b(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized b()Z
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/b/a/c/b/g$e;->c:Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/b/a/c/b/g$e;->b(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized c()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/b/a/c/b/g$e;->b:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/b/a/c/b/g$e;->a:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/b/a/c/b/g$e;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
