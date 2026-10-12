.class Lcom/scwang/smartrefresh/header/a/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scwang/smartrefresh/header/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final a:Landroid/graphics/RectF;

.field final b:Landroid/graphics/Paint;

.field final c:Landroid/graphics/Paint;

.field d:F

.field e:F

.field f:F

.field g:F

.field h:F

.field i:[I

.field j:I

.field k:F

.field l:F

.field m:F

.field n:Z

.field o:Landroid/graphics/Path;

.field p:F

.field q:D

.field r:I

.field s:I

.field t:I

.field final synthetic u:Lcom/scwang/smartrefresh/header/a/a;


# direct methods
.method constructor <init>(Lcom/scwang/smartrefresh/header/a/a;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/scwang/smartrefresh/header/a/a$a;->u:Lcom/scwang/smartrefresh/header/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/scwang/smartrefresh/header/a/a$a;->a:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/scwang/smartrefresh/header/a/a$a;->b:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/scwang/smartrefresh/header/a/a$a;->c:Landroid/graphics/Paint;

    iput v1, p0, Lcom/scwang/smartrefresh/header/a/a$a;->d:F

    iput v1, p0, Lcom/scwang/smartrefresh/header/a/a$a;->e:F

    iput v1, p0, Lcom/scwang/smartrefresh/header/a/a$a;->f:F

    const/high16 v0, 0x40a00000    # 5.0f

    iput v0, p0, Lcom/scwang/smartrefresh/header/a/a$a;->g:F

    const/high16 v0, 0x40200000    # 2.5f

    iput v0, p0, Lcom/scwang/smartrefresh/header/a/a$a;->h:F

    iget-object v0, p0, Lcom/scwang/smartrefresh/header/a/a$a;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Lcom/scwang/smartrefresh/header/a/a$a;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/scwang/smartrefresh/header/a/a$a;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/scwang/smartrefresh/header/a/a$a;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/scwang/smartrefresh/header/a/a$a;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;FFLandroid/graphics/Rect;)V
    .locals 10

    const-wide/16 v8, 0x0

    const/4 v6, 0x0

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/header/a/a$a;->n:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/scwang/smartrefresh/header/a/a$a;->o:Landroid/graphics/Path;

    if-nez v0, :cond_1

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/scwang/smartrefresh/header/a/a$a;->o:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/scwang/smartrefresh/header/a/a$a;->o:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    :goto_0
    iget v0, p0, Lcom/scwang/smartrefresh/header/a/a$a;->h:F

    float-to-int v0, v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/scwang/smartrefresh/header/a/a$a;->p:F

    mul-float/2addr v0, v1

    iget-wide v2, p0, Lcom/scwang/smartrefresh/header/a/a$a;->q:D

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    invoke-virtual {p4}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v1

    float-to-double v4, v1

    add-double/2addr v2, v4

    double-to-float v1, v2

    iget-wide v2, p0, Lcom/scwang/smartrefresh/header/a/a$a;->q:D

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    invoke-virtual {p4}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v4

    float-to-double v4, v4

    add-double/2addr v2, v4

    double-to-float v2, v2

    iget-object v3, p0, Lcom/scwang/smartrefresh/header/a/a$a;->o:Landroid/graphics/Path;

    invoke-virtual {v3, v6, v6}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v3, p0, Lcom/scwang/smartrefresh/header/a/a$a;->o:Landroid/graphics/Path;

    iget v4, p0, Lcom/scwang/smartrefresh/header/a/a$a;->r:I

    int-to-float v4, v4

    iget v5, p0, Lcom/scwang/smartrefresh/header/a/a$a;->p:F

    mul-float/2addr v4, v5

    invoke-virtual {v3, v4, v6}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v3, p0, Lcom/scwang/smartrefresh/header/a/a$a;->o:Landroid/graphics/Path;

    iget v4, p0, Lcom/scwang/smartrefresh/header/a/a$a;->r:I

    int-to-float v4, v4

    iget v5, p0, Lcom/scwang/smartrefresh/header/a/a$a;->p:F

    mul-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    iget v5, p0, Lcom/scwang/smartrefresh/header/a/a$a;->s:I

    int-to-float v5, v5

    iget v6, p0, Lcom/scwang/smartrefresh/header/a/a$a;->p:F

    mul-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v3, p0, Lcom/scwang/smartrefresh/header/a/a$a;->o:Landroid/graphics/Path;

    sub-float v0, v1, v0

    invoke-virtual {v3, v0, v2}, Landroid/graphics/Path;->offset(FF)V

    iget-object v0, p0, Lcom/scwang/smartrefresh/header/a/a$a;->o:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    iget-object v0, p0, Lcom/scwang/smartrefresh/header/a/a$a;->c:Landroid/graphics/Paint;

    iget v1, p0, Lcom/scwang/smartrefresh/header/a/a$a;->t:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    add-float v0, p2, p3

    const/high16 v1, 0x40a00000    # 5.0f

    sub-float/2addr v0, v1

    invoke-virtual {p4}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v1

    invoke-virtual {p4}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v0, p0, Lcom/scwang/smartrefresh/header/a/a$a;->o:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/scwang/smartrefresh/header/a/a$a;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/a/a$a;->o:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    goto :goto_0
.end method

.method private f()I
    .locals 2

    iget v0, p0, Lcom/scwang/smartrefresh/header/a/a$a;->j:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/scwang/smartrefresh/header/a/a$a;->i:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public a()I
    .locals 2

    iget-object v0, p0, Lcom/scwang/smartrefresh/header/a/a$a;->i:[I

    invoke-direct {p0}, Lcom/scwang/smartrefresh/header/a/a$a;->f()I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method public a(I)V
    .locals 2

    iput p1, p0, Lcom/scwang/smartrefresh/header/a/a$a;->j:I

    iget-object v0, p0, Lcom/scwang/smartrefresh/header/a/a$a;->i:[I

    iget v1, p0, Lcom/scwang/smartrefresh/header/a/a$a;->j:I

    aget v0, v0, v1

    iput v0, p0, Lcom/scwang/smartrefresh/header/a/a$a;->t:I

    return-void
.end method

.method public a(II)V
    .locals 7

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    iget-wide v2, p0, Lcom/scwang/smartrefresh/header/a/a$a;->q:D

    const-wide/16 v4, 0x0

    cmpg-double v1, v2, v4

    if-lez v1, :cond_0

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/scwang/smartrefresh/header/a/a$a;->g:F

    div-float/2addr v0, v6

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-float v0, v0

    :goto_0
    iput v0, p0, Lcom/scwang/smartrefresh/header/a/a$a;->h:F

    return-void

    :cond_1
    div-float/2addr v0, v6

    float-to-double v0, v0

    iget-wide v2, p0, Lcom/scwang/smartrefresh/header/a/a$a;->q:D

    sub-double/2addr v0, v2

    double-to-float v0, v0

    goto :goto_0
.end method

.method public a(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 6

    const/high16 v4, 0x43b40000    # 360.0f

    iget-object v1, p0, Lcom/scwang/smartrefresh/header/a/a$a;->a:Landroid/graphics/RectF;

    invoke-virtual {v1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget v0, p0, Lcom/scwang/smartrefresh/header/a/a$a;->h:F

    iget v2, p0, Lcom/scwang/smartrefresh/header/a/a$a;->h:F

    invoke-virtual {v1, v0, v2}, Landroid/graphics/RectF;->inset(FF)V

    iget v0, p0, Lcom/scwang/smartrefresh/header/a/a$a;->d:F

    iget v2, p0, Lcom/scwang/smartrefresh/header/a/a$a;->f:F

    add-float/2addr v0, v2

    mul-float v2, v0, v4

    iget v0, p0, Lcom/scwang/smartrefresh/header/a/a$a;->e:F

    iget v3, p0, Lcom/scwang/smartrefresh/header/a/a$a;->f:F

    add-float/2addr v0, v3

    mul-float/2addr v0, v4

    sub-float v3, v0, v2

    const/4 v0, 0x0

    cmpl-float v0, v3, v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/scwang/smartrefresh/header/a/a$a;->b:Landroid/graphics/Paint;

    iget v4, p0, Lcom/scwang/smartrefresh/header/a/a$a;->t:I

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/scwang/smartrefresh/header/a/a$a;->b:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :cond_0
    invoke-direct {p0, p1, v2, v3, p2}, Lcom/scwang/smartrefresh/header/a/a$a;->a(Landroid/graphics/Canvas;FFLandroid/graphics/Rect;)V

    return-void
.end method

.method public b()V
    .locals 1

    invoke-direct {p0}, Lcom/scwang/smartrefresh/header/a/a$a;->f()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/header/a/a$a;->a(I)V

    return-void
.end method

.method public c()I
    .locals 2

    iget-object v0, p0, Lcom/scwang/smartrefresh/header/a/a$a;->i:[I

    iget v1, p0, Lcom/scwang/smartrefresh/header/a/a$a;->j:I

    aget v0, v0, v1

    return v0
.end method

.method public d()V
    .locals 1

    iget v0, p0, Lcom/scwang/smartrefresh/header/a/a$a;->d:F

    iput v0, p0, Lcom/scwang/smartrefresh/header/a/a$a;->k:F

    iget v0, p0, Lcom/scwang/smartrefresh/header/a/a$a;->e:F

    iput v0, p0, Lcom/scwang/smartrefresh/header/a/a$a;->l:F

    iget v0, p0, Lcom/scwang/smartrefresh/header/a/a$a;->f:F

    iput v0, p0, Lcom/scwang/smartrefresh/header/a/a$a;->m:F

    return-void
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/scwang/smartrefresh/header/a/a$a;->k:F

    iput v0, p0, Lcom/scwang/smartrefresh/header/a/a$a;->l:F

    iput v0, p0, Lcom/scwang/smartrefresh/header/a/a$a;->m:F

    iput v0, p0, Lcom/scwang/smartrefresh/header/a/a$a;->d:F

    iput v0, p0, Lcom/scwang/smartrefresh/header/a/a$a;->e:F

    iput v0, p0, Lcom/scwang/smartrefresh/header/a/a$a;->f:F

    return-void
.end method
