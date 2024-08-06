.class final Lcom/g/a/c/c/p;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/g/a/p$a;


# instance fields
.field final synthetic a:Lcom/g/a/c/c/c;


# direct methods
.method constructor <init>(Lcom/g/a/c/c/c;)V
    .locals 0

    iput-object p1, p0, Lcom/g/a/c/c/p;->a:Lcom/g/a/c/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/g/a/c/c/p;->a:Lcom/g/a/c/c/c;

    invoke-static {v0}, Lcom/g/a/c/c/c;->a(Lcom/g/a/c/c/c;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/g/a/c/c/p;->a:Lcom/g/a/c/c/c;

    invoke-static {v0, p1}, Lcom/g/a/c/c/c;->a(Lcom/g/a/c/c/c;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/g/a/c/c/p;->a:Lcom/g/a/c/c/c;

    invoke-static {v0}, Lcom/g/a/c/c/c;->a(Lcom/g/a/c/c/c;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "HTTP/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/g/a/c/c/c;->e()V

    iget-object v0, p0, Lcom/g/a/c/c/p;->a:Lcom/g/a/c/c/c;

    iget-object v0, v0, Lcom/g/a/c/c/c;->d:Lcom/g/a/f;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/g/a/f;->a(Lcom/g/a/a/c;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "\r"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/g/a/c/c/p;->a:Lcom/g/a/c/c/c;

    invoke-static {v0}, Lcom/g/a/c/c/c;->b(Lcom/g/a/c/c/c;)Lcom/g/a/c/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/g/a/c/c;->a(Ljava/lang/String;)Lcom/g/a/c/c;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/g/a/c/c/p;->a:Lcom/g/a/c/c/c;

    invoke-virtual {v1, v0}, Lcom/g/a/c/c/c;->a_(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/g/a/c/c/p;->a:Lcom/g/a/c/c/c;

    iget-object v0, v0, Lcom/g/a/c/c/c;->d:Lcom/g/a/f;

    sget-object v1, Lcom/g/a/c/g;->b:Lcom/g/a/c/g;

    iget-object v2, p0, Lcom/g/a/c/c/p;->a:Lcom/g/a/c/c/c;

    invoke-static {v2}, Lcom/g/a/c/c/c;->b(Lcom/g/a/c/c/c;)Lcom/g/a/c/c;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/g/a/c/d;->a(Lcom/g/a/i;Lcom/g/a/c/g;Lcom/g/a/c/c;Z)Lcom/g/a/i;

    move-result-object v0

    iget-object v1, p0, Lcom/g/a/c/c/p;->a:Lcom/g/a/c/c/c;

    iget-object v2, p0, Lcom/g/a/c/c/p;->a:Lcom/g/a/c/c/c;

    invoke-static {v2}, Lcom/g/a/c/c/c;->c(Lcom/g/a/c/c/c;)Lcom/g/a/a/a;

    move-result-object v2

    iget-object v3, p0, Lcom/g/a/c/c/p;->a:Lcom/g/a/c/c/c;

    invoke-static {v3}, Lcom/g/a/c/c/c;->b(Lcom/g/a/c/c/c;)Lcom/g/a/c/c;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/g/a/c/d;->a(Lcom/g/a/i;Lcom/g/a/a/a;Lcom/g/a/c/c;)Lcom/g/a/c/a/a;

    move-result-object v2

    iput-object v2, v1, Lcom/g/a/c/c/c;->h:Lcom/g/a/c/a/a;

    iget-object v1, p0, Lcom/g/a/c/c/p;->a:Lcom/g/a/c/c/c;

    iget-object v1, v1, Lcom/g/a/c/c/c;->h:Lcom/g/a/c/a/a;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/g/a/c/c/p;->a:Lcom/g/a/c/c/c;

    iget-object v2, p0, Lcom/g/a/c/c/p;->a:Lcom/g/a/c/c/c;

    iget-object v3, p0, Lcom/g/a/c/c/p;->a:Lcom/g/a/c/c/c;

    invoke-static {v3}, Lcom/g/a/c/c/c;->b(Lcom/g/a/c/c/c;)Lcom/g/a/c/c;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/g/a/c/c/c;->a(Lcom/g/a/c/c;)Lcom/g/a/c/a/a;

    move-result-object v2

    iput-object v2, v1, Lcom/g/a/c/c/c;->h:Lcom/g/a/c/a/a;

    iget-object v1, p0, Lcom/g/a/c/c/p;->a:Lcom/g/a/c/c/c;

    iget-object v1, v1, Lcom/g/a/c/c/c;->h:Lcom/g/a/c/a/a;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/g/a/c/c/p;->a:Lcom/g/a/c/c/c;

    new-instance v2, Lcom/g/a/c/c/i;

    iget-object v3, p0, Lcom/g/a/c/c/p;->a:Lcom/g/a/c/c/c;

    invoke-static {v3}, Lcom/g/a/c/c/c;->b(Lcom/g/a/c/c/c;)Lcom/g/a/c/c;

    move-result-object v3

    const-string v4, "Content-Type"

    invoke-virtual {v3, v4}, Lcom/g/a/c/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/g/a/c/c/i;-><init>(Ljava/lang/String;)V

    iput-object v2, v1, Lcom/g/a/c/c/c;->h:Lcom/g/a/c/a/a;

    :cond_3
    iget-object v1, p0, Lcom/g/a/c/c/p;->a:Lcom/g/a/c/c/c;

    iget-object v1, v1, Lcom/g/a/c/c/c;->h:Lcom/g/a/c/a/a;

    iget-object v2, p0, Lcom/g/a/c/c/p;->a:Lcom/g/a/c/c/c;

    invoke-static {v2}, Lcom/g/a/c/c/c;->c(Lcom/g/a/c/c/c;)Lcom/g/a/a/a;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/g/a/c/a/a;->a(Lcom/g/a/i;Lcom/g/a/a/a;)V

    iget-object v0, p0, Lcom/g/a/c/c/p;->a:Lcom/g/a/c/c/c;

    invoke-virtual {v0}, Lcom/g/a/c/c/c;->h()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
