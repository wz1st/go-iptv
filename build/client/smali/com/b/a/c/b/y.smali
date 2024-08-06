.class Lcom/b/a/c/b/y;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/b/a/c/a/d$a;
.implements Lcom/b/a/c/b/e;
.implements Lcom/b/a/c/b/e$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/b/a/c/a/d$a",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Lcom/b/a/c/b/e;",
        "Lcom/b/a/c/b/e$a;"
    }
.end annotation


# instance fields
.field private final a:Lcom/b/a/c/b/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/a/c/b/f",
            "<*>;"
        }
    .end annotation
.end field

.field private final b:Lcom/b/a/c/b/e$a;

.field private c:I

.field private d:Lcom/b/a/c/b/b;

.field private e:Ljava/lang/Object;

.field private volatile f:Lcom/b/a/c/c/n$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/a/c/c/n$a",
            "<*>;"
        }
    .end annotation
.end field

.field private g:Lcom/b/a/c/b/c;


# direct methods
.method constructor <init>(Lcom/b/a/c/b/f;Lcom/b/a/c/b/e$a;)V
    .locals 0
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

    iput-object p1, p0, Lcom/b/a/c/b/y;->a:Lcom/b/a/c/b/f;

    iput-object p2, p0, Lcom/b/a/c/b/y;->b:Lcom/b/a/c/b/e$a;

    return-void
.end method

.method private b(Ljava/lang/Object;)V
    .locals 7

    invoke-static {}, Lcom/b/a/i/e;->a()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/b/a/c/b/y;->a:Lcom/b/a/c/b/f;

    invoke-virtual {v2, p1}, Lcom/b/a/c/b/f;->a(Ljava/lang/Object;)Lcom/b/a/c/d;

    move-result-object v2

    new-instance v3, Lcom/b/a/c/b/d;

    iget-object v4, p0, Lcom/b/a/c/b/y;->a:Lcom/b/a/c/b/f;

    invoke-virtual {v4}, Lcom/b/a/c/b/f;->e()Lcom/b/a/c/j;

    move-result-object v4

    invoke-direct {v3, v2, p1, v4}, Lcom/b/a/c/b/d;-><init>(Lcom/b/a/c/d;Ljava/lang/Object;Lcom/b/a/c/j;)V

    new-instance v4, Lcom/b/a/c/b/c;

    iget-object v5, p0, Lcom/b/a/c/b/y;->f:Lcom/b/a/c/c/n$a;

    iget-object v5, v5, Lcom/b/a/c/c/n$a;->a:Lcom/b/a/c/h;

    iget-object v6, p0, Lcom/b/a/c/b/y;->a:Lcom/b/a/c/b/f;

    invoke-virtual {v6}, Lcom/b/a/c/b/f;->f()Lcom/b/a/c/h;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/b/a/c/b/c;-><init>(Lcom/b/a/c/h;Lcom/b/a/c/h;)V

    iput-object v4, p0, Lcom/b/a/c/b/y;->g:Lcom/b/a/c/b/c;

    iget-object v4, p0, Lcom/b/a/c/b/y;->a:Lcom/b/a/c/b/f;

    invoke-virtual {v4}, Lcom/b/a/c/b/f;->b()Lcom/b/a/c/b/b/a;

    move-result-object v4

    iget-object v5, p0, Lcom/b/a/c/b/y;->g:Lcom/b/a/c/b/c;

    invoke-interface {v4, v5, v3}, Lcom/b/a/c/b/b/a;->a(Lcom/b/a/c/h;Lcom/b/a/c/b/b/a$b;)V

    const-string v3, "SourceGenerator"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "SourceGenerator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Finished encoding source to cache, key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/b/a/c/b/y;->g:Lcom/b/a/c/b/c;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", data: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", encoder: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", duration: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0, v1}, Lcom/b/a/i/e;->a(J)D

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v0, p0, Lcom/b/a/c/b/y;->f:Lcom/b/a/c/c/n$a;

    iget-object v0, v0, Lcom/b/a/c/c/n$a;->c:Lcom/b/a/c/a/d;

    invoke-interface {v0}, Lcom/b/a/c/a/d;->b()V

    new-instance v0, Lcom/b/a/c/b/b;

    iget-object v1, p0, Lcom/b/a/c/b/y;->f:Lcom/b/a/c/c/n$a;

    iget-object v1, v1, Lcom/b/a/c/c/n$a;->a:Lcom/b/a/c/h;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/b/a/c/b/y;->a:Lcom/b/a/c/b/f;

    invoke-direct {v0, v1, v2, p0}, Lcom/b/a/c/b/b;-><init>(Ljava/util/List;Lcom/b/a/c/b/f;Lcom/b/a/c/b/e$a;)V

    iput-object v0, p0, Lcom/b/a/c/b/y;->d:Lcom/b/a/c/b/b;

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/b/a/c/b/y;->f:Lcom/b/a/c/c/n$a;

    iget-object v1, v1, Lcom/b/a/c/c/n$a;->c:Lcom/b/a/c/a/d;

    invoke-interface {v1}, Lcom/b/a/c/a/d;->b()V

    throw v0
.end method

.method private d()Z
    .locals 2

    iget v0, p0, Lcom/b/a/c/b/y;->c:I

    iget-object v1, p0, Lcom/b/a/c/b/y;->a:Lcom/b/a/c/b/f;

    invoke-virtual {v1}, Lcom/b/a/c/b/f;->m()Ljava/util/List;

    move-result-object v1

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
.method public a(Lcom/b/a/c/h;Ljava/lang/Exception;Lcom/b/a/c/a/d;Lcom/b/a/c/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/c/h;",
            "Ljava/lang/Exception;",
            "Lcom/b/a/c/a/d",
            "<*>;",
            "Lcom/b/a/c/a;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/b/a/c/b/y;->b:Lcom/b/a/c/b/e$a;

    iget-object v1, p0, Lcom/b/a/c/b/y;->f:Lcom/b/a/c/c/n$a;

    iget-object v1, v1, Lcom/b/a/c/c/n$a;->c:Lcom/b/a/c/a/d;

    invoke-interface {v1}, Lcom/b/a/c/a/d;->d()Lcom/b/a/c/a;

    move-result-object v1

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/b/a/c/b/e$a;->a(Lcom/b/a/c/h;Ljava/lang/Exception;Lcom/b/a/c/a/d;Lcom/b/a/c/a;)V

    return-void
.end method

.method public a(Lcom/b/a/c/h;Ljava/lang/Object;Lcom/b/a/c/a/d;Lcom/b/a/c/a;Lcom/b/a/c/h;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/c/h;",
            "Ljava/lang/Object;",
            "Lcom/b/a/c/a/d",
            "<*>;",
            "Lcom/b/a/c/a;",
            "Lcom/b/a/c/h;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/b/a/c/b/y;->b:Lcom/b/a/c/b/e$a;

    iget-object v1, p0, Lcom/b/a/c/b/y;->f:Lcom/b/a/c/c/n$a;

    iget-object v1, v1, Lcom/b/a/c/c/n$a;->c:Lcom/b/a/c/a/d;

    invoke-interface {v1}, Lcom/b/a/c/a/d;->d()Lcom/b/a/c/a;

    move-result-object v4

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p1

    invoke-interface/range {v0 .. v5}, Lcom/b/a/c/b/e$a;->a(Lcom/b/a/c/h;Ljava/lang/Object;Lcom/b/a/c/a/d;Lcom/b/a/c/a;Lcom/b/a/c/h;)V

    return-void
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 4

    iget-object v0, p0, Lcom/b/a/c/b/y;->b:Lcom/b/a/c/b/e$a;

    iget-object v1, p0, Lcom/b/a/c/b/y;->g:Lcom/b/a/c/b/c;

    iget-object v2, p0, Lcom/b/a/c/b/y;->f:Lcom/b/a/c/c/n$a;

    iget-object v2, v2, Lcom/b/a/c/c/n$a;->c:Lcom/b/a/c/a/d;

    iget-object v3, p0, Lcom/b/a/c/b/y;->f:Lcom/b/a/c/c/n$a;

    iget-object v3, v3, Lcom/b/a/c/c/n$a;->c:Lcom/b/a/c/a/d;

    invoke-interface {v3}, Lcom/b/a/c/a/d;->d()Lcom/b/a/c/a;

    move-result-object v3

    invoke-interface {v0, v1, p1, v2, v3}, Lcom/b/a/c/b/e$a;->a(Lcom/b/a/c/h;Ljava/lang/Exception;Lcom/b/a/c/a/d;Lcom/b/a/c/a;)V

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/b/a/c/b/y;->a:Lcom/b/a/c/b/f;

    invoke-virtual {v0}, Lcom/b/a/c/b/f;->c()Lcom/b/a/c/b/i;

    move-result-object v0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/b/a/c/b/y;->f:Lcom/b/a/c/c/n$a;

    iget-object v1, v1, Lcom/b/a/c/c/n$a;->c:Lcom/b/a/c/a/d;

    invoke-interface {v1}, Lcom/b/a/c/a/d;->d()Lcom/b/a/c/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/c/b/i;->a(Lcom/b/a/c/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/b/a/c/b/y;->e:Ljava/lang/Object;

    iget-object v0, p0, Lcom/b/a/c/b/y;->b:Lcom/b/a/c/b/e$a;

    invoke-interface {v0}, Lcom/b/a/c/b/e$a;->c()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/b/a/c/b/y;->b:Lcom/b/a/c/b/e$a;

    iget-object v1, p0, Lcom/b/a/c/b/y;->f:Lcom/b/a/c/c/n$a;

    iget-object v1, v1, Lcom/b/a/c/c/n$a;->a:Lcom/b/a/c/h;

    iget-object v2, p0, Lcom/b/a/c/b/y;->f:Lcom/b/a/c/c/n$a;

    iget-object v3, v2, Lcom/b/a/c/c/n$a;->c:Lcom/b/a/c/a/d;

    iget-object v2, p0, Lcom/b/a/c/b/y;->f:Lcom/b/a/c/c/n$a;

    iget-object v2, v2, Lcom/b/a/c/c/n$a;->c:Lcom/b/a/c/a/d;

    invoke-interface {v2}, Lcom/b/a/c/a/d;->d()Lcom/b/a/c/a;

    move-result-object v4

    iget-object v5, p0, Lcom/b/a/c/b/y;->g:Lcom/b/a/c/b/c;

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/b/a/c/b/e$a;->a(Lcom/b/a/c/h;Ljava/lang/Object;Lcom/b/a/c/a/d;Lcom/b/a/c/a;Lcom/b/a/c/h;)V

    goto :goto_0
.end method

.method public a()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/b/a/c/b/y;->e:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/c/b/y;->e:Ljava/lang/Object;

    iput-object v2, p0, Lcom/b/a/c/b/y;->e:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/b/a/c/b/y;->b(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/b/a/c/b/y;->d:Lcom/b/a/c/b/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/b/a/c/b/y;->d:Lcom/b/a/c/b/b;

    invoke-virtual {v0}, Lcom/b/a/c/b/b;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    return v0

    :cond_1
    iput-object v2, p0, Lcom/b/a/c/b/y;->d:Lcom/b/a/c/b/b;

    iput-object v2, p0, Lcom/b/a/c/b/y;->f:Lcom/b/a/c/c/n$a;

    const/4 v2, 0x0

    :cond_2
    :goto_1
    if-nez v2, :cond_4

    invoke-direct {p0}, Lcom/b/a/c/b/y;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/b/a/c/b/y;->a:Lcom/b/a/c/b/f;

    invoke-virtual {v0}, Lcom/b/a/c/b/f;->m()Ljava/util/List;

    move-result-object v0

    iget v3, p0, Lcom/b/a/c/b/y;->c:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/b/a/c/b/y;->c:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/c/c/n$a;

    iput-object v0, p0, Lcom/b/a/c/b/y;->f:Lcom/b/a/c/c/n$a;

    iget-object v0, p0, Lcom/b/a/c/b/y;->f:Lcom/b/a/c/c/n$a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/b/a/c/b/y;->a:Lcom/b/a/c/b/f;

    invoke-virtual {v0}, Lcom/b/a/c/b/f;->c()Lcom/b/a/c/b/i;

    move-result-object v0

    iget-object v3, p0, Lcom/b/a/c/b/y;->f:Lcom/b/a/c/c/n$a;

    iget-object v3, v3, Lcom/b/a/c/c/n$a;->c:Lcom/b/a/c/a/d;

    invoke-interface {v3}, Lcom/b/a/c/a/d;->d()Lcom/b/a/c/a;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/b/a/c/b/i;->a(Lcom/b/a/c/a;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/b/a/c/b/y;->a:Lcom/b/a/c/b/f;

    iget-object v3, p0, Lcom/b/a/c/b/y;->f:Lcom/b/a/c/c/n$a;

    iget-object v3, v3, Lcom/b/a/c/c/n$a;->c:Lcom/b/a/c/a/d;

    invoke-interface {v3}, Lcom/b/a/c/a/d;->a()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/b/a/c/b/f;->a(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_3
    iget-object v0, p0, Lcom/b/a/c/b/y;->f:Lcom/b/a/c/c/n$a;

    iget-object v0, v0, Lcom/b/a/c/c/n$a;->c:Lcom/b/a/c/a/d;

    iget-object v2, p0, Lcom/b/a/c/b/y;->a:Lcom/b/a/c/b/f;

    invoke-virtual {v2}, Lcom/b/a/c/b/f;->d()Lcom/b/a/g;

    move-result-object v2

    invoke-interface {v0, v2, p0}, Lcom/b/a/c/a/d;->a(Lcom/b/a/g;Lcom/b/a/c/a/d$a;)V

    move v2, v1

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/b/a/c/b/y;->f:Lcom/b/a/c/c/n$a;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/b/a/c/c/n$a;->c:Lcom/b/a/c/a/d;

    invoke-interface {v0}, Lcom/b/a/c/a/d;->c()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
