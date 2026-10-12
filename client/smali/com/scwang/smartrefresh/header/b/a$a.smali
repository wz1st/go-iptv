.class public Lcom/scwang/smartrefresh/header/b/a$a;
.super Landroid/graphics/drawable/shapes/OvalShape;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scwang/smartrefresh/header/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "a"
.end annotation


# instance fields
.field protected a:Landroid/graphics/RadialGradient;

.field protected b:Landroid/graphics/Paint;

.field final synthetic c:Lcom/scwang/smartrefresh/header/b/a;


# direct methods
.method protected constructor <init>(Lcom/scwang/smartrefresh/header/b/a;I)V
    .locals 1

    iput-object p1, p0, Lcom/scwang/smartrefresh/header/b/a$a;->c:Lcom/scwang/smartrefresh/header/b/a;

    invoke-direct {p0}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/scwang/smartrefresh/header/b/a$a;->b:Landroid/graphics/Paint;

    iput p2, p1, Lcom/scwang/smartrefresh/header/b/a;->a:I

    invoke-super {p0}, Landroid/graphics/drawable/shapes/OvalShape;->rect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/header/b/a$a;->a(I)V

    return-void
.end method


# virtual methods
.method protected a(I)V
    .locals 7

    const/high16 v3, 0x40000000    # 2.0f

    new-instance v0, Landroid/graphics/RadialGradient;

    int-to-float v1, p1

    div-float/2addr v1, v3

    int-to-float v2, p1

    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/scwang/smartrefresh/header/b/a$a;->c:Lcom/scwang/smartrefresh/header/b/a;

    iget v3, v3, Lcom/scwang/smartrefresh/header/b/a;->a:I

    int-to-float v3, v3

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    const/4 v5, 0x0

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/scwang/smartrefresh/header/b/a$a;->a:Landroid/graphics/RadialGradient;

    iget-object v0, p0, Lcom/scwang/smartrefresh/header/b/a$a;->b:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/scwang/smartrefresh/header/b/a$a;->a:Landroid/graphics/RadialGradient;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void

    nop

    :array_0
    .array-data 4
        0x3d000000    # 0.03125f
        0x0
    .end array-data
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 7

    const/high16 v6, 0x40000000    # 2.0f

    iget-object v0, p0, Lcom/scwang/smartrefresh/header/b/a$a;->c:Lcom/scwang/smartrefresh/header/b/a;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v2, v1

    div-float/2addr v2, v6

    int-to-float v3, v0

    div-float/2addr v3, v6

    int-to-float v4, v1

    div-float/2addr v4, v6

    iget-object v5, p0, Lcom/scwang/smartrefresh/header/b/a$a;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    int-to-float v2, v1

    div-float/2addr v2, v6

    int-to-float v0, v0

    div-float/2addr v0, v6

    int-to-float v1, v1

    div-float/2addr v1, v6

    iget-object v3, p0, Lcom/scwang/smartrefresh/header/b/a$a;->c:Lcom/scwang/smartrefresh/header/b/a;

    iget v3, v3, Lcom/scwang/smartrefresh/header/b/a;->a:I

    int-to-float v3, v3

    sub-float/2addr v1, v3

    invoke-virtual {p1, v2, v0, v1, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onResize(FF)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/shapes/OvalShape;->onResize(FF)V

    float-to-int v0, p1

    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/header/b/a$a;->a(I)V

    return-void
.end method
