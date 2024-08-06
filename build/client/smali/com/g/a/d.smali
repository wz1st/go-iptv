.class public Lcom/g/a/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/g/a/d$a;,
        Lcom/g/a/d$b;,
        Lcom/g/a/d$c;,
        Lcom/g/a/d$d;,
        Lcom/g/a/d$e;,
        Lcom/g/a/d$f;
    }
.end annotation


# static fields
.field static a:Lcom/g/a/d;

.field static final b:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/Thread;",
            "Lcom/g/a/d;",
            ">;"
        }
    .end annotation
.end field

.field static final synthetic c:Z

.field private static h:Ljava/util/concurrent/ExecutorService;

.field private static final i:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private static j:Ljava/util/concurrent/ExecutorService;


# instance fields
.field d:Ljava/lang/String;

.field e:I

.field f:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue",
            "<",
            "Lcom/g/a/d$e;",
            ">;"
        }
    .end annotation
.end field

.field g:Ljava/lang/Thread;

.field private k:Lcom/g/a/r;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/g/a/d;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/g/a/d;->c:Z

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-gt v0, v1, :cond_0

    const-string v0, "java.net.preferIPv4Stack"

    const-string v1, "true"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "java.net.preferIPv6Addresses"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    new-instance v0, Lcom/g/a/d;

    invoke-direct {v0}, Lcom/g/a/d;-><init>()V

    sput-object v0, Lcom/g/a/d;->a:Lcom/g/a/d;

    const-string v0, "AsyncServer-worker-"

    invoke-static {v0}, Lcom/g/a/d;->a(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/g/a/d;->h:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/g/a/u;

    invoke-direct {v0}, Lcom/g/a/u;-><init>()V

    sput-object v0, Lcom/g/a/d;->i:Ljava/util/Comparator;

    const-string v0, "AsyncServer-resolver-"

    invoke-static {v0}, Lcom/g/a/d;->a(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/g/a/d;->j:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/g/a/d;->b:Ljava/util/WeakHashMap;

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/g/a/d;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/g/a/d;->e:I

    new-instance v0, Ljava/util/PriorityQueue;

    const/4 v1, 0x1

    sget-object v2, Lcom/g/a/d$f;->a:Lcom/g/a/d$f;

    invoke-direct {v0, v1, v2}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v0, p0, Lcom/g/a/d;->f:Ljava/util/PriorityQueue;

    if-nez p1, :cond_0

    const-string p1, "AsyncServer"

    :cond_0
    iput-object p1, p0, Lcom/g/a/d;->d:Ljava/lang/String;

    return-void
.end method

.method private static a(Lcom/g/a/d;Ljava/util/PriorityQueue;)J
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/g/a/d;",
            "Ljava/util/PriorityQueue",
            "<",
            "Lcom/g/a/d$e;",
            ">;)J"
        }
    .end annotation

    const-wide v0, 0x7fffffffffffffffL

    move-wide v2, v0

    :goto_0
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p1}, Ljava/util/PriorityQueue;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p1}, Ljava/util/PriorityQueue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/g/a/d$e;

    iget-wide v6, v0, Lcom/g/a/d$e;->b:J

    cmp-long v1, v6, v4

    if-gtz v1, :cond_0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/g/a/d$e;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    :try_start_1
    iget-wide v2, v0, Lcom/g/a/d$e;->b:J

    sub-long/2addr v2, v4

    invoke-virtual {p1, v0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/g/a/d;->e:I

    return-wide v2
.end method

.method static synthetic a(Lcom/g/a/d;)Lcom/g/a/r;
    .locals 1

    iget-object v0, p0, Lcom/g/a/d;->k:Lcom/g/a/r;

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;
    .locals 9

    new-instance v8, Lcom/g/a/d$c;

    invoke-direct {v8, p0}, Lcom/g/a/d$c;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x1

    const/4 v3, 0x4

    const-wide/16 v4, 0xa

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    return-object v1
.end method

.method protected static a()V
    .locals 0

    return-void
.end method

.method static synthetic a(Lcom/g/a/d;Lcom/g/a/r;Ljava/util/PriorityQueue;)V
    .locals 3

    :goto_0
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/g/a/d;->b(Lcom/g/a/d;Lcom/g/a/r;Ljava/util/PriorityQueue;)V
    :try_end_0
    .catch Lcom/g/a/d$a; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Lcom/g/a/r;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/g/a/r;->d()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-virtual {p2}, Ljava/util/PriorityQueue;->size()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {p1}, Lcom/g/a/r;->b()Ljava/nio/channels/Selector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :cond_1
    :try_start_3
    invoke-static {p1}, Lcom/g/a/d;->b(Lcom/g/a/r;)V

    iget-object v0, p0, Lcom/g/a/d;->k:Lcom/g/a/r;

    if-ne v0, p1, :cond_2

    new-instance v0, Ljava/util/PriorityQueue;

    const/4 v1, 0x1

    sget-object v2, Lcom/g/a/d$f;->a:Lcom/g/a/d$f;

    invoke-direct {v0, v1, v2}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v0, p0, Lcom/g/a/d;->f:Ljava/util/PriorityQueue;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/g/a/d;->k:Lcom/g/a/r;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/g/a/d;->g:Ljava/lang/Thread;

    :cond_2
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    sget-object v1, Lcom/g/a/d;->b:Ljava/util/WeakHashMap;

    monitor-enter v1

    :try_start_4
    sget-object v0, Lcom/g/a/d;->b:Ljava/util/WeakHashMap;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method private static a(Lcom/g/a/r;)V
    .locals 5

    :try_start_0
    invoke-virtual {p0}, Lcom/g/a/r;->d()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SelectionKey;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/io/Closeable;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/g/a/e/c;->a([Ljava/io/Closeable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->cancel()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :cond_0
    return-void
.end method

.method public static b()Lcom/g/a/d;
    .locals 1

    sget-object v0, Lcom/g/a/d;->a:Lcom/g/a/d;

    return-object v0
.end method

.method private static b(Lcom/g/a/d;Lcom/g/a/r;Ljava/util/PriorityQueue;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/g/a/d;",
            "Lcom/g/a/r;",
            "Ljava/util/PriorityQueue",
            "<",
            "Lcom/g/a/d$e;",
            ">;)V"
        }
    .end annotation

    const-wide v6, 0x7fffffffffffffffL

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x1

    invoke-static {p0, p2}, Lcom/g/a/d;->a(Lcom/g/a/d;Ljava/util/PriorityQueue;)J

    move-result-wide v2

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-virtual {p1}, Lcom/g/a/r;->f()I

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p1}, Lcom/g/a/r;->d()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_1

    cmp-long v1, v2, v6

    if-nez v1, :cond_1

    monitor-exit p0

    :goto_0
    return-void

    :cond_0
    move v0, v1

    :cond_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    cmp-long v0, v2, v6

    if-nez v0, :cond_4

    :try_start_2
    invoke-virtual {p1}, Lcom/g/a/r;->e()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/g/a/r;->g()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SelectionKey;

    :try_start_3
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isAcceptable()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/ServerSocketChannel;
    :try_end_3
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_3 .. :try_end_3} :catch_1

    :try_start_4
    invoke-virtual {v1}, Ljava/nio/channels/ServerSocketChannel;->accept()Ljava/nio/channels/SocketChannel;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v2

    if-eqz v2, :cond_3

    const/4 v1, 0x0

    :try_start_5
    invoke-virtual {v2, v1}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    invoke-virtual {p1}, Lcom/g/a/r;->b()Ljava/nio/channels/Selector;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Ljava/nio/channels/SocketChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_5 .. :try_end_5} :catch_1

    move-result-object v3

    :try_start_6
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/g/a/a/d;

    new-instance v7, Lcom/g/a/b;

    invoke-direct {v7}, Lcom/g/a/b;-><init>()V

    invoke-virtual {v2}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v1

    check-cast v1, Ljava/net/InetSocketAddress;

    invoke-virtual {v7, v2, v1}, Lcom/g/a/b;->a(Ljava/nio/channels/SocketChannel;Ljava/net/InetSocketAddress;)V

    invoke-virtual {v7, p0, v3}, Lcom/g/a/b;->a(Lcom/g/a/d;Ljava/nio/channels/SelectionKey;)V

    invoke-virtual {v3, v7}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v7}, Lcom/g/a/a/d;->a(Lcom/g/a/f;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v0, v2

    move-object v1, v3

    :goto_3
    const/4 v2, 0x1

    :try_start_7
    new-array v2, v2, [Ljava/io/Closeable;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v2}, Lcom/g/a/e/c;->a([Ljava/io/Closeable;)V

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->cancel()V
    :try_end_7
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_2

    :catchall_0
    move-exception v0

    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    throw v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    :catch_2
    move-exception v0

    new-instance v1, Lcom/g/a/d$a;

    invoke-direct {v1, v0}, Lcom/g/a/d$a;-><init>(Ljava/lang/Exception;)V

    throw v1

    :cond_4
    :try_start_a
    invoke-virtual {p1, v2, v3}, Lcom/g/a/r;->a(J)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_1

    :cond_5
    :try_start_b
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isReadable()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/g/a/b;

    invoke-virtual {v0}, Lcom/g/a/b;->a()I

    goto :goto_2

    :cond_6
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isWritable()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/g/a/b;

    invoke-virtual {v0}, Lcom/g/a/b;->k()V

    goto/16 :goto_2

    :cond_7
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isConnectable()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/g/a/d$b;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v2

    check-cast v2, Ljava/nio/channels/SocketChannel;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;
    :try_end_b
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_b .. :try_end_b} :catch_1

    :try_start_c
    invoke-virtual {v2}, Ljava/nio/channels/SocketChannel;->finishConnect()Z

    new-instance v7, Lcom/g/a/b;

    invoke-direct {v7}, Lcom/g/a/b;-><init>()V

    invoke-virtual {v7, p0, v0}, Lcom/g/a/b;->a(Lcom/g/a/d;Ljava/nio/channels/SelectionKey;)V

    invoke-virtual {v2}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v3

    check-cast v3, Ljava/net/InetSocketAddress;

    invoke-virtual {v7, v2, v3}, Lcom/g/a/b;->a(Ljava/nio/channels/SocketChannel;Ljava/net/InetSocketAddress;)V

    invoke-virtual {v0, v7}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_c .. :try_end_c} :catch_1

    :try_start_d
    invoke-virtual {v1, v7}, Lcom/g/a/d$b;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v1, Lcom/g/a/d$b;->b:Lcom/g/a/a/b;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v7}, Lcom/g/a/a/b;->a(Ljava/lang/Exception;Lcom/g/a/f;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_d .. :try_end_d} :catch_1

    goto/16 :goto_2

    :catch_3
    move-exception v0

    :try_start_e
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_4
    move-exception v3

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->cancel()V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/Closeable;

    const/4 v7, 0x0

    aput-object v2, v0, v7

    invoke-static {v0}, Lcom/g/a/e/c;->a([Ljava/io/Closeable;)V

    invoke-virtual {v1, v3}, Lcom/g/a/d$b;->a(Ljava/lang/Exception;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v1, Lcom/g/a/d$b;->b:Lcom/g/a/a/b;

    const/4 v1, 0x0

    invoke-interface {v0, v3, v1}, Lcom/g/a/a/b;->a(Ljava/lang/Exception;Lcom/g/a/f;)V

    goto/16 :goto_2

    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unknown key state."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_e
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_e .. :try_end_e} :catch_1

    :cond_9
    invoke-interface {v5}, Ljava/util/Set;->clear()V

    goto/16 :goto_0

    :catch_5
    move-exception v0

    move-object v0, v4

    move-object v1, v4

    goto/16 :goto_3

    :catch_6
    move-exception v0

    move-object v0, v2

    move-object v1, v4

    goto/16 :goto_3
.end method

.method private static b(Lcom/g/a/r;)V
    .locals 1

    invoke-static {p0}, Lcom/g/a/d;->a(Lcom/g/a/r;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/g/a/r;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private e()Z
    .locals 3

    sget-object v1, Lcom/g/a/d;->b:Ljava/util/WeakHashMap;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/g/a/d;->b:Ljava/util/WeakHashMap;

    iget-object v2, p0, Lcom/g/a/d;->g:Ljava/lang/Thread;

    invoke-virtual {v0, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/g/a/d;

    if-eqz v0, :cond_0

    monitor-exit v1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/g/a/d;->b:Ljava/util/WeakHashMap;

    iget-object v2, p0, Lcom/g/a/d;->g:Ljava/lang/Thread;

    invoke-virtual {v0, v2, p0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Ljava/net/InetAddress;ILcom/g/a/a/d;)Lcom/g/a/e;
    .locals 6

    new-instance v5, Lcom/g/a/d$d;

    const/4 v0, 0x0

    invoke-direct {v5, v0}, Lcom/g/a/d$d;-><init>(B)V

    new-instance v0, Lcom/g/a/ar;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/g/a/ar;-><init>(Lcom/g/a/d;Ljava/net/InetAddress;ILcom/g/a/a/d;Lcom/g/a/d$d;)V

    invoke-virtual {p0, v0}, Lcom/g/a/d;->b(Ljava/lang/Runnable;)V

    iget-object v0, v5, Lcom/g/a/d$d;->a:Ljava/lang/Object;

    check-cast v0, Lcom/g/a/e;

    return-object v0
.end method

.method public a(Ljava/lang/Runnable;)Ljava/lang/Object;
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/g/a/d;->a(Ljava/lang/Runnable;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Runnable;J)Ljava/lang/Object;
    .locals 6

    const-wide/16 v0, 0x0

    monitor-enter p0

    cmp-long v2, p2, v0

    if-lez v2, :cond_1

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p2

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/g/a/d;->f:Ljava/util/PriorityQueue;

    new-instance v3, Lcom/g/a/d$e;

    invoke-direct {v3, p1, v0, v1}, Lcom/g/a/d$e;-><init>(Ljava/lang/Runnable;J)V

    invoke-virtual {v2, v3}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/g/a/d;->k:Lcom/g/a/r;

    if-nez v0, :cond_4

    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lcom/g/a/d;->k:Lcom/g/a/r;

    if-eqz v0, :cond_6

    sget-boolean v0, Lcom/g/a/d;->c:Z

    if-nez v0, :cond_3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/g/a/d;->g:Ljava/lang/Thread;

    if-eq v0, v1, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_1
    cmp-long v2, p2, v0

    if-nez v2, :cond_2

    :try_start_3
    iget v0, p0, Lcom/g/a/d;->e:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/g/a/d;->e:I

    int-to-long v0, v0

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/g/a/d;->f:Ljava/util/PriorityQueue;

    invoke-virtual {v2}, Ljava/util/PriorityQueue;->size()I

    move-result v2

    if-lez v2, :cond_0

    const-wide/16 v2, 0x0

    iget-object v0, p0, Lcom/g/a/d;->f:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/g/a/d$e;

    iget-wide v0, v0, Lcom/g/a/d$e;->b:J

    const-wide/16 v4, 0x1

    sub-long/2addr v0, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-wide v0

    goto :goto_0

    :cond_3
    :try_start_4
    iget-object v0, p0, Lcom/g/a/d;->k:Lcom/g/a/r;

    iget-object v1, p0, Lcom/g/a/d;->f:Ljava/util/PriorityQueue;

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-static {p0, v0, v1}, Lcom/g/a/d;->b(Lcom/g/a/d;Lcom/g/a/r;Ljava/util/PriorityQueue;)V
    :try_end_5
    .catch Lcom/g/a/d$a; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_4
    :goto_1
    :try_start_6
    invoke-virtual {p0}, Lcom/g/a/d;->d()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/g/a/d;->k:Lcom/g/a/r;

    sget-object v1, Lcom/g/a/d;->h:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/g/a/ao;

    invoke-direct {v2, v0}, Lcom/g/a/ao;-><init>(Lcom/g/a/r;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_5
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    return-object v3

    :cond_6
    :try_start_7
    new-instance v0, Lcom/g/a/r;

    invoke-static {}, Ljava/nio/channels/spi/SelectorProvider;->provider()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/channels/spi/SelectorProvider;->openSelector()Ljava/nio/channels/spi/AbstractSelector;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/g/a/r;-><init>(Ljava/nio/channels/Selector;)V

    iput-object v0, p0, Lcom/g/a/d;->k:Lcom/g/a/r;

    iget-object v1, p0, Lcom/g/a/d;->f:Ljava/util/PriorityQueue;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    new-instance v2, Lcom/g/a/ap;

    iget-object v4, p0, Lcom/g/a/d;->d:Ljava/lang/String;

    invoke-direct {v2, p0, v4, v0, v1}, Lcom/g/a/ap;-><init>(Lcom/g/a/d;Ljava/lang/String;Lcom/g/a/r;Ljava/util/PriorityQueue;)V

    iput-object v2, p0, Lcom/g/a/d;->g:Ljava/lang/Thread;

    invoke-direct {p0}, Lcom/g/a/d;->e()Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result v0

    if-nez v0, :cond_7

    :try_start_9
    iget-object v0, p0, Lcom/g/a/d;->k:Lcom/g/a/r;

    invoke-virtual {v0}, Lcom/g/a/r;->a()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :goto_2
    const/4 v0, 0x0

    :try_start_a
    iput-object v0, p0, Lcom/g/a/d;->k:Lcom/g/a/r;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/g/a/d;->g:Ljava/lang/Thread;

    monitor-exit p0

    goto :goto_1

    :catch_0
    move-exception v0

    monitor-exit p0

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/g/a/d;->g:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v1

    :try_start_b
    invoke-virtual {v0}, Lcom/g/a/r;->b()Ljava/nio/channels/Selector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_2
.end method

.method public b(Ljava/lang/Runnable;)V
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/g/a/d;->g:Ljava/lang/Thread;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/g/a/d;->a(Ljava/lang/Runnable;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/g/a/d;->f:Ljava/util/PriorityQueue;

    invoke-static {p0, v0}, Lcom/g/a/d;->a(Lcom/g/a/d;Ljava/util/PriorityQueue;)J

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    new-instance v1, Lcom/g/a/aq;

    invoke-direct {v1, p0, p1, v0}, Lcom/g/a/aq;-><init>(Lcom/g/a/d;Ljava/lang/Runnable;Ljava/util/concurrent/Semaphore;)V

    invoke-virtual {p0, v1}, Lcom/g/a/d;->a(Ljava/lang/Runnable;)Ljava/lang/Object;

    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public c()Ljava/lang/Thread;
    .locals 1

    iget-object v0, p0, Lcom/g/a/d;->g:Ljava/lang/Thread;

    return-object v0
.end method

.method public d()Z
    .locals 2

    iget-object v0, p0, Lcom/g/a/d;->g:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
