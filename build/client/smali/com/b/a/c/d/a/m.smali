.class public Lcom/b/a/c/d/a/m;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/b/a/c/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/b/a/c/m",
        "<",
        "Landroid/graphics/drawable/Drawable;",
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

.field private final c:Z


# direct methods
.method public constructor <init>(Lcom/b/a/c/m;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/c/m",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/b/a/c/d/a/m;->b:Lcom/b/a/c/m;

    iput-boolean p2, p0, Lcom/b/a/c/d/a/m;->c:Z

    return-void
.end method

.method private a(Landroid/content/Context;Lcom/b/a/c/b/u;)Lcom/b/a/c/b/u;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/b/a/c/b/u",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/b/a/c/b/u",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/b/a/c/d/a/q;->a(Landroid/content/res/Resources;Lcom/b/a/c/b/u;)Lcom/b/a/c/b/u;

    move-result-object v0

    return-object v0
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
            "Landroid/graphics/drawable/Drawable;",
            ">;II)",
            "Lcom/b/a/c/b/u",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/b/a/c;->a(Landroid/content/Context;)Lcom/b/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/c;->a()Lcom/b/a/c/b/a/e;

    move-result-object v1

    invoke-interface {p2}, Lcom/b/a/c/b/u;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0, p3, p4}, Lcom/b/a/c/d/a/l;->a(Lcom/b/a/c/b/a/e;Landroid/graphics/drawable/Drawable;II)Lcom/b/a/c/b/u;

    move-result-object v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/b/a/c/d/a/m;->c:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to convert "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " to a Bitmap"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v0, p0, Lcom/b/a/c/d/a/m;->b:Lcom/b/a/c/m;

    invoke-interface {v0, p1, v1, p3, p4}, Lcom/b/a/c/m;->a(Landroid/content/Context;Lcom/b/a/c/b/u;II)Lcom/b/a/c/b/u;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Lcom/b/a/c/b/u;->f()V

    :cond_1
    :goto_0
    return-object p2

    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/b/a/c/d/a/m;->a(Landroid/content/Context;Lcom/b/a/c/b/u;)Lcom/b/a/c/b/u;

    move-result-object p2

    goto :goto_0
.end method

.method public a()Lcom/b/a/c/m;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/b/a/c/m",
            "<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation

    return-object p0
.end method

.method public a(Ljava/security/MessageDigest;)V
    .locals 1

    iget-object v0, p0, Lcom/b/a/c/d/a/m;->b:Lcom/b/a/c/m;

    invoke-interface {v0, p1}, Lcom/b/a/c/m;->a(Ljava/security/MessageDigest;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/b/a/c/d/a/m;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/b/a/c/d/a/m;

    iget-object v0, p0, Lcom/b/a/c/d/a/m;->b:Lcom/b/a/c/m;

    iget-object v1, p1, Lcom/b/a/c/d/a/m;->b:Lcom/b/a/c/m;

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

    iget-object v0, p0, Lcom/b/a/c/d/a/m;->b:Lcom/b/a/c/m;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
