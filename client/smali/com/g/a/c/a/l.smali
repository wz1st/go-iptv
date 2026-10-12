.class final Lcom/g/a/c/a/l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/g/a/a/a;


# instance fields
.field final synthetic a:Lcom/g/a/a/a;

.field final synthetic b:Lcom/g/a/h;

.field final synthetic c:Lcom/g/a/c/a/f;


# direct methods
.method constructor <init>(Lcom/g/a/c/a/f;Lcom/g/a/a/a;Lcom/g/a/h;)V
    .locals 0

    iput-object p1, p0, Lcom/g/a/c/a/l;->c:Lcom/g/a/c/a/f;

    iput-object p2, p0, Lcom/g/a/c/a/l;->a:Lcom/g/a/a/a;

    iput-object p3, p0, Lcom/g/a/c/a/l;->b:Lcom/g/a/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a_(Ljava/lang/Exception;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/g/a/c/a/l;->a:Lcom/g/a/a/a;

    invoke-interface {v0, p1}, Lcom/g/a/a/a;->a_(Ljava/lang/Exception;)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/g/a/c/a/l;->c:Lcom/g/a/c/a/f;

    iget-object v1, p0, Lcom/g/a/c/a/l;->b:Lcom/g/a/h;

    invoke-virtual {v1}, Lcom/g/a/h;->j()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/g/a/c/e;->c(Ljava/lang/String;)Lcom/g/a/c/e;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/g/a/c/a/f;->a(Lcom/g/a/c/a/f;Lcom/g/a/c/e;)Lcom/g/a/c/e;

    iget-object v0, p0, Lcom/g/a/c/a/l;->a:Lcom/g/a/a/a;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/g/a/a/a;->a_(Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/g/a/c/a/l;->a:Lcom/g/a/a/a;

    invoke-interface {v1, v0}, Lcom/g/a/a/a;->a_(Ljava/lang/Exception;)V

    goto :goto_0
.end method
