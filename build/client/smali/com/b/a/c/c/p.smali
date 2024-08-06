.class public Lcom/b/a/c/c/p;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/b/a/c/c/p$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/b/a/c/c/r;

.field private final b:Lcom/b/a/c/c/p$a;


# direct methods
.method public constructor <init>(Landroid/support/v4/e/l$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/e/l$a",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Throwable;",
            ">;>;)V"
        }
    .end annotation

    new-instance v0, Lcom/b/a/c/c/r;

    invoke-direct {v0, p1}, Lcom/b/a/c/c/r;-><init>(Landroid/support/v4/e/l$a;)V

    invoke-direct {p0, v0}, Lcom/b/a/c/c/p;-><init>(Lcom/b/a/c/c/r;)V

    return-void
.end method

.method private constructor <init>(Lcom/b/a/c/c/r;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/b/a/c/c/p$a;

    invoke-direct {v0}, Lcom/b/a/c/c/p$a;-><init>()V

    iput-object v0, p0, Lcom/b/a/c/c/p;->b:Lcom/b/a/c/c/p$a;

    iput-object p1, p0, Lcom/b/a/c/c/p;->a:Lcom/b/a/c/c/r;

    return-void
.end method

.method private static b(Ljava/lang/Object;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(TA;)",
            "Ljava/lang/Class",
            "<TA;>;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized b(Ljava/lang/Class;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TA;>;)",
            "Ljava/util/List",
            "<",
            "Lcom/b/a/c/c/n",
            "<TA;*>;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/b/a/c/c/p;->b:Lcom/b/a/c/c/p$a;

    invoke-virtual {v0, p1}, Lcom/b/a/c/c/p$a;->a(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/b/a/c/c/p;->a:Lcom/b/a/c/c/r;

    invoke-virtual {v0, p1}, Lcom/b/a/c/c/r;->a(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/b/a/c/c/p;->b:Lcom/b/a/c/c/p$a;

    invoke-virtual {v1, p1, v0}, Lcom/b/a/c/c/p$a;->a(Ljava/lang/Class;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/b/a/c/c/p;->a:Lcom/b/a/c/c/r;

    invoke-virtual {v0, p1}, Lcom/b/a/c/c/r;->b(Ljava/lang/Class;)Ljava/util/List;
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

.method public a(Ljava/lang/Object;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(TA;)",
            "Ljava/util/List",
            "<",
            "Lcom/b/a/c/c/n",
            "<TA;*>;>;"
        }
    .end annotation

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/b/a/c/c/p;->b(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/b/a/c/c/p;->b(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    const/4 v2, 0x1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    move v4, v3

    :goto_0
    if-ge v4, v6, :cond_2

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/c/c/n;

    invoke-interface {v0, p1}, Lcom/b/a/c/c/n;->a(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    if-eqz v2, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    sub-int v2, v6, v4

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    move v2, v3

    :cond_0
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public declared-synchronized a(Ljava/lang/Class;Ljava/lang/Class;Lcom/b/a/c/c/o;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            "Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TModel;>;",
            "Ljava/lang/Class",
            "<TData;>;",
            "Lcom/b/a/c/c/o",
            "<+TModel;+TData;>;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/b/a/c/c/p;->a:Lcom/b/a/c/c/r;

    invoke-virtual {v0, p1, p2, p3}, Lcom/b/a/c/c/r;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/b/a/c/c/o;)V

    iget-object v0, p0, Lcom/b/a/c/c/p;->b:Lcom/b/a/c/c/p$a;

    invoke-virtual {v0}, Lcom/b/a/c/c/p$a;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
