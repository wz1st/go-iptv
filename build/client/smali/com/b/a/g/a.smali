.class public final Lcom/b/a/g/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/b/a/g/b;
.implements Lcom/b/a/g/c;


# instance fields
.field private final a:Lcom/b/a/g/c;

.field private b:Lcom/b/a/g/b;

.field private c:Lcom/b/a/g/b;


# direct methods
.method public constructor <init>(Lcom/b/a/g/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/b/a/g/a;->a:Lcom/b/a/g/c;

    return-void
.end method

.method private g(Lcom/b/a/g/b;)Z
    .locals 1

    iget-object v0, p0, Lcom/b/a/g/a;->b:Lcom/b/a/g/b;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/b/a/g/a;->b:Lcom/b/a/g/b;

    invoke-interface {v0}, Lcom/b/a/g/b;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/b/a/g/a;->c:Lcom/b/a/g/b;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private j()Z
    .locals 1

    iget-object v0, p0, Lcom/b/a/g/a;->a:Lcom/b/a/g/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/g/a;->a:Lcom/b/a/g/c;

    invoke-interface {v0, p0}, Lcom/b/a/g/c;->b(Lcom/b/a/g/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private k()Z
    .locals 1

    iget-object v0, p0, Lcom/b/a/g/a;->a:Lcom/b/a/g/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/g/a;->a:Lcom/b/a/g/c;

    invoke-interface {v0, p0}, Lcom/b/a/g/c;->d(Lcom/b/a/g/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private l()Z
    .locals 1

    iget-object v0, p0, Lcom/b/a/g/a;->a:Lcom/b/a/g/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/g/a;->a:Lcom/b/a/g/c;

    invoke-interface {v0, p0}, Lcom/b/a/g/c;->c(Lcom/b/a/g/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private m()Z
    .locals 1

    iget-object v0, p0, Lcom/b/a/g/a;->a:Lcom/b/a/g/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/g/a;->a:Lcom/b/a/g/c;

    invoke-interface {v0}, Lcom/b/a/g/c;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/b/a/g/a;->b:Lcom/b/a/g/b;

    invoke-interface {v0}, Lcom/b/a/g/b;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/b/a/g/a;->b:Lcom/b/a/g/b;

    invoke-interface {v0}, Lcom/b/a/g/b;->a()V

    :cond_0
    return-void
.end method

.method public a(Lcom/b/a/g/b;Lcom/b/a/g/b;)V
    .locals 0

    iput-object p1, p0, Lcom/b/a/g/a;->b:Lcom/b/a/g/b;

    iput-object p2, p0, Lcom/b/a/g/a;->c:Lcom/b/a/g/b;

    return-void
.end method

.method public a(Lcom/b/a/g/b;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/b/a/g/a;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/b/a/g/a;

    iget-object v1, p0, Lcom/b/a/g/a;->b:Lcom/b/a/g/b;

    iget-object v2, p1, Lcom/b/a/g/a;->b:Lcom/b/a/g/b;

    invoke-interface {v1, v2}, Lcom/b/a/g/b;->a(Lcom/b/a/g/b;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/b/a/g/a;->c:Lcom/b/a/g/b;

    iget-object v2, p1, Lcom/b/a/g/a;->c:Lcom/b/a/g/b;

    invoke-interface {v1, v2}, Lcom/b/a/g/b;->a(Lcom/b/a/g/b;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/b/a/g/a;->b:Lcom/b/a/g/b;

    invoke-interface {v0}, Lcom/b/a/g/b;->b()V

    iget-object v0, p0, Lcom/b/a/g/a;->c:Lcom/b/a/g/b;

    invoke-interface {v0}, Lcom/b/a/g/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/g/a;->c:Lcom/b/a/g/b;

    invoke-interface {v0}, Lcom/b/a/g/b;->b()V

    :cond_0
    return-void
.end method

.method public b(Lcom/b/a/g/b;)Z
    .locals 1

    invoke-direct {p0}, Lcom/b/a/g/a;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/b/a/g/a;->g(Lcom/b/a/g/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Lcom/b/a/g/a;->b:Lcom/b/a/g/b;

    invoke-interface {v0}, Lcom/b/a/g/b;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/g/a;->c:Lcom/b/a/g/b;

    invoke-interface {v0}, Lcom/b/a/g/b;->c()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/g/a;->b:Lcom/b/a/g/b;

    invoke-interface {v0}, Lcom/b/a/g/b;->c()Z

    move-result v0

    goto :goto_0
.end method

.method public c(Lcom/b/a/g/b;)Z
    .locals 1

    invoke-direct {p0}, Lcom/b/a/g/a;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/b/a/g/a;->g(Lcom/b/a/g/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lcom/b/a/g/a;->b:Lcom/b/a/g/b;

    invoke-interface {v0}, Lcom/b/a/g/b;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/g/a;->c:Lcom/b/a/g/b;

    invoke-interface {v0}, Lcom/b/a/g/b;->d()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/g/a;->b:Lcom/b/a/g/b;

    invoke-interface {v0}, Lcom/b/a/g/b;->d()Z

    move-result v0

    goto :goto_0
.end method

.method public d(Lcom/b/a/g/b;)Z
    .locals 1

    invoke-direct {p0}, Lcom/b/a/g/a;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/b/a/g/a;->g(Lcom/b/a/g/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e(Lcom/b/a/g/b;)V
    .locals 1

    iget-object v0, p0, Lcom/b/a/g/a;->a:Lcom/b/a/g/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/g/a;->a:Lcom/b/a/g/c;

    invoke-interface {v0, p0}, Lcom/b/a/g/c;->e(Lcom/b/a/g/b;)V

    :cond_0
    return-void
.end method

.method public e()Z
    .locals 1

    iget-object v0, p0, Lcom/b/a/g/a;->b:Lcom/b/a/g/b;

    invoke-interface {v0}, Lcom/b/a/g/b;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/g/a;->c:Lcom/b/a/g/b;

    invoke-interface {v0}, Lcom/b/a/g/b;->e()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/g/a;->b:Lcom/b/a/g/b;

    invoke-interface {v0}, Lcom/b/a/g/b;->e()Z

    move-result v0

    goto :goto_0
.end method

.method public f(Lcom/b/a/g/b;)V
    .locals 1

    iget-object v0, p0, Lcom/b/a/g/a;->c:Lcom/b/a/g/b;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/b/a/g/a;->c:Lcom/b/a/g/b;

    invoke-interface {v0}, Lcom/b/a/g/b;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/b/a/g/a;->c:Lcom/b/a/g/b;

    invoke-interface {v0}, Lcom/b/a/g/b;->a()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/b/a/g/a;->a:Lcom/b/a/g/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/g/a;->a:Lcom/b/a/g/c;

    invoke-interface {v0, p0}, Lcom/b/a/g/c;->f(Lcom/b/a/g/b;)V

    goto :goto_0
.end method

.method public f()Z
    .locals 1

    iget-object v0, p0, Lcom/b/a/g/a;->b:Lcom/b/a/g/b;

    invoke-interface {v0}, Lcom/b/a/g/b;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/g/a;->c:Lcom/b/a/g/b;

    invoke-interface {v0}, Lcom/b/a/g/b;->f()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/g/a;->b:Lcom/b/a/g/b;

    invoke-interface {v0}, Lcom/b/a/g/b;->f()Z

    move-result v0

    goto :goto_0
.end method

.method public g()Z
    .locals 1

    iget-object v0, p0, Lcom/b/a/g/a;->b:Lcom/b/a/g/b;

    invoke-interface {v0}, Lcom/b/a/g/b;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/g/a;->c:Lcom/b/a/g/b;

    invoke-interface {v0}, Lcom/b/a/g/b;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()V
    .locals 1

    iget-object v0, p0, Lcom/b/a/g/a;->b:Lcom/b/a/g/b;

    invoke-interface {v0}, Lcom/b/a/g/b;->h()V

    iget-object v0, p0, Lcom/b/a/g/a;->c:Lcom/b/a/g/b;

    invoke-interface {v0}, Lcom/b/a/g/b;->h()V

    return-void
.end method

.method public i()Z
    .locals 1

    invoke-direct {p0}, Lcom/b/a/g/a;->m()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/b/a/g/a;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
