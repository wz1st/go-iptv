.class public Landroid/support/v17/leanback/widget/PagingIndicator$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/PagingIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field a:F

.field b:I

.field c:F

.field d:F

.field e:F

.field f:F

.field g:F

.field h:F

.field i:F

.field final synthetic j:Landroid/support/v17/leanback/widget/PagingIndicator;


# direct methods
.method public constructor <init>(Landroid/support/v17/leanback/widget/PagingIndicator;)V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    iput-object p1, p0, Landroid/support/v17/leanback/widget/PagingIndicator$a;->j:Landroid/support/v17/leanback/widget/PagingIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator$a;->h:F

    iget-object v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator$a;->j:Landroid/support/v17/leanback/widget/PagingIndicator;

    iget-boolean v1, v1, Landroid/support/v17/leanback/widget/PagingIndicator;->a:Z

    if-eqz v1, :cond_0

    :goto_0
    iput v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator$a;->i:F

    return-void

    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_0
.end method


# virtual methods
.method a()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator$a;->c:F

    iput v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator$a;->d:F

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator$a;->j:Landroid/support/v17/leanback/widget/PagingIndicator;

    iget v0, v0, Landroid/support/v17/leanback/widget/PagingIndicator;->d:I

    int-to-float v0, v0

    iput v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator$a;->e:F

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator$a;->j:Landroid/support/v17/leanback/widget/PagingIndicator;

    iget v0, v0, Landroid/support/v17/leanback/widget/PagingIndicator;->e:I

    int-to-float v0, v0

    iput v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator$a;->f:F

    iget v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator$a;->f:F

    iget-object v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator$a;->j:Landroid/support/v17/leanback/widget/PagingIndicator;

    iget v1, v1, Landroid/support/v17/leanback/widget/PagingIndicator;->m:F

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator$a;->g:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator$a;->a:F

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PagingIndicator$a;->c()V

    return-void
.end method

.method public a(F)V
    .locals 1

    iput p1, p0, Landroid/support/v17/leanback/widget/PagingIndicator$a;->a:F

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PagingIndicator$a;->c()V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator$a;->j:Landroid/support/v17/leanback/widget/PagingIndicator;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/PagingIndicator;->invalidate()V

    return-void
.end method

.method a(Landroid/graphics/Canvas;)V
    .locals 8

    iget v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator$a;->d:F

    iget v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator$a;->c:F

    add-float/2addr v0, v1

    iget-object v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator$a;->j:Landroid/support/v17/leanback/widget/PagingIndicator;

    iget v1, v1, Landroid/support/v17/leanback/widget/PagingIndicator;->f:I

    int-to-float v1, v1

    iget v2, p0, Landroid/support/v17/leanback/widget/PagingIndicator$a;->f:F

    iget-object v3, p0, Landroid/support/v17/leanback/widget/PagingIndicator$a;->j:Landroid/support/v17/leanback/widget/PagingIndicator;

    iget-object v3, v3, Landroid/support/v17/leanback/widget/PagingIndicator;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator$a;->a:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator$a;->j:Landroid/support/v17/leanback/widget/PagingIndicator;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/PagingIndicator;->i:Landroid/graphics/Paint;

    iget v2, p0, Landroid/support/v17/leanback/widget/PagingIndicator$a;->b:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator$a;->j:Landroid/support/v17/leanback/widget/PagingIndicator;

    iget v1, v1, Landroid/support/v17/leanback/widget/PagingIndicator;->f:I

    int-to-float v1, v1

    iget v2, p0, Landroid/support/v17/leanback/widget/PagingIndicator$a;->f:F

    iget-object v3, p0, Landroid/support/v17/leanback/widget/PagingIndicator$a;->j:Landroid/support/v17/leanback/widget/PagingIndicator;

    iget-object v3, v3, Landroid/support/v17/leanback/widget/PagingIndicator;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator$a;->j:Landroid/support/v17/leanback/widget/PagingIndicator;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/PagingIndicator;->j:Landroid/graphics/Bitmap;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/PagingIndicator$a;->j:Landroid/support/v17/leanback/widget/PagingIndicator;

    iget-object v2, v2, Landroid/support/v17/leanback/widget/PagingIndicator;->l:Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Landroid/support/v17/leanback/widget/PagingIndicator$a;->g:F

    sub-float v4, v0, v4

    float-to-int v4, v4

    iget-object v5, p0, Landroid/support/v17/leanback/widget/PagingIndicator$a;->j:Landroid/support/v17/leanback/widget/PagingIndicator;

    iget v5, v5, Landroid/support/v17/leanback/widget/PagingIndicator;->f:I

    int-to-float v5, v5

    iget v6, p0, Landroid/support/v17/leanback/widget/PagingIndicator$a;->g:F

    sub-float/2addr v5, v6

    float-to-int v5, v5

    iget v6, p0, Landroid/support/v17/leanback/widget/PagingIndicator$a;->g:F

    add-float/2addr v0, v6

    float-to-int v0, v0

    iget-object v6, p0, Landroid/support/v17/leanback/widget/PagingIndicator$a;->j:Landroid/support/v17/leanback/widget/PagingIndicator;

    iget v6, v6, Landroid/support/v17/leanback/widget/PagingIndicator;->f:I

    int-to-float v6, v6

    iget v7, p0, Landroid/support/v17/leanback/widget/PagingIndicator$a;->g:F

    add-float/2addr v6, v7

    float-to-int v6, v6

    invoke-direct {v3, v4, v5, v0, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator$a;->j:Landroid/support/v17/leanback/widget/PagingIndicator;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/PagingIndicator;->k:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method b()V
    .locals 3

    const/4 v2, 0x0

    iput v2, p0, Landroid/support/v17/leanback/widget/PagingIndicator$a;->c:F

    iput v2, p0, Landroid/support/v17/leanback/widget/PagingIndicator$a;->d:F

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator$a;->j:Landroid/support/v17/leanback/widget/PagingIndicator;

    iget v0, v0, Landroid/support/v17/leanback/widget/PagingIndicator;->b:I

    int-to-float v0, v0

    iput v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator$a;->e:F

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator$a;->j:Landroid/support/v17/leanback/widget/PagingIndicator;

    iget v0, v0, Landroid/support/v17/leanback/widget/PagingIndicator;->c:I

    int-to-float v0, v0

    iput v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator$a;->f:F

    iget v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator$a;->f:F

    iget-object v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator$a;->j:Landroid/support/v17/leanback/widget/PagingIndicator;

    iget v1, v1, Landroid/support/v17/leanback/widget/PagingIndicator;->m:F

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator$a;->g:F

    iput v2, p0, Landroid/support/v17/leanback/widget/PagingIndicator$a;->a:F

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PagingIndicator$a;->c()V

    return-void
.end method

.method public b(F)V
    .locals 2

    iget v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator$a;->h:F

    mul-float/2addr v0, p1

    iget v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator$a;->i:F

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator$a;->c:F

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator$a;->j:Landroid/support/v17/leanback/widget/PagingIndicator;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/PagingIndicator;->invalidate()V

    return-void
.end method

.method public c()V
    .locals 4

    const/high16 v0, 0x437f0000    # 255.0f

    iget v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator$a;->a:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator$a;->j:Landroid/support/v17/leanback/widget/PagingIndicator;

    iget v1, v1, Landroid/support/v17/leanback/widget/PagingIndicator;->g:I

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    iget-object v2, p0, Landroid/support/v17/leanback/widget/PagingIndicator$a;->j:Landroid/support/v17/leanback/widget/PagingIndicator;

    iget v2, v2, Landroid/support/v17/leanback/widget/PagingIndicator;->g:I

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v2

    iget-object v3, p0, Landroid/support/v17/leanback/widget/PagingIndicator$a;->j:Landroid/support/v17/leanback/widget/PagingIndicator;

    iget v3, v3, Landroid/support/v17/leanback/widget/PagingIndicator;->g:I

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator$a;->b:I

    return-void
.end method

.method public c(F)V
    .locals 2

    const/high16 v1, 0x40000000    # 2.0f

    iput p1, p0, Landroid/support/v17/leanback/widget/PagingIndicator$a;->e:F

    div-float v0, p1, v1

    iput v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator$a;->f:F

    div-float v0, p1, v1

    iget-object v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator$a;->j:Landroid/support/v17/leanback/widget/PagingIndicator;

    iget v1, v1, Landroid/support/v17/leanback/widget/PagingIndicator;->m:F

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator$a;->g:F

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator$a;->j:Landroid/support/v17/leanback/widget/PagingIndicator;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/PagingIndicator;->invalidate()V

    return-void
.end method

.method public d()F
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator$a;->a:F

    return v0
.end method

.method public e()F
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator$a;->c:F

    return v0
.end method

.method public f()F
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator$a;->e:F

    return v0
.end method

.method g()V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator$a;->j:Landroid/support/v17/leanback/widget/PagingIndicator;

    iget-boolean v0, v0, Landroid/support/v17/leanback/widget/PagingIndicator;->a:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    iput v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator$a;->i:F

    return-void

    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_0
.end method
