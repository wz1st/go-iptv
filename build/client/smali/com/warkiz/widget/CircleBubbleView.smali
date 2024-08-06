.class public Lcom/warkiz/widget/CircleBubbleView;
.super Landroid/view/View;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIndicatorColor:I

.field private mIndicatorHeight:F

.field private mIndicatorTextColor:I

.field private mIndicatorTextSize:F

.field private mIndicatorWidth:F

.field private mPaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field private mProgress:Ljava/lang/String;

.field private mTextHeight:F


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/warkiz/widget/CircleBubbleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;FIILjava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p1, p0, Lcom/warkiz/widget/CircleBubbleView;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/warkiz/widget/CircleBubbleView;->mIndicatorTextSize:F

    iput p3, p0, Lcom/warkiz/widget/CircleBubbleView;->mIndicatorTextColor:I

    iput p4, p0, Lcom/warkiz/widget/CircleBubbleView;->mIndicatorColor:I

    invoke-direct {p0, p5}, Lcom/warkiz/widget/CircleBubbleView;->init(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/warkiz/widget/CircleBubbleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string v0, "100"

    invoke-direct {p0, v0}, Lcom/warkiz/widget/CircleBubbleView;->init(Ljava/lang/String;)V

    return-void
.end method

.method private init(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/warkiz/widget/CircleBubbleView;->mPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/warkiz/widget/CircleBubbleView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/warkiz/widget/CircleBubbleView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/warkiz/widget/CircleBubbleView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lcom/warkiz/widget/CircleBubbleView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/warkiz/widget/CircleBubbleView;->mIndicatorTextSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/warkiz/widget/CircleBubbleView;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, p1, v2, v3, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/warkiz/widget/CircleBubbleView;->mContext:Landroid/content/Context;

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v2, v3}, Lcom/warkiz/widget/SizeUtils;->dp2px(Landroid/content/Context;F)I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, p0, Lcom/warkiz/widget/CircleBubbleView;->mIndicatorWidth:F

    iget-object v1, p0, Lcom/warkiz/widget/CircleBubbleView;->mContext:Landroid/content/Context;

    const/high16 v2, 0x42100000    # 36.0f

    invoke-static {v1, v2}, Lcom/warkiz/widget/SizeUtils;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iget v2, p0, Lcom/warkiz/widget/CircleBubbleView;->mIndicatorWidth:F

    int-to-float v3, v1

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    int-to-float v1, v1

    iput v1, p0, Lcom/warkiz/widget/CircleBubbleView;->mIndicatorWidth:F

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/warkiz/widget/CircleBubbleView;->mTextHeight:F

    iget v0, p0, Lcom/warkiz/widget/CircleBubbleView;->mIndicatorWidth:F

    const v1, 0x3f99999a    # 1.2f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/warkiz/widget/CircleBubbleView;->mIndicatorHeight:F

    invoke-direct {p0}, Lcom/warkiz/widget/CircleBubbleView;->initPath()V

    return-void
.end method

.method private initPath()V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/warkiz/widget/CircleBubbleView;->mPath:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/warkiz/widget/CircleBubbleView;->mIndicatorWidth:F

    iget v2, p0, Lcom/warkiz/widget/CircleBubbleView;->mIndicatorWidth:F

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v1, p0, Lcom/warkiz/widget/CircleBubbleView;->mPath:Landroid/graphics/Path;

    const/high16 v2, 0x43070000    # 135.0f

    const/high16 v3, 0x43870000    # 270.0f

    invoke-virtual {v1, v0, v2, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    iget-object v0, p0, Lcom/warkiz/widget/CircleBubbleView;->mPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/warkiz/widget/CircleBubbleView;->mIndicatorWidth:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v2, p0, Lcom/warkiz/widget/CircleBubbleView;->mIndicatorHeight:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/warkiz/widget/CircleBubbleView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    const/high16 v3, 0x40000000    # 2.0f

    iget-object v0, p0, Lcom/warkiz/widget/CircleBubbleView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/warkiz/widget/CircleBubbleView;->mIndicatorColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/warkiz/widget/CircleBubbleView;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/warkiz/widget/CircleBubbleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/warkiz/widget/CircleBubbleView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/warkiz/widget/CircleBubbleView;->mIndicatorTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/warkiz/widget/CircleBubbleView;->mProgress:Ljava/lang/String;

    iget v1, p0, Lcom/warkiz/widget/CircleBubbleView;->mIndicatorWidth:F

    div-float/2addr v1, v3

    iget v2, p0, Lcom/warkiz/widget/CircleBubbleView;->mIndicatorHeight:F

    div-float/2addr v2, v3

    iget v3, p0, Lcom/warkiz/widget/CircleBubbleView;->mTextHeight:F

    const/high16 v4, 0x40800000    # 4.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/warkiz/widget/CircleBubbleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    iget v0, p0, Lcom/warkiz/widget/CircleBubbleView;->mIndicatorWidth:F

    float-to-int v0, v0

    iget v1, p0, Lcom/warkiz/widget/CircleBubbleView;->mIndicatorHeight:F

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/warkiz/widget/CircleBubbleView;->setMeasuredDimension(II)V

    return-void
.end method

.method setProgress(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/warkiz/widget/CircleBubbleView;->mProgress:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/warkiz/widget/CircleBubbleView;->invalidate()V

    return-void
.end method
