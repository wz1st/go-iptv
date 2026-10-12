.class public Lcom/b/a/c/d/e/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/b/a/c/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/b/a/c/m",
        "<",
        "Lcom/b/a/c/d/e/c;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Lcom/b/a/c/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/a/c/m",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/b/a/c/m;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/c/m",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/b/a/i/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/c/m;

    iput-object v0, p0, Lcom/b/a/c/d/e/f;->b:Lcom/b/a/c/m;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/b/a/c/b/u;II)Lcom/b/a/c/b/u;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/b/a/c/b/u",
            "<",
            "Lcom/b/a/c/d/e/c;",
            ">;II)",
            "Lcom/b/a/c/b/u",
            "<",
            "Lcom/b/a/c/d/e/c;",
            ">;"
        }
    .end annotation

    invoke-interface {p2}, Lcom/b/a/c/b/u;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/c/d/e/c;

    invoke-static {p1}, Lcom/b/a/c;->a(Landroid/content/Context;)Lcom/b/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/c;->a()Lcom/b/a/c/b/a/e;

    move-result-object v1

    invoke-virtual {v0}, Lcom/b/a/c/d/e/c;->b()Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Lcom/b/a/c/d/a/d;

    invoke-direct {v3, v2, v1}, Lcom/b/a/c/d/a/d;-><init>(Landroid/graphics/Bitmap;Lcom/b/a/c/b/a/e;)V

    iget-object v1, p0, Lcom/b/a/c/d/e/f;->b:Lcom/b/a/c/m;

    invoke-interface {v1, p1, v3, p3, p4}, Lcom/b/a/c/m;->a(Landroid/content/Context;Lcom/b/a/c/b/u;II)Lcom/b/a/c/b/u;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v3}, Lcom/b/a/c/b/u;->f()V

    :cond_0
    invoke-interface {v1}, Lcom/b/a/c/b/u;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/b/a/c/d/e/f;->b:Lcom/b/a/c/m;

    invoke-virtual {v0, v2, v1}, Lcom/b/a/c/d/e/c;->a(Lcom/b/a/c/m;Landroid/graphics/Bitmap;)V

    return-object p2
.end method

.method public a(Ljava/security/MessageDigest;)V
    .locals 1

    iget-object v0, p0, Lcom/b/a/c/d/e/f;->b:Lcom/b/a/c/m;

    invoke-interface {v0, p1}, Lcom/b/a/c/m;->a(Ljava/security/MessageDigest;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/b/a/c/d/e/f;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/b/a/c/d/e/f;

    iget-object v0, p0, Lcom/b/a/c/d/e/f;->b:Lcom/b/a/c/m;

    iget-object v1, p1, Lcom/b/a/c/d/e/f;->b:Lcom/b/a/c/m;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/b/a/c/d/e/f;->b:Lcom/b/a/c/m;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
