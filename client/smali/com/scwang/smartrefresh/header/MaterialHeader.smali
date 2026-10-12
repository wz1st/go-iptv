.class public Lcom/scwang/smartrefresh/header/MaterialHeader;
.super Lcom/scwang/smartrefresh/layout/e/b;

# interfaces
.implements Lcom/scwang/smartrefresh/layout/a/f;


# instance fields
.field protected a:Z

.field protected b:I

.field protected c:Landroid/widget/ImageView;

.field protected d:Lcom/scwang/smartrefresh/header/a/a;

.field protected e:I

.field protected f:I

.field protected g:Landroid/graphics/Path;

.field protected h:Landroid/graphics/Paint;

.field protected i:Lcom/scwang/smartrefresh/layout/b/b;

.field protected j:Z

.field protected k:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/scwang/smartrefresh/header/MaterialHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2, v5}, Lcom/scwang/smartrefresh/layout/e/b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v5, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->j:Z

    iput-boolean v6, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->k:Z

    sget-object v0, Lcom/scwang/smartrefresh/layout/b/c;->e:Lcom/scwang/smartrefresh/layout/b/c;

    iput-object v0, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->x:Lcom/scwang/smartrefresh/layout/b/c;

    const/high16 v0, 0x42c80000    # 100.0f

    invoke-static {v0}, Lcom/scwang/smartrefresh/layout/g/b;->a(F)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setMinimumHeight(I)V

    new-instance v0, Lcom/scwang/smartrefresh/header/a/a;

    invoke-direct {v0, p0}, Lcom/scwang/smartrefresh/header/a/a;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->d:Lcom/scwang/smartrefresh/header/a/a;

    iget-object v0, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->d:Lcom/scwang/smartrefresh/header/a/a;

    const/4 v1, 0x5

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/header/a/a;->a([I)V

    new-instance v0, Lcom/scwang/smartrefresh/header/b/a;

    const v1, -0x50506

    invoke-direct {v0, p1, v1}, Lcom/scwang/smartrefresh/header/b/a;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->c:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->c:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->d:Lcom/scwang/smartrefresh/header/a/a;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->c:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/high16 v1, 0x42200000    # 40.0f

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->b:I

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->g:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->h:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->h:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v0, Lcom/scwang/smartrefresh/header/a$a;->MaterialHeader:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lcom/scwang/smartrefresh/header/a$a;->MaterialHeader_mhShowBezierWave:I

    iget-boolean v2, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->j:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->j:Z

    sget v1, Lcom/scwang/smartrefresh/header/a$a;->MaterialHeader_mhScrollableWhenRefreshing:I

    iget-boolean v2, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->k:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->k:Z

    iget-object v1, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->h:Landroid/graphics/Paint;

    sget v2, Lcom/scwang/smartrefresh/header/a$a;->MaterialHeader_mhPrimaryColor:I

    const v3, -0xee4401

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    sget v1, Lcom/scwang/smartrefresh/header/a$a;->MaterialHeader_mhShadowRadius:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/scwang/smartrefresh/header/a$a;->MaterialHeader_mhShadowRadius:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    sget v2, Lcom/scwang/smartrefresh/header/a$a;->MaterialHeader_mhShadowColor:I

    const/high16 v3, -0x1000000

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iget-object v3, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->h:Landroid/graphics/Paint;

    int-to-float v1, v1

    invoke-virtual {v3, v1, v4, v4, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    const/4 v1, 0x0

    invoke-virtual {p0, v6, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :array_0
    .array-data 4
        -0xff6634
        -0xbbbc
        -0x996700
        -0x559934
        -0x7800
    .end array-data
.end method


# virtual methods
.method public a(Lcom/scwang/smartrefresh/layout/a/i;Z)I
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->c:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->d:Lcom/scwang/smartrefresh/header/a/a;

    invoke-virtual {v1}, Lcom/scwang/smartrefresh/header/a/a;->stop()V

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->a:Z

    const/4 v0, 0x0

    return v0
.end method

.method public a(Lcom/scwang/smartrefresh/layout/a/h;II)V
    .locals 1

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->j:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Lcom/scwang/smartrefresh/layout/a/h;->a(Lcom/scwang/smartrefresh/layout/a/g;Z)Lcom/scwang/smartrefresh/layout/a/h;

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    div-int/lit8 v0, p2, 0x2

    iput v0, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->f:I

    iput v0, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->e:I

    :cond_1
    return-void
.end method

.method public a(Lcom/scwang/smartrefresh/layout/a/i;II)V
    .locals 1

    iget-object v0, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->d:Lcom/scwang/smartrefresh/header/a/a;

    invoke-virtual {v0}, Lcom/scwang/smartrefresh/header/a/a;->start()V

    return-void
.end method

.method public a(Lcom/scwang/smartrefresh/layout/a/i;Lcom/scwang/smartrefresh/layout/b/b;Lcom/scwang/smartrefresh/layout/b/b;)V
    .locals 5

    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->c:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->i:Lcom/scwang/smartrefresh/layout/b/b;

    sget-object v1, Lcom/scwang/smartrefresh/header/MaterialHeader$1;->a:[I

    invoke-virtual {p3}, Lcom/scwang/smartrefresh/layout/b/b;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iput-boolean v4, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->a:Z

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleY(F)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(ZFIII)V
    .locals 8

    iget-object v0, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->i:Lcom/scwang/smartrefresh/layout/b/b;

    sget-object v1, Lcom/scwang/smartrefresh/layout/b/b;->l:Lcom/scwang/smartrefresh/layout/b/b;

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->j:Z

    if-eqz v0, :cond_2

    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->f:I

    const/4 v0, 0x0

    sub-int v1, p3, p4

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->e:I

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    :cond_2
    if-nez p1, :cond_3

    iget-object v0, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->d:Lcom/scwang/smartrefresh/header/a/a;

    invoke-virtual {v0}, Lcom/scwang/smartrefresh/header/a/a;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->a:Z

    if-nez v0, :cond_0

    :cond_3
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->i:Lcom/scwang/smartrefresh/layout/b/b;

    sget-object v1, Lcom/scwang/smartrefresh/layout/b/b;->l:Lcom/scwang/smartrefresh/layout/b/b;

    if-eq v0, v1, :cond_4

    const/high16 v0, 0x3f800000    # 1.0f

    int-to-float v1, p3

    mul-float/2addr v0, v1

    int-to-float v1, p4

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3fd999999999999aL    # 0.4

    sub-double/2addr v0, v2

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x40a00000    # 5.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x40400000    # 3.0f

    div-float/2addr v0, v1

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    sub-int/2addr v1, p4

    int-to-float v1, v1

    const/4 v2, 0x0

    int-to-float v3, p4

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    int-to-float v3, p4

    div-float/2addr v1, v3

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const/high16 v2, 0x40800000    # 4.0f

    div-float v2, v1, v2

    float-to-double v2, v2

    const/high16 v4, 0x40800000    # 4.0f

    div-float/2addr v1, v4

    float-to-double v4, v1

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    sub-double/2addr v2, v4

    double-to-float v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    const v2, 0x3f4ccccd    # 0.8f

    mul-float/2addr v2, v0

    iget-object v3, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->d:Lcom/scwang/smartrefresh/header/a/a;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/scwang/smartrefresh/header/a/a;->a(Z)V

    iget-object v3, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->d:Lcom/scwang/smartrefresh/header/a/a;

    const/4 v4, 0x0

    const v5, 0x3f4ccccd    # 0.8f

    invoke-static {v5, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-virtual {v3, v4, v2}, Lcom/scwang/smartrefresh/header/a/a;->a(FF)V

    iget-object v2, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->d:Lcom/scwang/smartrefresh/header/a/a;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/scwang/smartrefresh/header/a/a;->a(F)V

    const/high16 v2, -0x41800000    # -0.25f

    const v3, 0x3ecccccd    # 0.4f

    mul-float/2addr v0, v3

    add-float/2addr v0, v2

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->d:Lcom/scwang/smartrefresh/header/a/a;

    invoke-virtual {v1, v0}, Lcom/scwang/smartrefresh/header/a/a;->b(F)V

    :cond_4
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->c:Landroid/widget/ImageView;

    int-to-float v1, p3

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v2, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->b:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    int-to-float v2, p3

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x40800000    # 4.0f

    int-to-float v3, p3

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->b:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6

    const/4 v5, 0x0

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->j:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->g:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->g:Landroid/graphics/Path;

    iget v1, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->f:I

    int-to-float v1, v1

    invoke-virtual {v0, v5, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->g:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v2, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->f:I

    int-to-float v2, v2

    iget v3, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->e:I

    int-to-float v3, v3

    const v4, 0x3ff33333    # 1.9f

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->f:I

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    iget-object v0, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->g:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1, v5}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->g:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_0
    invoke-super {p0, p1}, Lcom/scwang/smartrefresh/layout/e/b;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 9

    const/4 v8, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->c:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->f:I

    if-lez v4, :cond_1

    iget v4, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->f:I

    div-int/lit8 v5, v3, 0x2

    sub-int/2addr v4, v5

    div-int/lit8 v5, v1, 0x2

    div-int/lit8 v6, v2, 0x2

    sub-int/2addr v5, v6

    div-int/lit8 v1, v1, 0x2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int v2, v4, v3

    invoke-virtual {v0, v5, v4, v1, v2}, Landroid/view/View;->layout(IIII)V

    iget-object v1, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->d:Lcom/scwang/smartrefresh/header/a/a;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/scwang/smartrefresh/header/a/a;->a(Z)V

    iget-object v1, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->d:Lcom/scwang/smartrefresh/header/a/a;

    const/4 v2, 0x0

    const v3, 0x3f4ccccd    # 0.8f

    invoke-virtual {v1, v2, v3}, Lcom/scwang/smartrefresh/header/a/a;->a(FF)V

    iget-object v1, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->d:Lcom/scwang/smartrefresh/header/a/a;

    invoke-virtual {v1, v7}, Lcom/scwang/smartrefresh/header/a/a;->a(F)V

    invoke-virtual {v0, v7}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    div-int/lit8 v4, v1, 0x2

    div-int/lit8 v5, v2, 0x2

    sub-int/2addr v4, v5

    neg-int v3, v3

    div-int/lit8 v1, v1, 0x2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    invoke-virtual {v0, v4, v3, v1, v8}, Landroid/view/View;->layout(IIII)V

    goto :goto_0
.end method

.method public onMeasure(II)V
    .locals 4

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-super {p0, v0, v1}, Lcom/scwang/smartrefresh/layout/e/b;->setMeasuredDimension(II)V

    iget-object v0, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->c:Landroid/widget/ImageView;

    iget v1, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->b:I

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget v2, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->b:I

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method public varargs setPrimaryColors([I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    array-length v0, p1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->h:Landroid/graphics/Paint;

    const/4 v1, 0x0

    aget v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    return-void
.end method
