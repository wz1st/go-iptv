.class Landroid/support/v17/leanback/widget/MediaRowFocusView;
.super Landroid/view/View;


# instance fields
.field private final a:Landroid/graphics/Paint;

.field private final b:Landroid/graphics/RectF;

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/MediaRowFocusView;->b:Landroid/graphics/RectF;

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/MediaRowFocusView;->a(Landroid/content/Context;)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/MediaRowFocusView;->a:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/MediaRowFocusView;->b:Landroid/graphics/RectF;

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/MediaRowFocusView;->a(Landroid/content/Context;)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/MediaRowFocusView;->a:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/MediaRowFocusView;->b:Landroid/graphics/RectF;

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/MediaRowFocusView;->a(Landroid/content/Context;)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/MediaRowFocusView;->a:Landroid/graphics/Paint;

    return-void
.end method

.method private a(Landroid/content/Context;)Landroid/graphics/Paint;
    .locals 3

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroid/support/v17/leanback/a$b;->lb_playback_media_row_highlight_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-object v0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/MediaRowFocusView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/support/v17/leanback/widget/MediaRowFocusView;->c:I

    iget v0, p0, Landroid/support/v17/leanback/widget/MediaRowFocusView;->c:I

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/MediaRowFocusView;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Landroid/support/v17/leanback/widget/MediaRowFocusView;->b:Landroid/graphics/RectF;

    const/4 v2, 0x0

    neg-int v3, v0

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/MediaRowFocusView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/MediaRowFocusView;->getHeight()I

    move-result v5

    add-int/2addr v0, v5

    int-to-float v0, v0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/MediaRowFocusView;->b:Landroid/graphics/RectF;

    iget v1, p0, Landroid/support/v17/leanback/widget/MediaRowFocusView;->c:I

    int-to-float v1, v1

    iget v2, p0, Landroid/support/v17/leanback/widget/MediaRowFocusView;->c:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/support/v17/leanback/widget/MediaRowFocusView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method
