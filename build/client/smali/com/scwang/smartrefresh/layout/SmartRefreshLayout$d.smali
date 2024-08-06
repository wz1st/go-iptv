.class public Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/scwang/smartrefresh/layout/a/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;


# direct methods
.method public constructor <init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Landroid/animation/ValueAnimator;
    .locals 4

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->z:Landroid/view/animation/Interpolator;

    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v3, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->f:I

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a(IILandroid/view/animation/Interpolator;I)Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method

.method public a(IZ)Lcom/scwang/smartrefresh/layout/a/h;
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    move/from16 v0, p1

    if-ne v1, v0, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->au:Lcom/scwang/smartrefresh/layout/a/g;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->au:Lcom/scwang/smartrefresh/layout/a/g;

    invoke-interface {v1}, Lcom/scwang/smartrefresh/layout/a/g;->a()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->av:Lcom/scwang/smartrefresh/layout/a/g;

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->av:Lcom/scwang/smartrefresh/layout/a/g;

    invoke-interface {v1}, Lcom/scwang/smartrefresh/layout/a/g;->a()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    :goto_0
    return-object p0

    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v15, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    move/from16 v0, p1

    iput v0, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    if-eqz p2, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aB:Lcom/scwang/smartrefresh/layout/b/b;

    iget-boolean v1, v1, Lcom/scwang/smartrefresh/layout/b/b;->u:Z

    if-nez v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aB:Lcom/scwang/smartrefresh/layout/b/b;

    iget-boolean v1, v1, Lcom/scwang/smartrefresh/layout/b/b;->v:Z

    if-eqz v1, :cond_4

    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->ak:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v3, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->as:F

    mul-float/2addr v2, v3

    cmpl-float v1, v1, v2

    if-lez v1, :cond_17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aA:Lcom/scwang/smartrefresh/layout/b/b;

    sget-object v2, Lcom/scwang/smartrefresh/layout/b/b;->h:Lcom/scwang/smartrefresh/layout/b/b;

    if-eq v1, v2, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->az:Lcom/scwang/smartrefresh/layout/a/h;

    sget-object v2, Lcom/scwang/smartrefresh/layout/b/b;->f:Lcom/scwang/smartrefresh/layout/b/b;

    invoke-interface {v1, v2}, Lcom/scwang/smartrefresh/layout/a/h;->a(Lcom/scwang/smartrefresh/layout/b/b;)Lcom/scwang/smartrefresh/layout/a/h;

    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aw:Lcom/scwang/smartrefresh/layout/a/d;

    if-eqz v1, :cond_b

    const/4 v2, 0x0

    const/4 v1, 0x0

    if-ltz p1, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v3, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->au:Lcom/scwang/smartrefresh/layout/a/g;

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v4, v4, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->F:Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v5, v5, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->au:Lcom/scwang/smartrefresh/layout/a/g;

    invoke-virtual {v3, v4, v5}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a(ZLcom/scwang/smartrefresh/layout/a/g;)Z

    move-result v3

    if-eqz v3, :cond_1a

    const/4 v1, 0x1

    move/from16 v2, p1

    :cond_5
    :goto_2
    if-gtz p1, :cond_28

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v3, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->av:Lcom/scwang/smartrefresh/layout/a/g;

    if-eqz v3, :cond_28

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v4, v4, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->G:Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v5, v5, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->av:Lcom/scwang/smartrefresh/layout/a/g;

    invoke-virtual {v3, v4, v5}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a(ZLcom/scwang/smartrefresh/layout/a/g;)Z

    move-result v3

    if-eqz v3, :cond_1b

    const/4 v1, 0x1

    move/from16 v3, p1

    :goto_3
    if-eqz v1, :cond_b

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aw:Lcom/scwang/smartrefresh/layout/a/d;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->s:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v4, v4, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->t:I

    invoke-interface {v1, v3, v2, v4}, Lcom/scwang/smartrefresh/layout/a/d;->a(III)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->T:Z

    if-eqz v1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->U:Z

    if-eqz v1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->H:Z

    if-eqz v1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->av:Lcom/scwang/smartrefresh/layout/a/g;

    instance-of v1, v1, Lcom/scwang/smartrefresh/layout/a/e;

    if-eqz v1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->av:Lcom/scwang/smartrefresh/layout/a/g;

    invoke-interface {v1}, Lcom/scwang/smartrefresh/layout/a/g;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/b/c;

    move-result-object v1

    sget-object v2, Lcom/scwang/smartrefresh/layout/b/c;->a:Lcom/scwang/smartrefresh/layout/b/c;

    if-ne v1, v2, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->C:Z

    invoke-virtual {v1, v2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a(Z)Z

    move-result v1

    if-eqz v1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->av:Lcom/scwang/smartrefresh/layout/a/g;

    invoke-interface {v1}, Lcom/scwang/smartrefresh/layout/a/g;->getView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->D:Z

    if-eqz v1, :cond_1c

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->au:Lcom/scwang/smartrefresh/layout/a/g;

    if-eqz v1, :cond_1c

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->au:Lcom/scwang/smartrefresh/layout/a/g;

    invoke-interface {v1}, Lcom/scwang/smartrefresh/layout/a/g;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/b/c;

    move-result-object v1

    sget-object v2, Lcom/scwang/smartrefresh/layout/b/c;->c:Lcom/scwang/smartrefresh/layout/b/c;

    if-ne v1, v2, :cond_1c

    const/4 v1, 0x1

    :goto_4
    if-nez v1, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aD:I

    if-eqz v1, :cond_1d

    :cond_7
    const/4 v1, 0x1

    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->E:Z

    if-eqz v2, :cond_1e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->av:Lcom/scwang/smartrefresh/layout/a/g;

    if-eqz v2, :cond_1e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->av:Lcom/scwang/smartrefresh/layout/a/g;

    invoke-interface {v2}, Lcom/scwang/smartrefresh/layout/a/g;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/b/c;

    move-result-object v2

    sget-object v4, Lcom/scwang/smartrefresh/layout/b/c;->c:Lcom/scwang/smartrefresh/layout/b/c;

    if-ne v2, v4, :cond_1e

    const/4 v2, 0x1

    :goto_6
    if-nez v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aE:I

    if-eqz v2, :cond_1f

    :cond_8
    const/4 v2, 0x1

    :goto_7
    if-eqz v1, :cond_9

    if-gez v3, :cond_a

    if-gtz v15, :cond_a

    :cond_9
    if-eqz v2, :cond_b

    if-lez v3, :cond_a

    if-gez v15, :cond_b

    :cond_a
    invoke-virtual {v14}, Landroid/view/View;->invalidate()V

    :cond_b
    if-gez p1, :cond_c

    if-lez v15, :cond_11

    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->au:Lcom/scwang/smartrefresh/layout/a/g;

    if-eqz v1, :cond_11

    const/4 v1, 0x0

    move/from16 v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v5, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->ak:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->ak:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aq:F

    mul-float/2addr v1, v2

    float-to-int v6, v1

    const/high16 v1, 0x3f800000    # 1.0f

    int-to-float v2, v4

    mul-float/2addr v2, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->ak:I

    if-nez v1, :cond_20

    const/4 v1, 0x1

    :goto_8
    int-to-float v1, v1

    div-float v3, v2, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->B:Z

    invoke-virtual {v1, v2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a(Z)Z

    move-result v1

    if-nez v1, :cond_d

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aA:Lcom/scwang/smartrefresh/layout/b/b;

    sget-object v2, Lcom/scwang/smartrefresh/layout/b/b;->o:Lcom/scwang/smartrefresh/layout/b/b;

    if-ne v1, v2, :cond_10

    if-nez p2, :cond_10

    :cond_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    if-eq v15, v1, :cond_f

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->au:Lcom/scwang/smartrefresh/layout/a/g;

    invoke-interface {v1}, Lcom/scwang/smartrefresh/layout/a/g;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/b/c;

    move-result-object v1

    sget-object v2, Lcom/scwang/smartrefresh/layout/b/c;->a:Lcom/scwang/smartrefresh/layout/b/c;

    if-ne v1, v2, :cond_21

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->au:Lcom/scwang/smartrefresh/layout/a/g;

    invoke-interface {v1}, Lcom/scwang/smartrefresh/layout/a/g;->getView()Landroid/view/View;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aD:I

    if-eqz v1, :cond_e

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->ax:Landroid/graphics/Paint;

    if-eqz v1, :cond_e

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->F:Z

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v7, v7, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->au:Lcom/scwang/smartrefresh/layout/a/g;

    invoke-virtual {v1, v2, v7}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a(ZLcom/scwang/smartrefresh/layout/a/g;)Z

    move-result v1

    if-nez v1, :cond_e

    invoke-virtual {v14}, Landroid/view/View;->invalidate()V

    :cond_e
    :goto_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->au:Lcom/scwang/smartrefresh/layout/a/g;

    move/from16 v2, p2

    invoke-interface/range {v1 .. v6}, Lcom/scwang/smartrefresh/layout/a/g;->a(ZFIII)V

    :cond_f
    if-eqz p2, :cond_10

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->au:Lcom/scwang/smartrefresh/layout/a/g;

    invoke-interface {v1}, Lcom/scwang/smartrefresh/layout/a/g;->a()Z

    move-result v1

    if-eqz v1, :cond_10

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->j:F

    float-to-int v7, v1

    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v8, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->j:F

    if-nez v2, :cond_23

    const/4 v1, 0x1

    :goto_a
    int-to-float v1, v1

    div-float v1, v8, v1

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v8, v8, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->au:Lcom/scwang/smartrefresh/layout/a/g;

    invoke-interface {v8, v1, v7, v2}, Lcom/scwang/smartrefresh/layout/a/g;->a(FII)V

    :cond_10
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    if-eq v15, v1, :cond_11

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->ad:Lcom/scwang/smartrefresh/layout/f/c;

    if-eqz v1, :cond_11

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->au:Lcom/scwang/smartrefresh/layout/a/g;

    instance-of v1, v1, Lcom/scwang/smartrefresh/layout/a/f;

    if-eqz v1, :cond_11

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v7, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->ad:Lcom/scwang/smartrefresh/layout/f/c;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v8, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->au:Lcom/scwang/smartrefresh/layout/a/g;

    check-cast v8, Lcom/scwang/smartrefresh/layout/a/f;

    move/from16 v9, p2

    move v10, v3

    move v11, v4

    move v12, v5

    move v13, v6

    invoke-interface/range {v7 .. v13}, Lcom/scwang/smartrefresh/layout/f/c;->a(Lcom/scwang/smartrefresh/layout/a/f;ZFIII)V

    :cond_11
    if-lez p1, :cond_12

    if-gez v15, :cond_1

    :cond_12
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->av:Lcom/scwang/smartrefresh/layout/a/g;

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    move/from16 v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    neg-int v4, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v5, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->am:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->am:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->ar:F

    mul-float/2addr v1, v2

    float-to-int v6, v1

    int-to-float v1, v4

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v2, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->am:I

    if-nez v1, :cond_24

    const/4 v1, 0x1

    :goto_b
    int-to-float v1, v1

    div-float v3, v2, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->C:Z

    invoke-virtual {v1, v2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a(Z)Z

    move-result v1

    if-nez v1, :cond_13

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aA:Lcom/scwang/smartrefresh/layout/b/b;

    sget-object v2, Lcom/scwang/smartrefresh/layout/b/b;->p:Lcom/scwang/smartrefresh/layout/b/b;

    if-ne v1, v2, :cond_16

    if-nez p2, :cond_16

    :cond_13
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    if-eq v15, v1, :cond_15

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->av:Lcom/scwang/smartrefresh/layout/a/g;

    invoke-interface {v1}, Lcom/scwang/smartrefresh/layout/a/g;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/b/c;

    move-result-object v1

    sget-object v2, Lcom/scwang/smartrefresh/layout/b/c;->a:Lcom/scwang/smartrefresh/layout/b/c;

    if-ne v1, v2, :cond_25

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->av:Lcom/scwang/smartrefresh/layout/a/g;

    invoke-interface {v1}, Lcom/scwang/smartrefresh/layout/a/g;->getView()Landroid/view/View;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aE:I

    if-eqz v1, :cond_14

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->ax:Landroid/graphics/Paint;

    if-eqz v1, :cond_14

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->G:Z

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v7, v7, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->av:Lcom/scwang/smartrefresh/layout/a/g;

    invoke-virtual {v1, v2, v7}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a(ZLcom/scwang/smartrefresh/layout/a/g;)Z

    move-result v1

    if-nez v1, :cond_14

    invoke-virtual {v14}, Landroid/view/View;->invalidate()V

    :cond_14
    :goto_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->av:Lcom/scwang/smartrefresh/layout/a/g;

    move/from16 v2, p2

    invoke-interface/range {v1 .. v6}, Lcom/scwang/smartrefresh/layout/a/g;->a(ZFIII)V

    :cond_15
    if-eqz p2, :cond_16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->av:Lcom/scwang/smartrefresh/layout/a/g;

    invoke-interface {v1}, Lcom/scwang/smartrefresh/layout/a/g;->a()Z

    move-result v1

    if-eqz v1, :cond_16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->j:F

    float-to-int v7, v1

    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v8, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->j:F

    if-nez v2, :cond_27

    const/4 v1, 0x1

    :goto_d
    int-to-float v1, v1

    div-float v1, v8, v1

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v8, v8, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->av:Lcom/scwang/smartrefresh/layout/a/g;

    invoke-interface {v8, v1, v7, v2}, Lcom/scwang/smartrefresh/layout/a/g;->a(FII)V

    :cond_16
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    if-eq v15, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->ad:Lcom/scwang/smartrefresh/layout/f/c;

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->av:Lcom/scwang/smartrefresh/layout/a/g;

    instance-of v1, v1, Lcom/scwang/smartrefresh/layout/a/e;

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v7, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->ad:Lcom/scwang/smartrefresh/layout/f/c;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v8, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->av:Lcom/scwang/smartrefresh/layout/a/g;

    check-cast v8, Lcom/scwang/smartrefresh/layout/a/e;

    move/from16 v9, p2

    move v10, v3

    move v11, v4

    move v12, v5

    move v13, v6

    invoke-interface/range {v7 .. v13}, Lcom/scwang/smartrefresh/layout/f/c;->a(Lcom/scwang/smartrefresh/layout/a/e;ZFIII)V

    goto/16 :goto_0

    :cond_17
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    neg-int v1, v1

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->am:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v3, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->at:F

    mul-float/2addr v2, v3

    cmpl-float v1, v1, v2

    if-lez v1, :cond_18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->T:Z

    if-nez v1, :cond_18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->az:Lcom/scwang/smartrefresh/layout/a/h;

    sget-object v2, Lcom/scwang/smartrefresh/layout/b/b;->g:Lcom/scwang/smartrefresh/layout/b/b;

    invoke-interface {v1, v2}, Lcom/scwang/smartrefresh/layout/a/h;->a(Lcom/scwang/smartrefresh/layout/b/b;)Lcom/scwang/smartrefresh/layout/a/h;

    goto/16 :goto_1

    :cond_18
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    if-gez v1, :cond_19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->T:Z

    if-nez v1, :cond_19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->az:Lcom/scwang/smartrefresh/layout/a/h;

    sget-object v2, Lcom/scwang/smartrefresh/layout/b/b;->c:Lcom/scwang/smartrefresh/layout/b/b;

    invoke-interface {v1, v2}, Lcom/scwang/smartrefresh/layout/a/h;->a(Lcom/scwang/smartrefresh/layout/b/b;)Lcom/scwang/smartrefresh/layout/a/h;

    goto/16 :goto_1

    :cond_19
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    if-lez v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->az:Lcom/scwang/smartrefresh/layout/a/h;

    sget-object v2, Lcom/scwang/smartrefresh/layout/b/b;->b:Lcom/scwang/smartrefresh/layout/b/b;

    invoke-interface {v1, v2}, Lcom/scwang/smartrefresh/layout/a/h;->a(Lcom/scwang/smartrefresh/layout/b/b;)Lcom/scwang/smartrefresh/layout/a/h;

    goto/16 :goto_1

    :cond_1a
    if-gez v15, :cond_5

    const/4 v1, 0x1

    const/4 v2, 0x0

    goto/16 :goto_2

    :cond_1b
    if-lez v15, :cond_28

    const/4 v1, 0x1

    const/4 v2, 0x0

    move v3, v2

    goto/16 :goto_3

    :cond_1c
    const/4 v1, 0x0

    goto/16 :goto_4

    :cond_1d
    const/4 v1, 0x0

    goto/16 :goto_5

    :cond_1e
    const/4 v2, 0x0

    goto/16 :goto_6

    :cond_1f
    const/4 v2, 0x0

    goto/16 :goto_7

    :cond_20
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->ak:I

    goto/16 :goto_8

    :cond_21
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->au:Lcom/scwang/smartrefresh/layout/a/g;

    invoke-interface {v1}, Lcom/scwang/smartrefresh/layout/a/g;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/b/c;

    move-result-object v1

    iget-boolean v1, v1, Lcom/scwang/smartrefresh/layout/b/c;->i:Z

    if-eqz v1, :cond_e

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->au:Lcom/scwang/smartrefresh/layout/a/g;

    invoke-interface {v1}, Lcom/scwang/smartrefresh/layout/a/g;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v7, :cond_22

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    :goto_e
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v8, v8, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    iget v9, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v8, v9

    iget v9, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v8, v9

    const/4 v9, 0x0

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual {v2, v7, v8}, Landroid/view/View;->measure(II)V

    iget v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v8, v8, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->ao:I

    add-int/2addr v1, v8

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v7

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v9, v1

    invoke-virtual {v2, v7, v1, v8, v9}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_9

    :cond_22
    sget-object v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aM:Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_e

    :cond_23
    move v1, v2

    goto/16 :goto_a

    :cond_24
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->am:I

    goto/16 :goto_b

    :cond_25
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->av:Lcom/scwang/smartrefresh/layout/a/g;

    invoke-interface {v1}, Lcom/scwang/smartrefresh/layout/a/g;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/b/c;

    move-result-object v1

    iget-boolean v1, v1, Lcom/scwang/smartrefresh/layout/b/c;->i:Z

    if-eqz v1, :cond_14

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->av:Lcom/scwang/smartrefresh/layout/a/g;

    invoke-interface {v1}, Lcom/scwang/smartrefresh/layout/a/g;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v7, :cond_26

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    :goto_f
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v8, v8, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    neg-int v8, v8

    iget v9, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v8, v9

    iget v9, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v8, v9

    const/4 v9, 0x0

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual {v2, v7, v8}, Landroid/view/View;->measure(II)V

    iget v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v1, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v8, v8, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->ap:I

    sub-int/2addr v1, v8

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    sub-int v8, v1, v8

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v9, v7

    invoke-virtual {v2, v7, v8, v9, v1}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_c

    :cond_26
    sget-object v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aM:Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_f

    :cond_27
    move v1, v2

    goto/16 :goto_d

    :cond_28
    move v3, v2

    goto/16 :goto_3
.end method

.method public a(Lcom/scwang/smartrefresh/layout/a/g;I)Lcom/scwang/smartrefresh/layout/a/h;
    .locals 2

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->ax:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->ax:Landroid/graphics/Paint;

    :cond_0
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->au:Lcom/scwang/smartrefresh/layout/a/g;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iput p2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aD:I

    :cond_1
    :goto_0
    return-object p0

    :cond_2
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->av:Lcom/scwang/smartrefresh/layout/a/g;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iput p2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aE:I

    goto :goto_0
.end method

.method public a(Lcom/scwang/smartrefresh/layout/a/g;Z)Lcom/scwang/smartrefresh/layout/a/h;
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->au:Lcom/scwang/smartrefresh/layout/a/g;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->W:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iput-boolean v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->W:Z

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iput-boolean p2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->F:Z

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->av:Lcom/scwang/smartrefresh/layout/a/g;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aa:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iput-boolean v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aa:Z

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iput-boolean p2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->G:Z

    goto :goto_0
.end method

.method public a(Lcom/scwang/smartrefresh/layout/b/b;)Lcom/scwang/smartrefresh/layout/a/h;
    .locals 3

    const/4 v2, 0x1

    sget-object v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$2;->a:[I

    invoke-virtual {p1}, Lcom/scwang/smartrefresh/layout/b/b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {v0, p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a(Lcom/scwang/smartrefresh/layout/b/b;)V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aA:Lcom/scwang/smartrefresh/layout/b/b;

    sget-object v1, Lcom/scwang/smartrefresh/layout/b/b;->a:Lcom/scwang/smartrefresh/layout/b/b;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v1, Lcom/scwang/smartrefresh/layout/b/b;->a:Lcom/scwang/smartrefresh/layout/b/b;

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a(Lcom/scwang/smartrefresh/layout/b/b;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a(I)Landroid/animation/ValueAnimator;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aA:Lcom/scwang/smartrefresh/layout/b/b;

    iget-boolean v0, v0, Lcom/scwang/smartrefresh/layout/b/b;->v:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->B:Z

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v1, Lcom/scwang/smartrefresh/layout/b/b;->b:Lcom/scwang/smartrefresh/layout/b/b;

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a(Lcom/scwang/smartrefresh/layout/b/b;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v1, Lcom/scwang/smartrefresh/layout/b/b;->b:Lcom/scwang/smartrefresh/layout/b/b;

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setViceState(Lcom/scwang/smartrefresh/layout/b/b;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->C:Z

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aA:Lcom/scwang/smartrefresh/layout/b/b;

    iget-boolean v0, v0, Lcom/scwang/smartrefresh/layout/b/b;->v:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aA:Lcom/scwang/smartrefresh/layout/b/b;

    iget-boolean v0, v0, Lcom/scwang/smartrefresh/layout/b/b;->w:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->T:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->H:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->U:Z

    if-nez v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v1, Lcom/scwang/smartrefresh/layout/b/b;->c:Lcom/scwang/smartrefresh/layout/b/b;

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a(Lcom/scwang/smartrefresh/layout/b/b;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v1, Lcom/scwang/smartrefresh/layout/b/b;->c:Lcom/scwang/smartrefresh/layout/b/b;

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setViceState(Lcom/scwang/smartrefresh/layout/b/b;)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aA:Lcom/scwang/smartrefresh/layout/b/b;

    iget-boolean v0, v0, Lcom/scwang/smartrefresh/layout/b/b;->v:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->B:Z

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v1, Lcom/scwang/smartrefresh/layout/b/b;->d:Lcom/scwang/smartrefresh/layout/b/b;

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a(Lcom/scwang/smartrefresh/layout/b/b;)V

    sget-object v0, Lcom/scwang/smartrefresh/layout/b/b;->a:Lcom/scwang/smartrefresh/layout/b/b;

    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a(Lcom/scwang/smartrefresh/layout/b/b;)Lcom/scwang/smartrefresh/layout/a/h;

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v1, Lcom/scwang/smartrefresh/layout/b/b;->d:Lcom/scwang/smartrefresh/layout/b/b;

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setViceState(Lcom/scwang/smartrefresh/layout/b/b;)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->C:Z

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aA:Lcom/scwang/smartrefresh/layout/b/b;

    iget-boolean v0, v0, Lcom/scwang/smartrefresh/layout/b/b;->v:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->T:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->H:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->U:Z

    if-nez v0, :cond_7

    :cond_6
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v1, Lcom/scwang/smartrefresh/layout/b/b;->e:Lcom/scwang/smartrefresh/layout/b/b;

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a(Lcom/scwang/smartrefresh/layout/b/b;)V

    sget-object v0, Lcom/scwang/smartrefresh/layout/b/b;->a:Lcom/scwang/smartrefresh/layout/b/b;

    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a(Lcom/scwang/smartrefresh/layout/b/b;)Lcom/scwang/smartrefresh/layout/a/h;

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v1, Lcom/scwang/smartrefresh/layout/b/b;->e:Lcom/scwang/smartrefresh/layout/b/b;

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setViceState(Lcom/scwang/smartrefresh/layout/b/b;)V

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aA:Lcom/scwang/smartrefresh/layout/b/b;

    iget-boolean v0, v0, Lcom/scwang/smartrefresh/layout/b/b;->v:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->B:Z

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v1, Lcom/scwang/smartrefresh/layout/b/b;->f:Lcom/scwang/smartrefresh/layout/b/b;

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a(Lcom/scwang/smartrefresh/layout/b/b;)V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v1, Lcom/scwang/smartrefresh/layout/b/b;->f:Lcom/scwang/smartrefresh/layout/b/b;

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setViceState(Lcom/scwang/smartrefresh/layout/b/b;)V

    goto/16 :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->C:Z

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aA:Lcom/scwang/smartrefresh/layout/b/b;

    iget-boolean v0, v0, Lcom/scwang/smartrefresh/layout/b/b;->v:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aA:Lcom/scwang/smartrefresh/layout/b/b;

    iget-boolean v0, v0, Lcom/scwang/smartrefresh/layout/b/b;->w:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->T:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->H:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->U:Z

    if-nez v0, :cond_a

    :cond_9
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v1, Lcom/scwang/smartrefresh/layout/b/b;->g:Lcom/scwang/smartrefresh/layout/b/b;

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a(Lcom/scwang/smartrefresh/layout/b/b;)V

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v1, Lcom/scwang/smartrefresh/layout/b/b;->g:Lcom/scwang/smartrefresh/layout/b/b;

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setViceState(Lcom/scwang/smartrefresh/layout/b/b;)V

    goto/16 :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aA:Lcom/scwang/smartrefresh/layout/b/b;

    iget-boolean v0, v0, Lcom/scwang/smartrefresh/layout/b/b;->v:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->B:Z

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v1, Lcom/scwang/smartrefresh/layout/b/b;->h:Lcom/scwang/smartrefresh/layout/b/b;

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a(Lcom/scwang/smartrefresh/layout/b/b;)V

    goto/16 :goto_0

    :cond_b
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v1, Lcom/scwang/smartrefresh/layout/b/b;->h:Lcom/scwang/smartrefresh/layout/b/b;

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setViceState(Lcom/scwang/smartrefresh/layout/b/b;)V

    goto/16 :goto_0

    :pswitch_8
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aA:Lcom/scwang/smartrefresh/layout/b/b;

    iget-boolean v0, v0, Lcom/scwang/smartrefresh/layout/b/b;->v:Z

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->B:Z

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v1, Lcom/scwang/smartrefresh/layout/b/b;->j:Lcom/scwang/smartrefresh/layout/b/b;

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a(Lcom/scwang/smartrefresh/layout/b/b;)V

    goto/16 :goto_0

    :cond_c
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v1, Lcom/scwang/smartrefresh/layout/b/b;->j:Lcom/scwang/smartrefresh/layout/b/b;

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setViceState(Lcom/scwang/smartrefresh/layout/b/b;)V

    goto/16 :goto_0

    :pswitch_9
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aA:Lcom/scwang/smartrefresh/layout/b/b;

    iget-boolean v0, v0, Lcom/scwang/smartrefresh/layout/b/b;->v:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->C:Z

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v1, Lcom/scwang/smartrefresh/layout/b/b;->k:Lcom/scwang/smartrefresh/layout/b/b;

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a(Lcom/scwang/smartrefresh/layout/b/b;)V

    goto/16 :goto_0

    :cond_d
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v1, Lcom/scwang/smartrefresh/layout/b/b;->k:Lcom/scwang/smartrefresh/layout/b/b;

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setViceState(Lcom/scwang/smartrefresh/layout/b/b;)V

    goto/16 :goto_0

    :pswitch_a
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {v0, v2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setStateRefreshing(Z)V

    goto/16 :goto_0

    :pswitch_b
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {v0, v2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setStateLoading(Z)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public a()Lcom/scwang/smartrefresh/layout/a/i;
    .locals 1

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    return-object v0
.end method

.method public b()Lcom/scwang/smartrefresh/layout/a/h;
    .locals 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aA:Lcom/scwang/smartrefresh/layout/b/b;

    sget-object v1, Lcom/scwang/smartrefresh/layout/b/b;->n:Lcom/scwang/smartrefresh/layout/b/b;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->az:Lcom/scwang/smartrefresh/layout/a/h;

    sget-object v1, Lcom/scwang/smartrefresh/layout/b/b;->q:Lcom/scwang/smartrefresh/layout/b/b;

    invoke-interface {v0, v1}, Lcom/scwang/smartrefresh/layout/a/h;->a(Lcom/scwang/smartrefresh/layout/b/b;)Lcom/scwang/smartrefresh/layout/a/h;

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    if-nez v0, :cond_1

    invoke-virtual {p0, v2, v2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a(IZ)Lcom/scwang/smartrefresh/layout/a/h;

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v1, Lcom/scwang/smartrefresh/layout/b/b;->a:Lcom/scwang/smartrefresh/layout/b/b;

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a(Lcom/scwang/smartrefresh/layout/b/b;)V

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-virtual {p0, v2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a(I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->e:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto :goto_0
.end method
