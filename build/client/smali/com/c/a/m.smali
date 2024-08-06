.class Lcom/c/a/m;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/c/a/m$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/c/a/q;

.field private final b:Lcom/c/a/a;

.field private final c:Ljava/lang/Object;

.field private final d:Ljava/lang/Object;

.field private final e:Ljava/util/concurrent/atomic/AtomicInteger;

.field private volatile f:Ljava/lang/Thread;

.field private volatile g:Z

.field private volatile h:I


# direct methods
.method public constructor <init>(Lcom/c/a/q;Lcom/c/a/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/c/a/m;->c:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/c/a/m;->d:Ljava/lang/Object;

    const/4 v0, -0x1

    iput v0, p0, Lcom/c/a/m;->h:I

    invoke-static {p1}, Lcom/c/a/l;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/a/q;

    iput-object v0, p0, Lcom/c/a/m;->a:Lcom/c/a/q;

    invoke-static {p2}, Lcom/c/a/l;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/a/a;

    iput-object v0, p0, Lcom/c/a/m;->b:Lcom/c/a/a;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/c/a/m;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method static synthetic a(Lcom/c/a/m;)V
    .locals 0

    invoke-direct {p0}, Lcom/c/a/m;->e()V

    return-void
.end method

.method private b()V
    .locals 4

    iget-object v0, p0, Lcom/c/a/m;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    iget-object v1, p0, Lcom/c/a/m;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    new-instance v1, Lcom/c/a/n;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error reading source "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " times"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/c/a/n;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return-void
.end method

.method private b(JJ)V
    .locals 3

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/c/a/m;->a(JJ)V

    iget-object v1, p0, Lcom/c/a/m;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/c/a/m;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private declared-synchronized c()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/c/a/m;->f:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/c/a/m;->f:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-boolean v1, p0, Lcom/c/a/m;->g:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/c/a/m;->b:Lcom/c/a/a;

    invoke-interface {v1}, Lcom/c/a/a;->d()Z

    move-result v1

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/c/a/m$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/c/a/m$a;-><init>(Lcom/c/a/m;Lcom/c/a/m$1;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Source reader for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/c/a/m;->a:Lcom/c/a/q;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/c/a/m;->f:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/c/a/m;->f:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private d()V
    .locals 4

    iget-object v1, p0, Lcom/c/a/m;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/c/a/m;->c:Ljava/lang/Object;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    new-instance v2, Lcom/c/a/n;

    const-string v3, "Waiting source data is interrupted!"

    invoke-direct {v2, v3, v0}, Lcom/c/a/n;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private e()V
    .locals 8

    const-wide/16 v4, -0x1

    const-wide/16 v2, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/c/a/m;->b:Lcom/c/a/a;

    invoke-interface {v0}, Lcom/c/a/a;->a()J

    move-result-wide v2

    iget-object v0, p0, Lcom/c/a/m;->a:Lcom/c/a/q;

    invoke-interface {v0, v2, v3}, Lcom/c/a/q;->a(J)V

    iget-object v0, p0, Lcom/c/a/m;->a:Lcom/c/a/q;

    invoke-interface {v0}, Lcom/c/a/q;->a()J

    move-result-wide v4

    const/16 v0, 0x2000

    new-array v0, v0, [B

    :goto_0
    iget-object v1, p0, Lcom/c/a/m;->a:Lcom/c/a/q;

    invoke-interface {v1, v0}, Lcom/c/a/q;->a([B)I

    move-result v1

    const/4 v6, -0x1

    if-eq v1, v6, :cond_1

    iget-object v6, p0, Lcom/c/a/m;->d:Ljava/lang/Object;

    monitor-enter v6
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-direct {p0}, Lcom/c/a/m;->h()Z

    move-result v7

    if-eqz v7, :cond_0

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0}, Lcom/c/a/m;->i()V

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/c/a/m;->b(JJ)V

    :goto_1
    return-void

    :cond_0
    :try_start_2
    iget-object v7, p0, Lcom/c/a/m;->b:Lcom/c/a/a;

    invoke-interface {v7, v0, v1}, Lcom/c/a/a;->a([BI)V

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    int-to-long v6, v1

    add-long/2addr v2, v6

    :try_start_3
    invoke-direct {p0, v2, v3, v4, v5}, Lcom/c/a/m;->b(JJ)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_4
    iget-object v1, p0, Lcom/c/a/m;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    invoke-virtual {p0, v0}, Lcom/c/a/m;->a(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-direct {p0}, Lcom/c/a/m;->i()V

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/c/a/m;->b(JJ)V

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v0

    invoke-direct {p0}, Lcom/c/a/m;->i()V

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/c/a/m;->b(JJ)V

    throw v0

    :cond_1
    :try_start_7
    invoke-direct {p0}, Lcom/c/a/m;->g()V

    invoke-direct {p0}, Lcom/c/a/m;->f()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    invoke-direct {p0}, Lcom/c/a/m;->i()V

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/c/a/m;->b(JJ)V

    goto :goto_1
.end method

.method private f()V
    .locals 1

    const/16 v0, 0x64

    iput v0, p0, Lcom/c/a/m;->h:I

    iget v0, p0, Lcom/c/a/m;->h:I

    invoke-virtual {p0, v0}, Lcom/c/a/m;->a(I)V

    return-void
.end method

.method private g()V
    .locals 6

    iget-object v1, p0, Lcom/c/a/m;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Lcom/c/a/m;->h()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/c/a/m;->b:Lcom/c/a/a;

    invoke-interface {v0}, Lcom/c/a/a;->a()J

    move-result-wide v2

    iget-object v0, p0, Lcom/c/a/m;->a:Lcom/c/a/q;

    invoke-interface {v0}, Lcom/c/a/q;->a()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/c/a/m;->b:Lcom/c/a/a;

    invoke-interface {v0}, Lcom/c/a/a;->c()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private h()Z
    .locals 1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/c/a/m;->g:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private i()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/c/a/m;->a:Lcom/c/a/q;

    invoke-interface {v0}, Lcom/c/a/q;->b()V
    :try_end_0
    .catch Lcom/c/a/n; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/c/a/n;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error closing source "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/c/a/m;->a:Lcom/c/a/q;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/c/a/n;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1}, Lcom/c/a/m;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public a([BJI)I
    .locals 6

    const/16 v4, 0x64

    invoke-static {p1, p2, p3, p4}, Lcom/c/a/o;->a([BJI)V

    :goto_0
    iget-object v0, p0, Lcom/c/a/m;->b:Lcom/c/a/a;

    invoke-interface {v0}, Lcom/c/a/a;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/c/a/m;->b:Lcom/c/a/a;

    invoke-interface {v0}, Lcom/c/a/a;->a()J

    move-result-wide v0

    int-to-long v2, p4

    add-long/2addr v2, p2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-boolean v0, p0, Lcom/c/a/m;->g:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/c/a/m;->c()V

    invoke-direct {p0}, Lcom/c/a/m;->d()V

    invoke-direct {p0}, Lcom/c/a/m;->b()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/c/a/m;->b:Lcom/c/a/a;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/c/a/a;->a([BJI)I

    move-result v0

    iget-object v1, p0, Lcom/c/a/m;->b:Lcom/c/a/a;

    invoke-interface {v1}, Lcom/c/a/a;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/c/a/m;->h:I

    if-eq v1, v4, :cond_1

    iput v4, p0, Lcom/c/a/m;->h:I

    invoke-virtual {p0, v4}, Lcom/c/a/m;->a(I)V

    :cond_1
    return v0
.end method

.method public a()V
    .locals 3

    iget-object v1, p0, Lcom/c/a/m;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Shutdown proxy for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/c/a/m;->a:Lcom/c/a/q;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/c/a/k;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/c/a/m;->g:Z

    iget-object v0, p0, Lcom/c/a/m;->f:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/c/a/m;->f:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    iget-object v0, p0, Lcom/c/a/m;->b:Lcom/c/a/a;

    invoke-interface {v0}, Lcom/c/a/a;->b()V
    :try_end_1
    .catch Lcom/c/a/n; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/c/a/m;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method protected a(I)V
    .locals 0

    return-void
.end method

.method protected a(JJ)V
    .locals 7

    const-wide/16 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    cmp-long v0, p3, v4

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    const/16 v0, 0x64

    :goto_1
    iget v3, p0, Lcom/c/a/m;->h:I

    if-eq v0, v3, :cond_3

    move v3, v1

    :goto_2
    cmp-long v4, p3, v4

    if-ltz v4, :cond_4

    :goto_3
    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    invoke-virtual {p0, v0}, Lcom/c/a/m;->a(I)V

    :cond_0
    iput v0, p0, Lcom/c/a/m;->h:I

    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    long-to-float v0, p1

    long-to-float v3, p3

    div-float/2addr v0, v3

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v0, v3

    float-to-int v0, v0

    goto :goto_1

    :cond_3
    move v3, v2

    goto :goto_2

    :cond_4
    move v1, v2

    goto :goto_3
.end method

.method protected final a(Ljava/lang/Throwable;)V
    .locals 1

    instance-of v0, p1, Lcom/c/a/j;

    if-eqz v0, :cond_0

    const-string v0, "ProxyCache is interrupted"

    invoke-static {v0}, Lcom/c/a/k;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "ProxyCache error"

    invoke-static {v0}, Lcom/c/a/k;->d(Ljava/lang/String;)V

    goto :goto_0
.end method
