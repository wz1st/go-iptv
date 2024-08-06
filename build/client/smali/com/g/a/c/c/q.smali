.class final Lcom/g/a/c/c/q;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/g/a/a/a;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/g/a/c/c/e;


# direct methods
.method constructor <init>(Lcom/g/a/c/c/e;Z)V
    .locals 0

    iput-object p1, p0, Lcom/g/a/c/c/q;->b:Lcom/g/a/c/c/e;

    iput-boolean p2, p0, Lcom/g/a/c/c/q;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a_(Ljava/lang/Exception;)V
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/g/a/c/c/q;->b:Lcom/g/a/c/c/e;

    invoke-virtual {v0, p1}, Lcom/g/a/c/c/e;->b(Ljava/lang/Exception;)V

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/g/a/c/c/q;->a:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/g/a/c/b/c;

    iget-object v1, p0, Lcom/g/a/c/c/q;->b:Lcom/g/a/c/c/e;

    iget-object v1, v1, Lcom/g/a/c/c/e;->b:Lcom/g/a/f;

    invoke-direct {v0, v1}, Lcom/g/a/c/b/c;-><init>(Lcom/g/a/k;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/g/a/c/b/c;->a(I)V

    iget-object v1, p0, Lcom/g/a/c/c/q;->b:Lcom/g/a/c/c/e;

    iput-object v0, v1, Lcom/g/a/c/c/e;->e:Lcom/g/a/k;

    :goto_1
    iget-object v0, p0, Lcom/g/a/c/c/q;->b:Lcom/g/a/c/c/e;

    iget-object v0, v0, Lcom/g/a/c/c/e;->e:Lcom/g/a/k;

    iget-object v1, p0, Lcom/g/a/c/c/q;->b:Lcom/g/a/c/c/e;

    iget-object v1, v1, Lcom/g/a/c/c/e;->j:Lcom/g/a/a/a;

    invoke-interface {v0, v1}, Lcom/g/a/k;->a(Lcom/g/a/a/a;)V

    iget-object v0, p0, Lcom/g/a/c/c/q;->b:Lcom/g/a/c/c/e;

    iput-object v2, v0, Lcom/g/a/c/c/e;->j:Lcom/g/a/a/a;

    iget-object v0, p0, Lcom/g/a/c/c/q;->b:Lcom/g/a/c/c/e;

    iget-object v0, v0, Lcom/g/a/c/c/e;->e:Lcom/g/a/k;

    iget-object v1, p0, Lcom/g/a/c/c/q;->b:Lcom/g/a/c/c/e;

    iget-object v1, v1, Lcom/g/a/c/c/e;->f:Lcom/g/a/a/e;

    invoke-interface {v0, v1}, Lcom/g/a/k;->a(Lcom/g/a/a/e;)V

    iget-object v0, p0, Lcom/g/a/c/c/q;->b:Lcom/g/a/c/c/e;

    iput-object v2, v0, Lcom/g/a/c/c/e;->f:Lcom/g/a/a/e;

    iget-object v0, p0, Lcom/g/a/c/c/q;->b:Lcom/g/a/c/c/e;

    iget-boolean v0, v0, Lcom/g/a/c/c/e;->g:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/g/a/c/c/q;->b:Lcom/g/a/c/c/e;

    invoke-virtual {v0}, Lcom/g/a/c/c/e;->e()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/g/a/c/c/q;->b:Lcom/g/a/c/c/e;

    iget-object v1, p0, Lcom/g/a/c/c/q;->b:Lcom/g/a/c/c/e;

    iget-object v1, v1, Lcom/g/a/c/c/e;->b:Lcom/g/a/f;

    iput-object v1, v0, Lcom/g/a/c/c/e;->e:Lcom/g/a/k;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/g/a/c/c/q;->b:Lcom/g/a/c/c/e;

    invoke-virtual {v0}, Lcom/g/a/c/c/e;->g()Lcom/g/a/d;

    move-result-object v0

    new-instance v1, Lcom/g/a/c/c/r;

    invoke-direct {v1, p0}, Lcom/g/a/c/c/r;-><init>(Lcom/g/a/c/c/q;)V

    invoke-virtual {v0, v1}, Lcom/g/a/d;->a(Ljava/lang/Runnable;)Ljava/lang/Object;

    goto :goto_0
.end method
