.class public Lcom/warkiz/widget/Indicator;
.super Ljava/lang/Object;


# instance fields
.field private mArrowView:Lcom/warkiz/widget/ArrowView;

.field private mContext:Landroid/content/Context;

.field private mGap:I

.field private mIndicatorColor:I

.field private mIndicatorCustomTopContentView:Landroid/view/View;

.field private mIndicatorCustomView:Landroid/view/View;

.field private mIndicatorPopW:Landroid/widget/PopupWindow;

.field private mIndicatorTextColor:I

.field private mIndicatorTextSize:F

.field private mIndicatorType:I

.field private mIndicatorView:Landroid/view/View;

.field private mLocation:[I

.field private mProgressTextView:Landroid/widget/TextView;

.field private mSeekBar:Lcom/warkiz/widget/IndicatorSeekBar;

.field private mTopContentView:Landroid/widget/LinearLayout;

.field private final mWindowWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/warkiz/widget/IndicatorSeekBar;IIIILandroid/view/View;Landroid/view/View;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/warkiz/widget/Indicator;->mLocation:[I

    iput-object p1, p0, Lcom/warkiz/widget/Indicator;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/warkiz/widget/Indicator;->mSeekBar:Lcom/warkiz/widget/IndicatorSeekBar;

    iput p3, p0, Lcom/warkiz/widget/Indicator;->mIndicatorColor:I

    iput p4, p0, Lcom/warkiz/widget/Indicator;->mIndicatorType:I

    iput-object p7, p0, Lcom/warkiz/widget/Indicator;->mIndicatorCustomView:Landroid/view/View;

    iput-object p8, p0, Lcom/warkiz/widget/Indicator;->mIndicatorCustomTopContentView:Landroid/view/View;

    int-to-float v0, p5

    iput v0, p0, Lcom/warkiz/widget/Indicator;->mIndicatorTextSize:F

    iput p6, p0, Lcom/warkiz/widget/Indicator;->mIndicatorTextColor:I

    invoke-direct {p0}, Lcom/warkiz/widget/Indicator;->getWindowWidth()I

    move-result v0

    iput v0, p0, Lcom/warkiz/widget/Indicator;->mWindowWidth:I

    iget-object v0, p0, Lcom/warkiz/widget/Indicator;->mContext:Landroid/content/Context;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Lcom/warkiz/widget/SizeUtils;->dp2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/warkiz/widget/Indicator;->mGap:I

    invoke-direct {p0}, Lcom/warkiz/widget/Indicator;->initIndicator()V

    return-void
.end method

.method private adjustArrow(F)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, -0x1

    iget v0, p0, Lcom/warkiz/widget/Indicator;->mIndicatorType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/warkiz/widget/Indicator;->mIndicatorType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/warkiz/widget/Indicator;->getIndicatorScreenX()I

    move-result v0

    int-to-float v1, v0

    add-float/2addr v1, p1

    iget-object v4, p0, Lcom/warkiz/widget/Indicator;->mIndicatorPopW:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    cmpg-float v1, v1, v4

    if-gez v1, :cond_2

    iget-object v1, p0, Lcom/warkiz/widget/Indicator;->mArrowView:Lcom/warkiz/widget/ArrowView;

    iget-object v2, p0, Lcom/warkiz/widget/Indicator;->mIndicatorPopW:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int v0, v2, v0

    int-to-float v0, v0

    sub-float/2addr v0, p1

    float-to-int v0, v0

    neg-int v2, v0

    move-object v0, p0

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/warkiz/widget/Indicator;->setMargin(Landroid/view/View;IIII)V

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/warkiz/widget/Indicator;->mWindowWidth:I

    sub-int/2addr v1, v0

    int-to-float v1, v1

    sub-float/2addr v1, p1

    iget-object v4, p0, Lcom/warkiz/widget/Indicator;->mIndicatorPopW:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    cmpg-float v1, v1, v4

    if-gez v1, :cond_3

    iget-object v1, p0, Lcom/warkiz/widget/Indicator;->mArrowView:Lcom/warkiz/widget/ArrowView;

    iget-object v2, p0, Lcom/warkiz/widget/Indicator;->mIndicatorPopW:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v4, p0, Lcom/warkiz/widget/Indicator;->mWindowWidth:I

    sub-int v0, v4, v0

    int-to-float v0, v0

    sub-float/2addr v0, p1

    sub-float v0, v2, v0

    float-to-int v2, v0

    move-object v0, p0

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/warkiz/widget/Indicator;->setMargin(Landroid/view/View;IIII)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/warkiz/widget/Indicator;->mArrowView:Lcom/warkiz/widget/ArrowView;

    move-object v0, p0

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/warkiz/widget/Indicator;->setMargin(Landroid/view/View;IIII)V

    goto :goto_0
.end method

.method private getGradientDrawable()Landroid/graphics/drawable/GradientDrawable;
    .locals 2

    iget v0, p0, Lcom/warkiz/widget/Indicator;->mIndicatorType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/warkiz/widget/Indicator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/warkiz/widget/R$drawable;->isb_indicator_rounded_corners:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    :goto_0
    iget v1, p0, Lcom/warkiz/widget/Indicator;->mIndicatorColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/warkiz/widget/Indicator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/warkiz/widget/R$drawable;->isb_indicator_square_corners:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    goto :goto_0
.end method

.method private getIndicatorScreenX()I
    .locals 2

    iget-object v0, p0, Lcom/warkiz/widget/Indicator;->mSeekBar:Lcom/warkiz/widget/IndicatorSeekBar;

    iget-object v1, p0, Lcom/warkiz/widget/Indicator;->mLocation:[I

    invoke-virtual {v0, v1}, Lcom/warkiz/widget/IndicatorSeekBar;->getLocationOnScreen([I)V

    iget-object v0, p0, Lcom/warkiz/widget/Indicator;->mLocation:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method private getWindowWidth()I
    .locals 2

    iget-object v0, p0, Lcom/warkiz/widget/Indicator;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initIndicator()V
    .locals 6

    iget v0, p0, Lcom/warkiz/widget/Indicator;->mIndicatorType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/warkiz/widget/Indicator;->mIndicatorCustomView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/warkiz/widget/Indicator;->mIndicatorCustomView:Landroid/view/View;

    iput-object v0, p0, Lcom/warkiz/widget/Indicator;->mIndicatorView:Landroid/view/View;

    iget-object v0, p0, Lcom/warkiz/widget/Indicator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "isb_progress"

    const-string v2, "id"

    iget-object v3, p0, Lcom/warkiz/widget/Indicator;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/warkiz/widget/Indicator;->mIndicatorView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/warkiz/widget/Indicator;->mProgressTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/warkiz/widget/Indicator;->mProgressTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/warkiz/widget/Indicator;->mSeekBar:Lcom/warkiz/widget/IndicatorSeekBar;

    invoke-virtual {v1}, Lcom/warkiz/widget/IndicatorSeekBar;->getIndicatorTextString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/warkiz/widget/Indicator;->mProgressTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/warkiz/widget/Indicator;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/warkiz/widget/Indicator;->mIndicatorTextSize:F

    invoke-static {v1, v2}, Lcom/warkiz/widget/SizeUtils;->px2sp(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/warkiz/widget/Indicator;->mProgressTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/warkiz/widget/Indicator;->mIndicatorTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/ClassCastException;

    const-string v1, "the view identified by isb_progress in indicator custom layout can not be cast to TextView"

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "the attr\uff1aindicator_custom_layout must be set while you set the indicator type to CUSTOM."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget v0, p0, Lcom/warkiz/widget/Indicator;->mIndicatorType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    new-instance v0, Lcom/warkiz/widget/CircleBubbleView;

    iget-object v1, p0, Lcom/warkiz/widget/Indicator;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/warkiz/widget/Indicator;->mIndicatorTextSize:F

    iget v3, p0, Lcom/warkiz/widget/Indicator;->mIndicatorTextColor:I

    iget v4, p0, Lcom/warkiz/widget/Indicator;->mIndicatorColor:I

    const-string v5, "1000"

    invoke-direct/range {v0 .. v5}, Lcom/warkiz/widget/CircleBubbleView;-><init>(Landroid/content/Context;FIILjava/lang/String;)V

    iput-object v0, p0, Lcom/warkiz/widget/Indicator;->mIndicatorView:Landroid/view/View;

    iget-object v0, p0, Lcom/warkiz/widget/Indicator;->mIndicatorView:Landroid/view/View;

    check-cast v0, Lcom/warkiz/widget/CircleBubbleView;

    iget-object v1, p0, Lcom/warkiz/widget/Indicator;->mSeekBar:Lcom/warkiz/widget/IndicatorSeekBar;

    invoke-virtual {v1}, Lcom/warkiz/widget/IndicatorSeekBar;->getIndicatorTextString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/warkiz/widget/CircleBubbleView;->setProgress(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/warkiz/widget/Indicator;->mContext:Landroid/content/Context;

    sget v1, Lcom/warkiz/widget/R$layout;->isb_indicator:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/warkiz/widget/Indicator;->mIndicatorView:Landroid/view/View;

    iget-object v0, p0, Lcom/warkiz/widget/Indicator;->mIndicatorView:Landroid/view/View;

    sget v1, Lcom/warkiz/widget/R$id;->indicator_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/warkiz/widget/Indicator;->mTopContentView:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/warkiz/widget/Indicator;->mIndicatorView:Landroid/view/View;

    sget v1, Lcom/warkiz/widget/R$id;->indicator_arrow:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/warkiz/widget/ArrowView;

    iput-object v0, p0, Lcom/warkiz/widget/Indicator;->mArrowView:Lcom/warkiz/widget/ArrowView;

    iget-object v0, p0, Lcom/warkiz/widget/Indicator;->mArrowView:Lcom/warkiz/widget/ArrowView;

    iget v1, p0, Lcom/warkiz/widget/Indicator;->mIndicatorColor:I

    invoke-virtual {v0, v1}, Lcom/warkiz/widget/ArrowView;->setColor(I)V

    iget-object v0, p0, Lcom/warkiz/widget/Indicator;->mIndicatorView:Landroid/view/View;

    sget v1, Lcom/warkiz/widget/R$id;->isb_progress:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/warkiz/widget/Indicator;->mProgressTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/warkiz/widget/Indicator;->mProgressTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/warkiz/widget/Indicator;->mSeekBar:Lcom/warkiz/widget/IndicatorSeekBar;

    invoke-virtual {v1}, Lcom/warkiz/widget/IndicatorSeekBar;->getIndicatorTextString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/warkiz/widget/Indicator;->mProgressTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/warkiz/widget/Indicator;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/warkiz/widget/Indicator;->mIndicatorTextSize:F

    invoke-static {v1, v2}, Lcom/warkiz/widget/SizeUtils;->px2sp(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/warkiz/widget/Indicator;->mProgressTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/warkiz/widget/Indicator;->mIndicatorTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_5

    iget-object v0, p0, Lcom/warkiz/widget/Indicator;->mTopContentView:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/warkiz/widget/Indicator;->getGradientDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    iget-object v0, p0, Lcom/warkiz/widget/Indicator;->mIndicatorCustomTopContentView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/warkiz/widget/Indicator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "isb_progress"

    const-string v2, "id"

    iget-object v3, p0, Lcom/warkiz/widget/Indicator;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/warkiz/widget/Indicator;->mIndicatorCustomTopContentView:Landroid/view/View;

    if-lez v0, :cond_7

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6

    instance-of v2, v0, Landroid/widget/TextView;

    if-eqz v2, :cond_6

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Lcom/warkiz/widget/Indicator;->setTopContentView(Landroid/view/View;Landroid/widget/TextView;)V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/warkiz/widget/Indicator;->mTopContentView:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/warkiz/widget/Indicator;->getGradientDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_6
    invoke-virtual {p0, v1}, Lcom/warkiz/widget/Indicator;->setTopContentView(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p0, v1}, Lcom/warkiz/widget/Indicator;->setTopContentView(Landroid/view/View;)V

    goto/16 :goto_0
.end method

.method private setMargin(Landroid/view/View;IIII)V
    .locals 2

    const/4 v1, -0x1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-ne p2, v1, :cond_2

    iget p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :cond_2
    if-ne p3, v1, :cond_3

    iget p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :cond_3
    if-ne p4, v1, :cond_4

    iget p4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :cond_4
    if-ne p5, v1, :cond_5

    iget p5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :cond_5
    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    goto :goto_0
.end method


# virtual methods
.method public getContentView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/warkiz/widget/Indicator;->mIndicatorView:Landroid/view/View;

    return-object v0
.end method

.method getInsideContentView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/warkiz/widget/Indicator;->mIndicatorView:Landroid/view/View;

    return-object v0
.end method

.method public getTopContentView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/warkiz/widget/Indicator;->mTopContentView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method hide()V
    .locals 1

    iget-object v0, p0, Lcom/warkiz/widget/Indicator;->mIndicatorPopW:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/warkiz/widget/Indicator;->mIndicatorPopW:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0
.end method

.method iniPop()V
    .locals 4

    const/4 v3, -0x2

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/warkiz/widget/Indicator;->mIndicatorPopW:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/warkiz/widget/Indicator;->mIndicatorType:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/warkiz/widget/Indicator;->mIndicatorView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/warkiz/widget/Indicator;->mIndicatorView:Landroid/view/View;

    invoke-virtual {v0, v2, v2}, Landroid/view/View;->measure(II)V

    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/warkiz/widget/Indicator;->mIndicatorView:Landroid/view/View;

    invoke-direct {v0, v1, v3, v3, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v0, p0, Lcom/warkiz/widget/Indicator;->mIndicatorPopW:Landroid/widget/PopupWindow;

    goto :goto_0
.end method

.method isShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/warkiz/widget/Indicator;->mIndicatorPopW:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/warkiz/widget/Indicator;->mIndicatorPopW:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method refreshProgressText()V
    .locals 2

    iget-object v0, p0, Lcom/warkiz/widget/Indicator;->mSeekBar:Lcom/warkiz/widget/IndicatorSeekBar;

    invoke-virtual {v0}, Lcom/warkiz/widget/IndicatorSeekBar;->getIndicatorTextString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/warkiz/widget/Indicator;->mIndicatorView:Landroid/view/View;

    instance-of v0, v0, Lcom/warkiz/widget/CircleBubbleView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/warkiz/widget/Indicator;->mIndicatorView:Landroid/view/View;

    check-cast v0, Lcom/warkiz/widget/CircleBubbleView;

    invoke-virtual {v0, v1}, Lcom/warkiz/widget/CircleBubbleView;->setProgress(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/warkiz/widget/Indicator;->mProgressTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/warkiz/widget/Indicator;->mProgressTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lcom/warkiz/widget/Indicator;->mIndicatorType:I

    iput-object p1, p0, Lcom/warkiz/widget/Indicator;->mIndicatorCustomView:Landroid/view/View;

    invoke-direct {p0}, Lcom/warkiz/widget/Indicator;->initIndicator()V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/widget/TextView;)V
    .locals 1

    iput-object p2, p0, Lcom/warkiz/widget/Indicator;->mProgressTextView:Landroid/widget/TextView;

    const/4 v0, 0x4

    iput v0, p0, Lcom/warkiz/widget/Indicator;->mIndicatorType:I

    iput-object p1, p0, Lcom/warkiz/widget/Indicator;->mIndicatorCustomView:Landroid/view/View;

    invoke-direct {p0}, Lcom/warkiz/widget/Indicator;->initIndicator()V

    return-void
.end method

.method setProgressTextView(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/warkiz/widget/Indicator;->mIndicatorView:Landroid/view/View;

    instance-of v0, v0, Lcom/warkiz/widget/CircleBubbleView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/warkiz/widget/Indicator;->mIndicatorView:Landroid/view/View;

    check-cast v0, Lcom/warkiz/widget/CircleBubbleView;

    invoke-virtual {v0, p1}, Lcom/warkiz/widget/CircleBubbleView;->setProgress(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/warkiz/widget/Indicator;->mProgressTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/warkiz/widget/Indicator;->mProgressTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setTopContentView(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/warkiz/widget/Indicator;->setTopContentView(Landroid/view/View;Landroid/widget/TextView;)V

    return-void
.end method

.method public setTopContentView(Landroid/view/View;Landroid/widget/TextView;)V
    .locals 2

    iput-object p2, p0, Lcom/warkiz/widget/Indicator;->mProgressTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/warkiz/widget/Indicator;->mTopContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lcom/warkiz/widget/Indicator;->getGradientDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    iget-object v0, p0, Lcom/warkiz/widget/Indicator;->mTopContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/warkiz/widget/Indicator;->getGradientDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method show(F)V
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/warkiz/widget/Indicator;->mSeekBar:Lcom/warkiz/widget/IndicatorSeekBar;

    invoke-virtual {v0}, Lcom/warkiz/widget/IndicatorSeekBar;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/warkiz/widget/Indicator;->mSeekBar:Lcom/warkiz/widget/IndicatorSeekBar;

    invoke-virtual {v0}, Lcom/warkiz/widget/IndicatorSeekBar;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/warkiz/widget/Indicator;->refreshProgressText()V

    iget-object v0, p0, Lcom/warkiz/widget/Indicator;->mIndicatorPopW:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/warkiz/widget/Indicator;->mIndicatorPopW:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/View;->measure(II)V

    iget-object v0, p0, Lcom/warkiz/widget/Indicator;->mIndicatorPopW:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/warkiz/widget/Indicator;->mSeekBar:Lcom/warkiz/widget/IndicatorSeekBar;

    iget-object v2, p0, Lcom/warkiz/widget/Indicator;->mIndicatorPopW:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float v2, p1, v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/warkiz/widget/Indicator;->mSeekBar:Lcom/warkiz/widget/IndicatorSeekBar;

    invoke-virtual {v3}, Lcom/warkiz/widget/IndicatorSeekBar;->getMeasuredHeight()I

    move-result v3

    iget-object v4, p0, Lcom/warkiz/widget/Indicator;->mIndicatorPopW:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/warkiz/widget/Indicator;->mSeekBar:Lcom/warkiz/widget/IndicatorSeekBar;

    invoke-virtual {v4}, Lcom/warkiz/widget/IndicatorSeekBar;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/warkiz/widget/Indicator;->mGap:I

    add-int/2addr v3, v4

    neg-int v3, v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    invoke-direct {p0, p1}, Lcom/warkiz/widget/Indicator;->adjustArrow(F)V

    goto :goto_0
.end method

.method update(F)V
    .locals 6

    const/4 v1, 0x0

    const/4 v4, -0x1

    iget-object v0, p0, Lcom/warkiz/widget/Indicator;->mSeekBar:Lcom/warkiz/widget/IndicatorSeekBar;

    invoke-virtual {v0}, Lcom/warkiz/widget/IndicatorSeekBar;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/warkiz/widget/Indicator;->mSeekBar:Lcom/warkiz/widget/IndicatorSeekBar;

    invoke-virtual {v0}, Lcom/warkiz/widget/IndicatorSeekBar;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/warkiz/widget/Indicator;->refreshProgressText()V

    iget-object v0, p0, Lcom/warkiz/widget/Indicator;->mIndicatorPopW:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/warkiz/widget/Indicator;->mIndicatorPopW:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/View;->measure(II)V

    iget-object v0, p0, Lcom/warkiz/widget/Indicator;->mIndicatorPopW:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/warkiz/widget/Indicator;->mSeekBar:Lcom/warkiz/widget/IndicatorSeekBar;

    iget-object v2, p0, Lcom/warkiz/widget/Indicator;->mIndicatorPopW:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float v2, p1, v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/warkiz/widget/Indicator;->mSeekBar:Lcom/warkiz/widget/IndicatorSeekBar;

    invoke-virtual {v3}, Lcom/warkiz/widget/IndicatorSeekBar;->getMeasuredHeight()I

    move-result v3

    iget-object v5, p0, Lcom/warkiz/widget/Indicator;->mIndicatorPopW:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v3, v5

    iget-object v5, p0, Lcom/warkiz/widget/Indicator;->mSeekBar:Lcom/warkiz/widget/IndicatorSeekBar;

    invoke-virtual {v5}, Lcom/warkiz/widget/IndicatorSeekBar;->getPaddingTop()I

    move-result v5

    sub-int/2addr v3, v5

    iget v5, p0, Lcom/warkiz/widget/Indicator;->mGap:I

    add-int/2addr v3, v5

    neg-int v3, v3

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    invoke-direct {p0, p1}, Lcom/warkiz/widget/Indicator;->adjustArrow(F)V

    goto :goto_0
.end method

.method updateArrowViewLocation(I)V
    .locals 6

    const/4 v3, -0x1

    iget-object v1, p0, Lcom/warkiz/widget/Indicator;->mArrowView:Lcom/warkiz/widget/ArrowView;

    move-object v0, p0

    move v2, p1

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/warkiz/widget/Indicator;->setMargin(Landroid/view/View;IIII)V

    return-void
.end method

.method updateIndicatorLocation(I)V
    .locals 6

    const/4 v3, -0x1

    iget-object v1, p0, Lcom/warkiz/widget/Indicator;->mIndicatorView:Landroid/view/View;

    move-object v0, p0

    move v2, p1

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/warkiz/widget/Indicator;->setMargin(Landroid/view/View;IIII)V

    return-void
.end method
