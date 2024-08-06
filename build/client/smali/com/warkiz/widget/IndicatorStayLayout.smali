.class public Lcom/warkiz/widget/IndicatorStayLayout;
.super Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/warkiz/widget/IndicatorStayLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/warkiz/widget/IndicatorStayLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/warkiz/widget/IndicatorStayLayout;->setOrientation(I)V

    return-void
.end method

.method private layoutIndicator(Landroid/view/View;I)V
    .locals 7

    const/4 v2, -0x2

    instance-of v0, p1, Lcom/warkiz/widget/IndicatorSeekBar;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/warkiz/widget/IndicatorSeekBar;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/warkiz/widget/IndicatorSeekBar;->setIndicatorStayAlways(Z)V

    invoke-virtual {p1}, Lcom/warkiz/widget/IndicatorSeekBar;->getIndicatorContentView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can not find any indicator in the IndicatorSeekBar, please make sure you have called the attr: SHOW_INDICATOR_TYPE for IndicatorSeekBar and the value is not IndicatorType.NONE."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    instance-of v1, v0, Lcom/warkiz/widget/IndicatorSeekBar;

    if-eqz v1, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "IndicatorSeekBar can not be a contentView for Indicator in case this inflating loop."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    new-instance v2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v2, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    iget v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {p1}, Lcom/warkiz/widget/IndicatorSeekBar;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v5, v6}, Lcom/warkiz/widget/SizeUtils;->dp2px(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {p1}, Lcom/warkiz/widget/IndicatorSeekBar;->getPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {p0, v0, p2, v2}, Lcom/warkiz/widget/IndicatorStayLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1}, Lcom/warkiz/widget/IndicatorSeekBar;->showStayIndicator()V

    :cond_2
    return-void
.end method


# virtual methods
.method public attachTo(Lcom/warkiz/widget/IndicatorSeekBar;)V
    .locals 1

    const/4 v0, -0x2

    invoke-virtual {p0, p1, v0}, Lcom/warkiz/widget/IndicatorStayLayout;->attachTo(Lcom/warkiz/widget/IndicatorSeekBar;I)V

    return-void
.end method

.method public attachTo(Lcom/warkiz/widget/IndicatorSeekBar;I)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "the seek bar wanna attach to IndicatorStayLayout can not be null value."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/warkiz/widget/IndicatorStayLayout;->layoutIndicator(Landroid/view/View;I)V

    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/warkiz/widget/IndicatorStayLayout;->addView(Landroid/view/View;I)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-virtual {p0}, Lcom/warkiz/widget/IndicatorStayLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/warkiz/widget/IndicatorStayLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/warkiz/widget/IndicatorStayLayout;->layoutIndicator(Landroid/view/View;I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    return-void
.end method

.method public setOrientation(I)V
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "IndicatorStayLayout is always vertical and does not support horizontal orientation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    return-void
.end method
