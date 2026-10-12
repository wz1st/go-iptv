.class public Lcom/scwang/smartrefresh/layout/d/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;
.implements Lcom/scwang/smartrefresh/layout/a/d;
.implements Lcom/scwang/smartrefresh/layout/f/a;


# instance fields
.field protected a:Landroid/view/View;

.field protected b:Landroid/view/View;

.field protected c:Landroid/view/View;

.field protected d:Landroid/view/View;

.field protected e:Landroid/view/View;

.field protected f:I

.field protected g:Z

.field protected h:Z

.field protected i:Lcom/scwang/smartrefresh/layout/d/d;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/scwang/smartrefresh/layout/d/a;->f:I

    iput-boolean v1, p0, Lcom/scwang/smartrefresh/layout/d/a;->g:Z

    iput-boolean v1, p0, Lcom/scwang/smartrefresh/layout/d/a;->h:Z

    new-instance v0, Lcom/scwang/smartrefresh/layout/d/d;

    invoke-direct {v0}, Lcom/scwang/smartrefresh/layout/d/d;-><init>()V

    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/d/a;->i:Lcom/scwang/smartrefresh/layout/d/d;

    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/d/a;->c:Landroid/view/View;

    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/d/a;->b:Landroid/view/View;

    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/d/a;->a:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public a(I)Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .locals 2

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/d/a;->c:Landroid/view/View;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    if-gez p1, :cond_0

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/d/a;->c:Landroid/view/View;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/scwang/smartrefresh/layout/g/b;->b(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    if-lez p1, :cond_2

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/d/a;->c:Landroid/view/View;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/scwang/smartrefresh/layout/g/b;->b(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iput p1, p0, Lcom/scwang/smartrefresh/layout/d/a;->f:I

    :goto_0
    return-object p0

    :cond_2
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public a()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/d/a;->a:Landroid/view/View;

    return-object v0
.end method

.method protected a(Landroid/view/View;Landroid/graphics/PointF;Landroid/view/View;)Landroid/view/View;
    .locals 5

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    if-eqz p2, :cond_3

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    move v1, v0

    :goto_0
    if-lez v1, :cond_3

    add-int/lit8 v0, v1, -0x1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget v3, p2, Landroid/graphics/PointF;->x:F

    iget v4, p2, Landroid/graphics/PointF;->y:F

    invoke-static {p1, v0, v3, v4, v2}, Lcom/scwang/smartrefresh/layout/g/b;->a(Landroid/view/View;Landroid/view/View;FFLandroid/graphics/PointF;)Z

    move-result v3

    if-eqz v3, :cond_2

    instance-of v1, v0, Landroid/support/v4/f/w;

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/scwang/smartrefresh/layout/g/b;->c(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget v1, v2, Landroid/graphics/PointF;->x:F

    iget v3, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p2, v1, v3}, Landroid/graphics/PointF;->offset(FF)V

    invoke-virtual {p0, v0, p2, p3}, Lcom/scwang/smartrefresh/layout/d/a;->a(Landroid/view/View;Landroid/graphics/PointF;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    iget v1, v2, Landroid/graphics/PointF;->x:F

    neg-float v1, v1

    iget v2, v2, Landroid/graphics/PointF;->y:F

    neg-float v2, v2

    invoke-virtual {p2, v1, v2}, Landroid/graphics/PointF;->offset(FF)V

    :cond_1
    :goto_1
    return-object v0

    :cond_2
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_3
    move-object v0, p3

    goto :goto_1
.end method

.method protected a(Landroid/view/View;Z)Landroid/view/View;
    .locals 6

    const/4 v3, 0x0

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    move-object v0, v1

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    if-nez v3, :cond_2

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_4

    if-nez p2, :cond_0

    if-eq v2, p1, :cond_1

    :cond_0
    invoke-static {v2}, Lcom/scwang/smartrefresh/layout/g/b;->c(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_1
    move-object v3, v2

    goto :goto_0

    :cond_1
    instance-of v4, v2, Landroid/view/ViewGroup;

    if-eqz v4, :cond_4

    check-cast v2, Landroid/view/ViewGroup;

    const/4 v4, 0x0

    :goto_2
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_4

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    if-nez v3, :cond_3

    :goto_3
    return-object p1

    :cond_3
    move-object p1, v3

    goto :goto_3

    :cond_4
    move-object v2, v3

    goto :goto_1
.end method

.method public a(III)V
    .locals 6

    const/4 v0, 0x1

    const/4 v5, -0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    if-eq p2, v5, :cond_3

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/d/a;->b:Landroid/view/View;

    invoke-virtual {v1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    if-lez p1, :cond_2

    int-to-float v3, p1

    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationY(F)V

    move v1, v0

    :goto_0
    if-eq p3, v5, :cond_5

    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/d/a;->b:Landroid/view/View;

    invoke-virtual {v3, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_5

    if-gez p1, :cond_4

    int-to-float v1, p1

    invoke-virtual {v3, v1}, Landroid/view/View;->setTranslationY(F)V

    :goto_1
    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/d/a;->b:Landroid/view/View;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    :goto_2
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/d/a;->d:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/d/a;->d:Landroid/view/View;

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/d/a;->e:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/d/a;->e:Landroid/view/View;

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v3

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    invoke-virtual {v1, v4}, Landroid/view/View;->setTranslationY(F)V

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    invoke-virtual {v3}, Landroid/view/View;->getTranslationY()F

    move-result v0

    cmpg-float v0, v0, v4

    if-gez v0, :cond_5

    invoke-virtual {v3, v4}, Landroid/view/View;->setTranslationY(F)V

    :cond_5
    move v0, v1

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/d/a;->b:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_2
.end method

.method public a(Landroid/view/MotionEvent;)V
    .locals 3

    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/d/a;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/d/a;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->offset(FF)V

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/d/a;->c:Landroid/view/View;

    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/d/a;->a:Landroid/view/View;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/d/a;->a:Landroid/view/View;

    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/d/a;->c:Landroid/view/View;

    invoke-virtual {p0, v1, v0, v2}, Lcom/scwang/smartrefresh/layout/d/a;->a(Landroid/view/View;Landroid/graphics/PointF;Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/scwang/smartrefresh/layout/d/a;->c:Landroid/view/View;

    :cond_0
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/d/a;->c:Landroid/view/View;

    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/d/a;->a:Landroid/view/View;

    if-ne v1, v2, :cond_1

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/d/a;->i:Lcom/scwang/smartrefresh/layout/d/d;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/scwang/smartrefresh/layout/d/d;->a:Landroid/graphics/PointF;

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/d/a;->i:Lcom/scwang/smartrefresh/layout/d/d;

    iput-object v0, v1, Lcom/scwang/smartrefresh/layout/d/d;->a:Landroid/graphics/PointF;

    goto :goto_0
.end method

.method protected a(Landroid/view/View;Lcom/scwang/smartrefresh/layout/a/h;)V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/d/a;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isInEditMode()Z

    move-result v2

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_0

    instance-of v0, v1, Landroid/support/v4/f/m;

    if-eqz v0, :cond_1

    instance-of v0, v1, Landroid/support/v4/f/j;

    if-nez v0, :cond_1

    :cond_0
    if-nez v1, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, p1, v0}, Lcom/scwang/smartrefresh/layout/d/a;->a(Landroid/view/View;Z)Landroid/view/View;

    move-result-object v0

    if-ne v0, v1, :cond_4

    :cond_1
    if-eqz v1, :cond_2

    iput-object v1, p0, Lcom/scwang/smartrefresh/layout/d/a;->c:Landroid/view/View;

    :cond_2
    return-void

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    if-nez v2, :cond_5

    invoke-static {v0, p2, p0}, Lcom/scwang/smartrefresh/layout/g/a;->a(Landroid/view/View;Lcom/scwang/smartrefresh/layout/a/h;Lcom/scwang/smartrefresh/layout/f/a;)V

    :cond_5
    move-object v1, v0

    move-object p1, v0

    goto :goto_0
.end method

.method public a(Lcom/scwang/smartrefresh/layout/a/h;Landroid/view/View;Landroid/view/View;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v5, -0x1

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/d/a;->a:Landroid/view/View;

    invoke-virtual {p0, v0, p1}, Lcom/scwang/smartrefresh/layout/d/a;->a(Landroid/view/View;Lcom/scwang/smartrefresh/layout/a/h;)V

    if-nez p2, :cond_0

    if-eqz p3, :cond_2

    :cond_0
    iput-object p2, p0, Lcom/scwang/smartrefresh/layout/d/a;->d:Landroid/view/View;

    iput-object p3, p0, Lcom/scwang/smartrefresh/layout/d/a;->e:Landroid/view/View;

    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/d/a;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-interface {p1}, Lcom/scwang/smartrefresh/layout/a/h;->a()Lcom/scwang/smartrefresh/layout/a/i;

    move-result-object v0

    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/a/i;->getLayout()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/d/a;->a:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-interface {p1}, Lcom/scwang/smartrefresh/layout/a/h;->a()Lcom/scwang/smartrefresh/layout/a/i;

    move-result-object v2

    invoke-interface {v2}, Lcom/scwang/smartrefresh/layout/a/i;->getLayout()Landroid/view/ViewGroup;

    move-result-object v2

    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/d/a;->a:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/d/a;->a:Landroid/view/View;

    const/4 v3, 0x0

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/d/a;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-interface {p1}, Lcom/scwang/smartrefresh/layout/a/h;->a()Lcom/scwang/smartrefresh/layout/a/i;

    move-result-object v3

    invoke-interface {v3}, Lcom/scwang/smartrefresh/layout/a/i;->getLayout()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3, v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iput-object v1, p0, Lcom/scwang/smartrefresh/layout/d/a;->a:Landroid/view/View;

    if-eqz p2, :cond_1

    const-string v0, "fixed-top"

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v3

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-static {p2}, Lcom/scwang/smartrefresh/layout/g/b;->a(Landroid/view/View;)I

    move-result v4

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    new-instance v4, Landroid/support/v4/widget/l;

    iget-object v5, p0, Lcom/scwang/smartrefresh/layout/d/a;->a:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/support/v4/widget/l;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v4, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, p2, v7, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    if-eqz p3, :cond_2

    const-string v0, "fixed-bottom"

    invoke-virtual {p3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p3}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v3

    invoke-virtual {v0, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {p3}, Lcom/scwang/smartrefresh/layout/g/b;->a(Landroid/view/View;)I

    move-result v5

    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    new-instance v5, Landroid/support/v4/widget/l;

    iget-object v6, p0, Lcom/scwang/smartrefresh/layout/d/a;->a:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/support/v4/widget/l;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v5, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    const/16 v0, 0x50

    iput v0, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v1, p3, v7, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method

.method public a(Lcom/scwang/smartrefresh/layout/a/j;)V
    .locals 1

    instance-of v0, p1, Lcom/scwang/smartrefresh/layout/d/d;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/scwang/smartrefresh/layout/d/d;

    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/d/a;->i:Lcom/scwang/smartrefresh/layout/d/d;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/d/a;->i:Lcom/scwang/smartrefresh/layout/d/d;

    iput-object p1, v0, Lcom/scwang/smartrefresh/layout/d/d;->b:Lcom/scwang/smartrefresh/layout/a/j;

    goto :goto_0
.end method

.method public a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/d/a;->i:Lcom/scwang/smartrefresh/layout/d/d;

    iput-boolean p1, v0, Lcom/scwang/smartrefresh/layout/d/d;->c:Z

    return-void
.end method

.method public b()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/d/a;->c:Landroid/view/View;

    return-object v0
.end method

.method public c()Z
    .locals 2

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/d/a;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/d/a;->i:Lcom/scwang/smartrefresh/layout/d/d;

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/d/a;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/d/d;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Z
    .locals 2

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/d/a;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/d/a;->i:Lcom/scwang/smartrefresh/layout/d/d;

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/d/a;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/d/d;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :try_start_0
    iget v0, p0, Lcom/scwang/smartrefresh/layout/d/a;->f:I

    sub-int v0, v1, v0

    int-to-float v0, v0

    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/d/a;->c:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getScaleY()F

    move-result v2

    mul-float/2addr v2, v0

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/d/a;->c:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/AbsListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/d/a;->c:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    float-to-int v2, v2

    invoke-static {v0, v2}, Lcom/scwang/smartrefresh/layout/g/b;->a(Landroid/widget/AbsListView;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput v1, p0, Lcom/scwang/smartrefresh/layout/d/a;->f:I

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/d/a;->c:Landroid/view/View;

    const/4 v3, 0x0

    float-to-int v2, v2

    invoke-virtual {v0, v3, v2}, Landroid/view/View;->scrollBy(II)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/e/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
