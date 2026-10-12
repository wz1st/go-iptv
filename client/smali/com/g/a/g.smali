.class public Lcom/g/a/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/g/a/k;


# static fields
.field static final synthetic a:Z


# instance fields
.field b:Lcom/g/a/k;

.field c:Z

.field d:Lcom/g/a/h;

.field e:Lcom/g/a/a/e;

.field f:I

.field g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/g/a/g;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/g/a/g;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/g/a/k;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/g/a/h;

    invoke-direct {v0}, Lcom/g/a/h;-><init>()V

    iput-object v0, p0, Lcom/g/a/g;->d:Lcom/g/a/h;

    const v0, 0x7fffffff

    iput v0, p0, Lcom/g/a/g;->f:I

    invoke-virtual {p0, p1}, Lcom/g/a/g;->a(Lcom/g/a/k;)V

    return-void
.end method

.method static synthetic a(Lcom/g/a/g;)V
    .locals 0

    invoke-direct {p0}, Lcom/g/a/g;->c()V

    return-void
.end method

.method private c()V
    .locals 2

    iget-boolean v0, p0, Lcom/g/a/g;->c:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/g/a/g;->d:Lcom/g/a/h;

    invoke-virtual {v0}, Lcom/g/a/h;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/g/a/g;->b:Lcom/g/a/k;

    iget-object v1, p0, Lcom/g/a/g;->d:Lcom/g/a/h;

    invoke-interface {v0, v1}, Lcom/g/a/k;->a(Lcom/g/a/h;)V

    iget-object v0, p0, Lcom/g/a/g;->d:Lcom/g/a/h;

    invoke-virtual {v0}, Lcom/g/a/h;->l()I

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/g/a/g;->g:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/g/a/g;->b:Lcom/g/a/k;

    invoke-interface {v0}, Lcom/g/a/k;->e()V

    :cond_2
    iget-object v0, p0, Lcom/g/a/g;->d:Lcom/g/a/h;

    invoke-virtual {v0}, Lcom/g/a/h;->g()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/g/a/g;->e:Lcom/g/a/a/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/g/a/g;->e:Lcom/g/a/a/e;

    invoke-interface {v0}, Lcom/g/a/a/e;->a()V

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/g/a/g;->f:I

    return v0
.end method

.method public a(I)V
    .locals 1

    sget-boolean v0, Lcom/g/a/g;->a:Z

    if-nez v0, :cond_0

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iput p1, p0, Lcom/g/a/g;->f:I

    return-void
.end method

.method public a(Lcom/g/a/a/a;)V
    .locals 1

    iget-object v0, p0, Lcom/g/a/g;->b:Lcom/g/a/k;

    invoke-interface {v0, p1}, Lcom/g/a/k;->a(Lcom/g/a/a/a;)V

    return-void
.end method

.method public a(Lcom/g/a/a/e;)V
    .locals 0

    iput-object p1, p0, Lcom/g/a/g;->e:Lcom/g/a/a/e;

    return-void
.end method

.method public a(Lcom/g/a/h;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/g/a/g;->a(Lcom/g/a/h;Z)V

    return-void
.end method

.method protected final a(Lcom/g/a/h;Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/g/a/g;->g()Lcom/g/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/g/a/d;->c()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/g/a/g;->g()Lcom/g/a/d;

    move-result-object v0

    new-instance v1, Lcom/g/a/w;

    invoke-direct {v1, p0, p1, p2}, Lcom/g/a/w;-><init>(Lcom/g/a/g;Lcom/g/a/h;Z)V

    invoke-virtual {v0, v1}, Lcom/g/a/d;->b(Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/g/a/g;->b()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/g/a/g;->b:Lcom/g/a/k;

    invoke-interface {v0, p1}, Lcom/g/a/k;->a(Lcom/g/a/h;)V

    :cond_2
    invoke-virtual {p1}, Lcom/g/a/h;->l()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Lcom/g/a/h;->l()I

    move-result v0

    iget v1, p0, Lcom/g/a/g;->f:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Lcom/g/a/h;->l()I

    move-result v0

    :cond_3
    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/g/a/g;->d:Lcom/g/a/h;

    invoke-virtual {p1, v1, v0}, Lcom/g/a/h;->a(Lcom/g/a/h;I)V

    goto :goto_0
.end method

.method public a(Lcom/g/a/k;)V
    .locals 2

    iput-object p1, p0, Lcom/g/a/g;->b:Lcom/g/a/k;

    iget-object v0, p0, Lcom/g/a/g;->b:Lcom/g/a/k;

    new-instance v1, Lcom/g/a/v;

    invoke-direct {v1, p0}, Lcom/g/a/v;-><init>(Lcom/g/a/g;)V

    invoke-interface {v0, v1}, Lcom/g/a/k;->a(Lcom/g/a/a/e;)V

    return-void
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lcom/g/a/g;->d:Lcom/g/a/h;

    invoke-virtual {v0}, Lcom/g/a/h;->g()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/g/a/g;->c:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()V
    .locals 2

    invoke-virtual {p0}, Lcom/g/a/g;->g()Lcom/g/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/g/a/d;->c()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/g/a/g;->g()Lcom/g/a/d;

    move-result-object v0

    new-instance v1, Lcom/g/a/x;

    invoke-direct {v1, p0}, Lcom/g/a/x;-><init>(Lcom/g/a/g;)V

    invoke-virtual {v0, v1}, Lcom/g/a/d;->b(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/g/a/g;->d:Lcom/g/a/h;

    invoke-virtual {v0}, Lcom/g/a/h;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/g/a/g;->g:Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/g/a/g;->b:Lcom/g/a/k;

    invoke-interface {v0}, Lcom/g/a/k;->e()V

    goto :goto_0
.end method

.method public g()Lcom/g/a/d;
    .locals 1

    iget-object v0, p0, Lcom/g/a/g;->b:Lcom/g/a/k;

    invoke-interface {v0}, Lcom/g/a/k;->g()Lcom/g/a/d;

    move-result-object v0

    return-object v0
.end method

.method public h()Lcom/g/a/a/e;
    .locals 1

    iget-object v0, p0, Lcom/g/a/g;->e:Lcom/g/a/a/e;

    return-object v0
.end method
