.class final Lcom/g/a/ak;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/g/a/a/e;


# instance fields
.field final synthetic a:Lcom/g/a/k;

.field final synthetic b:Lcom/g/a/h;

.field final synthetic c:Lcom/g/a/a/a;


# direct methods
.method constructor <init>(Lcom/g/a/k;Lcom/g/a/h;Lcom/g/a/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/g/a/ak;->a:Lcom/g/a/k;

    iput-object p2, p0, Lcom/g/a/ak;->b:Lcom/g/a/h;

    iput-object p3, p0, Lcom/g/a/ak;->c:Lcom/g/a/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/g/a/ak;->a:Lcom/g/a/k;

    iget-object v1, p0, Lcom/g/a/ak;->b:Lcom/g/a/h;

    invoke-interface {v0, v1}, Lcom/g/a/k;->a(Lcom/g/a/h;)V

    iget-object v0, p0, Lcom/g/a/ak;->b:Lcom/g/a/h;

    invoke-virtual {v0}, Lcom/g/a/h;->l()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/g/a/ak;->c:Lcom/g/a/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/g/a/ak;->a:Lcom/g/a/k;

    invoke-interface {v0, v2}, Lcom/g/a/k;->a(Lcom/g/a/a/e;)V

    iget-object v0, p0, Lcom/g/a/ak;->c:Lcom/g/a/a/a;

    invoke-interface {v0, v2}, Lcom/g/a/a/a;->a_(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method
