.class public Landroid/support/v7/widget/ad;
.super Landroid/support/v7/widget/RecyclerView$t;


# instance fields
.field private final a:F

.field protected final d:Landroid/view/animation/LinearInterpolator;

.field protected final e:Landroid/view/animation/DecelerateInterpolator;

.field protected f:Landroid/graphics/PointF;

.field protected g:I

.field protected h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$t;-><init>()V

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/ad;->d:Landroid/view/animation/LinearInterpolator;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/ad;->e:Landroid/view/animation/DecelerateInterpolator;

    iput v1, p0, Landroid/support/v7/widget/ad;->g:I

    iput v1, p0, Landroid/support/v7/widget/ad;->h:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ad;->a(Landroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/ad;->a:F

    return-void
.end method

.method private b(II)I
    .locals 2

    sub-int v0, p1, p2

    mul-int v1, p1, v0

    if-gtz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method


# virtual methods
.method protected a(Landroid/util/DisplayMetrics;)F
    .locals 2

    const/high16 v0, 0x41c80000    # 25.0f

    iget v1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public a(IIIII)I
    .locals 2

    packed-switch p5, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "snap preference should be one of the constants defined in SmoothScroller, starting with SNAP_"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    sub-int v0, p3, p1

    :cond_0
    :goto_0
    return v0

    :pswitch_1
    sub-int v0, p4, p2

    goto :goto_0

    :pswitch_2
    sub-int v0, p3, p1

    if-gtz v0, :cond_0

    sub-int v0, p4, p2

    if-ltz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public a(Landroid/view/View;I)I
    .locals 6

    invoke-virtual {p0}, Landroid/support/v7/widget/ad;->j()Landroid/support/v7/widget/RecyclerView$i;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$i;->p()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$j;

    invoke-virtual {v4, p1}, Landroid/support/v7/widget/RecyclerView$i;->d(Landroid/view/View;)I

    move-result v1

    iget v2, v0, Landroid/support/v7/widget/RecyclerView$j;->topMargin:I

    sub-int/2addr v1, v2

    invoke-virtual {v4, p1}, Landroid/support/v7/widget/RecyclerView$i;->f(Landroid/view/View;)I

    move-result v2

    iget v0, v0, Landroid/support/v7/widget/RecyclerView$j;->bottomMargin:I

    add-int/2addr v2, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$i;->T()I

    move-result v3

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$i;->R()I

    move-result v0

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$i;->V()I

    move-result v4

    sub-int v4, v0, v4

    move-object v0, p0

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/ad;->a(IIIII)I

    move-result v0

    goto :goto_0
.end method

.method protected a()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/ad;->h:I

    iput v0, p0, Landroid/support/v7/widget/ad;->g:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/ad;->f:Landroid/graphics/PointF;

    return-void
.end method

.method protected a(IILandroid/support/v7/widget/RecyclerView$u;Landroid/support/v7/widget/RecyclerView$t$a;)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/widget/ad;->o()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/widget/ad;->k()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Landroid/support/v7/widget/ad;->g:I

    invoke-direct {p0, v0, p1}, Landroid/support/v7/widget/ad;->b(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/ad;->g:I

    iget v0, p0, Landroid/support/v7/widget/ad;->h:I

    invoke-direct {p0, v0, p2}, Landroid/support/v7/widget/ad;->b(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/ad;->h:I

    iget v0, p0, Landroid/support/v7/widget/ad;->g:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/ad;->h:I

    if-nez v0, :cond_0

    invoke-virtual {p0, p4}, Landroid/support/v7/widget/ad;->a(Landroid/support/v7/widget/RecyclerView$t$a;)V

    goto :goto_0
.end method

.method protected a(Landroid/support/v7/widget/RecyclerView$t$a;)V
    .locals 5

    const v4, 0x461c4000    # 10000.0f

    const/4 v2, 0x0

    const v3, 0x3f99999a    # 1.2f

    invoke-virtual {p0}, Landroid/support/v7/widget/ad;->n()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ad;->a(I)Landroid/graphics/PointF;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    iget v1, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/ad;->n()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$t$a;->a(I)V

    invoke-virtual {p0}, Landroid/support/v7/widget/ad;->k()V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ad;->a(Landroid/graphics/PointF;)V

    iput-object v0, p0, Landroid/support/v7/widget/ad;->f:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    mul-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, p0, Landroid/support/v7/widget/ad;->g:I

    iget v0, v0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v0, v4

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/ad;->h:I

    const/16 v0, 0x2710

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ad;->b(I)I

    move-result v0

    iget v1, p0, Landroid/support/v7/widget/ad;->g:I

    int-to-float v1, v1

    mul-float/2addr v1, v3

    float-to-int v1, v1

    iget v2, p0, Landroid/support/v7/widget/ad;->h:I

    int-to-float v2, v2

    mul-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v0, v0

    mul-float/2addr v0, v3

    float-to-int v0, v0

    iget-object v3, p0, Landroid/support/v7/widget/ad;->d:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/support/v7/widget/RecyclerView$t$a;->a(IIILandroid/view/animation/Interpolator;)V

    goto :goto_0
.end method

.method protected a(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$u;Landroid/support/v7/widget/RecyclerView$t$a;)V
    .locals 4

    invoke-virtual {p0}, Landroid/support/v7/widget/ad;->h()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/ad;->b(Landroid/view/View;I)I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/ad;->i()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Landroid/support/v7/widget/ad;->a(Landroid/view/View;I)I

    move-result v1

    mul-int v2, v0, v0

    mul-int v3, v1, v1

    add-int/2addr v2, v3

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/ad;->c(I)I

    move-result v2

    if-lez v2, :cond_0

    neg-int v0, v0

    neg-int v1, v1

    iget-object v3, p0, Landroid/support/v7/widget/ad;->e:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p3, v0, v1, v2, v3}, Landroid/support/v7/widget/RecyclerView$t$a;->a(IIILandroid/view/animation/Interpolator;)V

    :cond_0
    return-void
.end method

.method protected b(I)I
    .locals 2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Landroid/support/v7/widget/ad;->a:F

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public b(Landroid/view/View;I)I
    .locals 6

    invoke-virtual {p0}, Landroid/support/v7/widget/ad;->j()Landroid/support/v7/widget/RecyclerView$i;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$i;->o()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$j;

    invoke-virtual {v4, p1}, Landroid/support/v7/widget/RecyclerView$i;->c(Landroid/view/View;)I

    move-result v1

    iget v2, v0, Landroid/support/v7/widget/RecyclerView$j;->leftMargin:I

    sub-int/2addr v1, v2

    invoke-virtual {v4, p1}, Landroid/support/v7/widget/RecyclerView$i;->e(Landroid/view/View;)I

    move-result v2

    iget v0, v0, Landroid/support/v7/widget/RecyclerView$j;->rightMargin:I

    add-int/2addr v2, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$i;->S()I

    move-result v3

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$i;->Q()I

    move-result v0

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$i;->U()I

    move-result v4

    sub-int v4, v0, v4

    move-object v0, p0

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/ad;->a(IIIII)I

    move-result v0

    goto :goto_0
.end method

.method protected c(I)I
    .locals 4

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ad;->b(I)I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x3fd57a786c22680aL    # 0.3356

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method protected g()V
    .locals 0

    return-void
.end method

.method protected h()I
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v7/widget/ad;->f:Landroid/graphics/PointF;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ad;->f:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/ad;->f:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method protected i()I
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v7/widget/ad;->f:Landroid/graphics/PointF;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ad;->f:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/ad;->f:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method
