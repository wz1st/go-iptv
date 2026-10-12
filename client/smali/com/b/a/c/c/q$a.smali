.class Lcom/b/a/c/c/q$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/b/a/c/a/d;
.implements Lcom/b/a/c/a/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/c/c/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/b/a/c/a/d",
        "<TData;>;",
        "Lcom/b/a/c/a/d$a",
        "<TData;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/b/a/c/a/d",
            "<TData;>;>;"
        }
    .end annotation
.end field

.field private final b:Landroid/support/v4/e/l$a;
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

.field private c:I

.field private d:Lcom/b/a/g;

.field private e:Lcom/b/a/c/a/d$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/a/c/a/d$a",
            "<-TData;>;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;Landroid/support/v4/e/l$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/b/a/c/a/d",
            "<TData;>;>;",
            "Landroid/support/v4/e/l$a",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Throwable;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/b/a/c/c/q$a;->b:Landroid/support/v4/e/l$a;

    invoke-static {p1}, Lcom/b/a/i/i;->a(Ljava/util/Collection;)Ljava/util/Collection;

    iput-object p1, p0, Lcom/b/a/c/c/q$a;->a:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/b/a/c/c/q$a;->c:I

    return-void
.end method

.method private e()V
    .locals 5

    iget v0, p0, Lcom/b/a/c/c/q$a;->c:I

    iget-object v1, p0, Lcom/b/a/c/c/q$a;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/b/a/c/c/q$a;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/b/a/c/c/q$a;->c:I

    iget-object v0, p0, Lcom/b/a/c/c/q$a;->d:Lcom/b/a/g;

    iget-object v1, p0, Lcom/b/a/c/c/q$a;->e:Lcom/b/a/c/a/d$a;

    invoke-virtual {p0, v0, v1}, Lcom/b/a/c/c/q$a;->a(Lcom/b/a/g;Lcom/b/a/c/a/d$a;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/b/a/c/c/q$a;->f:Ljava/util/List;

    invoke-static {v0}, Lcom/b/a/i/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/b/a/c/c/q$a;->e:Lcom/b/a/c/a/d$a;

    new-instance v1, Lcom/b/a/c/b/p;

    const-string v2, "Fetch failed"

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/b/a/c/c/q$a;->f:Ljava/util/List;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v1, v2, v3}, Lcom/b/a/c/b/p;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v0, v1}, Lcom/b/a/c/a/d$a;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TData;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/b/a/c/c/q$a;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/c/a/d;

    invoke-interface {v0}, Lcom/b/a/c/a/d;->a()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/b/a/g;Lcom/b/a/c/a/d$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/g;",
            "Lcom/b/a/c/a/d$a",
            "<-TData;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/b/a/c/c/q$a;->d:Lcom/b/a/g;

    iput-object p2, p0, Lcom/b/a/c/c/q$a;->e:Lcom/b/a/c/a/d$a;

    iget-object v0, p0, Lcom/b/a/c/c/q$a;->b:Landroid/support/v4/e/l$a;

    invoke-interface {v0}, Landroid/support/v4/e/l$a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/b/a/c/c/q$a;->f:Ljava/util/List;

    iget-object v0, p0, Lcom/b/a/c/c/q$a;->a:Ljava/util/List;

    iget v1, p0, Lcom/b/a/c/c/q$a;->c:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/c/a/d;

    invoke-interface {v0, p1, p0}, Lcom/b/a/c/a/d;->a(Lcom/b/a/g;Lcom/b/a/c/a/d$a;)V

    return-void
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lcom/b/a/c/c/q$a;->f:Ljava/util/List;

    invoke-static {v0}, Lcom/b/a/i/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/b/a/c/c/q$a;->e()V

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TData;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/b/a/c/c/q$a;->e:Lcom/b/a/c/a/d$a;

    invoke-interface {v0, p1}, Lcom/b/a/c/a/d$a;->a(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/b/a/c/c/q$a;->e()V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/b/a/c/c/q$a;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/c/c/q$a;->b:Landroid/support/v4/e/l$a;

    iget-object v1, p0, Lcom/b/a/c/c/q$a;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Landroid/support/v4/e/l$a;->a(Ljava/lang/Object;)Z

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/b/a/c/c/q$a;->f:Ljava/util/List;

    iget-object v0, p0, Lcom/b/a/c/c/q$a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/c/a/d;

    invoke-interface {v0}, Lcom/b/a/c/a/d;->b()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/b/a/c/c/q$a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/c/a/d;

    invoke-interface {v0}, Lcom/b/a/c/a/d;->c()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public d()Lcom/b/a/c/a;
    .locals 2

    iget-object v0, p0, Lcom/b/a/c/c/q$a;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/c/a/d;

    invoke-interface {v0}, Lcom/b/a/c/a/d;->d()Lcom/b/a/c/a;

    move-result-object v0

    return-object v0
.end method
