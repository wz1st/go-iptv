.class public Lcom/scwang/smartrefresh/layout/e/e;
.super Lcom/scwang/smartrefresh/layout/e/d;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;
.implements Landroid/graphics/drawable/Animatable;


# instance fields
.field protected b:I

.field protected c:I

.field protected d:I

.field protected e:Landroid/animation/ValueAnimator;

.field protected f:Landroid/graphics/Path;


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/scwang/smartrefresh/layout/e/d;-><init>()V

    iput v0, p0, Lcom/scwang/smartrefresh/layout/e/e;->b:I

    iput v0, p0, Lcom/scwang/smartrefresh/layout/e/e;->c:I

    iput v0, p0, Lcom/scwang/smartrefresh/layout/e/e;->d:I

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/e/e;->f:Landroid/graphics/Path;

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/e/e;->e:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/e/e;->e:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/e/e;->e:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/e/e;->e:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/e/e;->e:Landroid/animation/ValueAnimator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    return-void

    nop

    :array_0
    .array-data 4
        0x1e
        0xe10
    .end array-data
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 11

    const/high16 v10, 0x40a00000    # 5.0f

    const/high16 v9, 0x40000000    # 2.0f

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v7

    const/high16 v0, 0x3f800000    # 1.0f

    int-to-float v1, v6

    const/high16 v2, 0x41b00000    # 22.0f

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v8

    iget v0, p0, Lcom/scwang/smartrefresh/layout/e/e;->b:I

    if-ne v0, v6, :cond_0

    iget v0, p0, Lcom/scwang/smartrefresh/layout/e/e;->c:I

    if-eq v0, v7, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/e/e;->f:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/e/e;->f:Landroid/graphics/Path;

    int-to-float v1, v6

    sub-float/2addr v1, v8

    int-to-float v2, v7

    div-float/2addr v2, v9

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v8, v3}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/e/e;->f:Landroid/graphics/Path;

    int-to-float v1, v6

    mul-float v2, v10, v8

    sub-float/2addr v1, v2

    int-to-float v2, v7

    div-float/2addr v2, v9

    sub-float/2addr v2, v8

    int-to-float v3, v6

    sub-float/2addr v3, v8

    int-to-float v4, v7

    div-float/2addr v4, v9

    add-float/2addr v4, v8

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/e/e;->f:Landroid/graphics/Path;

    int-to-float v1, v6

    mul-float v2, v10, v8

    sub-float/2addr v1, v2

    int-to-float v2, v7

    div-float/2addr v2, v9

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v8, v3}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    iput v6, p0, Lcom/scwang/smartrefresh/layout/e/e;->b:I

    iput v7, p0, Lcom/scwang/smartrefresh/layout/e/e;->c:I

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lcom/scwang/smartrefresh/layout/e/e;->d:I

    int-to-float v0, v0

    int-to-float v1, v6

    div-float/2addr v1, v9

    int-to-float v2, v7

    div-float/2addr v2, v9

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xc

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/e/e;->a:Landroid/graphics/Paint;

    add-int/lit8 v2, v0, 0x5

    mul-int/lit8 v2, v2, 0x11

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    const/high16 v1, 0x41f00000    # 30.0f

    int-to-float v2, v6

    div-float/2addr v2, v9

    int-to-float v3, v7

    div-float/2addr v3, v9

    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/e/e;->f:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/e/e;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public isRunning()Z
    .locals 1

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/e/e;->e:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    return v0
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    div-int/lit8 v0, v0, 0x1e

    mul-int/lit8 v0, v0, 0x1e

    iput v0, p0, Lcom/scwang/smartrefresh/layout/e/e;->d:I

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public start()V
    .locals 1

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/e/e;->e:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/e/e;->e:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/e/e;->e:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/e/e;->e:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/e/e;->e:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/e/e;->e:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/e/e;->e:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method
