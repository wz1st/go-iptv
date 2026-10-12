.class public Lcom/b/a/c/d/e/e;
.super Lcom/b/a/c/d/c/b;

# interfaces
.implements Lcom/b/a/c/b/q;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/b/a/c/d/c/b",
        "<",
        "Lcom/b/a/c/d/e/c;",
        ">;",
        "Lcom/b/a/c/b/q;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/b/a/c/d/e/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/b/a/c/d/c/b;-><init>(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/b/a/c/d/e/e;->a:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/b/a/c/d/e/c;

    invoke-virtual {v0}, Lcom/b/a/c/d/e/c;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    return-void
.end method

.method public c()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Lcom/b/a/c/d/e/c;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/b/a/c/d/e/c;

    return-object v0
.end method

.method public e()I
    .locals 1

    iget-object v0, p0, Lcom/b/a/c/d/e/e;->a:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/b/a/c/d/e/c;

    invoke-virtual {v0}, Lcom/b/a/c/d/e/c;->a()I

    move-result v0

    return v0
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Lcom/b/a/c/d/e/e;->a:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/b/a/c/d/e/c;

    invoke-virtual {v0}, Lcom/b/a/c/d/e/c;->stop()V

    iget-object v0, p0, Lcom/b/a/c/d/e/e;->a:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/b/a/c/d/e/c;

    invoke-virtual {v0}, Lcom/b/a/c/d/e/c;->g()V

    return-void
.end method
