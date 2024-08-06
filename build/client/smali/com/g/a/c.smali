.class public Lcom/g/a/c;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/util/concurrent/Semaphore;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/g/a/c;->a:Ljava/util/concurrent/Semaphore;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {v0}, Lcom/g/a/s;->a(Ljava/lang/Thread;)Lcom/g/a/s;

    move-result-object v1

    iget-object v2, v1, Lcom/g/a/s;->a:Lcom/g/a/c;

    iput-object p0, v1, Lcom/g/a/s;->a:Lcom/g/a/c;

    iget-object v0, v1, Lcom/g/a/s;->b:Ljava/util/concurrent/Semaphore;

    :try_start_0
    iget-object v3, p0, Lcom/g/a/c;->a:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    iput-object v2, v1, Lcom/g/a/s;->a:Lcom/g/a/c;

    :goto_0
    return-void

    :cond_0
    :goto_1
    :try_start_1
    invoke-virtual {v1}, Lcom/g/a/s;->a()Ljava/lang/Runnable;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    iput-object v2, v1, Lcom/g/a/s;->a:Lcom/g/a/c;

    throw v0

    :cond_1
    const/4 v3, 0x1

    :try_start_2
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->availablePermits()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/util/concurrent/Semaphore;->acquire(I)V

    iget-object v3, p0, Lcom/g/a/c;->a:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    iput-object v2, v1, Lcom/g/a/s;->a:Lcom/g/a/c;

    goto :goto_0
.end method

.method public a(JLjava/util/concurrent/TimeUnit;)Z
    .locals 17

    const/4 v5, 0x0

    const/4 v4, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v0, p1

    move-object/from16 v2, p3

    invoke-virtual {v6, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v6

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-static {v8}, Lcom/g/a/s;->a(Ljava/lang/Thread;)Lcom/g/a/s;

    move-result-object v8

    iget-object v9, v8, Lcom/g/a/s;->a:Lcom/g/a/c;

    move-object/from16 v0, p0

    iput-object v0, v8, Lcom/g/a/s;->a:Lcom/g/a/c;

    iget-object v10, v8, Lcom/g/a/s;->b:Ljava/util/concurrent/Semaphore;

    :try_start_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/g/a/c;->a:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v11}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v11

    if-eqz v11, :cond_0

    iput-object v9, v8, Lcom/g/a/s;->a:Lcom/g/a/c;

    :goto_0
    return v4

    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    :cond_1
    :goto_1
    invoke-virtual {v8}, Lcom/g/a/s;->a()Ljava/lang/Runnable;

    move-result-object v11

    if-eqz v11, :cond_2

    invoke-interface {v11}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v4

    iput-object v9, v8, Lcom/g/a/s;->a:Lcom/g/a/c;

    throw v4

    :cond_2
    const/4 v11, 0x1

    :try_start_2
    invoke-virtual {v10}, Ljava/util/concurrent/Semaphore;->availablePermits()I

    move-result v14

    invoke-static {v11, v14}, Ljava/lang/Math;->max(II)I

    move-result v11

    sget-object v14, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v10, v11, v6, v7, v14}, Ljava/util/concurrent/Semaphore;->tryAcquire(IJLjava/util/concurrent/TimeUnit;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v11

    if-nez v11, :cond_3

    iput-object v9, v8, Lcom/g/a/s;->a:Lcom/g/a/c;

    move v4, v5

    goto :goto_0

    :cond_3
    :try_start_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/g/a/c;->a:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v11}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v11

    if-eqz v11, :cond_4

    iput-object v9, v8, Lcom/g/a/s;->a:Lcom/g/a/c;

    goto :goto_0

    :cond_4
    :try_start_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-wide v14

    sub-long/2addr v14, v12

    cmp-long v11, v14, v6

    if-ltz v11, :cond_1

    iput-object v9, v8, Lcom/g/a/s;->a:Lcom/g/a/c;

    move v4, v5

    goto :goto_0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/g/a/c;->a:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    invoke-static {p0}, Lcom/g/a/s;->a(Lcom/g/a/c;)V

    return-void
.end method
