.class Lcom/b/a/c/b/v;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/b/a/c/a/d$a;
.implements Lcom/b/a/c/b/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/b/a/c/a/d$a",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Lcom/b/a/c/b/e;"
    }
.end annotation


# instance fields
.field private final a:Lcom/b/a/c/b/e$a;

.field private final b:Lcom/b/a/c/b/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/a/c/b/f",
            "<*>;"
        }
    .end annotation
.end field

.field private c:I

.field private d:I

.field private e:Lcom/b/a/c/h;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/b/a/c/c/n",
            "<",
            "Ljava/io/File;",
            "*>;>;"
        }
    .end annotation
.end field

.field private g:I

.field private volatile h:Lcom/b/a/c/c/n$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/a/c/c/n$a",
            "<*>;"
        }
    .end annotation
.end field

.field private i:Ljava/io/File;

.field private j:Lcom/b/a/c/b/w;


# direct methods
.method constructor <init>(Lcom/b/a/c/b/f;Lcom/b/a/c/b/e$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/c/b/f",
            "<*>;",
            "Lcom/b/a/c/b/e$a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/b/a/c/b/v;->d:I

    iput-object p1, p0, Lcom/b/a/c/b/v;->b:Lcom/b/a/c/b/f;

    iput-object p2, p0, Lcom/b/a/c/b/v;->a:Lcom/b/a/c/b/e$a;

    return-void
.end method

.method private c()Z
    .locals 2

    iget v0, p0, Lcom/b/a/c/b/v;->g:I

    iget-object v1, p0, Lcom/b/a/c/b/v;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 4

    iget-object v0, p0, Lcom/b/a/c/b/v;->a:Lcom/b/a/c/b/e$a;

    iget-object v1, p0, Lcom/b/a/c/b/v;->j:Lcom/b/a/c/b/w;

    iget-object v2, p0, Lcom/b/a/c/b/v;->h:Lcom/b/a/c/c/n$a;

    iget-object v2, v2, Lcom/b/a/c/c/n$a;->c:Lcom/b/a/c/a/d;

    sget-object v3, Lcom/b/a/c/a;->d:Lcom/b/a/c/a;

    invoke-interface {v0, v1, p1, v2, v3}, Lcom/b/a/c/b/e$a;->a(Lcom/b/a/c/h;Ljava/lang/Exception;Lcom/b/a/c/a/d;Lcom/b/a/c/a;)V

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/b/a/c/b/v;->a:Lcom/b/a/c/b/e$a;

    iget-object v1, p0, Lcom/b/a/c/b/v;->e:Lcom/b/a/c/h;

    iget-object v2, p0, Lcom/b/a/c/b/v;->h:Lcom/b/a/c/c/n$a;

    iget-object v3, v2, Lcom/b/a/c/c/n$a;->c:Lcom/b/a/c/a/d;

    sget-object v4, Lcom/b/a/c/a;->d:Lcom/b/a/c/a;

    iget-object v5, p0, Lcom/b/a/c/b/v;->j:Lcom/b/a/c/b/w;

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/b/a/c/b/e$a;->a(Lcom/b/a/c/h;Ljava/lang/Object;Lcom/b/a/c/a/d;Lcom/b/a/c/a;Lcom/b/a/c/h;)V

    return-void
.end method

.method public a()Z
    .locals 12

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/b/a/c/b/v;->b:Lcom/b/a/c/b/f;

    invoke-virtual {v0}, Lcom/b/a/c/b/f;->n()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v9

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v0, p0, Lcom/b/a/c/b/v;->b:Lcom/b/a/c/b/f;

    invoke-virtual {v0}, Lcom/b/a/c/b/f;->k()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    const-class v0, Ljava/io/File;

    iget-object v1, p0, Lcom/b/a/c/b/v;->b:Lcom/b/a/c/b/f;

    invoke-virtual {v1}, Lcom/b/a/c/b/f;->j()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v1, v9

    goto :goto_0

    :cond_2
    iput v9, p0, Lcom/b/a/c/b/v;->d:I

    :cond_3
    iget v0, p0, Lcom/b/a/c/b/v;->c:I

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/b/a/c/h;

    iget v0, p0, Lcom/b/a/c/b/v;->d:I

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Class;

    iget-object v0, p0, Lcom/b/a/c/b/v;->b:Lcom/b/a/c/b/f;

    invoke-virtual {v0, v7}, Lcom/b/a/c/b/f;->c(Ljava/lang/Class;)Lcom/b/a/c/m;

    move-result-object v6

    new-instance v0, Lcom/b/a/c/b/w;

    iget-object v1, p0, Lcom/b/a/c/b/v;->b:Lcom/b/a/c/b/f;

    invoke-virtual {v1}, Lcom/b/a/c/b/f;->i()Lcom/b/a/c/b/a/b;

    move-result-object v1

    iget-object v3, p0, Lcom/b/a/c/b/v;->b:Lcom/b/a/c/b/f;

    invoke-virtual {v3}, Lcom/b/a/c/b/f;->f()Lcom/b/a/c/h;

    move-result-object v3

    iget-object v4, p0, Lcom/b/a/c/b/v;->b:Lcom/b/a/c/b/f;

    invoke-virtual {v4}, Lcom/b/a/c/b/f;->g()I

    move-result v4

    iget-object v5, p0, Lcom/b/a/c/b/v;->b:Lcom/b/a/c/b/f;

    invoke-virtual {v5}, Lcom/b/a/c/b/f;->h()I

    move-result v5

    iget-object v8, p0, Lcom/b/a/c/b/v;->b:Lcom/b/a/c/b/f;

    invoke-virtual {v8}, Lcom/b/a/c/b/f;->e()Lcom/b/a/c/j;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Lcom/b/a/c/b/w;-><init>(Lcom/b/a/c/b/a/b;Lcom/b/a/c/h;Lcom/b/a/c/h;IILcom/b/a/c/m;Ljava/lang/Class;Lcom/b/a/c/j;)V

    iput-object v0, p0, Lcom/b/a/c/b/v;->j:Lcom/b/a/c/b/w;

    iget-object v0, p0, Lcom/b/a/c/b/v;->b:Lcom/b/a/c/b/f;

    invoke-virtual {v0}, Lcom/b/a/c/b/f;->b()Lcom/b/a/c/b/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/b/a/c/b/v;->j:Lcom/b/a/c/b/w;

    invoke-interface {v0, v1}, Lcom/b/a/c/b/b/a;->a(Lcom/b/a/c/h;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/c/b/v;->i:Ljava/io/File;

    iget-object v0, p0, Lcom/b/a/c/b/v;->i:Ljava/io/File;

    if-eqz v0, :cond_4

    iput-object v2, p0, Lcom/b/a/c/b/v;->e:Lcom/b/a/c/h;

    iget-object v0, p0, Lcom/b/a/c/b/v;->b:Lcom/b/a/c/b/f;

    iget-object v1, p0, Lcom/b/a/c/b/v;->i:Ljava/io/File;

    invoke-virtual {v0, v1}, Lcom/b/a/c/b/f;->a(Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/c/b/v;->f:Ljava/util/List;

    iput v9, p0, Lcom/b/a/c/b/v;->g:I

    :cond_4
    iget-object v0, p0, Lcom/b/a/c/b/v;->f:Ljava/util/List;

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/b/a/c/b/v;->c()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    iget v0, p0, Lcom/b/a/c/b/v;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/b/a/c/b/v;->d:I

    iget v0, p0, Lcom/b/a/c/b/v;->d:I

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_3

    iget v0, p0, Lcom/b/a/c/b/v;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/b/a/c/b/v;->c:I

    iget v0, p0, Lcom/b/a/c/b/v;->c:I

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_2

    move v1, v9

    goto/16 :goto_0

    :cond_6
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/b/a/c/b/v;->h:Lcom/b/a/c/c/n$a;

    move v1, v9

    :goto_1
    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/b/a/c/b/v;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/c/b/v;->f:Ljava/util/List;

    iget v2, p0, Lcom/b/a/c/b/v;->g:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/b/a/c/b/v;->g:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/c/c/n;

    iget-object v2, p0, Lcom/b/a/c/b/v;->i:Ljava/io/File;

    iget-object v3, p0, Lcom/b/a/c/b/v;->b:Lcom/b/a/c/b/f;

    invoke-virtual {v3}, Lcom/b/a/c/b/f;->g()I

    move-result v3

    iget-object v4, p0, Lcom/b/a/c/b/v;->b:Lcom/b/a/c/b/f;

    invoke-virtual {v4}, Lcom/b/a/c/b/f;->h()I

    move-result v4

    iget-object v5, p0, Lcom/b/a/c/b/v;->b:Lcom/b/a/c/b/f;

    invoke-virtual {v5}, Lcom/b/a/c/b/f;->e()Lcom/b/a/c/j;

    move-result-object v5

    invoke-interface {v0, v2, v3, v4, v5}, Lcom/b/a/c/c/n;->a(Ljava/lang/Object;IILcom/b/a/c/j;)Lcom/b/a/c/c/n$a;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/c/b/v;->h:Lcom/b/a/c/c/n$a;

    iget-object v0, p0, Lcom/b/a/c/b/v;->h:Lcom/b/a/c/c/n$a;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/b/a/c/b/v;->b:Lcom/b/a/c/b/f;

    iget-object v2, p0, Lcom/b/a/c/b/v;->h:Lcom/b/a/c/c/n$a;

    iget-object v2, v2, Lcom/b/a/c/c/n$a;->c:Lcom/b/a/c/a/d;

    invoke-interface {v2}, Lcom/b/a/c/a/d;->a()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/b/a/c/b/f;->a(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/b/a/c/b/v;->h:Lcom/b/a/c/c/n$a;

    iget-object v1, v1, Lcom/b/a/c/c/n$a;->c:Lcom/b/a/c/a/d;

    iget-object v2, p0, Lcom/b/a/c/b/v;->b:Lcom/b/a/c/b/f;

    invoke-virtual {v2}, Lcom/b/a/c/b/f;->d()Lcom/b/a/g;

    move-result-object v2

    invoke-interface {v1, v2, p0}, Lcom/b/a/c/a/d;->a(Lcom/b/a/g;Lcom/b/a/c/a/d$a;)V

    :goto_2
    move v1, v0

    goto :goto_1

    :cond_7
    move v0, v1

    goto :goto_2
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/b/a/c/b/v;->h:Lcom/b/a/c/c/n$a;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/b/a/c/c/n$a;->c:Lcom/b/a/c/a/d;

    invoke-interface {v0}, Lcom/b/a/c/a/d;->c()V

    :cond_0
    return-void
.end method
