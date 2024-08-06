.class Landroid/support/v7/widget/RecyclerView$w;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "w"
.end annotation


# instance fields
.field a:Landroid/widget/OverScroller;

.field b:Landroid/view/animation/Interpolator;

.field final synthetic c:Landroid/support/v7/widget/RecyclerView;

.field private d:I

.field private e:I

.field private f:Z

.field private g:Z


# direct methods
.method constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 3

    const/4 v1, 0x0

    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$w;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/support/v7/widget/RecyclerView;->O:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$w;->b:Landroid/view/animation/Interpolator;

    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$w;->f:Z

    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$w;->g:Z

    new-instance v0, Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/support/v7/widget/RecyclerView;->O:Landroid/view/animation/Interpolator;

    invoke-direct {v0, v1, v2}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$w;->a:Landroid/widget/OverScroller;

    return-void
.end method

.method private a(F)F
    .locals 2

    const/high16 v0, 0x3f000000    # 0.5f

    sub-float v0, p1, v0

    const v1, 0x3ef1463b

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private b(IIII)I
    .locals 9

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-le v2, v3, :cond_0

    const/4 v0, 0x1

    :goto_0
    mul-int v1, p3, p3

    mul-int v4, p4, p4

    add-int/2addr v1, v4

    int-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-int v4, v4

    mul-int v1, p1, p1

    mul-int v5, p2, p2

    add-int/2addr v1, v5

    int-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-int v5, v6

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$w;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v1

    :goto_1
    div-int/lit8 v6, v1, 0x2

    int-to-float v5, v5

    mul-float/2addr v5, v8

    int-to-float v7, v1

    div-float/2addr v5, v7

    invoke-static {v8, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    int-to-float v7, v6

    int-to-float v6, v6

    invoke-direct {p0, v5}, Landroid/support/v7/widget/RecyclerView$w;->a(F)F

    move-result v5

    mul-float/2addr v5, v6

    add-float/2addr v5, v7

    if-lez v4, :cond_2

    const/high16 v0, 0x447a0000    # 1000.0f

    int-to-float v1, v4

    div-float v1, v5, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    :goto_2
    const/16 v1, 0x7d0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$w;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v1

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    move v0, v2

    :goto_3
    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    add-float/2addr v0, v8

    const/high16 v1, 0x43960000    # 300.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_2

    :cond_3
    move v0, v3

    goto :goto_3
.end method

.method private c()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$w;->g:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$w;->f:Z

    return-void
.end method

.method private d()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$w;->f:Z

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$w;->g:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$w;->a()V

    :cond_0
    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$w;->f:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$w;->g:Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$w;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$w;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, p0}, Landroid/support/v4/f/t;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public a(II)V
    .locals 9

    const v6, 0x7fffffff

    const/high16 v5, -0x80000000

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$w;->c:Landroid/support/v7/widget/RecyclerView;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    iput v1, p0, Landroid/support/v7/widget/RecyclerView$w;->e:I

    iput v1, p0, Landroid/support/v7/widget/RecyclerView$w;->d:I

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$w;->a:Landroid/widget/OverScroller;

    move v2, v1

    move v3, p1

    move v4, p2

    move v7, v5

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$w;->a()V

    return-void
.end method

.method public a(III)V
    .locals 1

    sget-object v0, Landroid/support/v7/widget/RecyclerView;->O:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/v7/widget/RecyclerView$w;->a(IIILandroid/view/animation/Interpolator;)V

    return-void
.end method

.method public a(IIII)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/RecyclerView$w;->b(IIII)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v7/widget/RecyclerView$w;->a(III)V

    return-void
.end method

.method public a(IIILandroid/view/animation/Interpolator;)V
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$w;->b:Landroid/view/animation/Interpolator;

    if-eq v0, p4, :cond_0

    iput-object p4, p0, Landroid/support/v7/widget/RecyclerView$w;->b:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/widget/OverScroller;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$w;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, p4}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$w;->a:Landroid/widget/OverScroller;

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$w;->c:Landroid/support/v7/widget/RecyclerView;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    iput v1, p0, Landroid/support/v7/widget/RecyclerView$w;->e:I

    iput v1, p0, Landroid/support/v7/widget/RecyclerView$w;->d:I

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$w;->a:Landroid/widget/OverScroller;

    move v2, v1

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$w;->a:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$w;->a()V

    return-void
.end method

.method public a(IILandroid/view/animation/Interpolator;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Landroid/support/v7/widget/RecyclerView$w;->b(IIII)I

    move-result v0

    if-nez p3, :cond_0

    sget-object p3, Landroid/support/v7/widget/RecyclerView;->O:Landroid/view/animation/Interpolator;

    :cond_0
    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/support/v7/widget/RecyclerView$w;->a(IIILandroid/view/animation/Interpolator;)V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$w;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$w;->a:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    return-void
.end method

.method public b(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/support/v7/widget/RecyclerView$w;->a(IIII)V

    return-void
.end method

.method public run()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$w;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->q:Landroid/support/v7/widget/RecyclerView$i;

    if-nez v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView$w;->b()V

    :goto_0
    return-void

    :cond_0
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView$w;->c()V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$w;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->f()V

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v7/widget/RecyclerView$w;->a:Landroid/widget/OverScroller;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$w;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->q:Landroid/support/v7/widget/RecyclerView$i;

    iget-object v15, v2, Landroid/support/v7/widget/RecyclerView$i;->B:Landroid/support/v7/widget/RecyclerView$t;

    invoke-virtual {v14}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v2

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$w;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v5, v2, Landroid/support/v7/widget/RecyclerView;->L:[I

    invoke-virtual {v14}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v16

    invoke-virtual {v14}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v17

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v7/widget/RecyclerView$w;->d:I

    sub-int v3, v16, v2

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v7/widget/RecyclerView$w;->e:I

    sub-int v4, v17, v2

    const/4 v13, 0x0

    const/4 v12, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v7/widget/RecyclerView$w;->d:I

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v7/widget/RecyclerView$w;->e:I

    const/4 v11, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$w;->c:Landroid/support/v7/widget/RecyclerView;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Landroid/support/v7/widget/RecyclerView;->a(II[I[II)Z

    move-result v2

    if-eqz v2, :cond_20

    const/4 v2, 0x0

    aget v2, v5, v2

    sub-int/2addr v3, v2

    const/4 v2, 0x1

    aget v2, v5, v2

    sub-int/2addr v4, v2

    move v9, v4

    move v10, v3

    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$w;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/RecyclerView$a;

    if-eqz v2, :cond_1f

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$w;->c:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView$w;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->M:[I

    invoke-virtual {v2, v10, v9, v3}, Landroid/support/v7/widget/RecyclerView;->a(II[I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$w;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->M:[I

    const/4 v3, 0x0

    aget v3, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$w;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->M:[I

    const/4 v4, 0x1

    aget v4, v2, v4

    sub-int v5, v10, v3

    sub-int v6, v9, v4

    if-eqz v15, :cond_1

    invoke-virtual {v15}, Landroid/support/v7/widget/RecyclerView$t;->l()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v15}, Landroid/support/v7/widget/RecyclerView$t;->m()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$w;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->G:Landroid/support/v7/widget/RecyclerView$u;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$u;->f()I

    move-result v2

    if-nez v2, :cond_14

    invoke-virtual {v15}, Landroid/support/v7/widget/RecyclerView$t;->k()V

    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$w;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->s:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$w;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$w;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getOverScrollMode()I

    move-result v2

    const/4 v7, 0x2

    if-eq v2, v7, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$w;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v10, v9}, Landroid/support/v7/widget/RecyclerView;->c(II)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$w;->c:Landroid/support/v7/widget/RecyclerView;

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual/range {v2 .. v8}, Landroid/support/v7/widget/RecyclerView;->a(IIII[II)Z

    move-result v2

    if-nez v2, :cond_9

    if-nez v5, :cond_4

    if-eqz v6, :cond_9

    :cond_4
    invoke-virtual {v14}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v2

    float-to-int v7, v2

    const/4 v2, 0x0

    move/from16 v0, v16

    if-eq v5, v0, :cond_1e

    if-gez v5, :cond_16

    neg-int v2, v7

    :goto_3
    move v8, v2

    :goto_4
    const/4 v2, 0x0

    move/from16 v0, v17

    if-eq v6, v0, :cond_1d

    if-gez v6, :cond_18

    neg-int v7, v7

    :cond_5
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$w;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getOverScrollMode()I

    move-result v2

    const/4 v11, 0x2

    if-eq v2, v11, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$w;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v8, v7}, Landroid/support/v7/widget/RecyclerView;->d(II)V

    :cond_6
    if-nez v8, :cond_7

    move/from16 v0, v16

    if-eq v5, v0, :cond_7

    invoke-virtual {v14}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v2

    if-nez v2, :cond_9

    :cond_7
    if-nez v7, :cond_8

    move/from16 v0, v17

    if-eq v6, v0, :cond_8

    invoke-virtual {v14}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v2

    if-nez v2, :cond_9

    :cond_8
    invoke-virtual {v14}, Landroid/widget/OverScroller;->abortAnimation()V

    :cond_9
    if-nez v3, :cond_a

    if-eqz v4, :cond_b

    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$w;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v3, v4}, Landroid/support/v7/widget/RecyclerView;->i(II)V

    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$w;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v2

    if-nez v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$w;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    :cond_c
    if-eqz v9, :cond_19

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$w;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->q:Landroid/support/v7/widget/RecyclerView$i;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$i;->p()Z

    move-result v2

    if-eqz v2, :cond_19

    if-ne v4, v9, :cond_19

    const/4 v2, 0x1

    move v4, v2

    :goto_6
    if-eqz v10, :cond_1a

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$w;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->q:Landroid/support/v7/widget/RecyclerView$i;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$i;->o()Z

    move-result v2

    if-eqz v2, :cond_1a

    if-ne v3, v10, :cond_1a

    const/4 v2, 0x1

    :goto_7
    if-nez v10, :cond_d

    if-eqz v9, :cond_e

    :cond_d
    if-nez v2, :cond_e

    if-eqz v4, :cond_1b

    :cond_e
    const/4 v2, 0x1

    :goto_8
    invoke-virtual {v14}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_f

    if-nez v2, :cond_1c

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$w;->c:Landroid/support/v7/widget/RecyclerView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->i(I)Z

    move-result v2

    if-nez v2, :cond_1c

    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$w;->c:Landroid/support/v7/widget/RecyclerView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    sget-boolean v2, Landroid/support/v7/widget/RecyclerView;->g:Z

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$w;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->F:Landroid/support/v7/widget/aa$a;

    invoke-virtual {v2}, Landroid/support/v7/widget/aa$a;->a()V

    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$w;->c:Landroid/support/v7/widget/RecyclerView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->h(I)V

    :cond_11
    :goto_9
    if-eqz v15, :cond_13

    invoke-virtual {v15}, Landroid/support/v7/widget/RecyclerView$t;->l()Z

    move-result v2

    if-eqz v2, :cond_12

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v15, v2, v3}, Landroid/support/v7/widget/RecyclerView$t;->a(II)V

    :cond_12
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/support/v7/widget/RecyclerView$w;->g:Z

    if-nez v2, :cond_13

    invoke-virtual {v15}, Landroid/support/v7/widget/RecyclerView$t;->k()V

    :cond_13
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView$w;->d()V

    goto/16 :goto_0

    :cond_14
    invoke-virtual {v15}, Landroid/support/v7/widget/RecyclerView$t;->n()I

    move-result v7

    if-lt v7, v2, :cond_15

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v15, v2}, Landroid/support/v7/widget/RecyclerView$t;->d(I)V

    sub-int v2, v10, v5

    sub-int v7, v9, v6

    invoke-virtual {v15, v2, v7}, Landroid/support/v7/widget/RecyclerView$t;->a(II)V

    goto/16 :goto_2

    :cond_15
    sub-int v2, v10, v5

    sub-int v7, v9, v6

    invoke-virtual {v15, v2, v7}, Landroid/support/v7/widget/RecyclerView$t;->a(II)V

    goto/16 :goto_2

    :cond_16
    if-lez v5, :cond_17

    move v2, v7

    goto/16 :goto_3

    :cond_17
    const/4 v2, 0x0

    goto/16 :goto_3

    :cond_18
    if-gtz v6, :cond_5

    const/4 v7, 0x0

    goto/16 :goto_5

    :cond_19
    const/4 v2, 0x0

    move v4, v2

    goto/16 :goto_6

    :cond_1a
    const/4 v2, 0x0

    goto/16 :goto_7

    :cond_1b
    const/4 v2, 0x0

    goto :goto_8

    :cond_1c
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView$w;->a()V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$w;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->E:Landroid/support/v7/widget/aa;

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$w;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->E:Landroid/support/v7/widget/aa;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView$w;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v3, v10, v9}, Landroid/support/v7/widget/aa;->a(Landroid/support/v7/widget/RecyclerView;II)V

    goto :goto_9

    :cond_1d
    move v7, v2

    goto/16 :goto_5

    :cond_1e
    move v8, v2

    goto/16 :goto_4

    :cond_1f
    move v6, v8

    move v5, v11

    move v4, v12

    move v3, v13

    goto/16 :goto_2

    :cond_20
    move v9, v4

    move v10, v3

    goto/16 :goto_1
.end method
