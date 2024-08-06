.class public Lcom/b/a/f/c;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/b/a/c/b/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/a/c/b/s",
            "<***>;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Landroid/support/v4/e/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/e/a",
            "<",
            "Lcom/b/a/i/h;",
            "Lcom/b/a/c/b/s",
            "<***>;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/b/a/i/h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/4 v6, 0x0

    new-instance v7, Lcom/b/a/c/b/s;

    const-class v8, Ljava/lang/Object;

    const-class v9, Ljava/lang/Object;

    const-class v10, Ljava/lang/Object;

    new-instance v0, Lcom/b/a/c/b/h;

    const-class v1, Ljava/lang/Object;

    const-class v2, Ljava/lang/Object;

    const-class v3, Ljava/lang/Object;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    new-instance v5, Lcom/b/a/c/d/f/g;

    invoke-direct {v5}, Lcom/b/a/c/d/f/g;-><init>()V

    invoke-direct/range {v0 .. v6}, Lcom/b/a/c/b/h;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/util/List;Lcom/b/a/c/d/f/e;Landroid/support/v4/e/l$a;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    move-object v1, v7

    move-object v2, v8

    move-object v3, v9

    move-object v4, v10

    invoke-direct/range {v1 .. v6}, Lcom/b/a/c/b/s;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/util/List;Landroid/support/v4/e/l$a;)V

    sput-object v7, Lcom/b/a/f/c;->a:Lcom/b/a/c/b/s;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/support/v4/e/a;

    invoke-direct {v0}, Landroid/support/v4/e/a;-><init>()V

    iput-object v0, p0, Lcom/b/a/f/c;->b:Landroid/support/v4/e/a;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/b/a/f/c;->c:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private b(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Lcom/b/a/i/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/b/a/i/h;"
        }
    .end annotation

    iget-object v0, p0, Lcom/b/a/f/c;->c:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/i/h;

    if-nez v0, :cond_0

    new-instance v0, Lcom/b/a/i/h;

    invoke-direct {v0}, Lcom/b/a/i/h;-><init>()V

    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/b/a/i/h;->a(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Lcom/b/a/c/b/s;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            "TResource:",
            "Ljava/lang/Object;",
            "Transcode:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TData;>;",
            "Ljava/lang/Class",
            "<TTResource;>;",
            "Ljava/lang/Class",
            "<TTranscode;>;)",
            "Lcom/b/a/c/b/s",
            "<TData;TTResource;TTranscode;>;"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/b/a/f/c;->b(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Lcom/b/a/i/h;

    move-result-object v1

    iget-object v2, p0, Lcom/b/a/f/c;->b:Landroid/support/v4/e/a;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/b/a/f/c;->b:Landroid/support/v4/e/a;

    invoke-virtual {v0, v1}, Landroid/support/v4/e/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/c/b/s;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lcom/b/a/f/c;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Lcom/b/a/c/b/s;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/b/a/c/b/s",
            "<***>;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/b/a/f/c;->b:Landroid/support/v4/e/a;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/b/a/f/c;->b:Landroid/support/v4/e/a;

    new-instance v2, Lcom/b/a/i/h;

    invoke-direct {v2, p1, p2, p3}, Lcom/b/a/i/h;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    if-eqz p4, :cond_0

    :goto_0
    invoke-virtual {v0, v2, p4}, Landroid/support/v4/e/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :cond_0
    sget-object p4, Lcom/b/a/f/c;->a:Lcom/b/a/c/b/s;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/b/a/c/b/s;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/c/b/s",
            "<***>;)Z"
        }
    .end annotation

    sget-object v0, Lcom/b/a/f/c;->a:Lcom/b/a/c/b/s;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
