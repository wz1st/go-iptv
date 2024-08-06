.class public Lcom/scwang/smartrefresh/layout/c/a;
.super Lcom/scwang/smartrefresh/layout/e/b;

# interfaces
.implements Lcom/scwang/smartrefresh/layout/a/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scwang/smartrefresh/layout/c/a$a;
    }
.end annotation


# instance fields
.field protected a:I

.field protected b:I

.field protected c:Z

.field protected d:Z

.field protected e:Z

.field protected f:Z

.field protected g:Landroid/graphics/Path;

.field protected h:Landroid/graphics/Paint;

.field protected i:I

.field protected j:I

.field protected k:I

.field protected l:I

.field protected m:F

.field protected n:F

.field protected o:F

.field protected p:F

.field protected q:I

.field protected r:F

.field protected s:F

.field protected t:F

.field protected u:Landroid/animation/Animator;

.field protected v:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/scwang/smartrefresh/layout/c/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    const/4 v4, -0x1

    const/high16 v3, 0x40e00000    # 7.0f

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/scwang/smartrefresh/layout/e/b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/c/a;->f:Z

    iput v4, p0, Lcom/scwang/smartrefresh/layout/c/a;->k:I

    iput v0, p0, Lcom/scwang/smartrefresh/layout/c/a;->l:I

    iput v0, p0, Lcom/scwang/smartrefresh/layout/c/a;->q:I

    iput v2, p0, Lcom/scwang/smartrefresh/layout/c/a;->r:F

    iput v2, p0, Lcom/scwang/smartrefresh/layout/c/a;->s:F

    iput v2, p0, Lcom/scwang/smartrefresh/layout/c/a;->t:F

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v2, v2, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/c/a;->v:Landroid/graphics/RectF;

    sget-object v0, Lcom/scwang/smartrefresh/layout/b/c;->c:Lcom/scwang/smartrefresh/layout/b/c;

    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/c/a;->x:Lcom/scwang/smartrefresh/layout/b/c;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/c/a;->g:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/c/a;->h:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/c/a;->h:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-static {v3}, Lcom/scwang/smartrefresh/layout/g/b;->a(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/scwang/smartrefresh/layout/c/a;->o:F

    const/high16 v0, 0x41a00000    # 20.0f

    invoke-static {v0}, Lcom/scwang/smartrefresh/layout/g/b;->a(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/scwang/smartrefresh/layout/c/a;->r:F

    invoke-static {v3}, Lcom/scwang/smartrefresh/layout/g/b;->a(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/scwang/smartrefresh/layout/c/a;->s:F

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/c/a;->h:Landroid/graphics/Paint;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v1}, Lcom/scwang/smartrefresh/layout/g/b;->a(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/high16 v0, 0x42c80000    # 100.0f

    invoke-static {v0}, Lcom/scwang/smartrefresh/layout/g/b;->a(F)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setMinimumHeight(I)V

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/scwang/smartrefresh/layout/c/a;->i:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/scwang/smartrefresh/layout/c/a;->t:F

    const/16 v0, 0x10e

    iput v0, p0, Lcom/scwang/smartrefresh/layout/c/a;->q:I

    :goto_0
    sget-object v0, Lcom/scwang/smartrefresh/layout/a$d;->BezierRadarHeader:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lcom/scwang/smartrefresh/layout/a$d;->BezierRadarHeader_srlEnableHorizontalDrag:I

    iget-boolean v2, p0, Lcom/scwang/smartrefresh/layout/c/a;->f:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/scwang/smartrefresh/layout/c/a;->f:Z

    sget v1, Lcom/scwang/smartrefresh/layout/a$d;->BezierRadarHeader_srlAccentColor:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/scwang/smartrefresh/layout/c/a;->b(I)Lcom/scwang/smartrefresh/layout/c/a;

    sget v1, Lcom/scwang/smartrefresh/layout/a$d;->BezierRadarHeader_srlPrimaryColor:I

    const v2, -0xddddde

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/scwang/smartrefresh/layout/c/a;->a(I)Lcom/scwang/smartrefresh/layout/c/a;

    sget v1, Lcom/scwang/smartrefresh/layout/a$d;->BezierRadarHeader_srlAccentColor:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/scwang/smartrefresh/layout/c/a;->d:Z

    sget v1, Lcom/scwang/smartrefresh/layout/a$d;->BezierRadarHeader_srlPrimaryColor:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/scwang/smartrefresh/layout/c/a;->c:Z

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :cond_0
    iput v2, p0, Lcom/scwang/smartrefresh/layout/c/a;->t:F

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/scwang/smartrefresh/layout/a/i;Z)I
    .locals 4

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/c/a;->u:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/c/a;->u:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/c/a;->u:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/c/a;->u:Landroid/animation/Animator;

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/scwang/smartrefresh/layout/c/a;->l:I

    mul-int/2addr v0, v0

    mul-int/2addr v1, v1

    add-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget v3, p0, Lcom/scwang/smartrefresh/layout/c/a;->r:F

    aput v3, v1, v2

    const/4 v2, 0x1

    aput v0, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/scwang/smartrefresh/layout/c/a$a;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lcom/scwang/smartrefresh/layout/c/a$a;-><init>(Lcom/scwang/smartrefresh/layout/c/a;B)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    const/16 v0, 0x190

    return v0
.end method

.method public a(I)Lcom/scwang/smartrefresh/layout/c/a;
    .locals 1

    iput p1, p0, Lcom/scwang/smartrefresh/layout/c/a;->b:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/c/a;->c:Z

    return-object p0
.end method

.method public a(FII)V
    .locals 0

    iput p2, p0, Lcom/scwang/smartrefresh/layout/c/a;->k:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected a(Landroid/graphics/Canvas;I)V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/c/a;->g:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/c/a;->g:Landroid/graphics/Path;

    iget v1, p0, Lcom/scwang/smartrefresh/layout/c/a;->i:I

    int-to-float v1, v1

    invoke-virtual {v0, v5, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/c/a;->g:Landroid/graphics/Path;

    iget v0, p0, Lcom/scwang/smartrefresh/layout/c/a;->k:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/scwang/smartrefresh/layout/c/a;->k:I

    int-to-float v0, v0

    :goto_0
    iget v2, p0, Lcom/scwang/smartrefresh/layout/c/a;->i:I

    iget v3, p0, Lcom/scwang/smartrefresh/layout/c/a;->j:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    int-to-float v3, p2

    iget v4, p0, Lcom/scwang/smartrefresh/layout/c/a;->i:I

    int-to-float v4, v4

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/c/a;->g:Landroid/graphics/Path;

    int-to-float v1, p2

    invoke-virtual {v0, v1, v5}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/c/a;->h:Landroid/graphics/Paint;

    iget v1, p0, Lcom/scwang/smartrefresh/layout/c/a;->b:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/c/a;->g:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/c/a;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void

    :cond_0
    int-to-float v0, p2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    goto :goto_0
.end method

.method protected a(Landroid/graphics/Canvas;II)V
    .locals 20

    move-object/from16 v0, p0

    iget v2, v0, Lcom/scwang/smartrefresh/layout/c/a;->m:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/c/a;->h:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/scwang/smartrefresh/layout/c/a;->a:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-static/range {p3 .. p3}, Lcom/scwang/smartrefresh/layout/g/b;->a(I)F

    move-result v3

    const/high16 v2, 0x3f800000    # 1.0f

    move/from16 v0, p2

    int-to-float v4, v0

    mul-float/2addr v2, v4

    const/high16 v4, 0x40e00000    # 7.0f

    div-float/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/scwang/smartrefresh/layout/c/a;->n:F

    mul-float/2addr v4, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/scwang/smartrefresh/layout/c/a;->n:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v5

    if-lez v2, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/scwang/smartrefresh/layout/c/a;->n:F

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v2, v5

    const/high16 v5, 0x3f800000    # 1.0f

    move/from16 v0, p2

    int-to-float v6, v0

    mul-float/2addr v5, v6

    const/high16 v6, 0x40e00000    # 7.0f

    div-float/2addr v5, v6

    mul-float/2addr v2, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/scwang/smartrefresh/layout/c/a;->n:F

    div-float/2addr v2, v5

    :goto_0
    sub-float/2addr v4, v2

    move/from16 v0, p3

    int-to-float v5, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/scwang/smartrefresh/layout/c/a;->n:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v6

    if-lez v2, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/scwang/smartrefresh/layout/c/a;->n:F

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v2, v6

    move/from16 v0, p3

    int-to-float v6, v0

    mul-float/2addr v2, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v2, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/scwang/smartrefresh/layout/c/a;->n:F

    div-float/2addr v2, v6

    :goto_1
    sub-float/2addr v5, v2

    const/4 v2, 0x0

    :goto_2
    const/4 v6, 0x7

    if-ge v2, v6, :cond_2

    const/high16 v6, 0x3f800000    # 1.0f

    int-to-float v7, v2

    add-float/2addr v6, v7

    const/high16 v7, 0x40800000    # 4.0f

    sub-float/2addr v6, v7

    const/high16 v7, 0x437f0000    # 255.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v10

    const/high16 v11, 0x40e00000    # 7.0f

    div-float/2addr v10, v11

    mul-float/2addr v9, v10

    sub-float/2addr v8, v9

    mul-float/2addr v7, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/scwang/smartrefresh/layout/c/a;->h:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/scwang/smartrefresh/layout/c/a;->m:F

    mul-float/2addr v7, v9

    float-to-double v10, v7

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    float-to-double v0, v3

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4089000000000000L    # 800.0

    div-double v16, v16, v18

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    add-double v16, v16, v18

    const-wide/high16 v18, 0x402e000000000000L    # 15.0

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    div-double v14, v14, v16

    sub-double/2addr v12, v14

    mul-double/2addr v10, v12

    double-to-int v7, v10

    invoke-virtual {v8, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    move-object/from16 v0, p0

    iget v7, v0, Lcom/scwang/smartrefresh/layout/c/a;->o:F

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x41200000    # 10.0f

    div-float v10, v3, v10

    const/high16 v11, 0x3f800000    # 1.0f

    add-float/2addr v10, v11

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    mul-float/2addr v7, v8

    move/from16 v0, p2

    int-to-float v8, v0

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    div-float v9, v7, v9

    sub-float/2addr v8, v9

    mul-float/2addr v6, v4

    add-float/2addr v6, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float v8, v5, v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/scwang/smartrefresh/layout/c/a;->h:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v8, v7, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_0
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/c/a;->h:Landroid/graphics/Paint;

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_3
    return-void
.end method

.method public a(Lcom/scwang/smartrefresh/layout/a/i;II)V
    .locals 11

    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x2

    const/4 v6, 0x0

    add-int/lit8 v0, p2, -0x1

    iput v0, p0, Lcom/scwang/smartrefresh/layout/c/a;->i:I

    iput-boolean v6, p0, Lcom/scwang/smartrefresh/layout/c/a;->e:Z

    new-instance v0, Lcom/scwang/smartrefresh/layout/g/b;

    sget v1, Lcom/scwang/smartrefresh/layout/g/b;->b:I

    invoke-direct {v0, v1}, Lcom/scwang/smartrefresh/layout/g/b;-><init>(I)V

    new-array v1, v7, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v2, Lcom/scwang/smartrefresh/layout/c/a$a;

    invoke-direct {v2, p0, v7}, Lcom/scwang/smartrefresh/layout/c/a$a;-><init>(Lcom/scwang/smartrefresh/layout/c/a;B)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v2, v7, [F

    fill-array-data v2, :array_1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Lcom/scwang/smartrefresh/layout/c/a$a;

    invoke-direct {v0, p0, v6}, Lcom/scwang/smartrefresh/layout/c/a$a;-><init>(Lcom/scwang/smartrefresh/layout/c/a;B)V

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v0, v7, [I

    fill-array-data v0, :array_2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v4, 0x2d0

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    new-instance v3, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v3, Lcom/scwang/smartrefresh/layout/c/a$a;

    invoke-direct {v3, p0, v10}, Lcom/scwang/smartrefresh/layout/c/a$a;-><init>(Lcom/scwang/smartrefresh/layout/c/a;B)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v4, v9, [Landroid/animation/Animator;

    aput-object v1, v4, v6

    aput-object v2, v4, v8

    aput-object v0, v4, v7

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    const/4 v0, 0x6

    new-array v0, v0, [I

    iget v1, p0, Lcom/scwang/smartrefresh/layout/c/a;->j:I

    aput v1, v0, v6

    aput v6, v0, v8

    iget v1, p0, Lcom/scwang/smartrefresh/layout/c/a;->j:I

    int-to-float v1, v1

    const v2, 0x3f4ccccd    # 0.8f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    neg-int v1, v1

    aput v1, v0, v7

    aput v6, v0, v9

    iget v1, p0, Lcom/scwang/smartrefresh/layout/c/a;->j:I

    int-to-float v1, v1

    const v2, 0x3ecccccd    # 0.4f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    neg-int v1, v1

    aput v1, v0, v10

    const/4 v1, 0x5

    aput v6, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/scwang/smartrefresh/layout/c/a$a;

    invoke-direct {v1, p0, v8}, Lcom/scwang/smartrefresh/layout/c/a$a;-><init>(Lcom/scwang/smartrefresh/layout/c/a;B)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lcom/scwang/smartrefresh/layout/g/b;

    sget v2, Lcom/scwang/smartrefresh/layout/g/b;->b:I

    invoke-direct {v1, v2}, Lcom/scwang/smartrefresh/layout/g/b;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v4, 0x320

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iput-object v3, p0, Lcom/scwang/smartrefresh/layout/c/a;->u:Landroid/animation/Animator;

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x168
    .end array-data
.end method

.method public a(Lcom/scwang/smartrefresh/layout/a/i;Lcom/scwang/smartrefresh/layout/b/b;Lcom/scwang/smartrefresh/layout/b/b;)V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/scwang/smartrefresh/layout/c/a$1;->a:[I

    invoke-virtual {p3}, Lcom/scwang/smartrefresh/layout/b/b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/scwang/smartrefresh/layout/c/a;->m:F

    iput v2, p0, Lcom/scwang/smartrefresh/layout/c/a;->t:F

    iput v2, p0, Lcom/scwang/smartrefresh/layout/c/a;->p:F

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(ZFIII)V
    .locals 3

    iput p3, p0, Lcom/scwang/smartrefresh/layout/c/a;->l:I

    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/c/a;->e:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/c/a;->e:Z

    invoke-static {p4, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/scwang/smartrefresh/layout/c/a;->i:I

    const v0, 0x3ff33333    # 1.9f

    const/4 v1, 0x0

    sub-int v2, p3, p4

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/scwang/smartrefresh/layout/c/a;->j:I

    iput p2, p0, Lcom/scwang/smartrefresh/layout/c/a;->n:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/c/a;->f:Z

    return v0
.end method

.method public b(I)Lcom/scwang/smartrefresh/layout/c/a;
    .locals 1

    iput p1, p0, Lcom/scwang/smartrefresh/layout/c/a;->a:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/c/a;->d:Z

    return-object p0
.end method

.method protected b(Landroid/graphics/Canvas;II)V
    .locals 9

    const/high16 v2, 0x43870000    # 270.0f

    const/high16 v8, 0x40000000    # 2.0f

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/c/a;->u:Landroid/animation/Animator;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/scwang/smartrefresh/layout/c/a;->r:F

    iget v1, p0, Lcom/scwang/smartrefresh/layout/c/a;->t:F

    mul-float v6, v0, v1

    iget v0, p0, Lcom/scwang/smartrefresh/layout/c/a;->s:F

    iget v1, p0, Lcom/scwang/smartrefresh/layout/c/a;->t:F

    mul-float v7, v0, v1

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/c/a;->h:Landroid/graphics/Paint;

    iget v1, p0, Lcom/scwang/smartrefresh/layout/c/a;->a:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/c/a;->h:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    int-to-float v0, p2

    div-float/2addr v0, v8

    int-to-float v1, p3

    div-float/2addr v1, v8

    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/c/a;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v6, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/c/a;->h:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    int-to-float v0, p2

    div-float/2addr v0, v8

    int-to-float v1, p3

    div-float/2addr v1, v8

    add-float v3, v6, v7

    iget-object v4, p0, Lcom/scwang/smartrefresh/layout/c/a;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/c/a;->h:Landroid/graphics/Paint;

    iget v1, p0, Lcom/scwang/smartrefresh/layout/c/a;->b:I

    const v3, 0xffffff

    and-int/2addr v1, v3

    const/high16 v3, 0x55000000

    or-int/2addr v1, v3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/c/a;->h:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/c/a;->v:Landroid/graphics/RectF;

    int-to-float v1, p2

    div-float/2addr v1, v8

    sub-float/2addr v1, v6

    int-to-float v3, p3

    div-float/2addr v3, v8

    sub-float/2addr v3, v6

    int-to-float v4, p2

    div-float/2addr v4, v8

    add-float/2addr v4, v6

    int-to-float v5, p3

    div-float/2addr v5, v8

    add-float/2addr v5, v6

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/c/a;->v:Landroid/graphics/RectF;

    iget v0, p0, Lcom/scwang/smartrefresh/layout/c/a;->q:I

    int-to-float v3, v0

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/scwang/smartrefresh/layout/c/a;->h:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    add-float v0, v6, v7

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/c/a;->h:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/c/a;->v:Landroid/graphics/RectF;

    int-to-float v3, p2

    div-float/2addr v3, v8

    sub-float/2addr v3, v0

    int-to-float v4, p3

    div-float/2addr v4, v8

    sub-float/2addr v4, v0

    int-to-float v5, p2

    div-float/2addr v5, v8

    add-float/2addr v5, v0

    int-to-float v6, p3

    div-float/2addr v6, v8

    add-float/2addr v0, v6

    invoke-virtual {v1, v3, v4, v5, v0}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/c/a;->v:Landroid/graphics/RectF;

    iget v0, p0, Lcom/scwang/smartrefresh/layout/c/a;->q:I

    int-to-float v3, v0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/scwang/smartrefresh/layout/c/a;->h:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/c/a;->h:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :cond_1
    return-void
.end method

.method protected c(Landroid/graphics/Canvas;II)V
    .locals 4

    const/high16 v2, 0x40000000    # 2.0f

    iget v0, p0, Lcom/scwang/smartrefresh/layout/c/a;->p:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/c/a;->h:Landroid/graphics/Paint;

    iget v1, p0, Lcom/scwang/smartrefresh/layout/c/a;->a:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v0, p2

    div-float/2addr v0, v2

    int-to-float v1, p3

    div-float/2addr v1, v2

    iget v2, p0, Lcom/scwang/smartrefresh/layout/c/a;->p:F

    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/c/a;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    :goto_0
    invoke-virtual {p0, p1, v1}, Lcom/scwang/smartrefresh/layout/c/a;->a(Landroid/graphics/Canvas;I)V

    invoke-virtual {p0, p1, v1, v0}, Lcom/scwang/smartrefresh/layout/c/a;->a(Landroid/graphics/Canvas;II)V

    invoke-virtual {p0, p1, v1, v0}, Lcom/scwang/smartrefresh/layout/c/a;->b(Landroid/graphics/Canvas;II)V

    invoke-virtual {p0, p1, v1, v0}, Lcom/scwang/smartrefresh/layout/c/a;->c(Landroid/graphics/Canvas;II)V

    invoke-super {p0, p1}, Lcom/scwang/smartrefresh/layout/e/b;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void

    :cond_0
    iget v0, p0, Lcom/scwang/smartrefresh/layout/c/a;->l:I

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Lcom/scwang/smartrefresh/layout/e/b;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/c/a;->u:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/c/a;->u:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/c/a;->u:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/c/a;->u:Landroid/animation/Animator;

    :cond_0
    return-void
.end method

.method public varargs setPrimaryColors([I)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v2, 0x1

    const/4 v1, 0x0

    array-length v0, p1

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/c/a;->c:Z

    if-nez v0, :cond_0

    aget v0, p1, v1

    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/c/a;->a(I)Lcom/scwang/smartrefresh/layout/c/a;

    iput-boolean v1, p0, Lcom/scwang/smartrefresh/layout/c/a;->c:Z

    :cond_0
    array-length v0, p1

    if-le v0, v2, :cond_1

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/c/a;->d:Z

    if-nez v0, :cond_1

    aget v0, p1, v2

    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/c/a;->b(I)Lcom/scwang/smartrefresh/layout/c/a;

    iput-boolean v1, p0, Lcom/scwang/smartrefresh/layout/c/a;->d:Z

    :cond_1
    return-void
.end method
