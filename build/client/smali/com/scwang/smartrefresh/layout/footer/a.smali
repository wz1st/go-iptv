.class public Lcom/scwang/smartrefresh/layout/footer/a;
.super Lcom/scwang/smartrefresh/layout/e/b;

# interfaces
.implements Lcom/scwang/smartrefresh/layout/a/e;


# instance fields
.field protected a:Z

.field protected b:Z

.field protected c:Landroid/graphics/Paint;

.field protected d:I

.field protected e:I

.field protected f:F

.field protected g:J

.field protected h:Z

.field protected i:Landroid/animation/TimeInterpolator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/scwang/smartrefresh/layout/footer/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2, v4}, Lcom/scwang/smartrefresh/layout/e/b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const v0, -0x111112

    iput v0, p0, Lcom/scwang/smartrefresh/layout/footer/a;->d:I

    const v0, -0x18a6ba

    iput v0, p0, Lcom/scwang/smartrefresh/layout/footer/a;->e:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/scwang/smartrefresh/layout/footer/a;->g:J

    iput-boolean v4, p0, Lcom/scwang/smartrefresh/layout/footer/a;->h:Z

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/footer/a;->i:Landroid/animation/TimeInterpolator;

    const/high16 v0, 0x42700000    # 60.0f

    invoke-static {v0}, Lcom/scwang/smartrefresh/layout/g/b;->a(F)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setMinimumHeight(I)V

    sget-object v0, Lcom/scwang/smartrefresh/layout/a$d;->BallPulseFooter:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/scwang/smartrefresh/layout/footer/a;->c:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/footer/a;->c:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/footer/a;->c:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/footer/a;->c:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v1, Lcom/scwang/smartrefresh/layout/b/c;->a:Lcom/scwang/smartrefresh/layout/b/c;

    iput-object v1, p0, Lcom/scwang/smartrefresh/layout/footer/a;->x:Lcom/scwang/smartrefresh/layout/b/c;

    sget-object v1, Lcom/scwang/smartrefresh/layout/b/c;->f:[Lcom/scwang/smartrefresh/layout/b/c;

    sget v2, Lcom/scwang/smartrefresh/layout/a$d;->BallPulseFooter_srlClassicsSpinnerStyle:I

    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/footer/a;->x:Lcom/scwang/smartrefresh/layout/b/c;

    iget v3, v3, Lcom/scwang/smartrefresh/layout/b/c;->g:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/scwang/smartrefresh/layout/footer/a;->x:Lcom/scwang/smartrefresh/layout/b/c;

    sget v1, Lcom/scwang/smartrefresh/layout/a$d;->BallPulseFooter_srlNormalColor:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/scwang/smartrefresh/layout/a$d;->BallPulseFooter_srlNormalColor:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/scwang/smartrefresh/layout/footer/a;->a(I)Lcom/scwang/smartrefresh/layout/footer/a;

    :cond_0
    sget v1, Lcom/scwang/smartrefresh/layout/a$d;->BallPulseFooter_srlAnimatingColor:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Lcom/scwang/smartrefresh/layout/a$d;->BallPulseFooter_srlAnimatingColor:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/scwang/smartrefresh/layout/footer/a;->b(I)Lcom/scwang/smartrefresh/layout/footer/a;

    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    const/high16 v0, 0x40800000    # 4.0f

    invoke-static {v0}, Lcom/scwang/smartrefresh/layout/g/b;->a(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/scwang/smartrefresh/layout/footer/a;->f:F

    return-void
.end method


# virtual methods
.method public a(Lcom/scwang/smartrefresh/layout/a/i;Z)I
    .locals 3

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/scwang/smartrefresh/layout/footer/a;->h:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/scwang/smartrefresh/layout/footer/a;->g:J

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/footer/a;->c:Landroid/graphics/Paint;

    iget v1, p0, Lcom/scwang/smartrefresh/layout/footer/a;->d:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return v2
.end method

.method public a(I)Lcom/scwang/smartrefresh/layout/footer/a;
    .locals 1

    iput p1, p0, Lcom/scwang/smartrefresh/layout/footer/a;->d:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/footer/a;->a:Z

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/footer/a;->h:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/footer/a;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    return-object p0
.end method

.method public b(I)Lcom/scwang/smartrefresh/layout/footer/a;
    .locals 1

    iput p1, p0, Lcom/scwang/smartrefresh/layout/footer/a;->e:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/footer/a;->b:Z

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/footer/a;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/footer/a;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    return-object p0
.end method

.method public b(Lcom/scwang/smartrefresh/layout/a/i;II)V
    .locals 2

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/footer/a;->h:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/footer/a;->h:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/scwang/smartrefresh/layout/footer/a;->g:J

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/footer/a;->c:Landroid/graphics/Paint;

    iget v1, p0, Lcom/scwang/smartrefresh/layout/footer/a;->e:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 14

    const v13, 0x3f333333    # 0.7f

    const/4 v1, 0x0

    const/high16 v12, 0x40000000    # 2.0f

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/scwang/smartrefresh/layout/footer/a;->f:F

    mul-float/2addr v4, v12

    sub-float/2addr v3, v4

    const/high16 v4, 0x40c00000    # 6.0f

    div-float/2addr v3, v4

    int-to-float v0, v0

    div-float/2addr v0, v12

    mul-float v4, v3, v12

    iget v5, p0, Lcom/scwang/smartrefresh/layout/footer/a;->f:F

    add-float/2addr v4, v5

    sub-float v4, v0, v4

    int-to-float v0, v2

    div-float v5, v0, v12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    const/4 v0, 0x3

    if-ge v2, v0, :cond_2

    iget-wide v8, p0, Lcom/scwang/smartrefresh/layout/footer/a;->g:J

    sub-long v8, v6, v8

    add-int/lit8 v0, v2, 0x1

    mul-int/lit8 v0, v0, 0x78

    int-to-long v10, v0

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x0

    cmp-long v0, v8, v10

    if-lez v0, :cond_0

    const-wide/16 v10, 0x2ee

    rem-long/2addr v8, v10

    long-to-float v0, v8

    const v8, 0x443b8000    # 750.0f

    div-float/2addr v0, v8

    :goto_1
    iget-object v8, p0, Lcom/scwang/smartrefresh/layout/footer/a;->i:Landroid/animation/TimeInterpolator;

    invoke-interface {v8, v0}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    mul-float v8, v3, v12

    int-to-float v9, v2

    mul-float/2addr v8, v9

    add-float/2addr v8, v4

    iget v9, p0, Lcom/scwang/smartrefresh/layout/footer/a;->f:F

    int-to-float v10, v2

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    invoke-virtual {p1, v8, v5}, Landroid/graphics/Canvas;->translate(FF)V

    float-to-double v8, v0

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    cmpg-double v8, v8, v10

    if-gez v8, :cond_1

    const/high16 v8, 0x3f800000    # 1.0f

    mul-float/2addr v0, v12

    mul-float/2addr v0, v13

    sub-float v0, v8, v0

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    :goto_2
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/footer/a;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v1, v3, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    mul-float/2addr v0, v12

    mul-float/2addr v0, v13

    const v8, 0x3ecccccd    # 0.4f

    sub-float/2addr v0, v8

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    goto :goto_2

    :cond_2
    invoke-super {p0, p1}, Lcom/scwang/smartrefresh/layout/e/b;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/footer/a;->h:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_3
    return-void
.end method

.method public varargs setPrimaryColors([I)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/footer/a;->b:Z

    if-nez v0, :cond_0

    array-length v0, p1

    if-le v0, v1, :cond_0

    aget v0, p1, v2

    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/footer/a;->b(I)Lcom/scwang/smartrefresh/layout/footer/a;

    iput-boolean v2, p0, Lcom/scwang/smartrefresh/layout/footer/a;->b:Z

    :cond_0
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/footer/a;->a:Z

    if-nez v0, :cond_2

    array-length v0, p1

    if-le v0, v1, :cond_3

    aget v0, p1, v1

    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/footer/a;->a(I)Lcom/scwang/smartrefresh/layout/footer/a;

    :cond_1
    :goto_0
    iput-boolean v2, p0, Lcom/scwang/smartrefresh/layout/footer/a;->a:Z

    :cond_2
    return-void

    :cond_3
    array-length v0, p1

    if-lez v0, :cond_1

    const v0, -0x66000001

    aget v1, p1, v2

    invoke-static {v0, v1}, Landroid/support/v4/graphics/a;->a(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/footer/a;->a(I)Lcom/scwang/smartrefresh/layout/footer/a;

    goto :goto_0
.end method
