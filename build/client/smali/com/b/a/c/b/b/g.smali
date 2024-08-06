.class public Lcom/b/a/c/b/b/g;
.super Lcom/b/a/i/f;

# interfaces
.implements Lcom/b/a/c/b/b/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/b/a/i/f",
        "<",
        "Lcom/b/a/c/h;",
        "Lcom/b/a/c/b/u",
        "<*>;>;",
        "Lcom/b/a/c/b/b/h;"
    }
.end annotation


# instance fields
.field private a:Lcom/b/a/c/b/b/h$a;


# direct methods
.method public constructor <init>(J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/b/a/i/f;-><init>(J)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/b/a/c/b/u;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/c/b/u",
            "<*>;)I"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/b/a/i/f;->a(Ljava/lang/Object;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-interface {p1}, Lcom/b/a/c/b/u;->e()I

    move-result v0

    goto :goto_0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/b/a/c/b/u;

    invoke-virtual {p0, p1}, Lcom/b/a/c/b/b/g;->a(Lcom/b/a/c/b/u;)I

    move-result v0

    return v0
.end method

.method public synthetic a(Lcom/b/a/c/h;)Lcom/b/a/c/b/u;
    .locals 1

    invoke-super {p0, p1}, Lcom/b/a/i/f;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/c/b/u;

    return-object v0
.end method

.method public a(I)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    const/16 v0, 0x28

    if-lt p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/b/a/c/b/b/g;->a()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x14

    if-ge p1, v0, :cond_2

    const/16 v0, 0xf

    if-ne p1, v0, :cond_0

    :cond_2
    invoke-virtual {p0}, Lcom/b/a/c/b/b/g;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/b/a/c/b/b/g;->a(J)V

    goto :goto_0
.end method

.method public a(Lcom/b/a/c/b/b/h$a;)V
    .locals 0

    iput-object p1, p0, Lcom/b/a/c/b/b/g;->a:Lcom/b/a/c/b/b/h$a;

    return-void
.end method

.method protected a(Lcom/b/a/c/h;Lcom/b/a/c/b/u;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/c/h;",
            "Lcom/b/a/c/b/u",
            "<*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/b/a/c/b/b/g;->a:Lcom/b/a/c/b/b/h$a;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/b/a/c/b/b/g;->a:Lcom/b/a/c/b/b/h$a;

    invoke-interface {v0, p2}, Lcom/b/a/c/b/b/h$a;->b(Lcom/b/a/c/b/u;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/b/a/c/h;

    check-cast p2, Lcom/b/a/c/b/u;

    invoke-virtual {p0, p1, p2}, Lcom/b/a/c/b/b/g;->a(Lcom/b/a/c/h;Lcom/b/a/c/b/u;)V

    return-void
.end method

.method public bridge synthetic b(Lcom/b/a/c/h;Lcom/b/a/c/b/u;)Lcom/b/a/c/b/u;
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/b/a/i/f;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/c/b/u;

    return-object v0
.end method
