.class public Landroid/support/v17/leanback/widget/picker/a;
.super Landroid/widget/FrameLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/picker/a$a;,
        Landroid/support/v17/leanback/widget/picker/a$c;,
        Landroid/support/v17/leanback/widget/picker/a$b;
    }
.end annotation


# instance fields
.field private a:Landroid/view/ViewGroup;

.field private b:Landroid/view/ViewGroup;

.field private c:F

.field private d:F

.field private e:F

.field private f:F

.field private g:I

.field private h:Landroid/view/animation/Interpolator;

.field private i:Landroid/view/animation/Interpolator;

.field private j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v17/leanback/widget/picker/a$b;",
            ">;"
        }
    .end annotation
.end field

.field private k:F

.field private l:F

.field final m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v17/leanback/widget/VerticalGridView;",
            ">;"
        }
    .end annotation
.end field

.field n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v17/leanback/widget/picker/b;",
            ">;"
        }
    .end annotation
.end field

.field private o:I

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private q:I

.field private r:I

.field private final s:Landroid/support/v17/leanback/widget/o;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/high16 v2, 0x40200000    # 2.5f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/picker/a;->m:Ljava/util/List;

    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Landroid/support/v17/leanback/widget/picker/a;->k:F

    iput v1, p0, Landroid/support/v17/leanback/widget/picker/a;->l:F

    iput v3, p0, Landroid/support/v17/leanback/widget/picker/a;->o:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/picker/a;->p:Ljava/util/List;

    sget v0, Landroid/support/v17/leanback/a$h;->lb_picker_item:I

    iput v0, p0, Landroid/support/v17/leanback/widget/picker/a;->q:I

    iput v3, p0, Landroid/support/v17/leanback/widget/picker/a;->r:I

    new-instance v0, Landroid/support/v17/leanback/widget/picker/a$1;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/widget/picker/a$1;-><init>(Landroid/support/v17/leanback/widget/picker/a;)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/picker/a;->s:Landroid/support/v17/leanback/widget/o;

    invoke-virtual {p0, v4}, Landroid/support/v17/leanback/widget/picker/a;->setEnabled(Z)V

    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/picker/a;->setDescendantFocusability(I)V

    iput v1, p0, Landroid/support/v17/leanback/widget/picker/a;->d:F

    iput v1, p0, Landroid/support/v17/leanback/widget/picker/a;->c:F

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Landroid/support/v17/leanback/widget/picker/a;->e:F

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v17/leanback/widget/picker/a;->f:F

    const/16 v0, 0xc8

    iput v0, p0, Landroid/support/v17/leanback/widget/picker/a;->g:I

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/picker/a;->h:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/picker/a;->i:Landroid/view/animation/Interpolator;

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/picker/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/a$h;->lb_picker:I

    invoke-virtual {v0, v1, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/picker/a;->a:Landroid/view/ViewGroup;

    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/a;->a:Landroid/view/ViewGroup;

    sget v1, Landroid/support/v17/leanback/a$f;->picker:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/picker/a;->b:Landroid/view/ViewGroup;

    return-void
.end method

.method private a()V
    .locals 2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/picker/a;->getColumnsCount()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/a;->m:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/picker/a;->a(Landroid/support/v17/leanback/widget/VerticalGridView;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(Landroid/support/v17/leanback/widget/VerticalGridView;)V
    .locals 5

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/VerticalGridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/picker/a;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/picker/a;->getActivatedVisibleItemCount()F

    move-result v0

    :goto_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/picker/a;->getPickerItemHeightPixels()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/VerticalGridView;->getVerticalSpacing()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v0, v4

    mul-float/2addr v0, v3

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p1, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/picker/a;->getVisibleItemCount()F

    move-result v0

    goto :goto_0
.end method

.method private a(Landroid/view/View;ZFFLandroid/view/animation/Interpolator;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    if-nez p2, :cond_0

    invoke-virtual {p1, p3}, Landroid/view/View;->setAlpha(F)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    cmpl-float v0, p4, v0

    if-ltz v0, :cond_1

    invoke-virtual {p1, p4}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Landroid/support/v17/leanback/widget/picker/a;->g:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0
.end method

.method private b()V
    .locals 6

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/picker/a;->isActivated()Z

    move-result v4

    move v1, v2

    :goto_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/picker/a;->getColumnsCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/a;->m:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/VerticalGridView;

    move v3, v2

    :goto_1
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_0

    invoke-virtual {v0, v3}, Landroid/support/v17/leanback/widget/VerticalGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/View;->setFocusable(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private b(I)V
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/a;->j:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/a;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/a;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/picker/a$b;

    invoke-interface {v0, p0, p1}, Landroid/support/v17/leanback/widget/picker/a$b;->a(Landroid/support/v17/leanback/widget/picker/a;I)V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a(I)Landroid/support/v17/leanback/widget/picker/b;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/a;->n:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/a;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/picker/b;

    goto :goto_0
.end method

.method public a(II)V
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/a;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/picker/b;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/picker/b;->a()I

    move-result v1

    if-eq v1, p2, :cond_0

    invoke-virtual {v0, p2}, Landroid/support/v17/leanback/widget/picker/b;->b(I)V

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/picker/a;->b(I)V

    :cond_0
    return-void
.end method

.method public a(IIZ)V
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/a;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/picker/b;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/picker/b;->a()I

    move-result v1

    if-eq v1, p2, :cond_0

    invoke-virtual {v0, p2}, Landroid/support/v17/leanback/widget/picker/b;->b(I)V

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/picker/a;->b(I)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/a;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/VerticalGridView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/picker/a;->n:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/picker/b;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/picker/b;->c()I

    move-result v1

    sub-int v1, p2, v1

    if-eqz p3, :cond_1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setSelectedPositionSmooth(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setSelectedPosition(I)V

    goto :goto_0
.end method

.method public a(ILandroid/support/v17/leanback/widget/picker/b;)V
    .locals 3

    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/a;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/a;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->getAdapter()Landroid/support/v7/widget/RecyclerView$a;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/picker/a$a;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/picker/a$a;->c()V

    :cond_0
    invoke-virtual {p2}, Landroid/support/v17/leanback/widget/picker/b;->a()I

    move-result v1

    invoke-virtual {p2}, Landroid/support/v17/leanback/widget/picker/b;->c()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setSelectedPosition(I)V

    return-void
.end method

.method a(IZ)V
    .locals 6

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/a;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->getSelectedPosition()I

    move-result v4

    move v1, v2

    :goto_0
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->getAdapter()Landroid/support/v7/widget/RecyclerView$a;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$a;->a()I

    move-result v3

    if-ge v1, v3, :cond_2

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$i;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/support/v7/widget/RecyclerView$i;->c(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_0

    if-ne v4, v1, :cond_1

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {p0, v5, v3, p1, p2}, Landroid/support/v17/leanback/widget/picker/a;->a(Landroid/view/View;ZIZ)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v3, v2

    goto :goto_1

    :cond_2
    return-void
.end method

.method a(Landroid/view/View;ZIZ)V
    .locals 6

    const/high16 v4, -0x40800000    # -1.0f

    iget v0, p0, Landroid/support/v17/leanback/widget/picker/a;->o:I

    if-eq p3, v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/picker/a;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz p2, :cond_3

    if-eqz v0, :cond_2

    iget v3, p0, Landroid/support/v17/leanback/widget/picker/a;->d:F

    iget-object v5, p0, Landroid/support/v17/leanback/widget/picker/a;->h:Landroid/view/animation/Interpolator;

    move-object v0, p0

    move-object v1, p1

    move v2, p4

    invoke-direct/range {v0 .. v5}, Landroid/support/v17/leanback/widget/picker/a;->a(Landroid/view/View;ZFFLandroid/view/animation/Interpolator;)V

    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget v3, p0, Landroid/support/v17/leanback/widget/picker/a;->c:F

    iget-object v5, p0, Landroid/support/v17/leanback/widget/picker/a;->h:Landroid/view/animation/Interpolator;

    move-object v0, p0

    move-object v1, p1

    move v2, p4

    invoke-direct/range {v0 .. v5}, Landroid/support/v17/leanback/widget/picker/a;->a(Landroid/view/View;ZFFLandroid/view/animation/Interpolator;)V

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    iget v3, p0, Landroid/support/v17/leanback/widget/picker/a;->e:F

    iget-object v5, p0, Landroid/support/v17/leanback/widget/picker/a;->h:Landroid/view/animation/Interpolator;

    move-object v0, p0

    move-object v1, p1

    move v2, p4

    invoke-direct/range {v0 .. v5}, Landroid/support/v17/leanback/widget/picker/a;->a(Landroid/view/View;ZFFLandroid/view/animation/Interpolator;)V

    goto :goto_1

    :cond_4
    iget v3, p0, Landroid/support/v17/leanback/widget/picker/a;->f:F

    iget-object v5, p0, Landroid/support/v17/leanback/widget/picker/a;->h:Landroid/view/animation/Interpolator;

    move-object v0, p0

    move-object v1, p1

    move v2, p4

    invoke-direct/range {v0 .. v5}, Landroid/support/v17/leanback/widget/picker/a;->a(Landroid/view/View;ZFFLandroid/view/animation/Interpolator;)V

    goto :goto_1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/picker/a;->isActivated()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :sswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/picker/a;->performClick()Z

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public getActivatedVisibleItemCount()F
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/picker/a;->k:F

    return v0
.end method

.method public getColumnsCount()I
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/a;->n:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/a;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method protected getPickerItemHeightPixels()I
    .locals 2

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/picker/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/a$c;->picker_item_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public final getPickerItemLayoutId()I
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/picker/a;->q:I

    return v0
.end method

.method public final getPickerItemTextViewId()I
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/picker/a;->r:I

    return v0
.end method

.method public getSelectedColumn()I
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/picker/a;->o:I

    return v0
.end method

.method public final getSeparator()Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/a;->p:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getSeparators()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/a;->p:Ljava/util/List;

    return-object v0
.end method

.method public getVisibleItemCount()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/picker/a;->getSelectedColumn()I

    move-result v0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/picker/a;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/picker/a;->m:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-virtual {v0, p1, p2}, Landroid/support/v17/leanback/widget/VerticalGridView;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/a;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/a;->m:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/picker/a;->setSelectedColumn(I)V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setActivated(Z)V
    .locals 4

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/picker/a;->isActivated()Z

    move-result v0

    if-ne p1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setActivated(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setActivated(Z)V

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/picker/a;->hasFocus()Z

    move-result v2

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/picker/a;->getSelectedColumn()I

    move-result v3

    const/high16 v0, 0x20000

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/picker/a;->setDescendantFocusability(I)V

    if-nez p1, :cond_1

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/picker/a;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/picker/a;->requestFocus()Z

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/picker/a;->getColumnsCount()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/a;->m:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setFocusable(Z)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/picker/a;->a()V

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/picker/a;->b()V

    if-eqz p1, :cond_3

    if-eqz v2, :cond_3

    if-ltz v3, :cond_3

    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/a;->m:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->requestFocus()Z

    :cond_3
    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/picker/a;->setDescendantFocusability(I)V

    goto :goto_0
.end method

.method public setActivatedVisibleItemCount(F)V
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Landroid/support/v17/leanback/widget/picker/a;->k:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    iput p1, p0, Landroid/support/v17/leanback/widget/picker/a;->k:F

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/picker/a;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/picker/a;->a()V

    :cond_1
    return-void
.end method

.method public setColumns(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v17/leanback/widget/picker/b;",
            ">;)V"
        }
    .end annotation

    const/4 v7, 0x0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/a;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Separators size is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v17/leanback/widget/picker/a;->p:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". At least one separator must be provided"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/a;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/a;->p:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/picker/a;->p:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Landroid/support/v17/leanback/widget/picker/a;->p:Ljava/util/List;

    const-string v2, ""

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v7

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Landroid/support/v17/leanback/widget/picker/a;->p:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/a;->p:Ljava/util/List;

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/a;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/a;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/picker/a;->n:Ljava/util/ArrayList;

    iget v0, p0, Landroid/support/v17/leanback/widget/picker/a;->o:I

    iget-object v1, p0, Landroid/support/v17/leanback/widget/picker/a;->n:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_3

    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/a;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/v17/leanback/widget/picker/a;->o:I

    :cond_3
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/picker/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/picker/a;->getColumnsCount()I

    move-result v9

    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/a;->p:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    sget v0, Landroid/support/v17/leanback/a$h;->lb_picker_separator:I

    iget-object v1, p0, Landroid/support/v17/leanback/widget/picker/a;->b:Landroid/view/ViewGroup;

    invoke-virtual {v8, v0, v1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/picker/a;->p:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Landroid/support/v17/leanback/widget/picker/a;->b:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_4
    move v5, v7

    :goto_1
    if-ge v5, v9, :cond_7

    sget v0, Landroid/support/v17/leanback/a$h;->lb_picker_column:I

    iget-object v1, p0, Landroid/support/v17/leanback/widget/picker/a;->b:Landroid/view/ViewGroup;

    invoke-virtual {v8, v0, v1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-direct {p0, v6}, Landroid/support/v17/leanback/widget/picker/a;->a(Landroid/support/v17/leanback/widget/VerticalGridView;)V

    invoke-virtual {v6, v7}, Landroid/support/v17/leanback/widget/VerticalGridView;->setWindowAlignment(I)V

    invoke-virtual {v6, v7}, Landroid/support/v17/leanback/widget/VerticalGridView;->setHasFixedSize(Z)V

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/picker/a;->isActivated()Z

    move-result v0

    invoke-virtual {v6, v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->setFocusable(Z)V

    invoke-virtual {v6, v7}, Landroid/support/v17/leanback/widget/VerticalGridView;->setItemViewCacheSize(I)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/a;->m:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/a;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/a;->p:Ljava/util/List;

    add-int/lit8 v1, v5, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    sget v0, Landroid/support/v17/leanback/a$h;->lb_picker_separator:I

    iget-object v1, p0, Landroid/support/v17/leanback/widget/picker/a;->b:Landroid/view/ViewGroup;

    invoke-virtual {v8, v0, v1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/picker/a;->p:Ljava/util/List;

    add-int/lit8 v2, v5, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Landroid/support/v17/leanback/widget/picker/a;->b:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_5
    new-instance v0, Landroid/support/v17/leanback/widget/picker/a$a;

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/picker/a;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/picker/a;->getPickerItemLayoutId()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/picker/a;->getPickerItemTextViewId()I

    move-result v4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/support/v17/leanback/widget/picker/a$a;-><init>(Landroid/support/v17/leanback/widget/picker/a;Landroid/content/Context;III)V

    invoke-virtual {v6, v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/a;->s:Landroid/support/v17/leanback/widget/o;

    invoke-virtual {v6, v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->setOnChildViewHolderSelectedListener(Landroid/support/v17/leanback/widget/o;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_6
    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/a;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-eq v0, v1, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Separators size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v17/leanback/widget/picker/a;->p:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "equal the size of columns: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " + 1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    return-void
.end method

.method public final setPickerItemTextViewId(I)V
    .locals 0

    iput p1, p0, Landroid/support/v17/leanback/widget/picker/a;->r:I

    return-void
.end method

.method public setSelectedColumn(I)V
    .locals 2

    iget v0, p0, Landroid/support/v17/leanback/widget/picker/a;->o:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroid/support/v17/leanback/widget/picker/a;->o:I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/support/v17/leanback/widget/picker/a;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/support/v17/leanback/widget/picker/a;->a(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final setSeparator(Ljava/lang/CharSequence;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/CharSequence;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/picker/a;->setSeparators(Ljava/util/List;)V

    return-void
.end method

.method public final setSeparators(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/a;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/a;->p:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public setVisibleItemCount(F)V
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Landroid/support/v17/leanback/widget/picker/a;->l:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    iput p1, p0, Landroid/support/v17/leanback/widget/picker/a;->l:F

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/picker/a;->isActivated()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/picker/a;->a()V

    :cond_1
    return-void
.end method
