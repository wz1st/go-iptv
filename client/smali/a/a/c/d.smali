.class public final La/a/c/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/a/c/d$a;,
        La/a/c/d$b;,
        La/a/c/d$c;
    }
.end annotation


# static fields
.field static final synthetic a:Z

.field private static final l:Ljava/util/concurrent/ExecutorService;


# instance fields
.field final b:La/v;

.field final c:Z

.field d:J

.field e:J

.field f:La/a/c/k;

.field final g:La/a/c/k;

.field final h:La/a/c/n;

.field final i:Ljava/net/Socket;

.field final j:La/a/c/c;

.field final k:La/a/c/d$c;

.field private final m:La/a/c/d$b;

.field private final n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "La/a/c/e;",
            ">;"
        }
    .end annotation
.end field

.field private final o:Ljava/lang/String;

.field private p:I

.field private q:I

.field private r:Z

.field private final s:Ljava/util/concurrent/ExecutorService;

.field private t:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "La/a/c/i;",
            ">;"
        }
    .end annotation
.end field

.field private final u:La/a/c/j;

.field private v:I

.field private w:Z

.field private final x:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x1

    const/4 v2, 0x0

    const-class v0, La/a/c/d;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v8

    :goto_0
    sput-boolean v0, La/a/c/d;->a:Z

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const v3, 0x7fffffff

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const-string v0, "OkHttp FramedConnection"

    invoke-static {v0, v8}, La/a/c;->a(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v1, La/a/c/d;->l:Ljava/util/concurrent/ExecutorService;

    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method private constructor <init>(La/a/c/d$a;)V
    .locals 11

    const/4 v10, 0x7

    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, La/a/c/d;->n:Ljava/util/Map;

    const-wide/16 v4, 0x0

    iput-wide v4, p0, La/a/c/d;->d:J

    new-instance v0, La/a/c/k;

    invoke-direct {v0}, La/a/c/k;-><init>()V

    iput-object v0, p0, La/a/c/d;->f:La/a/c/k;

    new-instance v0, La/a/c/k;

    invoke-direct {v0}, La/a/c/k;-><init>()V

    iput-object v0, p0, La/a/c/d;->g:La/a/c/k;

    iput-boolean v2, p0, La/a/c/d;->w:Z

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, La/a/c/d;->x:Ljava/util/Set;

    invoke-static {p1}, La/a/c/d$a;->a(La/a/c/d$a;)La/v;

    move-result-object v0

    iput-object v0, p0, La/a/c/d;->b:La/v;

    invoke-static {p1}, La/a/c/d$a;->b(La/a/c/d$a;)La/a/c/j;

    move-result-object v0

    iput-object v0, p0, La/a/c/d;->u:La/a/c/j;

    invoke-static {p1}, La/a/c/d$a;->c(La/a/c/d$a;)Z

    move-result v0

    iput-boolean v0, p0, La/a/c/d;->c:Z

    invoke-static {p1}, La/a/c/d$a;->d(La/a/c/d$a;)La/a/c/d$b;

    move-result-object v0

    iput-object v0, p0, La/a/c/d;->m:La/a/c/d$b;

    invoke-static {p1}, La/a/c/d$a;->c(La/a/c/d$a;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v3

    :goto_0
    iput v0, p0, La/a/c/d;->q:I

    invoke-static {p1}, La/a/c/d$a;->c(La/a/c/d$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, La/a/c/d;->b:La/v;

    sget-object v4, La/v;->c:La/v;

    if-ne v0, v4, :cond_0

    iget v0, p0, La/a/c/d;->q:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, La/a/c/d;->q:I

    :cond_0
    invoke-static {p1}, La/a/c/d$a;->c(La/a/c/d$a;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v3

    :cond_1
    iput v1, p0, La/a/c/d;->v:I

    invoke-static {p1}, La/a/c/d$a;->c(La/a/c/d$a;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, La/a/c/d;->f:La/a/c/k;

    const/high16 v1, 0x1000000

    invoke-virtual {v0, v10, v2, v1}, La/a/c/k;->a(III)La/a/c/k;

    :cond_2
    invoke-static {p1}, La/a/c/d$a;->e(La/a/c/d$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/a/c/d;->o:Ljava/lang/String;

    iget-object v0, p0, La/a/c/d;->b:La/v;

    sget-object v1, La/v;->c:La/v;

    if-ne v0, v1, :cond_4

    new-instance v0, La/a/c/h;

    invoke-direct {v0}, La/a/c/h;-><init>()V

    iput-object v0, p0, La/a/c/d;->h:La/a/c/n;

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-string v0, "OkHttp %s Push Observer"

    new-array v8, v3, [Ljava/lang/Object;

    iget-object v9, p0, La/a/c/d;->o:Ljava/lang/String;

    aput-object v9, v8, v2

    invoke-static {v0, v8}, La/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, La/a/c;->a(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, La/a/c/d;->s:Ljava/util/concurrent/ExecutorService;

    iget-object v0, p0, La/a/c/d;->g:La/a/c/k;

    const v1, 0xffff

    invoke-virtual {v0, v10, v2, v1}, La/a/c/k;->a(III)La/a/c/k;

    iget-object v0, p0, La/a/c/d;->g:La/a/c/k;

    const/4 v1, 0x5

    const/16 v3, 0x4000

    invoke-virtual {v0, v1, v2, v3}, La/a/c/k;->a(III)La/a/c/k;

    :goto_1
    iget-object v0, p0, La/a/c/d;->g:La/a/c/k;

    invoke-virtual {v0}, La/a/c/k;->e()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, La/a/c/d;->e:J

    invoke-static {p1}, La/a/c/d$a;->f(La/a/c/d$a;)Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, La/a/c/d;->i:Ljava/net/Socket;

    iget-object v0, p0, La/a/c/d;->h:La/a/c/n;

    invoke-static {p1}, La/a/c/d$a;->g(La/a/c/d$a;)Lb/c;

    move-result-object v1

    iget-boolean v3, p0, La/a/c/d;->c:Z

    invoke-interface {v0, v1, v3}, La/a/c/n;->a(Lb/c;Z)La/a/c/c;

    move-result-object v0

    iput-object v0, p0, La/a/c/d;->j:La/a/c/c;

    new-instance v0, La/a/c/d$c;

    iget-object v1, p0, La/a/c/d;->h:La/a/c/n;

    invoke-static {p1}, La/a/c/d$a;->h(La/a/c/d$a;)Lb/d;

    move-result-object v3

    iget-boolean v4, p0, La/a/c/d;->c:Z

    invoke-interface {v1, v3, v4}, La/a/c/n;->a(Lb/d;Z)La/a/c/b;

    move-result-object v1

    invoke-direct {v0, p0, v1, v2}, La/a/c/d$c;-><init>(La/a/c/d;La/a/c/b;B)V

    iput-object v0, p0, La/a/c/d;->k:La/a/c/d$c;

    return-void

    :cond_3
    move v0, v1

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, La/a/c/d;->b:La/v;

    sget-object v1, La/v;->d:La/v;

    if-ne v0, v1, :cond_5

    new-instance v0, La/a/c/l;

    invoke-direct {v0}, La/a/c/l;-><init>()V

    iput-object v0, p0, La/a/c/d;->h:La/a/c/n;

    const/4 v0, 0x0

    iput-object v0, p0, La/a/c/d;->s:Ljava/util/concurrent/ExecutorService;

    goto :goto_1

    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    iget-object v1, p0, La/a/c/d;->b:La/v;

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method synthetic constructor <init>(La/a/c/d$a;B)V
    .locals 0

    invoke-direct {p0, p1}, La/a/c/d;-><init>(La/a/c/d$a;)V

    return-void
.end method

.method private a(ILjava/util/List;ZZ)La/a/c/e;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "La/a/c/f;",
            ">;ZZ)",
            "La/a/c/e;"
        }
    .end annotation

    if-nez p3, :cond_0

    const/4 v3, 0x1

    :goto_0
    if-nez p4, :cond_1

    const/4 v4, 0x1

    :goto_1
    iget-object v9, p0, La/a/c/d;->j:La/a/c/c;

    monitor-enter v9

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-boolean v0, p0, La/a/c/d;->r:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/io/IOException;

    const-string v1, "shutdown"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

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

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    :try_start_3
    iget v1, p0, La/a/c/d;->q:I

    iget v0, p0, La/a/c/d;->q:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, La/a/c/d;->q:I

    new-instance v0, La/a/c/e;

    move-object v2, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, La/a/c/e;-><init>(ILa/a/c/d;ZZLjava/util/List;)V

    if-eqz p3, :cond_3

    iget-wide v6, p0, La/a/c/d;->e:J

    const-wide/16 v10, 0x0

    cmp-long v2, v6, v10

    if-eqz v2, :cond_3

    iget-wide v6, v0, La/a/c/e;->c:J

    const-wide/16 v10, 0x0

    cmp-long v2, v6, v10

    if-nez v2, :cond_6

    :cond_3
    const/4 v2, 0x1

    move v8, v2

    :goto_2
    invoke-virtual {v0}, La/a/c/e;->g()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, La/a/c/d;->n:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez p1, :cond_7

    :try_start_4
    iget-object v2, p0, La/a/c/d;->j:La/a/c/c;

    move v5, v1

    move v6, p1

    move-object v7, p2

    invoke-interface/range {v2 .. v7}, La/a/c/c;->a(ZZIILjava/util/List;)V

    :goto_3
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v8, :cond_5

    iget-object v1, p0, La/a/c/d;->j:La/a/c/c;

    invoke-interface {v1}, La/a/c/c;->b()V

    :cond_5
    return-object v0

    :cond_6
    const/4 v2, 0x0

    move v8, v2

    goto :goto_2

    :cond_7
    :try_start_5
    iget-boolean v2, p0, La/a/c/d;->c:Z

    if-eqz v2, :cond_8

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "client streams shouldn\'t have associated stream IDs"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    iget-object v2, p0, La/a/c/d;->j:La/a/c/c;

    invoke-interface {v2, p1, v1, p2}, La/a/c/c;->a(IILjava/util/List;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3
.end method

.method static synthetic a(La/a/c/d;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La/a/c/d;->o:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a()Ljava/util/concurrent/ExecutorService;
    .locals 1

    sget-object v0, La/a/c/d;->l:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method private a(La/a/c/a;La/a/c/a;)V
    .locals 7

    const/4 v3, 0x0

    const/4 v2, 0x0

    sget-boolean v0, La/a/c/d;->a:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, La/a/c/d;->a(La/a/c/a;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    :goto_0
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, La/a/c/d;->n:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, La/a/c/d;->n:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v4, p0, La/a/c/d;->n:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    new-array v4, v4, [La/a/c/e;

    invoke-interface {v0, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [La/a/c/e;

    iget-object v4, p0, La/a/c/d;->n:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    move-object v5, v0

    :goto_1
    iget-object v0, p0, La/a/c/d;->t:Ljava/util/Map;

    if-eqz v0, :cond_6

    iget-object v0, p0, La/a/c/d;->t:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v2, p0, La/a/c/d;->t:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    new-array v2, v2, [La/a/c/i;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [La/a/c/i;

    const/4 v2, 0x0

    iput-object v2, p0, La/a/c/d;->t:Ljava/util/Map;

    move-object v4, v0

    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_3

    array-length v6, v5

    move v2, v3

    move-object v0, v1

    :goto_3
    if-ge v2, v6, :cond_2

    aget-object v1, v5, v2

    :try_start_2
    invoke-virtual {v1, p2}, La/a/c/e;->b(La/a/c/a;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    :goto_4
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v1, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catch_1
    move-exception v1

    if-eqz v0, :cond_1

    move-object v0, v1

    goto :goto_4

    :cond_2
    move-object v1, v0

    :cond_3
    if-eqz v4, :cond_4

    array-length v2, v4

    move v0, v3

    :goto_5
    if-ge v0, v2, :cond_4

    aget-object v3, v4, v0

    invoke-virtual {v3}, La/a/c/i;->c()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_4
    :try_start_4
    iget-object v0, p0, La/a/c/d;->j:La/a/c/c;

    invoke-interface {v0}, La/a/c/c;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    move-object v0, v1

    :cond_5
    :goto_6
    :try_start_5
    iget-object v1, p0, La/a/c/d;->i:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :goto_7
    if-eqz v0, :cond_8

    throw v0

    :catch_2
    move-exception v0

    if-eqz v1, :cond_5

    move-object v0, v1

    goto :goto_6

    :cond_6
    move-object v4, v2

    goto :goto_2

    :cond_7
    move-object v5, v2

    goto :goto_1

    :cond_8
    return-void

    :catch_3
    move-exception v0

    goto :goto_7
.end method

.method static synthetic a(La/a/c/d;II)V
    .locals 9

    const/4 v4, 0x1

    sget-object v8, La/a/c/d;->l:Ljava/util/concurrent/ExecutorService;

    new-instance v0, La/a/c/q;

    const-string v2, "OkHttp %s ping %08x%08x"

    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v5, p0, La/a/c/d;->o:Ljava/lang/String;

    aput-object v5, v3, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    const/4 v1, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v1

    const/4 v7, 0x0

    move-object v1, p0

    move v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v7}, La/a/c/q;-><init>(La/a/c/d;Ljava/lang/String;[Ljava/lang/Object;ZIILa/a/c/i;)V

    invoke-interface {v8, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(La/a/c/d;ILa/a/c/a;)V
    .locals 7

    iget-object v6, p0, La/a/c/d;->s:Ljava/util/concurrent/ExecutorService;

    new-instance v0, La/a/c/u;

    const-string v2, "OkHttp %s Push Reset[%s]"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, La/a/c/d;->o:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, La/a/c/u;-><init>(La/a/c/d;Ljava/lang/String;[Ljava/lang/Object;ILa/a/c/a;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(La/a/c/d;ILb/d;IZ)V
    .locals 9

    new-instance v5, Lb/b;

    invoke-direct {v5}, Lb/b;-><init>()V

    int-to-long v0, p3

    invoke-interface {p2, v0, v1}, Lb/d;->f(J)V

    int-to-long v0, p3

    invoke-interface {p2, v5, v0, v1}, Lb/d;->a(Lb/b;J)J

    invoke-virtual {v5}, Lb/b;->s()J

    move-result-wide v0

    int-to-long v2, p3

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lb/b;->s()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " != "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v8, p0, La/a/c/d;->s:Ljava/util/concurrent/ExecutorService;

    new-instance v0, La/a/c/t;

    const-string v2, "OkHttp %s Push Data[%s]"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, La/a/c/d;->o:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, La/a/c/t;-><init>(La/a/c/d;Ljava/lang/String;[Ljava/lang/Object;ILb/b;IZ)V

    invoke-interface {v8, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(La/a/c/d;ILjava/util/List;)V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, La/a/c/d;->x:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, La/a/c/a;->m:La/a/c/a;

    invoke-virtual {p0, p1, v0}, La/a/c/d;->a(ILa/a/c/a;)V

    monitor-exit p0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, La/a/c/d;->x:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v6, p0, La/a/c/d;->s:Ljava/util/concurrent/ExecutorService;

    new-instance v0, La/a/c/r;

    const-string v2, "OkHttp %s Push Request[%s]"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, La/a/c/d;->o:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, La/a/c/r;-><init>(La/a/c/d;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(La/a/c/d;ILjava/util/List;Z)V
    .locals 8

    iget-object v7, p0, La/a/c/d;->s:Ljava/util/concurrent/ExecutorService;

    new-instance v0, La/a/c/s;

    const-string v2, "OkHttp %s Push Headers[%s]"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, La/a/c/d;->o:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, La/a/c/s;-><init>(La/a/c/d;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;Z)V

    invoke-interface {v7, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(La/a/c/d;La/a/c/a;La/a/c/a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, La/a/c/d;->a(La/a/c/a;La/a/c/a;)V

    return-void
.end method

.method static synthetic a(La/a/c/d;ZIILa/a/c/i;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, La/a/c/d;->a(ZIILa/a/c/i;)V

    return-void
.end method

.method private a(ZIILa/a/c/i;)V
    .locals 2

    iget-object v1, p0, La/a/c/d;->j:La/a/c/c;

    monitor-enter v1

    if-eqz p4, :cond_0

    :try_start_0
    invoke-virtual {p4}, La/a/c/i;->a()V

    :cond_0
    iget-object v0, p0, La/a/c/d;->j:La/a/c/c;

    invoke-interface {v0, p1, p2, p3}, La/a/c/c;->a(ZII)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic a(La/a/c/d;I)Z
    .locals 2

    iget-object v0, p0, La/a/c/d;->b:La/v;

    sget-object v1, La/v;->c:La/v;

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_0

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(La/a/c/d;I)I
    .locals 0

    iput p1, p0, La/a/c/d;->p:I

    return p1
.end method

.method static synthetic b(La/a/c/d;)Z
    .locals 1

    iget-boolean v0, p0, La/a/c/d;->r:Z

    return v0
.end method

.method static synthetic c(La/a/c/d;)I
    .locals 1

    iget v0, p0, La/a/c/d;->p:I

    return v0
.end method

.method private c(I)La/a/c/i;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, La/a/c/d;->t:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, La/a/c/d;->t:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/c/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic c(La/a/c/d;I)La/a/c/i;
    .locals 1

    invoke-direct {p0, p1}, La/a/c/d;->c(I)La/a/c/i;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(La/a/c/d;)I
    .locals 1

    iget v0, p0, La/a/c/d;->q:I

    return v0
.end method

.method static synthetic e(La/a/c/d;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, La/a/c/d;->n:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic f(La/a/c/d;)La/a/c/d$b;
    .locals 1

    iget-object v0, p0, La/a/c/d;->m:La/a/c/d$b;

    return-object v0
.end method

.method static synthetic g(La/a/c/d;)Z
    .locals 1

    iget-boolean v0, p0, La/a/c/d;->w:Z

    return v0
.end method

.method static synthetic h(La/a/c/d;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, La/a/c/d;->w:Z

    return v0
.end method

.method static synthetic i(La/a/c/d;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, La/a/c/d;->r:Z

    return v0
.end method

.method static synthetic j(La/a/c/d;)La/a/c/j;
    .locals 1

    iget-object v0, p0, La/a/c/d;->u:La/a/c/j;

    return-object v0
.end method

.method static synthetic k(La/a/c/d;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, La/a/c/d;->x:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method final a(I)La/a/c/e;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, La/a/c/d;->n:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/c/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Ljava/util/List;ZZ)La/a/c/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "La/a/c/f;",
            ">;ZZ)",
            "La/a/c/e;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, La/a/c/d;->a(ILjava/util/List;ZZ)La/a/c/e;

    move-result-object v0

    return-object v0
.end method

.method final a(IJ)V
    .locals 8

    sget-object v0, La/a/c/d;->l:Ljava/util/concurrent/ExecutorService;

    new-instance v1, La/a/c/p;

    const-string v3, "OkHttp Window Update %s stream %d"

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v5, p0, La/a/c/d;->o:Ljava/lang/String;

    aput-object v5, v4, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    move-object v2, p0

    move v5, p1

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, La/a/c/p;-><init>(La/a/c/d;Ljava/lang/String;[Ljava/lang/Object;IJ)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method final a(ILa/a/c/a;)V
    .locals 7

    sget-object v6, La/a/c/d;->l:Ljava/util/concurrent/ExecutorService;

    new-instance v0, La/a/c/o;

    const-string v2, "OkHttp %s stream %d"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, La/a/c/d;->o:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, La/a/c/o;-><init>(La/a/c/d;Ljava/lang/String;[Ljava/lang/Object;ILa/a/c/a;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public final a(IZLb/b;J)V
    .locals 10

    const/4 v1, 0x0

    const-wide/16 v8, 0x0

    cmp-long v0, p4, v8

    if-nez v0, :cond_2

    iget-object v0, p0, La/a/c/d;->j:La/a/c/c;

    invoke-interface {v0, p2, p1, p3, v1}, La/a/c/c;->a(ZILb/b;I)V

    :cond_0
    return-void

    :cond_1
    :try_start_0
    iget-wide v2, p0, La/a/c/d;->e:J

    invoke-static {p4, p5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v0, v2

    iget-object v2, p0, La/a/c/d;->j:La/a/c/c;

    invoke-interface {v2}, La/a/c/c;->c()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-wide v4, p0, La/a/c/d;->e:J

    int-to-long v6, v2

    sub-long/2addr v4, v6

    iput-wide v4, p0, La/a/c/d;->e:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v4, v2

    sub-long/2addr p4, v4

    iget-object v3, p0, La/a/c/d;->j:La/a/c/c;

    if-eqz p2, :cond_4

    cmp-long v0, p4, v8

    if-nez v0, :cond_4

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v3, v0, p1, p3, v2}, La/a/c/c;->a(ZILb/b;I)V

    :cond_2
    cmp-long v0, p4, v8

    if-lez v0, :cond_0

    monitor-enter p0

    :goto_1
    :try_start_1
    iget-wide v2, p0, La/a/c/d;->e:J

    cmp-long v0, v2, v8

    if-gtz v0, :cond_1

    iget-object v0, p0, La/a/c/d;->n:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_3
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public final a(La/a/c/a;)V
    .locals 4

    iget-object v1, p0, La/a/c/d;->j:La/a/c/c;

    monitor-enter v1

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-boolean v0, p0, La/a/c/d;->r:Z

    if-eqz v0, :cond_0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_3
    iput-boolean v0, p0, La/a/c/d;->r:Z

    iget v0, p0, La/a/c/d;->p:I

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v2, p0, La/a/c/d;->j:La/a/c/c;

    sget-object v3, La/a/c;->a:[B

    invoke-interface {v2, v0, p1, v3}, La/a/c/c;->a(ILa/a/c/a;[B)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method final b(I)La/a/c/e;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, La/a/c/d;->n:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/c/e;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, La/a/c/d;->j:La/a/c/c;

    invoke-interface {v0}, La/a/c/c;->b()V

    return-void
.end method

.method final b(ILa/a/c/a;)V
    .locals 1

    iget-object v0, p0, La/a/c/d;->j:La/a/c/c;

    invoke-interface {v0, p1, p2}, La/a/c/c;->a(ILa/a/c/a;)V

    return-void
.end method

.method public final c()La/v;
    .locals 1

    iget-object v0, p0, La/a/c/d;->b:La/v;

    return-object v0
.end method

.method public final close()V
    .locals 2

    sget-object v0, La/a/c/a;->l:La/a/c/a;

    sget-object v1, La/a/c/a;->a:La/a/c/a;

    invoke-direct {p0, v0, v1}, La/a/c/d;->a(La/a/c/a;La/a/c/a;)V

    return-void
.end method

.method public final d()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, La/a/c/d;->r:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final e()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, La/a/c/d;->g:La/a/c/k;

    invoke-virtual {v0}, La/a/c/k;->d()I
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

.method public final f()V
    .locals 6

    const/high16 v3, 0x10000

    iget-object v0, p0, La/a/c/d;->j:La/a/c/c;

    invoke-interface {v0}, La/a/c/c;->a()V

    iget-object v0, p0, La/a/c/d;->j:La/a/c/c;

    iget-object v1, p0, La/a/c/d;->f:La/a/c/k;

    invoke-interface {v0, v1}, La/a/c/c;->b(La/a/c/k;)V

    iget-object v0, p0, La/a/c/d;->f:La/a/c/k;

    invoke-virtual {v0}, La/a/c/k;->e()I

    move-result v0

    if-eq v0, v3, :cond_0

    iget-object v1, p0, La/a/c/d;->j:La/a/c/c;

    const/4 v2, 0x0

    sub-int/2addr v0, v3

    int-to-long v4, v0

    invoke-interface {v1, v2, v4, v5}, La/a/c/c;->a(IJ)V

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, La/a/c/d;->k:La/a/c/d$c;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
