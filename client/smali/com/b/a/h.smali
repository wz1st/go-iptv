.class public Lcom/b/a/h;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/b/a/h$b;,
        Lcom/b/a/h$a;,
        Lcom/b/a/h$e;,
        Lcom/b/a/h$d;,
        Lcom/b/a/h$c;
    }
.end annotation


# instance fields
.field private final a:Lcom/b/a/c/c/p;

.field private final b:Lcom/b/a/f/a;

.field private final c:Lcom/b/a/f/e;

.field private final d:Lcom/b/a/f/f;

.field private final e:Lcom/b/a/c/a/f;

.field private final f:Lcom/b/a/c/d/f/f;

.field private final g:Lcom/b/a/f/b;

.field private final h:Lcom/b/a/f/d;

.field private final i:Lcom/b/a/f/c;

.field private final j:Landroid/support/v4/e/l$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/e/l$a",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Throwable;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/b/a/f/d;

    invoke-direct {v0}, Lcom/b/a/f/d;-><init>()V

    iput-object v0, p0, Lcom/b/a/h;->h:Lcom/b/a/f/d;

    new-instance v0, Lcom/b/a/f/c;

    invoke-direct {v0}, Lcom/b/a/f/c;-><init>()V

    iput-object v0, p0, Lcom/b/a/h;->i:Lcom/b/a/f/c;

    invoke-static {}, Lcom/b/a/i/a/a;->a()Landroid/support/v4/e/l$a;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/h;->j:Landroid/support/v4/e/l$a;

    new-instance v0, Lcom/b/a/c/c/p;

    iget-object v1, p0, Lcom/b/a/h;->j:Landroid/support/v4/e/l$a;

    invoke-direct {v0, v1}, Lcom/b/a/c/c/p;-><init>(Landroid/support/v4/e/l$a;)V

    iput-object v0, p0, Lcom/b/a/h;->a:Lcom/b/a/c/c/p;

    new-instance v0, Lcom/b/a/f/a;

    invoke-direct {v0}, Lcom/b/a/f/a;-><init>()V

    iput-object v0, p0, Lcom/b/a/h;->b:Lcom/b/a/f/a;

    new-instance v0, Lcom/b/a/f/e;

    invoke-direct {v0}, Lcom/b/a/f/e;-><init>()V

    iput-object v0, p0, Lcom/b/a/h;->c:Lcom/b/a/f/e;

    new-instance v0, Lcom/b/a/f/f;

    invoke-direct {v0}, Lcom/b/a/f/f;-><init>()V

    iput-object v0, p0, Lcom/b/a/h;->d:Lcom/b/a/f/f;

    new-instance v0, Lcom/b/a/c/a/f;

    invoke-direct {v0}, Lcom/b/a/c/a/f;-><init>()V

    iput-object v0, p0, Lcom/b/a/h;->e:Lcom/b/a/c/a/f;

    new-instance v0, Lcom/b/a/c/d/f/f;

    invoke-direct {v0}, Lcom/b/a/c/d/f/f;-><init>()V

    iput-object v0, p0, Lcom/b/a/h;->f:Lcom/b/a/c/d/f/f;

    new-instance v0, Lcom/b/a/f/b;

    invoke-direct {v0}, Lcom/b/a/f/b;-><init>()V

    iput-object v0, p0, Lcom/b/a/h;->g:Lcom/b/a/f/b;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Gif"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Bitmap"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "BitmapDrawable"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/b/a/h;->a(Ljava/util/List;)Lcom/b/a/h;

    return-void
.end method

.method private c(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;
    .locals 10
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
            "Ljava/util/List",
            "<",
            "Lcom/b/a/c/b/h",
            "<TData;TTResource;TTranscode;>;>;"
        }
    .end annotation

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/b/a/h;->c:Lcom/b/a/f/e;

    invoke-virtual {v0, p1, p2}, Lcom/b/a/f/e;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    iget-object v0, p0, Lcom/b/a/h;->f:Lcom/b/a/c/d/f/f;

    invoke-virtual {v0, v2, p3}, Lcom/b/a/c/d/f/f;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    iget-object v0, p0, Lcom/b/a/h;->c:Lcom/b/a/f/e;

    invoke-virtual {v0, p1, v2}, Lcom/b/a/f/e;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v4

    iget-object v0, p0, Lcom/b/a/h;->f:Lcom/b/a/c/d/f/f;

    invoke-virtual {v0, v2, v3}, Lcom/b/a/c/d/f/f;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/b/a/c/d/f/e;

    move-result-object v5

    new-instance v0, Lcom/b/a/c/b/h;

    iget-object v6, p0, Lcom/b/a/h;->j:Landroid/support/v4/e/l$a;

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/b/a/c/b/h;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/util/List;Lcom/b/a/c/d/f/e;Landroid/support/v4/e/l$a;)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v7
.end method


# virtual methods
.method public a(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Lcom/b/a/c/b/s;
    .locals 6
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

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/b/a/h;->i:Lcom/b/a/f/c;

    invoke-virtual {v1, p1, p2, p3}, Lcom/b/a/f/c;->a(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Lcom/b/a/c/b/s;

    move-result-object v1

    iget-object v2, p0, Lcom/b/a/h;->i:Lcom/b/a/f/c;

    invoke-virtual {v2, v1}, Lcom/b/a/f/c;->a(Lcom/b/a/c/b/s;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    if-nez v1, :cond_2

    invoke-direct {p0, p1, p2, p3}, Lcom/b/a/h;->c(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_1
    iget-object v1, p0, Lcom/b/a/h;->i:Lcom/b/a/f/c;

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/b/a/f/c;->a(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Lcom/b/a/c/b/s;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/b/a/c/b/s;

    iget-object v5, p0, Lcom/b/a/h;->j:Landroid/support/v4/e/l$a;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/b/a/c/b/s;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/util/List;Landroid/support/v4/e/l$a;)V

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public a(Ljava/lang/Object;)Lcom/b/a/c/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(TX;)",
            "Lcom/b/a/c/d",
            "<TX;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/b/a/h;->b:Lcom/b/a/f/a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/f/a;->a(Ljava/lang/Class;)Lcom/b/a/c/d;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/b/a/h$e;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/b/a/h$e;-><init>(Ljava/lang/Class;)V

    throw v0
.end method

.method public a(Lcom/b/a/c/a/e$a;)Lcom/b/a/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/c/a/e$a",
            "<*>;)",
            "Lcom/b/a/h;"
        }
    .end annotation

    iget-object v0, p0, Lcom/b/a/h;->e:Lcom/b/a/c/a/f;

    invoke-virtual {v0, p1}, Lcom/b/a/c/a/f;->a(Lcom/b/a/c/a/e$a;)V

    return-object p0
.end method

.method public a(Lcom/b/a/c/f;)Lcom/b/a/h;
    .locals 1

    iget-object v0, p0, Lcom/b/a/h;->g:Lcom/b/a/f/b;

    invoke-virtual {v0, p1}, Lcom/b/a/f/b;->a(Lcom/b/a/c/f;)V

    return-object p0
.end method

.method public a(Ljava/lang/Class;Lcom/b/a/c/d;)Lcom/b/a/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TData;>;",
            "Lcom/b/a/c/d",
            "<TData;>;)",
            "Lcom/b/a/h;"
        }
    .end annotation

    iget-object v0, p0, Lcom/b/a/h;->b:Lcom/b/a/f/a;

    invoke-virtual {v0, p1, p2}, Lcom/b/a/f/a;->a(Ljava/lang/Class;Lcom/b/a/c/d;)V

    return-object p0
.end method

.method public a(Ljava/lang/Class;Lcom/b/a/c/l;)Lcom/b/a/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResource:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TTResource;>;",
            "Lcom/b/a/c/l",
            "<TTResource;>;)",
            "Lcom/b/a/h;"
        }
    .end annotation

    iget-object v0, p0, Lcom/b/a/h;->d:Lcom/b/a/f/f;

    invoke-virtual {v0, p1, p2}, Lcom/b/a/f/f;->a(Ljava/lang/Class;Lcom/b/a/c/l;)V

    return-object p0
.end method

.method public a(Ljava/lang/Class;Ljava/lang/Class;Lcom/b/a/c/c/o;)Lcom/b/a/h;
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
            "<TModel;TData;>;)",
            "Lcom/b/a/h;"
        }
    .end annotation

    iget-object v0, p0, Lcom/b/a/h;->a:Lcom/b/a/c/c/p;

    invoke-virtual {v0, p1, p2, p3}, Lcom/b/a/c/c/p;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/b/a/c/c/o;)V

    return-object p0
.end method

.method public a(Ljava/lang/Class;Ljava/lang/Class;Lcom/b/a/c/d/f/e;)Lcom/b/a/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResource:",
            "Ljava/lang/Object;",
            "Transcode:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TTResource;>;",
            "Ljava/lang/Class",
            "<TTranscode;>;",
            "Lcom/b/a/c/d/f/e",
            "<TTResource;TTranscode;>;)",
            "Lcom/b/a/h;"
        }
    .end annotation

    iget-object v0, p0, Lcom/b/a/h;->f:Lcom/b/a/c/d/f/f;

    invoke-virtual {v0, p1, p2, p3}, Lcom/b/a/c/d/f/f;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/b/a/c/d/f/e;)V

    return-object p0
.end method

.method public a(Ljava/lang/Class;Ljava/lang/Class;Lcom/b/a/c/k;)Lcom/b/a/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            "TResource:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TData;>;",
            "Ljava/lang/Class",
            "<TTResource;>;",
            "Lcom/b/a/c/k",
            "<TData;TTResource;>;)",
            "Lcom/b/a/h;"
        }
    .end annotation

    const-string v0, "legacy_append"

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/b/a/h;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/b/a/c/k;)Lcom/b/a/h;

    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/b/a/c/k;)Lcom/b/a/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            "TResource:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TData;>;",
            "Ljava/lang/Class",
            "<TTResource;>;",
            "Lcom/b/a/c/k",
            "<TData;TTResource;>;)",
            "Lcom/b/a/h;"
        }
    .end annotation

    iget-object v0, p0, Lcom/b/a/h;->c:Lcom/b/a/f/e;

    invoke-virtual {v0, p1, p4, p2, p3}, Lcom/b/a/f/e;->a(Ljava/lang/String;Lcom/b/a/c/k;Ljava/lang/Class;Ljava/lang/Class;)V

    return-object p0
.end method

.method public final a(Ljava/util/List;)Lcom/b/a/h;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/b/a/h;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v1, 0x0

    const-string v2, "legacy_prepend_all"

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const-string v1, "legacy_append"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/b/a/h;->c:Lcom/b/a/f/e;

    invoke-virtual {v1, v0}, Lcom/b/a/f/e;->a(Ljava/util/List;)V

    return-object p0
.end method

.method public a()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/b/a/c/f;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/b/a/h;->g:Lcom/b/a/f/b;

    invoke-virtual {v0}, Lcom/b/a/f/b;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/b/a/h$b;

    invoke-direct {v0}, Lcom/b/a/h$b;-><init>()V

    throw v0

    :cond_0
    return-object v0
.end method

.method public a(Lcom/b/a/c/b/u;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/c/b/u",
            "<*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/b/a/h;->d:Lcom/b/a/f/f;

    invoke-interface {p1}, Lcom/b/a/c/b/u;->c()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/f/f;->a(Ljava/lang/Class;)Lcom/b/a/c/l;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Ljava/lang/Object;)Lcom/b/a/c/a/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(TX;)",
            "Lcom/b/a/c/a/e",
            "<TX;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/b/a/h;->e:Lcom/b/a/c/a/f;

    invoke-virtual {v0, p1}, Lcom/b/a/c/a/f;->a(Ljava/lang/Object;)Lcom/b/a/c/a/e;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/b/a/c/b/u;)Lcom/b/a/c/l;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/b/a/c/b/u",
            "<TX;>;)",
            "Lcom/b/a/c/l",
            "<TX;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/b/a/h;->d:Lcom/b/a/f/f;

    invoke-interface {p1}, Lcom/b/a/c/b/u;->c()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/f/f;->a(Ljava/lang/Class;)Lcom/b/a/c/l;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/b/a/h$d;

    invoke-interface {p1}, Lcom/b/a/c/b/u;->c()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/b/a/h$d;-><init>(Ljava/lang/Class;)V

    throw v0
.end method

.method public b(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            "TResource:",
            "Ljava/lang/Object;",
            "Transcode:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TModel;>;",
            "Ljava/lang/Class",
            "<TTResource;>;",
            "Ljava/lang/Class",
            "<TTranscode;>;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/b/a/h;->h:Lcom/b/a/f/d;

    invoke-virtual {v0, p1, p2}, Lcom/b/a/f/d;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/b/a/h;->a:Lcom/b/a/c/c/p;

    invoke-virtual {v0, p1}, Lcom/b/a/c/c/p;->a(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iget-object v3, p0, Lcom/b/a/h;->c:Lcom/b/a/f/e;

    invoke-virtual {v3, v0, p2}, Lcom/b/a/f/e;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iget-object v4, p0, Lcom/b/a/h;->f:Lcom/b/a/c/d/f/f;

    invoke-virtual {v4, v0, p3}, Lcom/b/a/c/d/f/f;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/b/a/h;->h:Lcom/b/a/f/d;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, p1, p2, v2}, Lcom/b/a/f/d;->a(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/List;)V

    move-object v0, v1

    :cond_3
    return-object v0
.end method

.method public c(Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            ">(TModel;)",
            "Ljava/util/List",
            "<",
            "Lcom/b/a/c/c/n",
            "<TModel;*>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/b/a/h;->a:Lcom/b/a/c/c/p;

    invoke-virtual {v0, p1}, Lcom/b/a/c/c/p;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/b/a/h$c;

    invoke-direct {v0, p1}, Lcom/b/a/h$c;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    return-object v0
.end method
