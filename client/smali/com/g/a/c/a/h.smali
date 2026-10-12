.class final Lcom/g/a/c/a/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/g/a/p$a;


# instance fields
.field final synthetic a:Lcom/g/a/c/c;

.field final synthetic b:Lcom/g/a/c/a/c;


# direct methods
.method constructor <init>(Lcom/g/a/c/a/c;Lcom/g/a/c/c;)V
    .locals 0

    iput-object p1, p0, Lcom/g/a/c/a/h;->b:Lcom/g/a/c/a/c;

    iput-object p2, p0, Lcom/g/a/c/a/h;->a:Lcom/g/a/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    const-string v0, "\r"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/g/a/c/a/h;->a:Lcom/g/a/c/c;

    invoke-virtual {v0, p1}, Lcom/g/a/c/c;->a(Ljava/lang/String;)Lcom/g/a/c/c;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/g/a/c/a/h;->b:Lcom/g/a/c/a/c;

    invoke-virtual {v0}, Lcom/g/a/c/a/c;->d()V

    iget-object v0, p0, Lcom/g/a/c/a/h;->b:Lcom/g/a/c/a/c;

    iput-object v1, v0, Lcom/g/a/c/a/c;->d:Lcom/g/a/p;

    iget-object v0, p0, Lcom/g/a/c/a/h;->b:Lcom/g/a/c/a/c;

    invoke-virtual {v0, v1}, Lcom/g/a/c/a/c;->a(Lcom/g/a/a/c;)V

    new-instance v0, Lcom/g/a/c/a/d;

    iget-object v1, p0, Lcom/g/a/c/a/h;->a:Lcom/g/a/c/c;

    invoke-direct {v0, v1}, Lcom/g/a/c/a/d;-><init>(Lcom/g/a/c/c;)V

    iget-object v1, p0, Lcom/g/a/c/a/h;->b:Lcom/g/a/c/a/c;

    iget-object v1, v1, Lcom/g/a/c/a/c;->i:Lcom/g/a/c/a/c$a;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/g/a/c/a/h;->b:Lcom/g/a/c/a/c;

    iget-object v1, v1, Lcom/g/a/c/a/c;->i:Lcom/g/a/c/a/c$a;

    invoke-interface {v1, v0}, Lcom/g/a/c/a/c$a;->a(Lcom/g/a/c/a/d;)V

    :cond_2
    iget-object v1, p0, Lcom/g/a/c/a/h;->b:Lcom/g/a/c/a/c;

    invoke-virtual {v1}, Lcom/g/a/c/a/c;->f()Lcom/g/a/a/c;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/g/a/c/a/d;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/g/a/c/a/h;->b:Lcom/g/a/c/a/c;

    new-instance v1, Lcom/g/a/a/c$a;

    invoke-direct {v1}, Lcom/g/a/a/c$a;-><init>()V

    invoke-virtual {v0, v1}, Lcom/g/a/c/a/c;->a(Lcom/g/a/a/c;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/g/a/c/a/h;->b:Lcom/g/a/c/a/c;

    invoke-virtual {v0}, Lcom/g/a/c/a/d;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/g/a/c/a/c;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/g/a/c/a/h;->b:Lcom/g/a/c/a/c;

    new-instance v1, Lcom/g/a/h;

    invoke-direct {v1}, Lcom/g/a/h;-><init>()V

    iput-object v1, v0, Lcom/g/a/c/a/c;->f:Lcom/g/a/h;

    iget-object v0, p0, Lcom/g/a/c/a/h;->b:Lcom/g/a/c/a/c;

    new-instance v1, Lcom/g/a/c/a/i;

    invoke-direct {v1, p0}, Lcom/g/a/c/a/i;-><init>(Lcom/g/a/c/a/h;)V

    invoke-virtual {v0, v1}, Lcom/g/a/c/a/c;->a(Lcom/g/a/a/c;)V

    goto :goto_0
.end method
