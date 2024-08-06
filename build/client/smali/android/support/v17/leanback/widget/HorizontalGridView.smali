.class public Landroid/support/v17/leanback/widget/HorizontalGridView;
.super Landroid/support/v17/leanback/widget/a;


# instance fields
.field private P:Z

.field private Q:Z

.field private R:Landroid/graphics/Paint;

.field private S:Landroid/graphics/Bitmap;

.field private T:Landroid/graphics/LinearGradient;

.field private U:I

.field private V:I

.field private W:Landroid/graphics/Bitmap;

.field private aa:Landroid/graphics/LinearGradient;

.field private ab:I

.field private ac:I

.field private ad:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v17/leanback/widget/HorizontalGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v17/leanback/widget/HorizontalGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v17/leanback/widget/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->R:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->ad:Landroid/graphics/Rect;

    iget-object v0, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->a:Landroid/support/v17/leanback/widget/f;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/f;->a(I)V

    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/widget/HorizontalGridView;->b(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private A()Z
    .locals 6

    const/4 v0, 0x0

    iget-boolean v1, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->P:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getChildCount()I

    move-result v2

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->a:Landroid/support/v17/leanback/widget/f;

    invoke-virtual {v4, v3}, Landroid/support/v17/leanback/widget/f;->a(Landroid/view/View;)I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getPaddingLeft()I

    move-result v4

    iget v5, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->V:I

    sub-int/2addr v4, v5

    if-ge v3, v4, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private B()Z
    .locals 5

    const/4 v0, 0x0

    iget-boolean v1, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->Q:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_0

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->a:Landroid/support/v17/leanback/widget/f;

    invoke-virtual {v3, v2}, Landroid/support/v17/leanback/widget/f;->b(Landroid/view/View;)I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->ac:I

    add-int/2addr v3, v4

    if-le v2, v3, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method private C()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->P:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->Q:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0, v2}, Landroid/support/v17/leanback/widget/HorizontalGridView;->setLayerType(ILandroid/graphics/Paint;)V

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/HorizontalGridView;->setWillNotDraw(Z)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, v1, v2}, Landroid/support/v17/leanback/widget/HorizontalGridView;->setLayerType(ILandroid/graphics/Paint;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->setWillNotDraw(Z)V

    goto :goto_0
.end method

.method private getTempBitmapHigh()Landroid/graphics/Bitmap;
    .locals 3

    iget-object v0, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->W:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->W:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->ab:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->W:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_1

    :cond_0
    iget v0, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->ab:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->W:Landroid/graphics/Bitmap;

    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->W:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private getTempBitmapLow()Landroid/graphics/Bitmap;
    .locals 3

    iget-object v0, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->S:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->S:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->U:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->S:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_1

    :cond_0
    iget v0, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->U:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->S:Landroid/graphics/Bitmap;

    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->S:Landroid/graphics/Bitmap;

    return-object v0
.end method


# virtual methods
.method protected b(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/widget/HorizontalGridView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v0, Landroid/support/v17/leanback/a$l;->lbHorizontalGridView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->setRowHeight(Landroid/content/res/TypedArray;)V

    sget v1, Landroid/support/v17/leanback/a$l;->lbHorizontalGridView_numberOfRows:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/HorizontalGridView;->setNumRows(I)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->C()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->R:Landroid/graphics/Paint;

    iget-object v0, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->R:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 12

    const/4 v11, 0x0

    const/4 v1, 0x0

    const/4 v7, 0x0

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->A()Z

    move-result v2

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->B()Z

    move-result v9

    if-nez v2, :cond_0

    iput-object v11, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->S:Landroid/graphics/Bitmap;

    :cond_0
    if-nez v9, :cond_1

    iput-object v11, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->W:Landroid/graphics/Bitmap;

    :cond_1
    if-nez v2, :cond_3

    if-nez v9, :cond_3

    invoke-super {p0, p1}, Landroid/support/v17/leanback/widget/a;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->P:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getPaddingLeft()I

    move-result v0

    iget v3, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->V:I

    sub-int/2addr v0, v3

    iget v3, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->U:I

    sub-int/2addr v0, v3

    move v6, v0

    :goto_1
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->Q:Z

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v0, v3

    iget v3, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->ac:I

    add-int/2addr v0, v3

    iget v3, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->ab:I

    add-int/2addr v0, v3

    move v8, v0

    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->P:Z

    if-eqz v0, :cond_7

    iget v0, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->U:I

    :goto_3
    add-int v4, v6, v0

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->Q:Z

    if-eqz v0, :cond_8

    iget v0, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->ab:I

    :goto_4
    sub-int v0, v8, v0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getHeight()I

    move-result v5

    invoke-virtual {p1, v4, v7, v0, v5}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    invoke-super {p0, p1}, Landroid/support/v17/leanback/widget/a;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iget-object v3, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->ad:Landroid/graphics/Rect;

    iput v7, v3, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->ad:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getHeight()I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    if-eqz v2, :cond_4

    iget v2, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->U:I

    if-lez v2, :cond_4

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getTempBitmapLow()Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-virtual {v10, v7}, Landroid/graphics/Bitmap;->eraseColor(I)V

    invoke-virtual {v0, v10}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    move-result v2

    iget v3, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->U:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getHeight()I

    move-result v4

    invoke-virtual {v0, v7, v7, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    neg-int v3, v6

    int-to-float v3, v3

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-super {p0, v0}, Landroid/support/v17/leanback/widget/a;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    iget-object v2, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->R:Landroid/graphics/Paint;

    iget-object v3, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->T:Landroid/graphics/LinearGradient;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget v2, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->U:I

    int-to-float v3, v2

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getHeight()I

    move-result v2

    int-to-float v4, v2

    iget-object v5, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->R:Landroid/graphics/Paint;

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v2, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->ad:Landroid/graphics/Rect;

    iput v7, v2, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->ad:Landroid/graphics/Rect;

    iget v3, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->U:I

    iput v3, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v6

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v2, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->ad:Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->ad:Landroid/graphics/Rect;

    invoke-virtual {p1, v10, v2, v3, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    neg-int v2, v6

    int-to-float v2, v2

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_4
    if-eqz v9, :cond_2

    iget v2, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->ab:I

    if-lez v2, :cond_2

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getTempBitmapHigh()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/graphics/Bitmap;->eraseColor(I)V

    invoke-virtual {v0, v6}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    move-result v2

    iget v3, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->ab:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getHeight()I

    move-result v4

    invoke-virtual {v0, v7, v7, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    iget v3, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->ab:I

    sub-int v3, v8, v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-super {p0, v0}, Landroid/support/v17/leanback/widget/a;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    iget-object v2, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->R:Landroid/graphics/Paint;

    iget-object v3, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->aa:Landroid/graphics/LinearGradient;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget v2, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->ab:I

    int-to-float v3, v2

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getHeight()I

    move-result v2

    int-to-float v4, v2

    iget-object v5, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->R:Landroid/graphics/Paint;

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->ad:Landroid/graphics/Rect;

    iput v7, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->ad:Landroid/graphics/Rect;

    iget v2, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->ab:I

    iput v2, v0, Landroid/graphics/Rect;->right:I

    iget v0, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->ab:I

    sub-int v0, v8, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->ad:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->ad:Landroid/graphics/Rect;

    invoke-virtual {p1, v6, v0, v2, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget v0, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->ab:I

    sub-int v0, v8, v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto/16 :goto_0

    :cond_5
    move v6, v7

    goto/16 :goto_1

    :cond_6
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getWidth()I

    move-result v0

    move v8, v0

    goto/16 :goto_2

    :cond_7
    move v0, v7

    goto/16 :goto_3

    :cond_8
    move v0, v7

    goto/16 :goto_4
.end method

.method public final getFadingLeftEdge()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->P:Z

    return v0
.end method

.method public final getFadingLeftEdgeLength()I
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->U:I

    return v0
.end method

.method public final getFadingLeftEdgeOffset()I
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->V:I

    return v0
.end method

.method public final getFadingRightEdge()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->Q:Z

    return v0
.end method

.method public final getFadingRightEdgeLength()I
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->ab:I

    return v0
.end method

.method public final getFadingRightEdgeOffset()I
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->ac:I

    return v0
.end method

.method public final setFadingLeftEdge(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->P:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->P:Z

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->P:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->S:Landroid/graphics/Bitmap;

    :cond_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->invalidate()V

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->C()V

    :cond_1
    return-void
.end method

.method public final setFadingLeftEdgeLength(I)V
    .locals 8

    const/4 v1, 0x0

    iget v0, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->U:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->U:I

    iget v0, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->U:I

    if-eqz v0, :cond_1

    new-instance v0, Landroid/graphics/LinearGradient;

    iget v2, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->U:I

    int-to-float v3, v2

    const/4 v5, 0x0

    const/high16 v6, -0x1000000

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v4, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->T:Landroid/graphics/LinearGradient;

    :goto_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->invalidate()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->T:Landroid/graphics/LinearGradient;

    goto :goto_0
.end method

.method public final setFadingLeftEdgeOffset(I)V
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->V:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->V:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->invalidate()V

    :cond_0
    return-void
.end method

.method public final setFadingRightEdge(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->Q:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->Q:Z

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->Q:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->W:Landroid/graphics/Bitmap;

    :cond_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->invalidate()V

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->C()V

    :cond_1
    return-void
.end method

.method public final setFadingRightEdgeLength(I)V
    .locals 8

    const/4 v1, 0x0

    iget v0, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->ab:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->ab:I

    iget v0, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->ab:I

    if-eqz v0, :cond_1

    new-instance v0, Landroid/graphics/LinearGradient;

    iget v2, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->ab:I

    int-to-float v3, v2

    const/high16 v5, -0x1000000

    const/4 v6, 0x0

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v4, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->aa:Landroid/graphics/LinearGradient;

    :goto_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->invalidate()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->aa:Landroid/graphics/LinearGradient;

    goto :goto_0
.end method

.method public final setFadingRightEdgeOffset(I)V
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->ac:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->ac:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setNumRows(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->a:Landroid/support/v17/leanback/widget/f;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/f;->h(I)V

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->requestLayout()V

    return-void
.end method

.method public setRowHeight(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->a:Landroid/support/v17/leanback/widget/f;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/f;->i(I)V

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->requestLayout()V

    return-void
.end method

.method setRowHeight(Landroid/content/res/TypedArray;)V
    .locals 2

    sget v0, Landroid/support/v17/leanback/a$l;->lbHorizontalGridView_rowHeight:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    if-eqz v0, :cond_0

    sget v0, Landroid/support/v17/leanback/a$l;->lbHorizontalGridView_rowHeight:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->setRowHeight(I)V

    :cond_0
    return-void
.end method
