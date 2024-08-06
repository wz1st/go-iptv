.class public abstract Lcom/b/a/c/d/c/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/b/a/c/b/q;
.implements Lcom/b/a/c/b/u;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/graphics/drawable/Drawable;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/b/a/c/b/q;",
        "Lcom/b/a/c/b/u",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected final a:Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/b/a/i/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/b/a/c/d/c/b;->a:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/b/a/c/d/c/b;->a:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/b/a/c/d/c/b;->a:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/b/a/c/d/c/b;->a:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lcom/b/a/c/d/e/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/c/d/c/b;->a:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/b/a/c/d/e/c;

    invoke-virtual {v0}, Lcom/b/a/c/d/e/c;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    goto :goto_0
.end method

.method public final b()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/b/a/c/d/c/b;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/b/a/c/d/c/b;->a:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public synthetic d()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/b/a/c/d/c/b;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method
