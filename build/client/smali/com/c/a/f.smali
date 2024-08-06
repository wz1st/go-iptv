.class public Lcom/c/a/f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/c/a/f$a;,
        Lcom/c/a/f$b;,
        Lcom/c/a/f$c;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Ljava/util/concurrent/ExecutorService;

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/c/a/g;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/net/ServerSocket;

.field private final e:I

.field private final f:Ljava/lang/Thread;

.field private final g:Lcom/c/a/c;


# direct methods
.method private constructor <init>(Lcom/c/a/c;)V
    .locals 4

    const/16 v1, 0x8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/c/a/f;->a:Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/c/a/f;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/c/a/f;->c:Ljava/util/Map;

    invoke-static {p1}, Lcom/c/a/l;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/a/c;

    iput-object v0, p0, Lcom/c/a/f;->g:Lcom/c/a/c;

    :try_start_0
    const-string v0, "127.0.0.1"

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    new-instance v1, Ljava/net/ServerSocket;

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-direct {v1, v2, v3, v0}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    iput-object v1, p0, Lcom/c/a/f;->d:Ljava/net/ServerSocket;

    iget-object v0, p0, Lcom/c/a/f;->d:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v0

    iput v0, p0, Lcom/c/a/f;->e:I

    const-string v0, "127.0.0.1"

    iget v1, p0, Lcom/c/a/f;->e:I

    invoke-static {v0, v1}, Lcom/c/a/i;->a(Ljava/lang/String;I)V

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/c/a/f$c;

    invoke-direct {v2, p0, v0}, Lcom/c/a/f$c;-><init>(Lcom/c/a/f;Ljava/util/concurrent/CountDownLatch;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/c/a/f;->f:Ljava/lang/Thread;

    iget-object v1, p0, Lcom/c/a/f;->f:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    :goto_0
    iget-object v1, p0, Lcom/c/a/f;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Error starting local proxy server"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/c/a/c;Lcom/c/a/f$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/c/a/f;-><init>(Lcom/c/a/c;)V

    return-void
.end method

.method private a()V
    .locals 3

    :goto_0
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/c/a/f;->d:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Accept new socket "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/c/a/k;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/c/a/f;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/c/a/f$b;

    invoke-direct {v2, p0, v0}, Lcom/c/a/f$b;-><init>(Lcom/c/a/f;Ljava/net/Socket;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/c/a/n;

    const-string v2, "Error during waiting connection"

    invoke-direct {v1, v2, v0}, Lcom/c/a/n;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v1}, Lcom/c/a/f;->a(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/c/a/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/c/a/f;->a()V

    return-void
.end method

.method static synthetic a(Lcom/c/a/f;Ljava/net/Socket;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/c/a/f;->a(Ljava/net/Socket;)V

    return-void
.end method

.method private a(Ljava/io/File;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/c/a/f;->g:Lcom/c/a/c;

    iget-object v0, v0, Lcom/c/a/c;->c:Lcom/c/a/a/a;

    invoke-interface {v0, p1}, Lcom/c/a/a/a;->a(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error touching file "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/c/a/k;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "HttpProxyCacheServer error"

    invoke-static {v0}, Lcom/c/a/k;->d(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/net/Socket;)V
    .locals 3

    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/c/a/d;->a(Ljava/io/InputStream;)Lcom/c/a/d;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request to cache proxy:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/c/a/k;->a(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/c/a/d;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/c/a/o;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/c/a/f;->d(Ljava/lang/String;)Lcom/c/a/g;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/c/a/g;->a(Lcom/c/a/d;Ljava/net/Socket;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/c/a/n; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, p1}, Lcom/c/a/f;->b(Ljava/net/Socket;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Opened connections: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/c/a/f;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/c/a/k;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v0, "Closing socket\u2026 Socket is closed by client."

    invoke-static {v0}, Lcom/c/a/k;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0, p1}, Lcom/c/a/f;->b(Ljava/net/Socket;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Opened connections: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/c/a/f;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/c/a/k;->a(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_1
    :try_start_2
    new-instance v1, Lcom/c/a/n;

    const-string v2, "Error processing request"

    invoke-direct {v1, v2, v0}, Lcom/c/a/n;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v1}, Lcom/c/a/f;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-direct {p0, p1}, Lcom/c/a/f;->b(Ljava/net/Socket;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Opened connections: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/c/a/f;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/c/a/k;->a(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0, p1}, Lcom/c/a/f;->b(Ljava/net/Socket;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Opened connections: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/c/a/f;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/c/a/k;->a(Ljava/lang/String;)V

    throw v0

    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method private b()I
    .locals 4

    iget-object v2, p0, Lcom/c/a/f;->a:Ljava/lang/Object;

    monitor-enter v2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/c/a/f;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/a/g;

    invoke-virtual {v0}, Lcom/c/a/g;->a()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    :cond_0
    monitor-exit v2

    return v1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private b(Ljava/net/Socket;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/c/a/f;->c(Ljava/net/Socket;)V

    invoke-direct {p0, p1}, Lcom/c/a/f;->d(Ljava/net/Socket;)V

    invoke-direct {p0, p1}, Lcom/c/a/f;->e(Ljava/net/Socket;)V

    return-void
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "http://%s:%d/%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "127.0.0.1"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/c/a/f;->e:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p1}, Lcom/c/a/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c(Ljava/net/Socket;)V
    .locals 3

    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/net/Socket;->shutdownInput()V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "Releasing input stream\u2026 Socket is closed by client."

    invoke-static {v0}, Lcom/c/a/k;->a(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Lcom/c/a/n;

    const-string v2, "Error closing socket input stream"

    invoke-direct {v1, v2, v0}, Lcom/c/a/n;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v1}, Lcom/c/a/f;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private d(Ljava/lang/String;)Lcom/c/a/g;
    .locals 3

    iget-object v1, p0, Lcom/c/a/f;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/c/a/f;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/a/g;

    if-nez v0, :cond_0

    new-instance v0, Lcom/c/a/g;

    iget-object v2, p0, Lcom/c/a/f;->g:Lcom/c/a/c;

    invoke-direct {v0, p1, v2}, Lcom/c/a/g;-><init>(Ljava/lang/String;Lcom/c/a/c;)V

    iget-object v2, p0, Lcom/c/a/f;->c:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private d(Ljava/net/Socket;)V
    .locals 1

    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/net/Socket;->shutdownOutput()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "Failed to close socket on proxy side: {}. It seems client have already closed connection."

    invoke-static {v0}, Lcom/c/a/k;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private e(Ljava/net/Socket;)V
    .locals 3

    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/c/a/n;

    const-string v2, "Error closing socket"

    invoke-direct {v1, v2, v0}, Lcom/c/a/n;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v1}, Lcom/c/a/f;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/c/a/f;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/c/a/f;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/c/a/f;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/c/a/f;->a(Ljava/io/File;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/c/a/f;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    iget-object v0, p0, Lcom/c/a/f;->g:Lcom/c/a/c;

    iget-object v0, v0, Lcom/c/a/c;->a:Ljava/io/File;

    iget-object v1, p0, Lcom/c/a/f;->g:Lcom/c/a/c;

    iget-object v1, v1, Lcom/c/a/c;->b:Lcom/c/a/a/c;

    invoke-interface {v1, p1}, Lcom/c/a/a/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v2
.end method
