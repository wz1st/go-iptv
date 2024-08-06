.class public Lcom/warkiz/widget/ArrowView;
.super Landroid/view/View;


# instance fields
.field private final mHeight:I

.field private final mPaint:Landroid/graphics/Paint;

.field private final mPath:Landroid/graphics/Path;

.field private final mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/warkiz/widget/ArrowView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/warkiz/widget/ArrowView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 v0, 0x41400000    # 12.0f

    invoke-static {p1, v0}, Lcom/warkiz/widget/SizeUtils;->dp2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/warkiz/widget/ArrowView;->mWidth:I

    const/high16 v0, 0x40e00000    # 7.0f

    invoke-static {p1, v0}, Lcom/warkiz/widget/SizeUtils;->dp2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/warkiz/widget/ArrowView;->mHeight:I

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/warkiz/widget/ArrowView;->mPath:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/warkiz/widget/ArrowView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, v2, v2}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lcom/warkiz/widget/ArrowView;->mPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/warkiz/widget/ArrowView;->mWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/warkiz/widget/ArrowView;->mPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/warkiz/widget/ArrowView;->mWidth:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v2, p0, Lcom/warkiz/widget/ArrowView;->mHeight:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/warkiz/widget/ArrowView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/warkiz/widget/ArrowView;->mPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/warkiz/widget/ArrowView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/warkiz/widget/ArrowView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, Lcom/warkiz/widget/ArrowView;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/warkiz/widget/ArrowView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    iget v0, p0, Lcom/warkiz/widget/ArrowView;->mWidth:I

    iget v1, p0, Lcom/warkiz/widget/ArrowView;->mHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/warkiz/widget/ArrowView;->setMeasuredDimension(II)V

    return-void
.end method

.method setColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/warkiz/widget/ArrowView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lcom/warkiz/widget/ArrowView;->invalidate()V

    return-void
.end method
