.class Lcom/b/a/c/b/b/c$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/c/b/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/b/a/c/b/b/c$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/b/a/c/b/b/c$b;->a:Ljava/util/Queue;

    return-void
.end method


# virtual methods
.method a()Lcom/b/a/c/b/b/c$a;
    .locals 2

    iget-object v1, p0, Lcom/b/a/c/b/b/c$b;->a:Ljava/util/Queue;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/b/a/c/b/b/c$b;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/c/b/b/c$a;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    new-instance v0, Lcom/b/a/c/b/b/c$a;

    invoke-direct {v0}, Lcom/b/a/c/b/b/c$a;-><init>()V

    :cond_0
    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method a(Lcom/b/a/c/b/b/c$a;)V
    .locals 3

    iget-object v1, p0, Lcom/b/a/c/b/b/c$b;->a:Ljava/util/Queue;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/b/a/c/b/b/c$b;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    const/16 v2, 0xa

    if-ge v0, v2, :cond_0

    iget-object v0, p0, Lcom/b/a/c/b/b/c$b;->a:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

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
