.class public final Lcom/b/a/c/d/a/q;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/b/a/c/b/q;
.implements Lcom/b/a/c/b/u;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/b/a/c/b/q;",
        "Lcom/b/a/c/b/u",
        "<",
        "Landroid/graphics/drawable/BitmapDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/res/Resources;

.field private final b:Lcom/b/a/c/b/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/a/c/b/u",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/res/Resources;Lcom/b/a/c/b/u;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Lcom/b/a/c/b/u",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/b/a/i/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Resources;

    iput-object v0, p0, Lcom/b/a/c/d/a/q;->a:Landroid/content/res/Resources;

    invoke-static {p2}, Lcom/b/a/i/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/c/b/u;

    iput-object v0, p0, Lcom/b/a/c/d/a/q;->b:Lcom/b/a/c/b/u;

    return-void
.end method

.method public static a(Landroid/content/res/Resources;Lcom/b/a/c/b/u;)Lcom/b/a/c/b/u;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Lcom/b/a/c/b/u",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/b/a/c/b/u",
            "<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/b/a/c/d/a/q;

    invoke-direct {v0, p0, p1}, Lcom/b/a/c/d/a/q;-><init>(Landroid/content/res/Resources;Lcom/b/a/c/b/u;)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/b/a/c/d/a/q;->b:Lcom/b/a/c/b/u;

    instance-of v0, v0, Lcom/b/a/c/b/q;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/c/d/a/q;->b:Lcom/b/a/c/b/u;

    check-cast v0, Lcom/b/a/c/b/q;

    invoke-interface {v0}, Lcom/b/a/c/b/q;->a()V

    :cond_0
    return-void
.end method

.method public b()Landroid/graphics/drawable/BitmapDrawable;
    .locals 3

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/b/a/c/d/a/q;->a:Landroid/content/res/Resources;

    iget-object v0, p0, Lcom/b/a/c/d/a/q;->b:Lcom/b/a/c/b/u;

    invoke-interface {v0}, Lcom/b/a/c/b/u;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v1
.end method

.method public c()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation

    const-class v0, Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method

.method public synthetic d()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/b/a/c/d/a/q;->b()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    return-object v0
.end method

.method public e()I
    .locals 1

    iget-object v0, p0, Lcom/b/a/c/d/a/q;->b:Lcom/b/a/c/b/u;

    invoke-interface {v0}, Lcom/b/a/c/b/u;->e()I

    move-result v0

    return v0
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Lcom/b/a/c/d/a/q;->b:Lcom/b/a/c/b/u;

    invoke-interface {v0}, Lcom/b/a/c/b/u;->f()V

    return-void
.end method
