.class public Lcom/b/a/c/d/e/c;
.super Landroid/graphics/drawable/Drawable;

# interfaces
.implements Landroid/graphics/drawable/Animatable;
.implements Lcom/b/a/c/d/e/g$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/b/a/c/d/e/c$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/b/a/c/d/e/c$a;

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:I

.field private g:I

.field private h:Z

.field private i:Landroid/graphics/Paint;

.field private j:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/b/a/b/a;Lcom/b/a/c/m;IILandroid/graphics/Bitmap;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/b/a/b/a;",
            "Lcom/b/a/c/m",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;II",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    new-instance v7, Lcom/b/a/c/d/e/c$a;

    new-instance v0, Lcom/b/a/c/d/e/g;

    invoke-static {p1}, Lcom/b/a/c;->a(Landroid/content/Context;)Lcom/b/a/c;

    move-result-object v1

    move-object v2, p2

    move v3, p4

    move v4, p5

    move-object v5, p3

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/b/a/c/d/e/g;-><init>(Lcom/b/a/c;Lcom/b/a/b/a;IILcom/b/a/c/m;Landroid/graphics/Bitmap;)V

    invoke-direct {v7, v0}, Lcom/b/a/c/d/e/c$a;-><init>(Lcom/b/a/c/d/e/g;)V

    invoke-direct {p0, v7}, Lcom/b/a/c/d/e/c;-><init>(Lcom/b/a/c/d/e/c$a;)V

    return-void
.end method

.method constructor <init>(Lcom/b/a/c/d/e/c$a;)V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b/a/c/d/e/c;->e:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/b/a/c/d/e/c;->g:I

    invoke-static {p1}, Lcom/b/a/i/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/c/d/e/c$a;

    iput-object v0, p0, Lcom/b/a/c/d/e/c;->a:Lcom/b/a/c/d/e/c$a;

    return-void
.end method

.method private h()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/b/a/c/d/e/c;->f:I

    return-void
.end method

.method private i()V
    .locals 3

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/b/a/c/d/e/c;->d:Z

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    const-string v2, "You cannot start a recycled Drawable. Ensure thatyou clear any references to the Drawable when clearing the corresponding request."

    invoke-static {v0, v2}, Lcom/b/a/i/i;->a(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/b/a/c/d/e/c;->a:Lcom/b/a/c/d/e/c$a;

    iget-object v0, v0, Lcom/b/a/c/d/e/c$a;->a:Lcom/b/a/c/d/e/g;

    invoke-virtual {v0}, Lcom/b/a/c/d/e/g;->g()I

    move-result v0

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/b/a/c/d/e/c;->invalidateSelf()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/b/a/c/d/e/c;->b:Z

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/b/a/c/d/e/c;->b:Z

    iget-object v0, p0, Lcom/b/a/c/d/e/c;->a:Lcom/b/a/c/d/e/c$a;

    iget-object v0, v0, Lcom/b/a/c/d/e/c$a;->a:Lcom/b/a/c/d/e/g;

    invoke-virtual {v0, p0}, Lcom/b/a/c/d/e/g;->a(Lcom/b/a/c/d/e/g$b;)V

    invoke-virtual {p0}, Lcom/b/a/c/d/e/c;->invalidateSelf()V

    goto :goto_1
.end method

.method private j()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/b/a/c/d/e/c;->b:Z

    iget-object v0, p0, Lcom/b/a/c/d/e/c;->a:Lcom/b/a/c/d/e/c$a;

    iget-object v0, v0, Lcom/b/a/c/d/e/c$a;->a:Lcom/b/a/c/d/e/g;

    invoke-virtual {v0, p0}, Lcom/b/a/c/d/e/g;->b(Lcom/b/a/c/d/e/g$b;)V

    return-void
.end method

.method private k()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/b/a/c/d/e/c;->j:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/b/a/c/d/e/c;->j:Landroid/graphics/Rect;

    :cond_0
    iget-object v0, p0, Lcom/b/a/c/d/e/c;->j:Landroid/graphics/Rect;

    return-object v0
.end method

.method private l()Landroid/graphics/Paint;
    .locals 2

    iget-object v0, p0, Lcom/b/a/c/d/e/c;->i:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/b/a/c/d/e/c;->i:Landroid/graphics/Paint;

    :cond_0
    iget-object v0, p0, Lcom/b/a/c/d/e/c;->i:Landroid/graphics/Paint;

    return-object v0
.end method

.method private m()Landroid/graphics/drawable/Drawable$Callback;
    .locals 2

    invoke-virtual {p0}, Lcom/b/a/c/d/e/c;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    :goto_0
    instance-of v1, v0, Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lcom/b/a/c/d/e/c;->a:Lcom/b/a/c/d/e/c$a;

    iget-object v0, v0, Lcom/b/a/c/d/e/c$a;->a:Lcom/b/a/c/d/e/g;

    invoke-virtual {v0}, Lcom/b/a/c/d/e/g;->d()I

    move-result v0

    return v0
.end method

.method public a(Lcom/b/a/c/m;Landroid/graphics/Bitmap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/c/m",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/b/a/c/d/e/c;->a:Lcom/b/a/c/d/e/c$a;

    iget-object v0, v0, Lcom/b/a/c/d/e/c$a;->a:Lcom/b/a/c/d/e/g;

    invoke-virtual {v0, p1, p2}, Lcom/b/a/c/d/e/g;->a(Lcom/b/a/c/m;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public b()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/b/a/c/d/e/c;->a:Lcom/b/a/c/d/e/c$a;

    iget-object v0, v0, Lcom/b/a/c/d/e/c$a;->a:Lcom/b/a/c/d/e/g;

    invoke-virtual {v0}, Lcom/b/a/c/d/e/g;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Lcom/b/a/c/d/e/c;->a:Lcom/b/a/c/d/e/c$a;

    iget-object v0, v0, Lcom/b/a/c/d/e/c$a;->a:Lcom/b/a/c/d/e/g;

    invoke-virtual {v0}, Lcom/b/a/c/d/e/g;->f()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Lcom/b/a/c/d/e/c;->a:Lcom/b/a/c/d/e/c$a;

    iget-object v0, v0, Lcom/b/a/c/d/e/c$a;->a:Lcom/b/a/c/d/e/g;

    invoke-virtual {v0}, Lcom/b/a/c/d/e/g;->g()I

    move-result v0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    iget-boolean v0, p0, Lcom/b/a/c/d/e/c;->d:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/b/a/c/d/e/c;->h:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x77

    invoke-virtual {p0}, Lcom/b/a/c/d/e/c;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/b/a/c/d/e/c;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/b/a/c/d/e/c;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {p0}, Lcom/b/a/c/d/e/c;->k()Landroid/graphics/Rect;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/b/a/c/d/e/c;->h:Z

    :cond_1
    iget-object v0, p0, Lcom/b/a/c/d/e/c;->a:Lcom/b/a/c/d/e/c$a;

    iget-object v0, v0, Lcom/b/a/c/d/e/c$a;->a:Lcom/b/a/c/d/e/g;

    invoke-virtual {v0}, Lcom/b/a/c/d/e/g;->i()Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/b/a/c/d/e/c;->k()Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {p0}, Lcom/b/a/c/d/e/c;->l()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public e()I
    .locals 1

    iget-object v0, p0, Lcom/b/a/c/d/e/c;->a:Lcom/b/a/c/d/e/c$a;

    iget-object v0, v0, Lcom/b/a/c/d/e/c$a;->a:Lcom/b/a/c/d/e/g;

    invoke-virtual {v0}, Lcom/b/a/c/d/e/g;->e()I

    move-result v0

    return v0
.end method

.method public f()V
    .locals 2

    invoke-direct {p0}, Lcom/b/a/c/d/e/c;->m()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/b/a/c/d/e/c;->stop()V

    invoke-virtual {p0}, Lcom/b/a/c/d/e/c;->invalidateSelf()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/b/a/c/d/e/c;->invalidateSelf()V

    invoke-virtual {p0}, Lcom/b/a/c/d/e/c;->e()I

    move-result v0

    invoke-virtual {p0}, Lcom/b/a/c/d/e/c;->d()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/b/a/c/d/e/c;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/b/a/c/d/e/c;->f:I

    :cond_2
    iget v0, p0, Lcom/b/a/c/d/e/c;->g:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/b/a/c/d/e/c;->f:I

    iget v1, p0, Lcom/b/a/c/d/e/c;->g:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/b/a/c/d/e/c;->stop()V

    goto :goto_0
.end method

.method public g()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b/a/c/d/e/c;->d:Z

    iget-object v0, p0, Lcom/b/a/c/d/e/c;->a:Lcom/b/a/c/d/e/c$a;

    iget-object v0, v0, Lcom/b/a/c/d/e/c$a;->a:Lcom/b/a/c/d/e/g;

    invoke-virtual {v0}, Lcom/b/a/c/d/e/g;->h()V

    return-void
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    iget-object v0, p0, Lcom/b/a/c/d/e/c;->a:Lcom/b/a/c/d/e/c$a;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    iget-object v0, p0, Lcom/b/a/c/d/e/c;->a:Lcom/b/a/c/d/e/c$a;

    iget-object v0, v0, Lcom/b/a/c/d/e/c$a;->a:Lcom/b/a/c/d/e/g;

    invoke-virtual {v0}, Lcom/b/a/c/d/e/g;->c()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    iget-object v0, p0, Lcom/b/a/c/d/e/c;->a:Lcom/b/a/c/d/e/c$a;

    iget-object v0, v0, Lcom/b/a/c/d/e/c$a;->a:Lcom/b/a/c/d/e/g;

    invoke-virtual {v0}, Lcom/b/a/c/d/e/g;->b()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public isRunning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/b/a/c/d/e/c;->b:Z

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b/a/c/d/e/c;->h:Z

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    invoke-direct {p0}, Lcom/b/a/c/d/e/c;->l()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    invoke-direct {p0}, Lcom/b/a/c/d/e/c;->l()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 2

    iget-boolean v0, p0, Lcom/b/a/c/d/e/c;->d:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Cannot change the visibility of a recycled resource. Ensure that you unset the Drawable from your View before changing the View\'s visibility."

    invoke-static {v0, v1}, Lcom/b/a/i/i;->a(ZLjava/lang/String;)V

    iput-boolean p1, p0, Lcom/b/a/c/d/e/c;->e:Z

    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/b/a/c/d/e/c;->j()V

    :cond_0
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/b/a/c/d/e/c;->c:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/b/a/c/d/e/c;->i()V

    goto :goto_1
.end method

.method public start()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b/a/c/d/e/c;->c:Z

    invoke-direct {p0}, Lcom/b/a/c/d/e/c;->h()V

    iget-boolean v0, p0, Lcom/b/a/c/d/e/c;->e:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/b/a/c/d/e/c;->i()V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/b/a/c/d/e/c;->c:Z

    invoke-direct {p0}, Lcom/b/a/c/d/e/c;->j()V

    return-void
.end method
