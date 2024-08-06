.class public Lcom/b/a/c/a/f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/b/a/c/a/f$a;
    }
.end annotation


# static fields
.field private static final b:Lcom/b/a/c/a/e$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/a/c/a/e$a",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/b/a/c/a/e$a",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/b/a/c/a/f$1;

    invoke-direct {v0}, Lcom/b/a/c/a/f$1;-><init>()V

    sput-object v0, Lcom/b/a/c/a/f;->b:Lcom/b/a/c/a/e$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/b/a/c/a/f;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/Object;)Lcom/b/a/c/a/e;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/b/a/c/a/e",
            "<TT;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/b/a/i/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/b/a/c/a/f;->a:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/c/a/e$a;

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/b/a/c/a/f;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/b/a/c/a/e$a;

    invoke-interface {v1}, Lcom/b/a/c/a/e$a;->a()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, v1

    :cond_1
    if-nez v0, :cond_2

    sget-object v0, Lcom/b/a/c/a/f;->b:Lcom/b/a/c/a/e$a;

    :cond_2
    invoke-interface {v0, p1}, Lcom/b/a/c/a/e$a;->a(Ljava/lang/Object;)Lcom/b/a/c/a/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/b/a/c/a/e$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/c/a/e$a",
            "<*>;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/b/a/c/a/f;->a:Ljava/util/Map;

    invoke-interface {p1}, Lcom/b/a/c/a/e$a;->a()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
