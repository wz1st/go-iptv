.class public Lcom/warkiz/widget/IndicatorSeekBar;
.super Landroid/view/View;


# static fields
.field private static final FORMAT_PROGRESS:Ljava/lang/String; = "${PROGRESS}"

.field private static final FORMAT_TICK_TEXT:Ljava/lang/String; = "${TICK_TEXT}"

.field private static final THUMB_MAX_WIDTH:I = 0x1e


# instance fields
.field private lastProgress:F

.field private mAdjustAuto:Z

.field private mBackgroundTrack:Landroid/graphics/RectF;

.field private mBackgroundTrackColor:I

.field private mBackgroundTrackSize:I

.field private mClearPadding:Z

.field private mContext:Landroid/content/Context;

.field private mCustomDrawableMaxHeight:F

.field private mCustomTrackSectionColorResult:Z

.field private mFaultTolerance:F

.field private mHideThumb:Z

.field private mHoveredTextColor:I

.field private mIndicator:Lcom/warkiz/widget/Indicator;

.field private mIndicatorColor:I

.field private mIndicatorContentView:Landroid/view/View;

.field private mIndicatorStayAlways:Z

.field private mIndicatorTextColor:I

.field private mIndicatorTextFormat:Ljava/lang/String;

.field private mIndicatorTextSize:I

.field private mIndicatorTopContentView:Landroid/view/View;

.field private mIsFloatProgress:Z

.field private mIsTouching:Z

.field private mMax:F

.field private mMeasuredWidth:I

.field private mMin:F

.field private mOnlyThumbDraggable:Z

.field private mPaddingLeft:I

.field private mPaddingRight:I

.field private mPaddingTop:I

.field private mPressedThumbBitmap:Landroid/graphics/Bitmap;

.field private mPressedThumbColor:I

.field private mProgress:F

.field private mProgressArr:[F

.field private mProgressTrack:Landroid/graphics/RectF;

.field private mProgressTrackColor:I

.field private mProgressTrackSize:I

.field private mR2L:Z

.field private mRect:Landroid/graphics/Rect;

.field private mScale:I

.field private mScreenWidth:F

.field private mSectionTrackColorArray:[I

.field private mSeekBlockLength:F

.field private mSeekChangeListener:Lcom/warkiz/widget/OnSeekChangeListener;

.field private mSeekLength:F

.field private mSeekParams:Lcom/warkiz/widget/SeekParams;

.field private mSeekSmoothly:Z

.field private mSelectTickMarksBitmap:Landroid/graphics/Bitmap;

.field private mSelectedTextsColor:I

.field private mSelectedTickMarksColor:I

.field private mShowBothTickTextsOnly:Z

.field private mShowIndicatorType:I

.field private mShowThumbText:Z

.field private mShowTickMarksType:I

.field private mShowTickText:Z

.field private mStockPaint:Landroid/graphics/Paint;

.field private mTextCenterX:[F

.field private mTextPaint:Landroid/text/TextPaint;

.field private mTextsTypeface:Landroid/graphics/Typeface;

.field private mThumbBitmap:Landroid/graphics/Bitmap;

.field private mThumbColor:I

.field private mThumbDrawable:Landroid/graphics/drawable/Drawable;

.field private mThumbRadius:F

.field private mThumbSize:I

.field private mThumbTextColor:I

.field private mThumbTextY:F

.field private mThumbTouchRadius:F

.field private mTickMarksDrawable:Landroid/graphics/drawable/Drawable;

.field private mTickMarksEndsHide:Z

.field private mTickMarksSize:I

.field private mTickMarksSweptHide:Z

.field private mTickMarksX:[F

.field private mTickRadius:F

.field private mTickTextY:F

.field private mTickTextsArr:[Ljava/lang/String;

.field private mTickTextsCustomArray:[Ljava/lang/CharSequence;

.field private mTickTextsHeight:I

.field private mTickTextsSize:I

.field private mTickTextsWidth:[F

.field private mTicksCount:I

.field private mTrackRoundedCorners:Z

.field private mUnSelectedTickMarksColor:I

.field private mUnselectTickMarksBitmap:Landroid/graphics/Bitmap;

.field private mUnselectedTextsColor:I

.field private mUserSeekable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/warkiz/widget/IndicatorSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/high16 v0, -0x40800000    # -1.0f

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mFaultTolerance:F

    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mScreenWidth:F

    const/4 v0, 0x1

    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mScale:I

    iput-object p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p2}, Lcom/warkiz/widget/IndicatorSeekBar;->initAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->initParams()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/high16 v0, -0x40800000    # -1.0f

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mFaultTolerance:F

    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mScreenWidth:F

    const/4 v0, 0x1

    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mScale:I

    iput-object p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p2}, Lcom/warkiz/widget/IndicatorSeekBar;->initAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->initParams()V

    return-void
.end method

.method constructor <init>(Lcom/warkiz/widget/Builder;)V
    .locals 3

    const/high16 v1, -0x40800000    # -1.0f

    iget-object v0, p1, Lcom/warkiz/widget/Builder;->context:Landroid/content/Context;

    invoke-direct {p0, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mFaultTolerance:F

    iput v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mScreenWidth:F

    const/4 v0, 0x1

    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mScale:I

    iget-object v0, p1, Lcom/warkiz/widget/Builder;->context:Landroid/content/Context;

    iput-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mContext:Landroid/content/Context;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v0, v1}, Lcom/warkiz/widget/SizeUtils;->dp2px(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0, v0, v1, v0, v2}, Lcom/warkiz/widget/IndicatorSeekBar;->setPadding(IIII)V

    invoke-direct {p0, p1}, Lcom/warkiz/widget/IndicatorSeekBar;->apply(Lcom/warkiz/widget/Builder;)V

    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->initParams()V

    return-void
.end method

.method static synthetic access$002(Lcom/warkiz/widget/IndicatorSeekBar;F)F
    .locals 0

    iput p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->lastProgress:F

    return p1
.end method

.method static synthetic access$100(Lcom/warkiz/widget/IndicatorSeekBar;)F
    .locals 1

    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mProgress:F

    return v0
.end method

.method static synthetic access$102(Lcom/warkiz/widget/IndicatorSeekBar;F)F
    .locals 0

    iput p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mProgress:F

    return p1
.end method

.method static synthetic access$200(Lcom/warkiz/widget/IndicatorSeekBar;)[F
    .locals 1

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mProgressArr:[F

    return-object v0
.end method

.method static synthetic access$300(Lcom/warkiz/widget/IndicatorSeekBar;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/warkiz/widget/IndicatorSeekBar;->refreshThumbCenterXByProgress(F)V

    return-void
.end method

.method static synthetic access$400(Lcom/warkiz/widget/IndicatorSeekBar;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/warkiz/widget/IndicatorSeekBar;->setSeekListener(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/warkiz/widget/IndicatorSeekBar;)Lcom/warkiz/widget/Indicator;
    .locals 1

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mIndicator:Lcom/warkiz/widget/Indicator;

    return-object v0
.end method

.method static synthetic access$600(Lcom/warkiz/widget/IndicatorSeekBar;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mIndicatorStayAlways:Z

    return v0
.end method

.method static synthetic access$700(Lcom/warkiz/widget/IndicatorSeekBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->updateStayIndicator()V

    return-void
.end method

.method static synthetic access$800(Lcom/warkiz/widget/IndicatorSeekBar;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mIndicatorContentView:Landroid/view/View;

    return-object v0
.end method

.method private adjustTouchX(Landroid/view/MotionEvent;)F
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mPaddingLeft:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mPaddingLeft:I

    int-to-float v0, v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mMeasuredWidth:I

    iget v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mPaddingRight:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mMeasuredWidth:I

    iget v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mPaddingRight:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    goto :goto_0
.end method

.method private apply(Lcom/warkiz/widget/Builder;)V
    .locals 2

    iget v0, p1, Lcom/warkiz/widget/Builder;->max:F

    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mMax:F

    iget v0, p1, Lcom/warkiz/widget/Builder;->min:F

    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mMin:F

    iget v0, p1, Lcom/warkiz/widget/Builder;->progress:F

    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mProgress:F

    iget-boolean v0, p1, Lcom/warkiz/widget/Builder;->progressValueFloat:Z

    iput-boolean v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mIsFloatProgress:Z

    iget v0, p1, Lcom/warkiz/widget/Builder;->tickCount:I

    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTicksCount:I

    iget-boolean v0, p1, Lcom/warkiz/widget/Builder;->seekSmoothly:Z

    iput-boolean v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mSeekSmoothly:Z

    iget-boolean v0, p1, Lcom/warkiz/widget/Builder;->r2l:Z

    iput-boolean v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mR2L:Z

    iget-boolean v0, p1, Lcom/warkiz/widget/Builder;->userSeekable:Z

    iput-boolean v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mUserSeekable:Z

    iget-boolean v0, p1, Lcom/warkiz/widget/Builder;->clearPadding:Z

    iput-boolean v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mClearPadding:Z

    iget-boolean v0, p1, Lcom/warkiz/widget/Builder;->onlyThumbDraggable:Z

    iput-boolean v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mOnlyThumbDraggable:Z

    iget v0, p1, Lcom/warkiz/widget/Builder;->showIndicatorType:I

    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mShowIndicatorType:I

    iget v0, p1, Lcom/warkiz/widget/Builder;->indicatorColor:I

    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mIndicatorColor:I

    iget v0, p1, Lcom/warkiz/widget/Builder;->indicatorTextColor:I

    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mIndicatorTextColor:I

    iget v0, p1, Lcom/warkiz/widget/Builder;->indicatorTextSize:I

    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mIndicatorTextSize:I

    iget-object v0, p1, Lcom/warkiz/widget/Builder;->indicatorContentView:Landroid/view/View;

    iput-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mIndicatorContentView:Landroid/view/View;

    iget-object v0, p1, Lcom/warkiz/widget/Builder;->indicatorTopContentView:Landroid/view/View;

    iput-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mIndicatorTopContentView:Landroid/view/View;

    iget v0, p1, Lcom/warkiz/widget/Builder;->trackBackgroundSize:I

    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mBackgroundTrackSize:I

    iget v0, p1, Lcom/warkiz/widget/Builder;->trackBackgroundColor:I

    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mBackgroundTrackColor:I

    iget v0, p1, Lcom/warkiz/widget/Builder;->trackProgressSize:I

    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mProgressTrackSize:I

    iget v0, p1, Lcom/warkiz/widget/Builder;->trackProgressColor:I

    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mProgressTrackColor:I

    iget-boolean v0, p1, Lcom/warkiz/widget/Builder;->trackRoundedCorners:Z

    iput-boolean v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTrackRoundedCorners:Z

    iget v0, p1, Lcom/warkiz/widget/Builder;->thumbSize:I

    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mThumbSize:I

    iget-object v0, p1, Lcom/warkiz/widget/Builder;->thumbDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget v0, p1, Lcom/warkiz/widget/Builder;->thumbTextColor:I

    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mThumbTextColor:I

    iget-object v0, p1, Lcom/warkiz/widget/Builder;->thumbColorStateList:Landroid/content/res/ColorStateList;

    iget v1, p1, Lcom/warkiz/widget/Builder;->thumbColor:I

    invoke-direct {p0, v0, v1}, Lcom/warkiz/widget/IndicatorSeekBar;->initThumbColor(Landroid/content/res/ColorStateList;I)V

    iget-boolean v0, p1, Lcom/warkiz/widget/Builder;->showThumbText:Z

    iput-boolean v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mShowThumbText:Z

    iget v0, p1, Lcom/warkiz/widget/Builder;->showTickMarksType:I

    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mShowTickMarksType:I

    iget v0, p1, Lcom/warkiz/widget/Builder;->tickMarksSize:I

    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTickMarksSize:I

    iget-object v0, p1, Lcom/warkiz/widget/Builder;->tickMarksDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTickMarksDrawable:Landroid/graphics/drawable/Drawable;

    iget-boolean v0, p1, Lcom/warkiz/widget/Builder;->tickMarksEndsHide:Z

    iput-boolean v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTickMarksEndsHide:Z

    iget-boolean v0, p1, Lcom/warkiz/widget/Builder;->tickMarksSweptHide:Z

    iput-boolean v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTickMarksSweptHide:Z

    iget-object v0, p1, Lcom/warkiz/widget/Builder;->tickMarksColorStateList:Landroid/content/res/ColorStateList;

    iget v1, p1, Lcom/warkiz/widget/Builder;->tickMarksColor:I

    invoke-direct {p0, v0, v1}, Lcom/warkiz/widget/IndicatorSeekBar;->initTickMarksColor(Landroid/content/res/ColorStateList;I)V

    iget-boolean v0, p1, Lcom/warkiz/widget/Builder;->showTickText:Z

    iput-boolean v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mShowTickText:Z

    iget v0, p1, Lcom/warkiz/widget/Builder;->tickTextsSize:I

    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTickTextsSize:I

    iget-object v0, p1, Lcom/warkiz/widget/Builder;->tickTextsCustomArray:[Ljava/lang/String;

    iput-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTickTextsCustomArray:[Ljava/lang/CharSequence;

    iget-object v0, p1, Lcom/warkiz/widget/Builder;->tickTextsTypeFace:Landroid/graphics/Typeface;

    iput-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTextsTypeface:Landroid/graphics/Typeface;

    iget-object v0, p1, Lcom/warkiz/widget/Builder;->tickTextsColorStateList:Landroid/content/res/ColorStateList;

    iget v1, p1, Lcom/warkiz/widget/Builder;->tickTextsColor:I

    invoke-direct {p0, v0, v1}, Lcom/warkiz/widget/IndicatorSeekBar;->initTickTextsColor(Landroid/content/res/ColorStateList;I)V

    return-void
.end method

.method private autoAdjustThumb()Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTicksCount:I

    const/4 v3, 0x3

    if-lt v2, v3, :cond_0

    iget-boolean v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mSeekSmoothly:Z

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mAdjustAuto:Z

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->getClosestIndex()I

    move-result v2

    iget v3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mProgress:F

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v5, v4, v0

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mProgressArr:[F

    aget v0, v0, v2

    sub-float v0, v3, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    aput v0, v4, v1

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    new-instance v4, Lcom/warkiz/widget/IndicatorSeekBar$2;

    invoke-direct {v4, p0, v3, v2}, Lcom/warkiz/widget/IndicatorSeekBar$2;-><init>(Lcom/warkiz/widget/IndicatorSeekBar;FI)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    move v0, v1

    goto :goto_0
.end method

.method private calculateProgress(F)F
    .locals 3

    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mProgress:F

    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->lastProgress:F

    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mMin:F

    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->getAmplitude()F

    move-result v1

    iget v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mPaddingLeft:I

    int-to-float v2, v2

    sub-float v2, p1, v2

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mSeekLength:F

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mProgress:F

    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mProgress:F

    return v0
.end method

.method private calculateTouchX(F)F
    .locals 2

    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTicksCount:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mSeekSmoothly:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mPaddingLeft:I

    int-to-float v0, v0

    sub-float v0, p1, v0

    iget v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mSeekBlockLength:F

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mSeekBlockLength:F

    int-to-float v0, v0

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mPaddingLeft:I

    int-to-float v1, v1

    add-float p1, v0, v1

    :cond_0
    iget-boolean v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mR2L:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mSeekLength:F

    sub-float/2addr v0, p1

    iget v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mPaddingLeft:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float p1, v0, v1

    :cond_1
    return p1
.end method

.method private collectParams(Z)Lcom/warkiz/widget/SeekParams;
    .locals 3

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mSeekParams:Lcom/warkiz/widget/SeekParams;

    if-nez v0, :cond_0

    new-instance v0, Lcom/warkiz/widget/SeekParams;

    invoke-direct {v0, p0}, Lcom/warkiz/widget/SeekParams;-><init>(Lcom/warkiz/widget/IndicatorSeekBar;)V

    iput-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mSeekParams:Lcom/warkiz/widget/SeekParams;

    :cond_0
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mSeekParams:Lcom/warkiz/widget/SeekParams;

    invoke-virtual {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->getProgress()I

    move-result v1

    iput v1, v0, Lcom/warkiz/widget/SeekParams;->progress:I

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mSeekParams:Lcom/warkiz/widget/SeekParams;

    invoke-virtual {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->getProgressFloat()F

    move-result v1

    iput v1, v0, Lcom/warkiz/widget/SeekParams;->progressFloat:F

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mSeekParams:Lcom/warkiz/widget/SeekParams;

    iput-boolean p1, v0, Lcom/warkiz/widget/SeekParams;->fromUser:Z

    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTicksCount:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_2

    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->getThumbPosOnTick()I

    move-result v0

    iget-boolean v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mShowTickText:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTickTextsArr:[Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mSeekParams:Lcom/warkiz/widget/SeekParams;

    iget-object v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTickTextsArr:[Ljava/lang/String;

    aget-object v2, v2, v0

    iput-object v2, v1, Lcom/warkiz/widget/SeekParams;->tickText:Ljava/lang/String;

    :cond_1
    iget-boolean v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mR2L:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mSeekParams:Lcom/warkiz/widget/SeekParams;

    iget v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTicksCount:I

    sub-int v0, v2, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, v1, Lcom/warkiz/widget/SeekParams;->thumbPosition:I

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mSeekParams:Lcom/warkiz/widget/SeekParams;

    return-object v0

    :cond_3
    iget-object v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mSeekParams:Lcom/warkiz/widget/SeekParams;

    iput v0, v1, Lcom/warkiz/widget/SeekParams;->thumbPosition:I

    goto :goto_0
.end method

.method private collectTicksInfo()V
    .locals 6

    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTicksCount:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTicksCount:I

    const/16 v1, 0x32

    if-le v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "the Argument: TICK COUNT must be limited between (0-50), Now is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTicksCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTicksCount:I

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTicksCount:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTickMarksX:[F

    iget-boolean v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mShowTickText:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTicksCount:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTextCenterX:[F

    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTicksCount:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTickTextsWidth:[F

    :cond_2
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTicksCount:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mProgressArr:[F

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mProgressArr:[F

    array-length v1, v1

    if-ge v0, v1, :cond_4

    iget-object v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mProgressArr:[F

    iget v3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mMin:F

    int-to-float v1, v0

    iget v4, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mMax:F

    iget v5, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mMin:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, v1

    iget v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTicksCount:I

    add-int/lit8 v1, v1, -0x1

    if-lez v1, :cond_3

    iget v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTicksCount:I

    add-int/lit8 v1, v1, -0x1

    :goto_1
    int-to-float v1, v1

    div-float v1, v4, v1

    add-float/2addr v1, v3

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method private drawThumb(Landroid/graphics/Canvas;)V
    .locals 5

    const/high16 v4, 0x40000000    # 2.0f

    iget-boolean v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mHideThumb:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->getThumbCenterX()F

    move-result v1

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mThumbBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mPressedThumbBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->initThumbBitmap()V

    :cond_2
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mThumbBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mPressedThumbBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_4

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "the format of the selector thumb drawable is wrong!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mStockPaint:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-boolean v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mIsTouching:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mPressedThumbBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mPressedThumbBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mProgressTrack:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mPressedThumbBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mStockPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mThumbBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mThumbBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mProgressTrack:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mThumbBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mStockPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_6
    iget-boolean v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mIsTouching:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mStockPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mPressedThumbColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    :goto_1
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mProgressTrack:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->top:F

    iget-boolean v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mIsTouching:Z

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mThumbTouchRadius:F

    :goto_2
    iget-object v3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mStockPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mStockPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mThumbColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    :cond_8
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mThumbRadius:F

    goto :goto_2
.end method

.method private drawThumbText(Landroid/graphics/Canvas;)V
    .locals 4

    iget-boolean v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mShowThumbText:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mShowTickText:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTicksCount:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mThumbTextColor:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mProgress:F

    invoke-direct {p0, v0}, Lcom/warkiz/widget/IndicatorSeekBar;->getProgressString(F)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->getThumbCenterX()F

    move-result v1

    iget v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mThumbTextY:F

    iget-object v3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private drawTickMarks(Landroid/graphics/Canvas;)V
    .locals 10

    const/4 v9, 0x2

    const/high16 v8, 0x40000000    # 2.0f

    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTicksCount:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mShowTickMarksType:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTickMarksDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->getThumbCenterX()F

    move-result v7

    const/4 v0, 0x0

    move v6, v0

    :goto_0
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTickMarksX:[F

    array-length v0, v0

    if-ge v6, v0, :cond_0

    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->getThumbPosOnTickFloat()F

    move-result v0

    iget-boolean v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTickMarksSweptHide:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTickMarksX:[F

    aget v1, v1, v6

    cmpl-float v1, v7, v1

    if-ltz v1, :cond_3

    :cond_2
    :goto_1
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    :cond_3
    iget-boolean v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTickMarksEndsHide:Z

    if-eqz v1, :cond_4

    if-eqz v6, :cond_2

    iget-object v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTickMarksX:[F

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-eq v6, v1, :cond_2

    :cond_4
    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->getThumbPosOnTick()I

    move-result v1

    if-ne v6, v1, :cond_5

    iget v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTicksCount:I

    if-le v1, v9, :cond_5

    iget-boolean v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mSeekSmoothly:Z

    if-eqz v1, :cond_2

    :cond_5
    int-to-float v1, v6

    cmpg-float v1, v1, v0

    if-gtz v1, :cond_9

    iget-object v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mStockPaint:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->getLeftSideTickColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    :goto_2
    iget-object v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTickMarksDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mSelectTickMarksBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mUnselectTickMarksBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_7

    :cond_6
    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->initTickMarksBitmap()V

    :cond_7
    iget-object v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mSelectTickMarksBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mUnselectTickMarksBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_a

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "the format of the selector TickMarks drawable is wrong!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    iget-object v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mStockPaint:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->getRightSideTickColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2

    :cond_a
    int-to-float v1, v6

    cmpg-float v0, v1, v0

    if-gtz v0, :cond_b

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mSelectTickMarksBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTickMarksX:[F

    aget v1, v1, v6

    iget-object v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mUnselectTickMarksBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v8

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mProgressTrack:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mUnselectTickMarksBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v8

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mStockPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_b
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mUnselectTickMarksBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTickMarksX:[F

    aget v1, v1, v6

    iget-object v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mUnselectTickMarksBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v8

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mProgressTrack:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mUnselectTickMarksBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v8

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mStockPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    :cond_c
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mShowTickMarksType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTickMarksX:[F

    aget v0, v0, v6

    iget-object v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mProgressTrack:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTickRadius:F

    iget-object v3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mStockPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    :cond_d
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mShowTickMarksType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_f

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mContext:Landroid/content/Context;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lcom/warkiz/widget/SizeUtils;->dp2px(Landroid/content/Context;F)I

    move-result v3

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTickMarksX:[F

    aget v0, v0, v6

    cmpl-float v0, v7, v0

    if-ltz v0, :cond_e

    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->getLeftSideTrackSize()I

    move-result v0

    int-to-float v0, v0

    :goto_3
    iget-object v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTickMarksX:[F

    aget v1, v1, v6

    int-to-float v2, v3

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mProgressTrack:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    div-float v4, v0, v8

    sub-float/2addr v2, v4

    iget-object v4, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTickMarksX:[F

    aget v4, v4, v6

    int-to-float v3, v3

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mProgressTrack:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    div-float/2addr v0, v8

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mStockPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    :cond_e
    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->getRightSideTrackSize()I

    move-result v0

    int-to-float v0, v0

    goto :goto_3

    :cond_f
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mShowTickMarksType:I

    if-ne v0, v9, :cond_2

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTickMarksX:[F

    aget v0, v0, v6

    iget v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTickMarksSize:I

    int-to-float v1, v1

    div-float/2addr v1, v8

    sub-float v1, v0, v1

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mProgressTrack:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTickMarksSize:I

    int-to-float v2, v2

    div-float/2addr v2, v8

    sub-float v2, v0, v2

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTickMarksX:[F

    aget v0, v0, v6

    iget v3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTickMarksSize:I

    int-to-float v3, v3

    div-float/2addr v3, v8

    add-float/2addr v3, v0

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mProgressTrack:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget v4, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTickMarksSize:I

    int-to-float v4, v4

    div-float/2addr v4, v8

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mStockPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_1
.end method

.method private drawTickTexts(Landroid/graphics/Canvas;)V
    .locals 7

    const/high16 v6, 0x40000000    # 2.0f

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTickTextsArr:[Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->getThumbPosOnTickFloat()F

    move-result v2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTickTextsArr:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-boolean v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mShowBothTickTextsOnly:Z

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTickTextsArr:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_2

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->getThumbPosOnTick()I

    move-result v1

    if-ne v0, v1, :cond_3

    int-to-float v1, v0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTextPaint:Landroid/text/TextPaint;

    iget v3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mHoveredTextColor:I

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setColor(I)V

    :goto_2
    iget-boolean v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mR2L:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTickTextsArr:[Ljava/lang/String;

    array-length v1, v1

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    :goto_3
    if-nez v0, :cond_5

    iget-object v3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTickTextsArr:[Ljava/lang/String;

    aget-object v3, v3, v1

    iget-object v4, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTextCenterX:[F

    aget v4, v4, v0

    iget-object v5, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTickTextsWidth:[F

    aget v1, v5, v1

    div-float/2addr v1, v6

    add-float/2addr v1, v4

    iget v4, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTickTextY:F

    iget-object v5, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v3, v1, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_3
    int-to-float v1, v0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_4

    iget-object v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTextPaint:Landroid/text/TextPaint;

    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->getLeftSideTickTextsColor()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTextPaint:Landroid/text/TextPaint;

    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->getRightSideTickTextsColor()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_2

    :cond_5
    iget-object v3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTickTextsArr:[Ljava/lang/String;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-ne v0, v3, :cond_6

    iget-object v3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTickTextsArr:[Ljava/lang/String;

    aget-object v3, v3, v1

    iget-object v4, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTextCenterX:[F

    aget v4, v4, v0

    iget-object v5, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTickTextsWidth:[F

    aget v1, v5, v1

    div-float/2addr v1, v6

    sub-float v1, v4, v1

    iget v4, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTickTextY:F

    iget-object v5, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v3, v1, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_6
    iget-object v3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTickTextsArr:[Ljava/lang/String;

    aget-object v1, v3, v1

    iget-object v3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTextCenterX:[F

    aget v3, v3, v0

    iget v4, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTickTextY:F

    iget-object v5, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v1, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_7
    move v1, v0

    goto :goto_3
.end method

.method private drawTrack(Landroid/graphics/Canvas;)V
    .locals 10

    iget-boolean v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mCustomTrackSectionColorResult:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTicksCount:I

    add-int/lit8 v0, v0, -0x1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTicksCount:I

    add-int/lit8 v0, v0, -0x1

    move v8, v0

    :goto_0
    const/4 v0, 0x0

    move v9, v0

    :goto_1
    if-ge v9, v8, :cond_5

    iget-boolean v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mR2L:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mStockPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mSectionTrackColorArray:[I

    sub-int v2, v8, v9

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :goto_2
    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->getThumbPosOnTickFloat()F

    move-result v0

    int-to-float v1, v9

    cmpg-float v1, v1, v0

    if-gez v1, :cond_2

    add-int/lit8 v1, v9, 0x1

    int-to-float v1, v1

    cmpg-float v1, v0, v1

    if-gez v1, :cond_2

    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->getThumbCenterX()F

    move-result v3

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mStockPaint:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->getLeftSideTrackSize()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTickMarksX:[F

    aget v1, v0, v9

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mProgressTrack:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mProgressTrack:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mStockPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mStockPaint:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->getRightSideTrackSize()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mProgressTrack:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTickMarksX:[F

    add-int/lit8 v1, v9, 0x1

    aget v5, v0, v1

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mProgressTrack:Landroid/graphics/RectF;

    iget v6, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v7, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mStockPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :goto_3
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    move v8, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mStockPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mSectionTrackColorArray:[I

    aget v1, v1, v9

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2

    :cond_2
    int-to-float v1, v9

    cmpg-float v0, v1, v0

    if-gez v0, :cond_3

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mStockPaint:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->getLeftSideTrackSize()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :goto_4
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTickMarksX:[F

    aget v1, v0, v9

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mProgressTrack:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTickMarksX:[F

    add-int/lit8 v3, v9, 0x1

    aget v3, v0, v3

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mProgressTrack:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mStockPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mStockPaint:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->getRightSideTrackSize()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto :goto_4

    :cond_4
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mStockPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mProgressTrackColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mStockPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mProgressTrackSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mProgressTrack:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mProgressTrack:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mProgressTrack:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mProgressTrack:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mStockPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mStockPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mBackgroundTrackColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mStockPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mBackgroundTrackSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mBackgroundTrack:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mBackgroundTrack:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mBackgroundTrack:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mBackgroundTrack:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mStockPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_5
    return-void
.end method

.method private getAmplitude()F
    .locals 2

    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mMax:F

    iget v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mMin:F

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mMax:F

    iget v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mMin:F

    sub-float/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method private getClosestIndex()I
    .locals 5

    const/4 v1, 0x0

    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mMax:F

    iget v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mMin:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    move v0, v1

    move v3, v1

    :goto_0
    iget-object v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mProgressArr:[F

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mProgressArr:[F

    aget v1, v1, v0

    iget v4, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mProgress:F

    sub-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v4, v1, v2

    if-gtz v4, :cond_1

    move v3, v0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_0

    :cond_0
    return v3

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method private getDrawBitmap(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v4, 0x0

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mContext:Landroid/content/Context;

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-static {v0, v1}, Lcom/warkiz/widget/SizeUtils;->dp2px(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    if-le v0, v2, :cond_2

    if-eqz p2, :cond_1

    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mThumbSize:I

    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/warkiz/widget/IndicatorSeekBar;->getHeightByRatio(Landroid/graphics/drawable/Drawable;I)I

    move-result v1

    if-le v0, v2, :cond_3

    invoke-direct {p0, p1, v2}, Lcom/warkiz/widget/IndicatorSeekBar;->getHeightByRatio(Landroid/graphics/drawable/Drawable;I)I

    move-result v0

    move v1, v0

    :goto_2
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    invoke-virtual {p1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTickMarksSize:I

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    move v1, v0

    goto :goto_2

    :cond_3
    move v2, v0

    goto :goto_2
.end method

.method private getHeightByRatio(Landroid/graphics/drawable/Drawable;I)I
    .locals 4

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    int-to-float v3, p2

    mul-float/2addr v2, v3

    int-to-float v1, v1

    mul-float/2addr v1, v2

    int-to-float v0, v0

    div-float v0, v1, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method private getLeftSideTickColor()I
    .locals 1

    iget-boolean v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mR2L:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mUnSelectedTickMarksColor:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mSelectedTickMarksColor:I

    goto :goto_0
.end method

.method private getLeftSideTickTextsColor()I
    .locals 1

    iget-boolean v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mR2L:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mUnselectedTextsColor:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mSelectedTextsColor:I

    goto :goto_0
.end method

.method private getLeftSideTrackSize()I
    .locals 1

    iget-boolean v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mR2L:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mBackgroundTrackSize:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mProgressTrackSize:I

    goto :goto_0
.end method

.method private getProgressString(F)Ljava/lang/String;
    .locals 3

    iget-boolean v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mIsFloatProgress:Z

    if-eqz v0, :cond_0

    float-to-double v0, p1

    iget v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mScale:I

    invoke-static {v0, v1, v2}, Lcom/warkiz/widget/FormatUtils;->fastFormat(DI)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getRightSideTickColor()I
    .locals 1

    iget-boolean v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mR2L:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mSelectedTickMarksColor:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mUnSelectedTickMarksColor:I

    goto :goto_0
.end method

.method private getRightSideTickTextsColor()I
    .locals 1

    iget-boolean v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mR2L:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mSelectedTextsColor:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mUnselectedTextsColor:I

    goto :goto_0
.end method

.method private getRightSideTrackSize()I
    .locals 1

    iget-boolean v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mR2L:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mProgressTrackSize:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mBackgroundTrackSize:I

    goto :goto_0
.end method

.method private getThumbCenterX()F
    .locals 1

    iget-boolean v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mR2L:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mBackgroundTrack:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mProgressTrack:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    goto :goto_0
.end method

.method private getThumbPosOnTick()I
    .locals 2

    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTicksCount:I

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->getThumbCenterX()F

    move-result v0

    iget v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mPaddingLeft:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mSeekBlockLength:F

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getThumbPosOnTickFloat()F
    .locals 2

    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTicksCount:I

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->getThumbCenterX()F

    move-result v0

    iget v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mPaddingLeft:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mSeekBlockLength:F

    div-float/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getTickTextByPosition(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTickTextsCustomArray:[Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mProgressArr:[F

    aget v0, v0, p1

    invoke-direct {p0, v0}, Lcom/warkiz/widget/IndicatorSeekBar;->getProgressString(F)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTickTextsCustomArray:[Ljava/lang/CharSequence;

    array-length v0, v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTickTextsCustomArray:[Ljava/lang/CharSequence;

    aget-object v0, v0, p1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method private initAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    new-instance v0, Lcom/warkiz/widget/Builder;

    invoke-direct {v0, p1}, Lcom/warkiz/widget/Builder;-><init>(Landroid/content/Context;)V

    if-nez p2, :cond_0

    invoke-direct {p0, v0}, Lcom/warkiz/widget/IndicatorSeekBar;->apply(Lcom/warkiz/widget/Builder;)V

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/warkiz/widget/R$styleable;->IndicatorSeekBar:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    sget v2, Lcom/warkiz/widget/R$styleable;->IndicatorSeekBar_isb_max:I

    iget v3, v0, Lcom/warkiz/widget/Builder;->max:F

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mMax:F

    sget v2, Lcom/warkiz/widget/R$styleable;->IndicatorSeekBar_isb_min:I

    iget v3, v0, Lcom/warkiz/widget/Builder;->min:F

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mMin:F

    sget v2, Lcom/warkiz/widget/R$styleable;->IndicatorSeekBar_isb_progress:I

    iget v3, v0, Lcom/warkiz/widget/Builder;->progress:F

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mProgress:F

    sget v2, Lcom/warkiz/widget/R$styleable;->IndicatorSeekBar_isb_progress_value_float:I

    iget-boolean v3, v0, Lcom/warkiz/widget/Builder;->progressValueFloat:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mIsFloatProgress:Z

    sget v2, Lcom/warkiz/widget/R$styleable;->IndicatorSeekBar_isb_user_seekable:I

    iget-boolean v3, v0, Lcom/warkiz/widget/Builder;->userSeekable:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mUserSeekable:Z

    sget v2, Lcom/warkiz/widget/R$styleable;->IndicatorSeekBar_isb_clear_default_padding:I

    iget-boolean v3, v0, Lcom/warkiz/widget/Builder;->clearPadding:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mClearPadding:Z

    sget v2, Lcom/warkiz/widget/R$styleable;->IndicatorSeekBar_isb_only_thumb_draggable:I

    iget-boolean v3, v0, Lcom/warkiz/widget/Builder;->onlyThumbDraggable:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mOnlyThumbDraggable:Z

    sget v2, Lcom/warkiz/widget/R$styleable;->IndicatorSeekBar_isb_seek_smoothly:I

    iget-boolean v3, v0, Lcom/warkiz/widget/Builder;->seekSmoothly:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mSeekSmoothly:Z

    sget v2, Lcom/warkiz/widget/R$styleable;->IndicatorSeekBar_isb_r2l:I

    iget-boolean v3, v0, Lcom/warkiz/widget/Builder;->r2l:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mR2L:Z

    sget v2, Lcom/warkiz/widget/R$styleable;->IndicatorSeekBar_isb_track_background_size:I

    iget v3, v0, Lcom/warkiz/widget/Builder;->trackBackgroundSize:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mBackgroundTrackSize:I

    sget v2, Lcom/warkiz/widget/R$styleable;->IndicatorSeekBar_isb_track_progress_size:I

    iget v3, v0, Lcom/warkiz/widget/Builder;->trackProgressSize:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mProgressTrackSize:I

    sget v2, Lcom/warkiz/widget/R$styleable;->IndicatorSeekBar_isb_track_background_color:I

    iget v3, v0, Lcom/warkiz/widget/Builder;->trackBackgroundColor:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mBackgroundTrackColor:I

    sget v2, Lcom/warkiz/widget/R$styleable;->IndicatorSeekBar_isb_track_progress_color:I

    iget v3, v0, Lcom/warkiz/widget/Builder;->trackProgressColor:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mProgressTrackColor:I

    sget v2, Lcom/warkiz/widget/R$styleable;->IndicatorSeekBar_isb_track_rounded_corners:I

    iget-boolean v3, v0, Lcom/warkiz/widget/Builder;->trackRoundedCorners:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTrackRoundedCorners:Z

    sget v2, Lcom/warkiz/widget/R$styleable;->IndicatorSeekBar_isb_thumb_size:I

    iget v3, v0, Lcom/warkiz/widget/Builder;->thumbSize:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mThumbSize:I

    sget v2, Lcom/warkiz/widget/R$styleable;->IndicatorSeekBar_isb_thumb_drawable:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    sget v2, Lcom/warkiz/widget/R$styleable;->IndicatorSeekBar_isb_thumb_adjust_auto:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mAdjustAuto:Z

    sget v2, Lcom/warkiz/widget/R$styleable;->IndicatorSeekBar_isb_thumb_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iget v3, v0, Lcom/warkiz/widget/Builder;->thumbColor:I

    invoke-direct {p0, v2, v3}, Lcom/warkiz/widget/IndicatorSeekBar;->initThumbColor(Landroid/content/res/ColorStateList;I)V

    sget v2, Lcom/warkiz/widget/R$styleable;->IndicatorSeekBar_isb_show_thumb_text:I

    iget-boolean v3, v0, Lcom/warkiz/widget/Builder;->showThumbText:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mShowThumbText:Z

    sget v2, Lcom/warkiz/widget/R$styleable;->IndicatorSeekBar_isb_thumb_text_color:I

    iget v3, v0, Lcom/warkiz/widget/Builder;->thumbTextColor:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mThumbTextColor:I

    sget v2, Lcom/warkiz/widget/R$styleable;->IndicatorSeekBar_isb_ticks_count:I

    iget v3, v0, Lcom/warkiz/widget/Builder;->tickCount:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTicksCount:I

    sget v2, Lcom/warkiz/widget/R$styleable;->IndicatorSeekBar_isb_show_tick_marks_type:I

    iget v3, v0, Lcom/warkiz/widget/Builder;->showTickMarksType:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mShowTickMarksType:I

    sget v2, Lcom/warkiz/widget/R$styleable;->IndicatorSeekBar_isb_tick_marks_size:I

    iget v3, v0, Lcom/warkiz/widget/Builder;->tickMarksSize:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTickMarksSize:I

    sget v2, Lcom/warkiz/widget/R$styleable;->IndicatorSeekBar_isb_tick_marks_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iget v3, v0, Lcom/warkiz/widget/Builder;->tickMarksColor:I

    invoke-direct {p0, v2, v3}, Lcom/warkiz/widget/IndicatorSeekBar;->initTickMarksColor(Landroid/content/res/ColorStateList;I)V

    sget v2, Lcom/warkiz/widget/R$styleable;->IndicatorSeekBar_isb_tick_marks_drawable:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTickMarksDrawable:Landroid/graphics/drawable/Drawable;

    sget v2, Lcom/warkiz/widget/R$styleable;->IndicatorSeekBar_isb_tick_marks_swept_hide:I

    iget-boolean v3, v0, Lcom/warkiz/widget/Builder;->tickMarksSweptHide:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTickMarksSweptHide:Z

    sget v2, Lcom/warkiz/widget/R$styleable;->IndicatorSeekBar_isb_tick_marks_ends_hide:I

    iget-boolean v3, v0, Lcom/warkiz/widget/Builder;->tickMarksEndsHide:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTickMarksEndsHide:Z

    sget v2, Lcom/warkiz/widget/R$styleable;->IndicatorSeekBar_isb_show_tick_texts:I

    iget-boolean v3, v0, Lcom/warkiz/widget/Builder;->showTickText:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mShowTickText:Z

    sget v2, Lcom/warkiz/widget/R$styleable;->IndicatorSeekBar_isb_tick_texts_size:I

    iget v3, v0, Lcom/warkiz/widget/Builder;->tickTextsSize:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTickTextsSize:I

    sget v2, Lcom/warkiz/widget/R$styleable;->IndicatorSeekBar_isb_tick_texts_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iget v3, v0, Lcom/warkiz/widget/Builder;->tickTextsColor:I

    invoke-direct {p0, v2, v3}, Lcom/warkiz/widget/IndicatorSeekBar;->initTickTextsColor(Landroid/content/res/ColorStateList;I)V

    sget v2, Lcom/warkiz/widget/R$styleable;->IndicatorSeekBar_isb_tick_texts_array:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTickTextsCustomArray:[Ljava/lang/CharSequence;

    sget v2, Lcom/warkiz/widget/R$styleable;->IndicatorSeekBar_isb_tick_texts_typeface:I

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iget-object v3, v0, Lcom/warkiz/widget/Builder;->tickTextsTypeFace:Landroid/graphics/Typeface;

    invoke-direct {p0, v2, v3}, Lcom/warkiz/widget/IndicatorSeekBar;->initTextsTypeface(ILandroid/graphics/Typeface;)V

    sget v2, Lcom/warkiz/widget/R$styleable;->IndicatorSeekBar_isb_show_indicator:I

    iget v3, v0, Lcom/warkiz/widget/Builder;->showIndicatorType:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mShowIndicatorType:I

    sget v2, Lcom/warkiz/widget/R$styleable;->IndicatorSeekBar_isb_indicator_color:I

    iget v3, v0, Lcom/warkiz/widget/Builder;->indicatorColor:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mIndicatorColor:I

    sget v2, Lcom/warkiz/widget/R$styleable;->IndicatorSeekBar_isb_indicator_text_size:I

    iget v3, v0, Lcom/warkiz/widget/Builder;->indicatorTextSize:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mIndicatorTextSize:I

    sget v2, Lcom/warkiz/widget/R$styleable;->IndicatorSeekBar_isb_indicator_text_color:I

    iget v0, v0, Lcom/warkiz/widget/Builder;->indicatorTextColor:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mIndicatorTextColor:I

    sget v0, Lcom/warkiz/widget/R$styleable;->IndicatorSeekBar_isb_indicator_content_layout:I

    invoke-virtual {v1, v0, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-lez v0, :cond_1

    iget-object v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mContext:Landroid/content/Context;

    invoke-static {v2, v0, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mIndicatorContentView:Landroid/view/View;

    :cond_1
    sget v0, Lcom/warkiz/widget/R$styleable;->IndicatorSeekBar_isb_indicator_top_content_layout:I

    invoke-virtual {v1, v0, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-lez v0, :cond_2

    iget-object v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mContext:Landroid/content/Context;

    invoke-static {v2, v0, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mIndicatorTopContentView:Landroid/view/View;

    :cond_2
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_0
.end method

.method private initDefaultPadding()V
    .locals 4

    iget-boolean v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mClearPadding:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mContext:Landroid/content/Context;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v0, v1}, Lcom/warkiz/widget/SizeUtils;->dp2px(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->getPaddingLeft()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->getPaddingRight()I

    move-result v2

    invoke-virtual {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/warkiz/widget/IndicatorSeekBar;->setPadding(IIII)V

    :cond_0
    invoke-virtual {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->getPaddingRight()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/warkiz/widget/IndicatorSeekBar;->setPadding(IIII)V

    :cond_1
    return-void
.end method

.method private initIndicatorContentView()V
    .locals 9

    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mShowIndicatorType:I

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mIndicator:Lcom/warkiz/widget/Indicator;

    if-nez v0, :cond_0

    new-instance v0, Lcom/warkiz/widget/Indicator;

    iget-object v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mIndicatorColor:I

    iget v4, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mShowIndicatorType:I

    iget v5, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mIndicatorTextSize:I

    iget v6, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mIndicatorTextColor:I

    iget-object v7, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mIndicatorContentView:Landroid/view/View;

    iget-object v8, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mIndicatorTopContentView:Landroid/view/View;

    move-object v2, p0

    invoke-direct/range {v0 .. v8}, Lcom/warkiz/widget/Indicator;-><init>(Landroid/content/Context;Lcom/warkiz/widget/IndicatorSeekBar;IIIILandroid/view/View;Landroid/view/View;)V

    iput-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mIndicator:Lcom/warkiz/widget/Indicator;

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mIndicator:Lcom/warkiz/widget/Indicator;

    invoke-virtual {v0}, Lcom/warkiz/widget/Indicator;->getInsideContentView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mIndicatorContentView:Landroid/view/View;

    goto :goto_0
.end method

.method private initParams()V
    .locals 4

    const/high16 v3, 0x41f00000    # 30.0f

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->initProgressRangeValue()V

    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mBackgroundTrackSize:I

    iget v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mProgressTrackSize:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mProgressTrackSize:I

    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mBackgroundTrackSize:I

    :cond_0
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mThumbSize:I

    int-to-float v0, v0

    div-float/2addr v0, v2

    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mThumbRadius:F

    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mThumbRadius:F

    const v1, 0x3f99999a    # 1.2f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mThumbTouchRadius:F

    :goto_0
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTickMarksDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2

    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTickMarksSize:I

    int-to-float v0, v0

    div-float/2addr v0, v2

    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTickRadius:F

    :goto_1
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mThumbTouchRadius:F

    iget v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTickRadius:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mCustomDrawableMaxHeight:F

    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->initStrokePaint()V

    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->measureTickTextsBonds()V

    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mProgress:F

    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->lastProgress:F

    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->collectTicksInfo()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mProgressTrack:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mBackgroundTrack:Landroid/graphics/RectF;

    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->initDefaultPadding()V

    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->initIndicatorContentView()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mContext:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/warkiz/widget/SizeUtils;->dp2px(Landroid/content/Context;F)I

    move-result v0

    iget v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mThumbSize:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mThumbRadius:F

    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mThumbRadius:F

    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mThumbTouchRadius:F

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mContext:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/warkiz/widget/SizeUtils;->dp2px(Landroid/content/Context;F)I

    move-result v0

    iget v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTickMarksSize:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTickRadius:F

    goto :goto_1
.end method

.method private initProgressRangeValue()V
    .locals 2

    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mMax:F

    iget v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mMin:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "the Argument: MAX\'s value must be larger than MIN\'s."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mProgress:F

    iget v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mMin:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mMin:F

    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mProgress:F

    :cond_1
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mProgress:F

    iget v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mMax:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mMax:F

    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mProgress:F

    :cond_2
    return-void
.end method

.method private initSeekBarInfo()V
    .locals 2

    invoke-virtual {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mMeasuredWidth:I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->getPaddingLeft()I

    move-result v0

    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mPaddingLeft:I

    invoke-virtual {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->getPaddingRight()I

    move-result v0

    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mPaddingRight:I

    :goto_0
    invoke-virtual {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->getPaddingTop()I

    move-result v0

    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mPaddingTop:I

    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mMeasuredWidth:I

    iget v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mPaddingLeft:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mPaddingRight:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mSeekLength:F

    iget v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mSeekLength:F

    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTicksCount:I

    add-int/lit8 v0, v0, -0x1

    if-lez v0, :cond_1

    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTicksCount:I

    add-int/lit8 v0, v0, -0x1

    :goto_1
    int-to-float v0, v0

    div-float v0, v1, v0

    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mSeekBlockLength:F

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->getPaddingStart()I

    move-result v0

    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mPaddingLeft:I

    invoke-virtual {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->getPaddingEnd()I

    move-result v0

    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mPaddingRight:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private initStrokePaint()V
    .locals 2

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mStockPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mStockPaint:Landroid/graphics/Paint;

    :cond_0
    iget-boolean v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTrackRoundedCorners:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mStockPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    :cond_1
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mStockPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mBackgroundTrackSize:I

    iget v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mProgressTrackSize:I

    if-le v0, v1, :cond_2

    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mBackgroundTrackSize:I

    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mProgressTrackSize:I

    :cond_2
    return-void
.end method

.method private initTextPaint()V
    .locals 2

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTextPaint:Landroid/text/TextPaint;

    if-nez v0, :cond_0

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTextPaint:Landroid/text/TextPaint;

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTextPaint:Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTextPaint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTickTextsSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    :cond_0
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mRect:Landroid/graphics/Rect;

    if-nez v0, :cond_1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mRect:Landroid/graphics/Rect;

    :cond_1
    return-void
.end method

.method private initTextsArray()V
    .locals 6

    const/4 v1, 0x0

    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTicksCount:I

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mShowTickText:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTicksCount:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTickTextsArr:[Ljava/lang/String;

    :cond_2
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTickMarksX:[F

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-boolean v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mShowTickText:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTickTextsArr:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/warkiz/widget/IndicatorSeekBar;->getTickTextByPosition(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    iget-object v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTextPaint:Landroid/text/TextPaint;

    iget-object v3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTickTextsArr:[Ljava/lang/String;

    aget-object v3, v3, v0

    iget-object v4, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTickTextsArr:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v5, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTickTextsWidth:[F

    iget-object v3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    aput v3, v2, v0

    iget-object v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTextCenterX:[F

    iget v3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mPaddingLeft:I

    int-to-float v3, v3

    iget v4, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mSeekBlockLength:F

    int-to-float v5, v0

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    aput v3, v2, v0

    :cond_3
    iget-object v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTickMarksX:[F

    iget v3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mPaddingLeft:I

    int-to-float v3, v3

    iget v4, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mSeekBlockLength:F

    int-to-float v5, v0

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private initTextsTypeface(ILandroid/graphics/Typeface;)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    if-nez p2, :cond_0

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iput-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTextsTypeface:Landroid/graphics/Typeface;

    :goto_0
    return-void

    :pswitch_0
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iput-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTextsTypeface:Landroid/graphics/Typeface;

    goto :goto_0

    :pswitch_1
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    iput-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTextsTypeface:Landroid/graphics/Typeface;

    goto :goto_0

    :pswitch_2
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    iput-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTextsTypeface:Landroid/graphics/Typeface;

    goto :goto_0

    :pswitch_3
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    iput-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTextsTypeface:Landroid/graphics/Typeface;

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTextsTypeface:Landroid/graphics/Typeface;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private initThumbBitmap()V
    .locals 10

    const/4 v9, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v0, :cond_5

    :try_start_0
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v1, "getStateCount"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v3, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v1, 0x2

    if-ne v4, v1, :cond_4

    const-string v1, "getStateSet"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v1, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const-string v1, "getStateDrawable"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v3, v1, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    :goto_1
    if-ge v2, v4, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v1, v6

    invoke-virtual {v5, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    check-cast v1, [I

    array-length v6, v1

    if-lez v6, :cond_3

    const/4 v6, 0x0

    aget v1, v1, v6

    const v6, 0x10100a7

    if-ne v1, v6, :cond_2

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v1, v6

    invoke-virtual {v3, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x1

    invoke-direct {p0, v1, v6}, Lcom/warkiz/widget/IndicatorSeekBar;->getDrawBitmap(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mPressedThumbBitmap:Landroid/graphics/Bitmap;

    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "the state of the selector thumb drawable is wrong!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0, v9}, Lcom/warkiz/widget/IndicatorSeekBar;->getDrawBitmap(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mThumbBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mThumbBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mPressedThumbBitmap:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    :cond_3
    const/4 v1, 0x1

    :try_start_1
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v1, v6

    invoke-virtual {v3, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x1

    invoke-direct {p0, v1, v6}, Lcom/warkiz/widget/IndicatorSeekBar;->getDrawBitmap(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mThumbBitmap:Landroid/graphics/Bitmap;

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "the format of the selector thumb drawable is wrong!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_5
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0, v9}, Lcom/warkiz/widget/IndicatorSeekBar;->getDrawBitmap(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mThumbBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mThumbBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mPressedThumbBitmap:Landroid/graphics/Bitmap;

    goto/16 :goto_0
.end method

.method private initThumbColor(Landroid/content/res/ColorStateList;I)V
    .locals 10

    const/4 v1, 0x0

    const/4 v9, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_1

    iput p2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mThumbColor:I

    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mThumbColor:I

    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mPressedThumbColor:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, v1

    check-cast v0, [[I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v5

    array-length v6, v5

    move v4, v2

    move-object v3, v0

    :goto_1
    if-ge v4, v6, :cond_3

    aget-object v7, v5, v4

    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const-string v0, "mStateSpecs"

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v7, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    check-cast v0, [[I

    move-object v3, v0

    :cond_2
    const-string v0, "mColors"

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v7, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    add-int/lit8 v4, v4, 0x1

    move-object v1, v0

    goto :goto_1

    :cond_3
    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    array-length v0, v3

    if-ne v0, v9, :cond_4

    aget v0, v1, v2

    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mThumbColor:I

    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mThumbColor:I

    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mPressedThumbColor:I

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Something wrong happened when parseing thumb selector color."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    array-length v0, v3

    const/4 v4, 0x2

    if-ne v0, v4, :cond_6

    move v0, v2

    :goto_3
    array-length v4, v3

    if-ge v0, v4, :cond_0

    aget-object v4, v3, v0

    array-length v5, v4

    if-nez v5, :cond_5

    aget v4, v1, v0

    iput v4, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mPressedThumbColor:I

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    aget v4, v4, v2

    packed-switch v4, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "the selector color file you set for the argument: isb_thumb_color is in wrong format."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    aget v4, v1, v0

    iput v4, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mThumbColor:I

    goto :goto_4

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "the selector color file you set for the argument: isb_thumb_color is in wrong format."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    move-object v0, v1

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x10100a7
        :pswitch_0
    .end packed-switch
.end method

.method private initTickMarksBitmap()V
    .locals 9

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTickMarksDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTickMarksDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v1, "getStateCount"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v1, 0x2

    if-ne v4, v1, :cond_3

    const-string v1, "getStateSet"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v2, v1, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const-string v1, "getStateDrawable"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v2, v1, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v1, v7

    invoke-virtual {v5, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    check-cast v1, [I

    array-length v7, v1

    if-lez v7, :cond_2

    const/4 v7, 0x0

    aget v1, v1, v7

    const v7, 0x10100a1

    if-ne v1, v7, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v1, v7

    invoke-virtual {v6, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    const/4 v7, 0x0

    invoke-direct {p0, v1, v7}, Lcom/warkiz/widget/IndicatorSeekBar;->getDrawBitmap(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mSelectTickMarksBitmap:Landroid/graphics/Bitmap;

    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "the state of the selector TickMarks drawable is wrong!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTickMarksDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0, v3}, Lcom/warkiz/widget/IndicatorSeekBar;->getDrawBitmap(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mUnselectTickMarksBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mUnselectTickMarksBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mSelectTickMarksBitmap:Landroid/graphics/Bitmap;

    :cond_1
    :goto_2
    return-void

    :cond_2
    const/4 v1, 0x1

    :try_start_1
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v1, v7

    invoke-virtual {v6, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    const/4 v7, 0x0

    invoke-direct {p0, v1, v7}, Lcom/warkiz/widget/IndicatorSeekBar;->getDrawBitmap(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mUnselectTickMarksBitmap:Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "the format of the selector TickMarks drawable is wrong!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_4
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTickMarksDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0, v3}, Lcom/warkiz/widget/IndicatorSeekBar;->getDrawBitmap(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mUnselectTickMarksBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mUnselectTickMarksBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mSelectTickMarksBitmap:Landroid/graphics/Bitmap;

    goto :goto_2
.end method

.method private initTickMarksColor(Landroid/content/res/ColorStateList;I)V
    .locals 10

    const/4 v1, 0x0

    const/4 v9, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_1

    iput p2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mSelectedTickMarksColor:I

    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mSelectedTickMarksColor:I

    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mUnSelectedTickMarksColor:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, v1

    check-cast v0, [[I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v5

    array-length v6, v5

    move v4, v2

    move-object v3, v0

    :goto_1
    if-ge v4, v6, :cond_3

    aget-object v7, v5, v4

    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const-string v0, "mStateSpecs"

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v7, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    check-cast v0, [[I

    move-object v3, v0

    :cond_2
    const-string v0, "mColors"

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v7, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    add-int/lit8 v4, v4, 0x1

    move-object v1, v0

    goto :goto_1

    :cond_3
    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    array-length v0, v3

    if-ne v0, v9, :cond_4

    aget v0, v1, v2

    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mSelectedTickMarksColor:I

    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mSelectedTickMarksColor:I

    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mUnSelectedTickMarksColor:I

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Something wrong happened when parsing thumb selector color."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    array-length v0, v3

    const/4 v4, 0x2

    if-ne v0, v4, :cond_6

    move v0, v2

    :goto_3
    array-length v4, v3

    if-ge v0, v4, :cond_0

    aget-object v4, v3, v0

    array-length v5, v4

    if-nez v5, :cond_5

    aget v4, v1, v0

    iput v4, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mUnSelectedTickMarksColor:I

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    aget v4, v4, v2

    packed-switch v4, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "the selector color file you set for the argument: isb_tick_marks_color is in wrong format."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    aget v4, v1, v0

    iput v4, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mSelectedTickMarksColor:I

    goto :goto_4

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "the selector color file you set for the argument: isb_tick_marks_color is in wrong format."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    move-object v0, v1

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x10100a1
        :pswitch_0
    .end packed-switch
.end method

.method private initTickTextsColor(Landroid/content/res/ColorStateList;I)V
    .locals 10

    const/4 v1, 0x0

    const/4 v9, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_1

    iput p2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mUnselectedTextsColor:I

    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mUnselectedTextsColor:I

    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mSelectedTextsColor:I

    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mUnselectedTextsColor:I

    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mHoveredTextColor:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, v1

    check-cast v0, [[I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v5

    array-length v6, v5

    move v4, v2

    move-object v3, v0

    :goto_1
    if-ge v4, v6, :cond_3

    aget-object v7, v5, v4

    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const-string v0, "mStateSpecs"

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v7, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    check-cast v0, [[I

    move-object v3, v0

    :cond_2
    const-string v0, "mColors"

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v7, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    add-int/lit8 v4, v4, 0x1

    move-object v1, v0

    goto :goto_1

    :cond_3
    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    array-length v0, v3

    if-ne v0, v9, :cond_4

    aget v0, v1, v2

    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mUnselectedTextsColor:I

    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mUnselectedTextsColor:I

    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mSelectedTextsColor:I

    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mUnselectedTextsColor:I

    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mHoveredTextColor:I

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Something wrong happened when parseing thumb selector color."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    array-length v0, v3

    const/4 v4, 0x3

    if-ne v0, v4, :cond_6

    move v0, v2

    :goto_3
    array-length v4, v3

    if-ge v0, v4, :cond_0

    aget-object v4, v3, v0

    array-length v5, v4

    if-nez v5, :cond_5

    aget v4, v1, v0

    iput v4, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mUnselectedTextsColor:I

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    aget v4, v4, v2

    sparse-switch v4, :sswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "the selector color file you set for the argument: isb_tick_texts_color is in wrong format."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    aget v4, v1, v0

    iput v4, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mSelectedTextsColor:I

    goto :goto_4

    :sswitch_1
    aget v4, v1, v0

    iput v4, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mHoveredTextColor:I

    goto :goto_4

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "the selector color file you set for the argument: isb_tick_texts_color is in wrong format."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    move-object v0, v1

    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x10100a1 -> :sswitch_0
        0x1010367 -> :sswitch_1
    .end sparse-switch
.end method

.method private initTrackLocation()V
    .locals 6

    iget-boolean v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mR2L:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mBackgroundTrack:Landroid/graphics/RectF;

    iget v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mPaddingLeft:I

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mBackgroundTrack:Landroid/graphics/RectF;

    iget v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mPaddingTop:I

    int-to-float v1, v1

    iget v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mThumbTouchRadius:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mBackgroundTrack:Landroid/graphics/RectF;

    iget v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mPaddingLeft:I

    int-to-float v1, v1

    iget v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mSeekLength:F

    const/high16 v3, 0x3f800000    # 1.0f

    iget v4, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mProgress:F

    iget v5, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mMin:F

    sub-float/2addr v4, v5

    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->getAmplitude()F

    move-result v5

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mBackgroundTrack:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mBackgroundTrack:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mProgressTrack:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mBackgroundTrack:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iput v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mProgressTrack:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mBackgroundTrack:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iput v1, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mProgressTrack:Landroid/graphics/RectF;

    iget v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mMeasuredWidth:I

    iget v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mPaddingRight:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mProgressTrack:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mBackgroundTrack:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mProgressTrack:Landroid/graphics/RectF;

    iget v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mPaddingLeft:I

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mProgressTrack:Landroid/graphics/RectF;

    iget v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mPaddingTop:I

    int-to-float v1, v1

    iget v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mThumbTouchRadius:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mProgressTrack:Landroid/graphics/RectF;

    iget v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mProgress:F

    iget v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mMin:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mSeekLength:F

    mul-float/2addr v1, v2

    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->getAmplitude()F

    move-result v2

    div-float/2addr v1, v2

    iget v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mPaddingLeft:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mProgressTrack:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mProgressTrack:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mBackgroundTrack:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mProgressTrack:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iput v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mBackgroundTrack:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mProgressTrack:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iput v1, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mBackgroundTrack:Landroid/graphics/RectF;

    iget v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mMeasuredWidth:I

    iget v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mPaddingRight:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mBackgroundTrack:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mProgressTrack:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    goto :goto_0
.end method

.method private isTouchSeekBar(FF)Z
    .locals 5

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mFaultTolerance:F

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v0, v0, v3

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mContext:Landroid/content/Context;

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-static {v0, v3}, Lcom/warkiz/widget/SizeUtils;->dp2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mFaultTolerance:F

    :cond_0
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mPaddingLeft:I

    int-to-float v0, v0

    iget v3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mFaultTolerance:F

    mul-float/2addr v3, v4

    sub-float/2addr v0, v3

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mMeasuredWidth:I

    iget v3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mPaddingRight:I

    sub-int/2addr v0, v3

    int-to-float v0, v0

    iget v3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mFaultTolerance:F

    mul-float/2addr v3, v4

    add-float/2addr v0, v3

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_1

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mProgressTrack:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget v4, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mThumbTouchRadius:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mFaultTolerance:F

    sub-float/2addr v3, v4

    cmpl-float v3, p2, v3

    if-ltz v3, :cond_2

    iget-object v3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mProgressTrack:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget v4, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mThumbTouchRadius:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mFaultTolerance:F

    add-float/2addr v3, v4

    cmpg-float v3, p2, v3

    if-gtz v3, :cond_2

    move v3, v1

    :goto_1
    if-eqz v0, :cond_3

    if-eqz v3, :cond_3

    :goto_2
    return v1

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v3, v2

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2
.end method

.method private isTouchThumb(F)Z
    .locals 3

    const/high16 v2, 0x40000000    # 2.0f

    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mProgress:F

    invoke-direct {p0, v0}, Lcom/warkiz/widget/IndicatorSeekBar;->refreshThumbCenterXByProgress(F)V

    iget-boolean v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mR2L:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mBackgroundTrack:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    :goto_0
    iget v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mThumbSize:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    sub-float v1, v0, v1

    cmpg-float v1, v1, p1

    if-gtz v1, :cond_1

    iget v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mThumbSize:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mProgressTrack:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private measureTickTextsBonds()V
    .locals 5

    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->needDrawText()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->initTextPaint()V

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTextPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTextsTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTextPaint:Landroid/text/TextPaint;

    const-string v1, "j"

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget-object v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mContext:Landroid/content/Context;

    const/high16 v2, 0x40400000    # 3.0f

    invoke-static {v1, v2}, Lcom/warkiz/widget/SizeUtils;->dp2px(Landroid/content/Context;F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTickTextsHeight:I

    :cond_0
    return-void
.end method

.method private needDrawText()Z
    .locals 1

    iget-boolean v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mShowThumbText:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTicksCount:I

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mShowTickText:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private progressChange()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mIsFloatProgress:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->lastProgress:F

    iget v3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mProgress:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->lastProgress:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mProgress:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    if-ne v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private refreshSeekBar(Landroid/view/MotionEvent;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/warkiz/widget/IndicatorSeekBar;->adjustTouchX(Landroid/view/MotionEvent;)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/warkiz/widget/IndicatorSeekBar;->calculateTouchX(F)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/warkiz/widget/IndicatorSeekBar;->calculateProgress(F)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/warkiz/widget/IndicatorSeekBar;->refreshThumbCenterXByProgress(F)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/warkiz/widget/IndicatorSeekBar;->setSeekListener(Z)V

    invoke-virtual {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->invalidate()V

    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->updateIndicator()V

    return-void
.end method

.method private refreshSeekBarLocation()V
    .locals 5

    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->initTrackLocation()V

    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->needDrawText()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTextPaint:Landroid/text/TextPaint;

    const-string v1, "j"

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mPaddingTop:I

    int-to-float v0, v0

    iget v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mCustomDrawableMaxHeight:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->descent()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mContext:Landroid/content/Context;

    const/high16 v2, 0x40400000    # 3.0f

    invoke-static {v1, v2}, Lcom/warkiz/widget/SizeUtils;->dp2px(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTickTextY:F

    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTickTextY:F

    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mThumbTextY:F

    :cond_0
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTickMarksX:[F

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->initTextsArray()V

    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTicksCount:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mProgressArr:[F

    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->getClosestIndex()I

    move-result v1

    aget v0, v0, v1

    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mProgress:F

    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mProgress:F

    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->lastProgress:F

    :cond_2
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mProgress:F

    invoke-direct {p0, v0}, Lcom/warkiz/widget/IndicatorSeekBar;->refreshThumbCenterXByProgress(F)V

    goto :goto_0
.end method

.method private refreshThumbCenterXByProgress(F)V
    .locals 6

    iget-boolean v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mR2L:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mBackgroundTrack:Landroid/graphics/RectF;

    iget v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mPaddingLeft:I

    int-to-float v1, v1

    iget v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mSeekLength:F

    const/high16 v3, 0x3f800000    # 1.0f

    iget v4, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mMin:F

    sub-float v4, p1, v4

    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->getAmplitude()F

    move-result v5

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mProgressTrack:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mBackgroundTrack:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iput v1, v0, Landroid/graphics/RectF;->left:F

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mProgressTrack:Landroid/graphics/RectF;

    iget v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mMin:F

    sub-float v1, p1, v1

    iget v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mSeekLength:F

    mul-float/2addr v1, v2

    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->getAmplitude()F

    move-result v2

    div-float/2addr v1, v2

    iget v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mPaddingLeft:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mBackgroundTrack:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mProgressTrack:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iput v1, v0, Landroid/graphics/RectF;->left:F

    goto :goto_0
.end method

.method private setSeekListener(Z)V
    .locals 2

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mSeekChangeListener:Lcom/warkiz/widget/OnSeekChangeListener;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->progressChange()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mSeekChangeListener:Lcom/warkiz/widget/OnSeekChangeListener;

    invoke-direct {p0, p1}, Lcom/warkiz/widget/IndicatorSeekBar;->collectParams(Z)Lcom/warkiz/widget/SeekParams;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/warkiz/widget/OnSeekChangeListener;->onSeeking(Lcom/warkiz/widget/SeekParams;)V

    goto :goto_0
.end method

.method private updateIndicator()V
    .locals 2

    iget-boolean v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mIndicatorStayAlways:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->updateStayIndicator()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mIndicator:Lcom/warkiz/widget/Indicator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mIndicator:Lcom/warkiz/widget/Indicator;

    invoke-virtual {v0}, Lcom/warkiz/widget/Indicator;->iniPop()V

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mIndicator:Lcom/warkiz/widget/Indicator;

    invoke-virtual {v0}, Lcom/warkiz/widget/Indicator;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mIndicator:Lcom/warkiz/widget/Indicator;

    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->getThumbCenterX()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/warkiz/widget/Indicator;->update(F)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mIndicator:Lcom/warkiz/widget/Indicator;

    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->getThumbCenterX()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/warkiz/widget/Indicator;->show(F)V

    goto :goto_0
.end method

.method private updateStayIndicator()V
    .locals 6

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mIndicatorStayAlways:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mIndicator:Lcom/warkiz/widget/Indicator;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mIndicator:Lcom/warkiz/widget/Indicator;

    invoke-virtual {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->getIndicatorTextString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/warkiz/widget/Indicator;->setProgressTextView(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mIndicatorContentView:Landroid/view/View;

    invoke-virtual {v0, v1, v1}, Landroid/view/View;->measure(II)V

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mIndicatorContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->getThumbCenterX()F

    move-result v3

    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mScreenWidth:F

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v0, v0, v4

    if-nez v0, :cond_2

    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mContext:Landroid/content/Context;

    const-string v5, "window"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mScreenWidth:F

    :cond_2
    div-int/lit8 v0, v2, 0x2

    int-to-float v0, v0

    add-float/2addr v0, v3

    iget v4, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mMeasuredWidth:I

    int-to-float v4, v4

    cmpl-float v0, v0, v4

    if-lez v0, :cond_3

    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mMeasuredWidth:I

    sub-int v1, v0, v2

    int-to-float v0, v1

    sub-float v0, v3, v0

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    float-to-int v0, v0

    move v2, v1

    :goto_1
    iget-object v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mIndicator:Lcom/warkiz/widget/Indicator;

    invoke-virtual {v1, v2}, Lcom/warkiz/widget/Indicator;->updateIndicatorLocation(I)V

    iget-object v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mIndicator:Lcom/warkiz/widget/Indicator;

    invoke-virtual {v1, v0}, Lcom/warkiz/widget/Indicator;->updateArrowViewLocation(I)V

    goto :goto_0

    :cond_3
    div-int/lit8 v0, v2, 0x2

    int-to-float v0, v0

    sub-float v0, v3, v0

    const/4 v4, 0x0

    cmpg-float v0, v0, v4

    if-gez v0, :cond_4

    div-int/lit8 v0, v2, 0x2

    int-to-float v0, v0

    sub-float/2addr v0, v3

    float-to-int v0, v0

    neg-int v0, v0

    move v2, v1

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->getThumbCenterX()F

    move-result v0

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    float-to-int v2, v0

    move v0, v1

    goto :goto_1
.end method

.method public static with(Landroid/content/Context;)Lcom/warkiz/widget/Builder;
    .locals 1

    new-instance v0, Lcom/warkiz/widget/Builder;

    invoke-direct {v0, p0}, Lcom/warkiz/widget/Builder;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public customSectionTrackColor(Lcom/warkiz/widget/ColorCollector;)V
    .locals 3

    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTicksCount:I

    add-int/lit8 v0, v0, -0x1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTicksCount:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    new-array v1, v0, [I

    const/4 v0, 0x0

    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_1

    iget v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mBackgroundTrackColor:I

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {p1, v1}, Lcom/warkiz/widget/ColorCollector;->collectSectionTrackColor([I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mCustomTrackSectionColorResult:Z

    iput-object v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mSectionTrackColorArray:[I

    invoke-virtual {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->invalidate()V

    return-void
.end method

.method public customTickTexts([Ljava/lang/String;)V
    .locals 7

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTickTextsCustomArray:[Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTickTextsArr:[Ljava/lang/String;

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTickTextsArr:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    array-length v2, p1

    if-ge v0, v2, :cond_1

    aget-object v2, p1, v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    iget-boolean v3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mR2L:Z

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTicksCount:I

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v0

    :goto_2
    iget-object v4, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTickTextsArr:[Ljava/lang/String;

    aput-object v2, v4, v3

    iget-object v4, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTextPaint:Landroid/text/TextPaint;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mRect:Landroid/graphics/Rect;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    iget-object v6, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v2, v1, v5, v6}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTickTextsWidth:[F

    iget-object v4, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    aput v4, v2, v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string v2, ""

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->invalidate()V

    :cond_3
    return-void

    :cond_4
    move v3, v0

    goto :goto_2
.end method

.method public customTickTextsTypeface(Landroid/graphics/Typeface;)V
    .locals 0

    iput-object p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTextsTypeface:Landroid/graphics/Typeface;

    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->measureTickTextsBonds()V

    invoke-virtual {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->requestLayout()V

    invoke-virtual {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->invalidate()V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_1
    :pswitch_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :pswitch_1
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    :pswitch_2
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getIndicator()Lcom/warkiz/widget/Indicator;
    .locals 1

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mIndicator:Lcom/warkiz/widget/Indicator;

    return-object v0
.end method

.method getIndicatorContentView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mIndicatorContentView:Landroid/view/View;

    return-object v0
.end method

.method getIndicatorTextString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mIndicatorTextFormat:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mIndicatorTextFormat:Ljava/lang/String;

    const-string v1, "${TICK_TEXT}"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTicksCount:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTickTextsArr:[Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mIndicatorTextFormat:Ljava/lang/String;

    const-string v1, "${TICK_TEXT}"

    iget-object v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTickTextsArr:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->getThumbPosOnTick()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mIndicatorTextFormat:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mIndicatorTextFormat:Ljava/lang/String;

    const-string v1, "${PROGRESS}"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mIndicatorTextFormat:Ljava/lang/String;

    const-string v1, "${PROGRESS}"

    iget v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mProgress:F

    invoke-direct {p0, v2}, Lcom/warkiz/widget/IndicatorSeekBar;->getProgressString(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mProgress:F

    invoke-direct {p0, v0}, Lcom/warkiz/widget/IndicatorSeekBar;->getProgressString(F)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getMax()F
    .locals 1

    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mMax:F

    return v0
.end method

.method public getMin()F
    .locals 1

    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mMin:F

    return v0
.end method

.method public getOnSeekChangeListener()Lcom/warkiz/widget/OnSeekChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mSeekChangeListener:Lcom/warkiz/widget/OnSeekChangeListener;

    return-object v0
.end method

.method public getProgress()I
    .locals 1

    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mProgress:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public declared-synchronized getProgressFloat()F
    .locals 3

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mProgress:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v0

    iget v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mScale:I

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->floatValue()F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getTickCount()I
    .locals 1

    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTicksCount:I

    return v0
.end method

.method public hideThumb(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mHideThumb:Z

    invoke-virtual {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->invalidate()V

    return-void
.end method

.method public hideThumbText(Z)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mShowThumbText:Z

    invoke-virtual {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->invalidate()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/warkiz/widget/IndicatorSeekBar;->drawTrack(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/warkiz/widget/IndicatorSeekBar;->drawTickMarks(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/warkiz/widget/IndicatorSeekBar;->drawTickTexts(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/warkiz/widget/IndicatorSeekBar;->drawThumb(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/warkiz/widget/IndicatorSeekBar;->drawThumbText(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected onMeasure(II)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mCustomDrawableMaxHeight:F

    invoke-virtual {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->getPaddingBottom()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mContext:Landroid/content/Context;

    const/high16 v2, 0x432a0000    # 170.0f

    invoke-static {v1, v2}, Lcom/warkiz/widget/SizeUtils;->dp2px(Landroid/content/Context;F)I

    move-result v1

    invoke-static {v1, p1}, Lcom/warkiz/widget/IndicatorSeekBar;->resolveSize(II)I

    move-result v1

    iget v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTickTextsHeight:I

    add-int/2addr v0, v2

    invoke-virtual {p0, v1, v0}, Lcom/warkiz/widget/IndicatorSeekBar;->setMeasuredDimension(II)V

    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->initSeekBarInfo()V

    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->refreshSeekBarLocation()V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/os/Bundle;

    const-string v0, "isb_progress"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/warkiz/widget/IndicatorSeekBar;->setProgress(F)V

    const-string v0, "isb_instance_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "isb_instance_state"

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "isb_progress"

    iget v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mProgress:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    new-instance v0, Lcom/warkiz/widget/IndicatorSeekBar$1;

    invoke-direct {v0, p0}, Lcom/warkiz/widget/IndicatorSeekBar$1;-><init>(Lcom/warkiz/widget/IndicatorSeekBar;)V

    invoke-virtual {p0, v0}, Lcom/warkiz/widget/IndicatorSeekBar;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-boolean v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mUserSeekable:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_2
    :goto_1
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->performClick()Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/warkiz/widget/IndicatorSeekBar;->isTouchSeekBar(FF)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mOnlyThumbDraggable:Z

    if-eqz v3, :cond_3

    invoke-direct {p0, v2}, Lcom/warkiz/widget/IndicatorSeekBar;->isTouchThumb(F)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    iput-boolean v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mIsTouching:Z

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mSeekChangeListener:Lcom/warkiz/widget/OnSeekChangeListener;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mSeekChangeListener:Lcom/warkiz/widget/OnSeekChangeListener;

    invoke-interface {v0, p0}, Lcom/warkiz/widget/OnSeekChangeListener;->onStartTrackingTouch(Lcom/warkiz/widget/IndicatorSeekBar;)V

    :cond_4
    invoke-direct {p0, p1}, Lcom/warkiz/widget/IndicatorSeekBar;->refreshSeekBar(Landroid/view/MotionEvent;)V

    move v0, v1

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/warkiz/widget/IndicatorSeekBar;->refreshSeekBar(Landroid/view/MotionEvent;)V

    goto :goto_1

    :pswitch_2
    iput-boolean v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mIsTouching:Z

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mSeekChangeListener:Lcom/warkiz/widget/OnSeekChangeListener;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mSeekChangeListener:Lcom/warkiz/widget/OnSeekChangeListener;

    invoke-interface {v0, p0}, Lcom/warkiz/widget/OnSeekChangeListener;->onStopTrackingTouch(Lcom/warkiz/widget/IndicatorSeekBar;)V

    :cond_5
    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->autoAdjustThumb()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->invalidate()V

    :cond_6
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mIndicator:Lcom/warkiz/widget/Indicator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mIndicator:Lcom/warkiz/widget/Indicator;

    invoke-virtual {v0}, Lcom/warkiz/widget/Indicator;->hide()V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public performClick()Z
    .locals 1

    invoke-super {p0}, Landroid/view/View;->performClick()Z

    move-result v0

    return v0
.end method

.method public setDecimalScale(I)V
    .locals 0

    iput p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mScale:I

    return-void
.end method

.method public setEnabled(Z)V
    .locals 3

    const/high16 v2, 0x3f800000    # 1.0f

    const v1, 0x3e99999a    # 0.3f

    invoke-virtual {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->isEnabled()Z

    move-result v0

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v2}, Lcom/warkiz/widget/IndicatorSeekBar;->setAlpha(F)V

    iget-boolean v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mIndicatorStayAlways:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mIndicatorContentView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v1}, Lcom/warkiz/widget/IndicatorSeekBar;->setAlpha(F)V

    iget-boolean v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mIndicatorStayAlways:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mIndicatorContentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method

.method setIndicatorStayAlways(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mIndicatorStayAlways:Z

    return-void
.end method

.method public setIndicatorTextFormat(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mIndicatorTextFormat:Ljava/lang/String;

    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->initTextsArray()V

    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->updateStayIndicator()V

    return-void
.end method

.method public declared-synchronized setMax(F)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mMin:F

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mMax:F

    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->initProgressRangeValue()V

    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->collectTicksInfo()V

    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->refreshSeekBarLocation()V

    invoke-virtual {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->invalidate()V

    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->updateStayIndicator()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setMin(F)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mMax:F

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mMin:F

    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->initProgressRangeValue()V

    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->collectTicksInfo()V

    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->refreshSeekBarLocation()V

    invoke-virtual {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->invalidate()V

    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->updateStayIndicator()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setOnSeekChangeListener(Lcom/warkiz/widget/OnSeekChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mSeekChangeListener:Lcom/warkiz/widget/OnSeekChangeListener;

    return-void
.end method

.method public declared-synchronized setProgress(F)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mProgress:F

    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->lastProgress:F

    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mMin:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_2

    iget p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mMin:F

    :cond_0
    :goto_0
    iput p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mProgress:F

    iget-boolean v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mSeekSmoothly:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTicksCount:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mProgressArr:[F

    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->getClosestIndex()I

    move-result v1

    aget v0, v0, v1

    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mProgress:F

    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/warkiz/widget/IndicatorSeekBar;->setSeekListener(Z)V

    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mProgress:F

    invoke-direct {p0, v0}, Lcom/warkiz/widget/IndicatorSeekBar;->refreshThumbCenterXByProgress(F)V

    invoke-virtual {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->postInvalidate()V

    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->updateStayIndicator()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mMax:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    iget p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mMax:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setR2L(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mR2L:Z

    invoke-virtual {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->requestLayout()V

    invoke-virtual {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->invalidate()V

    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->updateStayIndicator()V

    return-void
.end method

.method public setThumbAdjustAuto(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mAdjustAuto:Z

    return-void
.end method

.method public setThumbDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iput-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mThumbBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mPressedThumbBitmap:Landroid/graphics/Bitmap;

    :goto_0
    invoke-virtual {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->requestLayout()V

    invoke-virtual {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->invalidate()V

    return-void

    :cond_0
    iput-object p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mContext:Landroid/content/Context;

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-static {v0, v1}, Lcom/warkiz/widget/SizeUtils;->dp2px(Landroid/content/Context;F)I

    move-result v0

    iget v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mThumbSize:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mThumbRadius:F

    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mThumbRadius:F

    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mThumbTouchRadius:F

    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mThumbTouchRadius:F

    iget v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTickRadius:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mCustomDrawableMaxHeight:F

    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->initThumbBitmap()V

    goto :goto_0
.end method

.method public declared-synchronized setTickCount(I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTicksCount:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTicksCount:I

    const/16 v1, 0x32

    if-le v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "the Argument: TICK COUNT must be limited between (0-50), Now is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTicksCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_1
    iput p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTicksCount:I

    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->collectTicksInfo()V

    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->initTextsArray()V

    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->initSeekBarInfo()V

    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->refreshSeekBarLocation()V

    invoke-virtual {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->invalidate()V

    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->updateStayIndicator()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public setTickMarksDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iput-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTickMarksDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mUnselectTickMarksBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mSelectTickMarksBitmap:Landroid/graphics/Bitmap;

    :goto_0
    invoke-virtual {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->invalidate()V

    return-void

    :cond_0
    iput-object p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTickMarksDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mContext:Landroid/content/Context;

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-static {v0, v1}, Lcom/warkiz/widget/SizeUtils;->dp2px(Landroid/content/Context;F)I

    move-result v0

    iget v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTickMarksSize:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTickRadius:F

    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mThumbTouchRadius:F

    iget v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mTickRadius:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mCustomDrawableMaxHeight:F

    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->initTickMarksBitmap()V

    goto :goto_0
.end method

.method public setUserSeekAble(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mUserSeekable:Z

    return-void
.end method

.method public showBothEndsTickTextsOnly(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mShowBothTickTextsOnly:Z

    return-void
.end method

.method showStayIndicator()V
    .locals 4

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mIndicatorContentView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Lcom/warkiz/widget/IndicatorSeekBar$3;

    invoke-direct {v0, p0}, Lcom/warkiz/widget/IndicatorSeekBar$3;-><init>(Lcom/warkiz/widget/IndicatorSeekBar;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {p0, v0, v2, v3}, Lcom/warkiz/widget/IndicatorSeekBar;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public thumbColor(I)V
    .locals 0

    iput p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mThumbColor:I

    iput p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mPressedThumbColor:I

    invoke-virtual {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->invalidate()V

    return-void
.end method

.method public thumbColorStateList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mThumbColor:I

    invoke-direct {p0, p1, v0}, Lcom/warkiz/widget/IndicatorSeekBar;->initThumbColor(Landroid/content/res/ColorStateList;I)V

    invoke-virtual {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->invalidate()V

    return-void
.end method

.method public tickMarksColor(I)V
    .locals 0

    iput p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mSelectedTickMarksColor:I

    iput p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mUnSelectedTickMarksColor:I

    invoke-virtual {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->invalidate()V

    return-void
.end method

.method public tickMarksColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mSelectedTickMarksColor:I

    invoke-direct {p0, p1, v0}, Lcom/warkiz/widget/IndicatorSeekBar;->initTickMarksColor(Landroid/content/res/ColorStateList;I)V

    invoke-virtual {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->invalidate()V

    return-void
.end method

.method public tickTextsColor(I)V
    .locals 0

    iput p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mUnselectedTextsColor:I

    iput p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mSelectedTextsColor:I

    iput p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mHoveredTextColor:I

    invoke-virtual {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->invalidate()V

    return-void
.end method

.method public tickTextsColorStateList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->mSelectedTextsColor:I

    invoke-direct {p0, p1, v0}, Lcom/warkiz/widget/IndicatorSeekBar;->initTickTextsColor(Landroid/content/res/ColorStateList;I)V

    invoke-virtual {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->invalidate()V

    return-void
.end method
