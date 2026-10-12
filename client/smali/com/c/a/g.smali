.class final Lcom/c/a/g;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/c/a/g$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final b:Ljava/lang/String;

.field private volatile c:Lcom/c/a/e;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/c/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/c/a/b;

.field private final f:Lcom/c/a/c;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/c/a/c;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/c/a/g;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/c/a/g;->d:Ljava/util/List;

    invoke-static {p1}, Lcom/c/a/l;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/c/a/g;->b:Ljava/lang/String;

    invoke-static {p2}, Lcom/c/a/l;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/a/c;

    iput-object v0, p0, Lcom/c/a/g;->f:Lcom/c/a/c;

    new-instance v0, Lcom/c/a/g$a;

    iget-object v1, p0, Lcom/c/a/g;->d:Ljava/util/List;

    invoke-direct {v0, p1, v1}, Lcom/c/a/g$a;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iput-object v0, p0, Lcom/c/a/g;->e:Lcom/c/a/b;

    return-void
.end method

.method private declared-synchronized b()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/c/a/g;->c:Lcom/c/a/e;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/c/a/g;->d()Lcom/c/a/e;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/c/a/g;->c:Lcom/c/a/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/c/a/g;->c:Lcom/c/a/e;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized c()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/c/a/g;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/c/a/g;->c:Lcom/c/a/e;

    invoke-virtual {v0}, Lcom/c/a/e;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/c/a/g;->c:Lcom/c/a/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private d()Lcom/c/a/e;
    .locals 4

    new-instance v0, Lcom/c/a/h;

    iget-object v1, p0, Lcom/c/a/g;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/c/a/g;->f:Lcom/c/a/c;

    iget-object v2, v2, Lcom/c/a/c;->d:Lcom/c/a/c/b;

    iget-object v3, p0, Lcom/c/a/g;->f:Lcom/c/a/c;

    iget-object v3, v3, Lcom/c/a/c;->e:Lcom/c/a/b/b;

    invoke-direct {v0, v1, v2, v3}, Lcom/c/a/h;-><init>(Ljava/lang/String;Lcom/c/a/c/b;Lcom/c/a/b/b;)V

    new-instance v1, Lcom/c/a/a/b;

    iget-object v2, p0, Lcom/c/a/g;->f:Lcom/c/a/c;

    iget-object v3, p0, Lcom/c/a/g;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/c/a/c;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    iget-object v3, p0, Lcom/c/a/g;->f:Lcom/c/a/c;

    iget-object v3, v3, Lcom/c/a/c;->c:Lcom/c/a/a/a;

    invoke-direct {v1, v2, v3}, Lcom/c/a/a/b;-><init>(Ljava/io/File;Lcom/c/a/a/a;)V

    new-instance v2, Lcom/c/a/e;

    invoke-direct {v2, v0, v1}, Lcom/c/a/e;-><init>(Lcom/c/a/h;Lcom/c/a/a/b;)V

    iget-object v0, p0, Lcom/c/a/g;->e:Lcom/c/a/b;

    invoke-virtual {v2, v0}, Lcom/c/a/e;->a(Lcom/c/a/b;)V

    return-object v2
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lcom/c/a/g;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public a(Lcom/c/a/d;Ljava/net/Socket;)V
    .locals 1

    invoke-direct {p0}, Lcom/c/a/g;->b()V

    :try_start_0
    iget-object v0, p0, Lcom/c/a/g;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v0, p0, Lcom/c/a/g;->c:Lcom/c/a/e;

    invoke-virtual {v0, p1, p2}, Lcom/c/a/e;->a(Lcom/c/a/d;Ljava/net/Socket;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/c/a/g;->c()V

    return-void

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/c/a/g;->c()V

    throw v0
.end method
