.class public abstract Landroid/support/v17/leanback/widget/a;
.super Landroid/support/v7/widget/RecyclerView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/a$d;,
        Landroid/support/v17/leanback/widget/a$a;,
        Landroid/support/v17/leanback/widget/a$b;,
        Landroid/support/v17/leanback/widget/a$c;
    }
.end annotation


# instance fields
.field private P:Z

.field private Q:Z

.field private R:Landroid/support/v7/widget/RecyclerView$f;

.field private S:Landroid/support/v17/leanback/widget/a$c;

.field private T:Landroid/support/v17/leanback/widget/a$b;

.field private U:Landroid/support/v17/leanback/widget/a$a;

.field private V:Landroid/support/v17/leanback/widget/a$d;

.field final a:Landroid/support/v17/leanback/widget/f;

.field b:Landroid/support/v7/widget/RecyclerView$q;

.field c:I


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v1, p0, Landroid/support/v17/leanback/widget/a;->P:Z

    iput-boolean v1, p0, Landroid/support/v17/leanback/widget/a;->Q:Z

    const/4 v0, 0x4

    iput v0, p0, Landroid/support/v17/leanback/widget/a;->c:I

    new-instance v0, Landroid/support/v17/leanback/widget/f;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/widget/f;-><init>(Landroid/support/v17/leanback/widget/a;)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/a;->a:Landroid/support/v17/leanback/widget/f;

    iget-object v0, p0, Landroid/support/v17/leanback/widget/a;->a:Landroid/support/v17/leanback/widget/f;

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/a;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$i;)V

    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/a;->setPreserveFocusAfterLayout(Z)V

    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/a;->setDescendantFocusability(I)V

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/a;->setHasFixedSize(Z)V

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/a;->setChildrenDrawingOrderEnabled(Z)V

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/a;->setWillNotDraw(Z)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/a;->setOverScrollMode(I)V

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/a;->getItemAnimator()Landroid/support/v7/widget/RecyclerView$f;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ao;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/ao;->a(Z)V

    new-instance v0, Landroid/support/v17/leanback/widget/a$1;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/widget/a$1;-><init>(Landroid/support/v17/leanback/widget/a;)V

    invoke-super {p0, v0}, Landroid/support/v7/widget/RecyclerView;->setRecyclerListener(Landroid/support/v7/widget/RecyclerView$q;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/a;->a:Landroid/support/v17/leanback/widget/f;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/f;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/a;->a:Landroid/support/v17/leanback/widget/f;

    invoke-virtual {v0, p1, v1, v1}, Landroid/support/v17/leanback/widget/f;->a(III)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->a(I)V

    goto :goto_0
.end method

.method a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-object v0, Landroid/support/v17/leanback/a$l;->lbBaseGridView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/a$l;->lbBaseGridView_focusOutFront:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    sget v2, Landroid/support/v17/leanback/a$l;->lbBaseGridView_focusOutEnd:I

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iget-object v3, p0, Landroid/support/v17/leanback/widget/a;->a:Landroid/support/v17/leanback/widget/f;

    invoke-virtual {v3, v1, v2}, Landroid/support/v17/leanback/widget/f;->a(ZZ)V

    sget v1, Landroid/support/v17/leanback/a$l;->lbBaseGridView_focusOutSideStart:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    sget v2, Landroid/support/v17/leanback/a$l;->lbBaseGridView_focusOutSideEnd:I

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iget-object v3, p0, Landroid/support/v17/leanback/widget/a;->a:Landroid/support/v17/leanback/widget/f;

    invoke-virtual {v3, v1, v2}, Landroid/support/v17/leanback/widget/f;->b(ZZ)V

    iget-object v1, p0, Landroid/support/v17/leanback/widget/a;->a:Landroid/support/v17/leanback/widget/f;

    sget v2, Landroid/support/v17/leanback/a$l;->lbBaseGridView_android_verticalSpacing:I

    sget v3, Landroid/support/v17/leanback/a$l;->lbBaseGridView_verticalMargin:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/f;->k(I)V

    iget-object v1, p0, Landroid/support/v17/leanback/widget/a;->a:Landroid/support/v17/leanback/widget/f;

    sget v2, Landroid/support/v17/leanback/a$l;->lbBaseGridView_android_horizontalSpacing:I

    sget v3, Landroid/support/v17/leanback/a$l;->lbBaseGridView_horizontalMargin:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/f;->l(I)V

    sget v1, Landroid/support/v17/leanback/a$l;->lbBaseGridView_android_gravity:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Landroid/support/v17/leanback/a$l;->lbBaseGridView_android_gravity:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/a;->setGravity(I)V

    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method final a()Z
    .locals 1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/a;->isChildrenDrawingOrderEnabled()Z

    move-result v0

    return v0
.end method

.method protected dispatchGenericFocusedEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/a;->T:Landroid/support/v17/leanback/widget/a$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/a;->T:Landroid/support/v17/leanback/widget/a$b;

    invoke-interface {v0, p1}, Landroid/support/v17/leanback/widget/a$b;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->dispatchGenericFocusedEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Landroid/support/v17/leanback/widget/a;->U:Landroid/support/v17/leanback/widget/a$a;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v17/leanback/widget/a;->U:Landroid/support/v17/leanback/widget/a$a;

    invoke-interface {v1, p1}, Landroid/support/v17/leanback/widget/a$a;->a(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/a;->V:Landroid/support/v17/leanback/widget/a$d;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v17/leanback/widget/a;->V:Landroid/support/v17/leanback/widget/a$d;

    invoke-interface {v1, p1}, Landroid/support/v17/leanback/widget/a$d;->a(Landroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/a;->S:Landroid/support/v17/leanback/widget/a$c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/a;->S:Landroid/support/v17/leanback/widget/a$c;

    invoke-interface {v0, p1}, Landroid/support/v17/leanback/widget/a$c;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public focusSearch(I)Landroid/view/View;
    .locals 2

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/a;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/a;->a:Landroid/support/v17/leanback/widget/f;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/a;->a:Landroid/support/v17/leanback/widget/f;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/f;->z()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/f;->c(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0, p1}, Landroid/support/v17/leanback/widget/a;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->focusSearch(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getChildDrawingOrder(II)I
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/a;->a:Landroid/support/v17/leanback/widget/f;

    invoke-virtual {v0, p0, p1, p2}, Landroid/support/v17/leanback/widget/f;->d(Landroid/support/v7/widget/RecyclerView;II)I

    move-result v0

    return v0
.end method

.method public getExtraLayoutSpace()I
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/a;->a:Landroid/support/v17/leanback/widget/f;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/f;->r()I

    move-result v0

    return v0
.end method

.method public getFocusScrollStrategy()I
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/a;->a:Landroid/support/v17/leanback/widget/f;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/f;->b()I

    move-result v0

    return v0
.end method

.method public getHorizontalMargin()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/support/v17/leanback/widget/a;->a:Landroid/support/v17/leanback/widget/f;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/f;->j()I

    move-result v0

    return v0
.end method

.method public getHorizontalSpacing()I
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/a;->a:Landroid/support/v17/leanback/widget/f;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/f;->j()I

    move-result v0

    return v0
.end method

.method public getInitialPrefetchItemCount()I
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/a;->c:I

    return v0
.end method

.method public getItemAlignmentOffset()I
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/a;->a:Landroid/support/v17/leanback/widget/f;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/f;->f()I

    move-result v0

    return v0
.end method

.method public getItemAlignmentOffsetPercent()F
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/a;->a:Landroid/support/v17/leanback/widget/f;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/f;->g()F

    move-result v0

    return v0
.end method

.method public getItemAlignmentViewId()I
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/a;->a:Landroid/support/v17/leanback/widget/f;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/f;->h()I

    move-result v0

    return v0
.end method

.method public getOnUnhandledKeyListener()Landroid/support/v17/leanback/widget/a$d;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/a;->V:Landroid/support/v17/leanback/widget/a$d;

    return-object v0
.end method

.method public final getSaveChildrenLimitNumber()I
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/a;->a:Landroid/support/v17/leanback/widget/f;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/f;->v:Landroid/support/v17/leanback/widget/z;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/z;->d()I

    move-result v0

    return v0
.end method

.method public final getSaveChildrenPolicy()I
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/a;->a:Landroid/support/v17/leanback/widget/f;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/f;->v:Landroid/support/v17/leanback/widget/z;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/z;->c()I

    move-result v0

    return v0
.end method

.method public getSelectedPosition()I
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/a;->a:Landroid/support/v17/leanback/widget/f;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/f;->z()I

    move-result v0

    return v0
.end method

.method public getSelectedSubPosition()I
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/a;->a:Landroid/support/v17/leanback/widget/f;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/f;->A()I

    move-result v0

    return v0
.end method

.method public getVerticalMargin()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/support/v17/leanback/widget/a;->a:Landroid/support/v17/leanback/widget/f;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/f;->i()I

    move-result v0

    return v0
.end method

.method public getVerticalSpacing()I
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/a;->a:Landroid/support/v17/leanback/widget/f;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/f;->i()I

    move-result v0

    return v0
.end method

.method public getWindowAlignment()I
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/a;->a:Landroid/support/v17/leanback/widget/f;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/f;->c()I

    move-result v0

    return v0
.end method

.method public getWindowAlignmentOffset()I
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/a;->a:Landroid/support/v17/leanback/widget/f;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/f;->d()I

    move-result v0

    return v0
.end method

.method public getWindowAlignmentOffsetPercent()F
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/a;->a:Landroid/support/v17/leanback/widget/f;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/f;->e()F

    move-result v0

    return v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/a;->Q:Z

    return v0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/a;->a:Landroid/support/v17/leanback/widget/f;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v17/leanback/widget/f;->a(ZILandroid/graphics/Rect;)V

    return-void
.end method

.method public onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/a;->a:Landroid/support/v17/leanback/widget/f;

    invoke-virtual {v0, p0, p1, p2}, Landroid/support/v17/leanback/widget/f;->a(Landroid/support/v7/widget/RecyclerView;ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/a;->a:Landroid/support/v17/leanback/widget/f;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/f;->b(I)V

    return-void
.end method

.method public setAnimateChildLayout(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/a;->P:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroid/support/v17/leanback/widget/a;->P:Z

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/a;->P:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/a;->getItemAnimator()Landroid/support/v7/widget/RecyclerView$f;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/a;->R:Landroid/support/v7/widget/RecyclerView$f;

    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$f;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/widget/a;->R:Landroid/support/v7/widget/RecyclerView$f;

    invoke-super {p0, v0}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$f;)V

    goto :goto_0
.end method

.method public setChildrenVisibility(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/a;->a:Landroid/support/v17/leanback/widget/f;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/f;->u(I)V

    return-void
.end method

.method public setExtraLayoutSpace(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/a;->a:Landroid/support/v17/leanback/widget/f;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/f;->p(I)V

    return-void
.end method

.method public setFocusDrawingOrderEnabled(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->setChildrenDrawingOrderEnabled(Z)V

    return-void
.end method

.method public setFocusScrollStrategy(I)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid scrollStrategy"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/a;->a:Landroid/support/v17/leanback/widget/f;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/f;->a_(I)V

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/a;->requestLayout()V

    return-void
.end method

.method public final setFocusSearchDisabled(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/high16 v0, 0x60000

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/a;->setDescendantFocusability(I)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/a;->a:Landroid/support/v17/leanback/widget/f;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/f;->d(Z)V

    return-void

    :cond_0
    const/high16 v0, 0x40000

    goto :goto_0
.end method

.method public setGravity(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/a;->a:Landroid/support/v17/leanback/widget/f;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/f;->m(I)V

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/a;->requestLayout()V

    return-void
.end method

.method public setHasOverlappingRendering(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/support/v17/leanback/widget/a;->Q:Z

    return-void
.end method

.method public setHorizontalMargin(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/a;->setHorizontalSpacing(I)V

    return-void
.end method

.method public setHorizontalSpacing(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/a;->a:Landroid/support/v17/leanback/widget/f;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/f;->l(I)V

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/a;->requestLayout()V

    return-void
.end method

.method public setInitialPrefetchItemCount(I)V
    .locals 0

    iput p1, p0, Landroid/support/v17/leanback/widget/a;->c:I

    return-void
.end method

.method public setItemAlignmentOffset(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/a;->a:Landroid/support/v17/leanback/widget/f;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/f;->f(I)V

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/a;->requestLayout()V

    return-void
.end method

.method public setItemAlignmentOffsetPercent(F)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/a;->a:Landroid/support/v17/leanback/widget/f;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/f;->b(F)V

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/a;->requestLayout()V

    return-void
.end method

.method public setItemAlignmentOffsetWithPadding(Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/a;->a:Landroid/support/v17/leanback/widget/f;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/f;->a(Z)V

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/a;->requestLayout()V

    return-void
.end method

.method public setItemAlignmentViewId(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/a;->a:Landroid/support/v17/leanback/widget/f;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/f;->g(I)V

    return-void
.end method

.method public setItemMargin(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/a;->setItemSpacing(I)V

    return-void
.end method

.method public setItemSpacing(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/a;->a:Landroid/support/v17/leanback/widget/f;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/f;->j(I)V

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/a;->requestLayout()V

    return-void
.end method

.method public setLayoutEnabled(Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/a;->a:Landroid/support/v17/leanback/widget/f;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/f;->e(Z)V

    return-void
.end method

.method public setOnChildLaidOutListener(Landroid/support/v17/leanback/widget/m;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/a;->a:Landroid/support/v17/leanback/widget/f;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/f;->a(Landroid/support/v17/leanback/widget/m;)V

    return-void
.end method

.method public setOnChildSelectedListener(Landroid/support/v17/leanback/widget/n;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/a;->a:Landroid/support/v17/leanback/widget/f;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/f;->a(Landroid/support/v17/leanback/widget/n;)V

    return-void
.end method

.method public setOnChildViewHolderSelectedListener(Landroid/support/v17/leanback/widget/o;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/a;->a:Landroid/support/v17/leanback/widget/f;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/f;->a(Landroid/support/v17/leanback/widget/o;)V

    return-void
.end method

.method public setOnKeyInterceptListener(Landroid/support/v17/leanback/widget/a$a;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/widget/a;->U:Landroid/support/v17/leanback/widget/a$a;

    return-void
.end method

.method public setOnMotionInterceptListener(Landroid/support/v17/leanback/widget/a$b;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/widget/a;->T:Landroid/support/v17/leanback/widget/a$b;

    return-void
.end method

.method public setOnTouchInterceptListener(Landroid/support/v17/leanback/widget/a$c;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/widget/a;->S:Landroid/support/v17/leanback/widget/a$c;

    return-void
.end method

.method public setOnUnhandledKeyListener(Landroid/support/v17/leanback/widget/a$d;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/widget/a;->V:Landroid/support/v17/leanback/widget/a$d;

    return-void
.end method

.method public setPruneChild(Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/a;->a:Landroid/support/v17/leanback/widget/f;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/f;->b(Z)V

    return-void
.end method

.method public setRecyclerListener(Landroid/support/v7/widget/RecyclerView$q;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/widget/a;->b:Landroid/support/v7/widget/RecyclerView$q;

    return-void
.end method

.method public final setSaveChildrenLimitNumber(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/a;->a:Landroid/support/v17/leanback/widget/f;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/f;->v:Landroid/support/v17/leanback/widget/z;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/z;->c(I)V

    return-void
.end method

.method public final setSaveChildrenPolicy(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/a;->a:Landroid/support/v17/leanback/widget/f;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/f;->v:Landroid/support/v17/leanback/widget/z;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/z;->b(I)V

    return-void
.end method

.method public setScrollEnabled(Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/a;->a:Landroid/support/v17/leanback/widget/f;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/f;->c(Z)V

    return-void
.end method

.method public setSelectedPosition(I)V
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/widget/a;->a:Landroid/support/v17/leanback/widget/f;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/support/v17/leanback/widget/f;->a(II)V

    return-void
.end method

.method public setSelectedPositionSmooth(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/a;->a:Landroid/support/v17/leanback/widget/f;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/f;->r(I)V

    return-void
.end method

.method public setVerticalMargin(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/a;->setVerticalSpacing(I)V

    return-void
.end method

.method public setVerticalSpacing(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/a;->a:Landroid/support/v17/leanback/widget/f;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/f;->k(I)V

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/a;->requestLayout()V

    return-void
.end method

.method public setWindowAlignment(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/a;->a:Landroid/support/v17/leanback/widget/f;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/f;->d(I)V

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/a;->requestLayout()V

    return-void
.end method

.method public setWindowAlignmentOffset(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/a;->a:Landroid/support/v17/leanback/widget/f;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/f;->e(I)V

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/a;->requestLayout()V

    return-void
.end method

.method public setWindowAlignmentOffsetPercent(F)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/a;->a:Landroid/support/v17/leanback/widget/f;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/f;->a(F)V

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/a;->requestLayout()V

    return-void
.end method

.method public setWindowAlignmentPreferKeyLineOverHighEdge(Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/a;->a:Landroid/support/v17/leanback/widget/f;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/f;->t:Landroid/support/v17/leanback/widget/aa;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/aa;->a()Landroid/support/v17/leanback/widget/aa$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/aa$a;->b(Z)V

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/a;->requestLayout()V

    return-void
.end method

.method public setWindowAlignmentPreferKeyLineOverLowEdge(Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/a;->a:Landroid/support/v17/leanback/widget/f;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/f;->t:Landroid/support/v17/leanback/widget/aa;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/aa;->a()Landroid/support/v17/leanback/widget/aa$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/aa$a;->a(Z)V

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/a;->requestLayout()V

    return-void
.end method
