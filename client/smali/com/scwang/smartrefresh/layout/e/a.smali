.class public Lcom/scwang/smartrefresh/layout/e/a;
.super Lcom/scwang/smartrefresh/layout/e/d;


# instance fields
.field private b:I

.field private c:I

.field private d:Landroid/graphics/Path;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/scwang/smartrefresh/layout/e/d;-><init>()V

    iput v0, p0, Lcom/scwang/smartrefresh/layout/e/a;->b:I

    iput v0, p0, Lcom/scwang/smartrefresh/layout/e/a;->c:I

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/e/a;->d:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 11

    const v5, 0x3f3504f3

    const/4 v10, 0x0

    const/high16 v9, 0x40000000    # 2.0f

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v2, p0, Lcom/scwang/smartrefresh/layout/e/a;->b:I

    if-ne v2, v1, :cond_0

    iget v2, p0, Lcom/scwang/smartrefresh/layout/e/a;->c:I

    if-eq v2, v0, :cond_1

    :cond_0
    mul-int/lit8 v2, v1, 0x1e

    div-int/lit16 v2, v2, 0xe1

    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/e/a;->d:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    int-to-float v3, v2

    mul-float/2addr v3, v5

    int-to-float v4, v2

    div-float/2addr v4, v5

    iget-object v5, p0, Lcom/scwang/smartrefresh/layout/e/a;->d:Landroid/graphics/Path;

    int-to-float v6, v1

    div-float/2addr v6, v9

    int-to-float v7, v0

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v5, p0, Lcom/scwang/smartrefresh/layout/e/a;->d:Landroid/graphics/Path;

    int-to-float v6, v0

    div-float/2addr v6, v9

    invoke-virtual {v5, v10, v6}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v5, p0, Lcom/scwang/smartrefresh/layout/e/a;->d:Landroid/graphics/Path;

    int-to-float v6, v0

    div-float/2addr v6, v9

    sub-float/2addr v6, v3

    invoke-virtual {v5, v3, v6}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v5, p0, Lcom/scwang/smartrefresh/layout/e/a;->d:Landroid/graphics/Path;

    int-to-float v6, v1

    div-float/2addr v6, v9

    int-to-float v7, v2

    div-float/2addr v7, v9

    sub-float/2addr v6, v7

    int-to-float v7, v0

    sub-float/2addr v7, v4

    int-to-float v8, v2

    div-float/2addr v8, v9

    sub-float/2addr v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v5, p0, Lcom/scwang/smartrefresh/layout/e/a;->d:Landroid/graphics/Path;

    int-to-float v6, v1

    div-float/2addr v6, v9

    int-to-float v7, v2

    div-float/2addr v7, v9

    sub-float/2addr v6, v7

    invoke-virtual {v5, v6, v10}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v5, p0, Lcom/scwang/smartrefresh/layout/e/a;->d:Landroid/graphics/Path;

    int-to-float v6, v1

    div-float/2addr v6, v9

    int-to-float v7, v2

    div-float/2addr v7, v9

    add-float/2addr v6, v7

    invoke-virtual {v5, v6, v10}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v5, p0, Lcom/scwang/smartrefresh/layout/e/a;->d:Landroid/graphics/Path;

    int-to-float v6, v1

    div-float/2addr v6, v9

    int-to-float v7, v2

    div-float/2addr v7, v9

    add-float/2addr v6, v7

    int-to-float v7, v0

    sub-float v4, v7, v4

    int-to-float v2, v2

    div-float/2addr v2, v9

    sub-float v2, v4, v2

    invoke-virtual {v5, v6, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/e/a;->d:Landroid/graphics/Path;

    int-to-float v4, v1

    sub-float/2addr v4, v3

    int-to-float v5, v0

    div-float/2addr v5, v9

    sub-float v3, v5, v3

    invoke-virtual {v2, v4, v3}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/e/a;->d:Landroid/graphics/Path;

    int-to-float v3, v1

    int-to-float v4, v0

    div-float/2addr v4, v9

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/e/a;->d:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    iput v1, p0, Lcom/scwang/smartrefresh/layout/e/a;->b:I

    iput v0, p0, Lcom/scwang/smartrefresh/layout/e/a;->c:I

    :cond_1
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/e/a;->d:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/e/a;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method
