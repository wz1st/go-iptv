.class public final La/j;
.super Ljava/lang/Object;


# static fields
.field static final synthetic a:Z

.field private static final d:Ljava/util/concurrent/Executor;


# instance fields
.field final b:La/a/b/d;

.field c:Z

.field private final e:I

.field private final f:J

.field private final g:Ljava/lang/Runnable;

.field private final h:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "La/a/b/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x1

    const/4 v2, 0x0

    const-class v0, La/j;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v8

    :goto_0
    sput-boolean v0, La/j;->a:Z

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const v3, 0x7fffffff

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const-string v0, "OkHttp ConnectionPool"

    invoke-static {v0, v8}, La/a/c;->a(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v1, La/j;->d:Ljava/util/concurrent/Executor;

    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v0, 0x5

    const-wide/16 v2, 0x5

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-direct {p0, v0, v2, v3, v1}, La/j;-><init>(IJLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public constructor <init>(IJLjava/util/concurrent/TimeUnit;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, La/ad;

    invoke-direct {v0, p0}, La/ad;-><init>(La/j;)V

    iput-object v0, p0, La/j;->g:Ljava/lang/Runnable;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, La/j;->h:Ljava/util/Deque;

    new-instance v0, La/a/b/d;

    invoke-direct {v0}, La/a/b/d;-><init>()V

    iput-object v0, p0, La/j;->b:La/a/b/d;

    iput p1, p0, La/j;->e:I

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, La/j;->f:J

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "keepAliveDuration <= 0: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method final a(J)J
    .locals 13

    const/4 v2, 0x0

    const-wide/high16 v6, -0x8000000000000000L

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, La/j;->h:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v8, v0

    move v9, v1

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/b/c;

    iget-object v4, v0, La/a/b/c;->b:Ljava/util/List;

    const/4 v1, 0x0

    move v3, v1

    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_2

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/Reference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    :cond_1
    invoke-static {}, La/a/f/a;->a()La/a/f/a;

    move-result-object v1

    const/4 v5, 0x5

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "A connection to "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, La/a/b/c;->a()La/aa;

    move-result-object v12

    invoke-virtual {v12}, La/aa;->a()La/a;

    move-result-object v12

    invoke-virtual {v12}, La/a;->k()La/r;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " was leaked. Did you forget to close a response body?"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v1, v5, v11, v12}, La/a/f/a;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v4, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v1, 0x1

    iput-boolean v1, v0, La/a/b/c;->e:Z

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v4, p0, La/j;->f:J

    sub-long v4, p1, v4

    iput-wide v4, v0, La/a/b/c;->d:J

    const/4 v1, 0x0

    :goto_2
    if-lez v1, :cond_3

    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_0

    :cond_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_2

    :cond_3
    iget-wide v4, v0, La/a/b/c;->d:J

    sub-long v4, p1, v4

    cmp-long v1, v4, v6

    if-lez v1, :cond_9

    :goto_3
    add-int/lit8 v1, v8, 0x1

    move-object v2, v0

    move-wide v6, v4

    move v8, v1

    goto :goto_0

    :cond_4
    iget-wide v0, p0, La/j;->f:J

    cmp-long v0, v6, v0

    if-gez v0, :cond_5

    iget v0, p0, La/j;->e:I

    if-le v8, v0, :cond_6

    :cond_5
    iget-object v0, p0, La/j;->h:Ljava/util/Deque;

    invoke-interface {v0, v2}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, La/a/b/c;->d()Ljava/net/Socket;

    move-result-object v0

    invoke-static {v0}, La/a/c;->a(Ljava/net/Socket;)V

    const-wide/16 v0, 0x0

    :goto_4
    return-wide v0

    :cond_6
    if-lez v8, :cond_7

    :try_start_1
    iget-wide v0, p0, La/j;->f:J

    monitor-exit p0

    sub-long/2addr v0, v6

    goto :goto_4

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_7
    if-lez v9, :cond_8

    :try_start_2
    iget-wide v0, p0, La/j;->f:J

    monitor-exit p0

    goto :goto_4

    :cond_8
    const/4 v0, 0x0

    iput-boolean v0, p0, La/j;->c:Z

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-wide/16 v0, -0x1

    goto :goto_4

    :cond_9
    move-object v0, v2

    move-wide v4, v6

    goto :goto_3
.end method

.method final a(La/a;La/a/b/g;)La/a/b/c;
    .locals 4

    sget-boolean v0, La/j;->a:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, La/j;->h:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/b/c;

    iget-object v2, v0, La/a/b/c;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget v3, v0, La/a/b/c;->a:I

    if-ge v2, v3, :cond_1

    invoke-virtual {v0}, La/a/b/c;->a()La/aa;

    move-result-object v2

    iget-object v2, v2, La/aa;->a:La/a;

    invoke-virtual {p1, v2}, La/a;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, v0, La/a/b/c;->e:Z

    if-nez v2, :cond_1

    invoke-virtual {p2, v0}, La/a/b/g;->a(La/a/b/c;)V

    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final a(La/a/b/c;)V
    .locals 2

    sget-boolean v0, La/j;->a:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iget-boolean v0, p0, La/j;->c:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, La/j;->c:Z

    sget-object v0, La/j;->d:Ljava/util/concurrent/Executor;

    iget-object v1, p0, La/j;->g:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    iget-object v0, p0, La/j;->h:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method final b(La/a/b/c;)Z
    .locals 1

    sget-boolean v0, La/j;->a:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iget-boolean v0, p1, La/a/b/c;->e:Z

    if-nez v0, :cond_1

    iget v0, p0, La/j;->e:I

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, La/j;->h:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    const/4 v0, 0x0

    goto :goto_0
.end method
