.class public Lcom/g/a/b/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/g/a/b/b;


# static fields
.field public static final c:Lcom/g/a/b/a;

.field static final synthetic d:Z


# instance fields
.field private a:Lcom/g/a/b/a;

.field e:Z

.field f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/g/a/b/f;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/g/a/b/f;->d:Z

    new-instance v0, Lcom/g/a/b/i;

    invoke-direct {v0}, Lcom/g/a/b/i;-><init>()V

    sput-object v0, Lcom/g/a/b/f;->c:Lcom/g/a/b/a;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Lcom/g/a/b/a;)Lcom/g/a/b/b;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/g/a/b/f;->b(Lcom/g/a/b/a;)Lcom/g/a/b/f;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .locals 0

    return-void
.end method

.method public b(Lcom/g/a/b/a;)Lcom/g/a/b/f;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/g/a/b/f;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/g/a/b/f;->a:Lcom/g/a/b/a;

    :cond_0
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b()Z
    .locals 3

    const/4 v0, 0x1

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/g/a/b/f;->e:Z

    if-eqz v1, :cond_0

    monitor-exit p0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-boolean v1, p0, Lcom/g/a/b/f;->f:Z

    if-eqz v1, :cond_1

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/g/a/b/f;->f:Z

    iget-object v1, p0, Lcom/g/a/b/f;->a:Lcom/g/a/b/a;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/g/a/b/f;->a:Lcom/g/a/b/a;

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/g/a/b/a;->b()Z

    :cond_2
    invoke-virtual {p0}, Lcom/g/a/b/f;->a()V

    invoke-virtual {p0}, Lcom/g/a/b/f;->c()V

    goto :goto_0
.end method

.method protected c()V
    .locals 0

    return-void
.end method

.method public d()Z
    .locals 2

    const/4 v0, 0x1

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/g/a/b/f;->f:Z

    if-eqz v1, :cond_0

    monitor-exit p0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-boolean v1, p0, Lcom/g/a/b/f;->e:Z

    if-eqz v1, :cond_2

    sget-boolean v1, Lcom/g/a/b/f;->d:Z

    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit p0

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/g/a/b/f;->e:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/g/a/b/f;->a:Lcom/g/a/b/a;

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0}, Lcom/g/a/b/f;->c()V

    goto :goto_0
.end method

.method public isCancelled()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/g/a/b/f;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/g/a/b/f;->a:Lcom/g/a/b/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/g/a/b/f;->a:Lcom/g/a/b/a;

    invoke-interface {v0}, Lcom/g/a/b/a;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDone()Z
    .locals 1

    iget-boolean v0, p0, Lcom/g/a/b/f;->e:Z

    return v0
.end method
