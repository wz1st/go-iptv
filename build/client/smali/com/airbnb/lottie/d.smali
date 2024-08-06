.class Lcom/airbnb/lottie/d;
.super Landroid/graphics/drawable/Drawable;


# instance fields
.field final a:Lcom/airbnb/lottie/n$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/n$a",
            "<",
            "Landroid/graphics/Path;",
            ">;"
        }
    .end annotation
.end field

.field final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/d;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/airbnb/lottie/n$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/n$a",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/airbnb/lottie/n$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/n$a",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/airbnb/lottie/n$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/n$a",
            "<",
            "Lcom/airbnb/lottie/ba;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/airbnb/lottie/n$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/n$a",
            "<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/airbnb/lottie/d;

.field private final h:Landroid/graphics/Paint;

.field private i:I

.field private final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/n",
            "<**>;>;"
        }
    .end annotation
.end field

.field private k:F

.field private l:Lcom/airbnb/lottie/bm;


# direct methods
.method constructor <init>(Landroid/graphics/drawable/Drawable$Callback;)V
    .locals 2

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Lcom/airbnb/lottie/d$1;

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/d$1;-><init>(Lcom/airbnb/lottie/d;)V

    iput-object v0, p0, Lcom/airbnb/lottie/d;->c:Lcom/airbnb/lottie/n$a;

    new-instance v0, Lcom/airbnb/lottie/d$2;

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/d$2;-><init>(Lcom/airbnb/lottie/d;)V

    iput-object v0, p0, Lcom/airbnb/lottie/d;->d:Lcom/airbnb/lottie/n$a;

    new-instance v0, Lcom/airbnb/lottie/d$3;

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/d$3;-><init>(Lcom/airbnb/lottie/d;)V

    iput-object v0, p0, Lcom/airbnb/lottie/d;->e:Lcom/airbnb/lottie/n$a;

    new-instance v0, Lcom/airbnb/lottie/d$4;

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/d$4;-><init>(Lcom/airbnb/lottie/d;)V

    iput-object v0, p0, Lcom/airbnb/lottie/d;->f:Lcom/airbnb/lottie/n$a;

    new-instance v0, Lcom/airbnb/lottie/d$5;

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/d$5;-><init>(Lcom/airbnb/lottie/d;)V

    iput-object v0, p0, Lcom/airbnb/lottie/d;->a:Lcom/airbnb/lottie/n$a;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/d;->b:Ljava/util/List;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/d;->h:Landroid/graphics/Paint;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/d;->j:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/airbnb/lottie/d;->k:F

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/d;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v0, p0, Lcom/airbnb/lottie/d;->h:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/airbnb/lottie/d;->h:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method


# virtual methods
.method a()I
    .locals 4

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v3, 0x437f0000    # 255.0f

    iget-object v0, p0, Lcom/airbnb/lottie/d;->l:Lcom/airbnb/lottie/bm;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/airbnb/lottie/d;->g:Lcom/airbnb/lottie/d;

    if-nez v2, :cond_1

    :goto_1
    mul-float/2addr v0, v1

    mul-float/2addr v0, v3

    float-to-int v0, v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/d;->l:Lcom/airbnb/lottie/bm;

    invoke-virtual {v0}, Lcom/airbnb/lottie/bm;->e()Lcom/airbnb/lottie/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/n;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v3

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/airbnb/lottie/d;->g:Lcom/airbnb/lottie/d;

    invoke-virtual {v1}, Lcom/airbnb/lottie/d;->getAlpha()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    goto :goto_1
.end method

.method a(Landroid/graphics/Canvas;)I
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    goto :goto_0
.end method

.method public a(F)V
    .locals 3

    const/4 v2, 0x0

    iput p1, p0, Lcom/airbnb/lottie/d;->k:F

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/airbnb/lottie/d;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/d;->j:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/n;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/n;->a(F)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/airbnb/lottie/d;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    iget-object v0, p0, Lcom/airbnb/lottie/d;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/d;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/d;->a(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method a(I)V
    .locals 1

    iput p1, p0, Lcom/airbnb/lottie/d;->i:I

    iget-object v0, p0, Lcom/airbnb/lottie/d;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lcom/airbnb/lottie/d;->invalidateSelf()V

    return-void
.end method

.method a(Landroid/graphics/Canvas;Lcom/airbnb/lottie/d;)V
    .locals 5

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/d;->l:Lcom/airbnb/lottie/bm;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/airbnb/lottie/d;->d()Lcom/airbnb/lottie/ak;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/ak;->k()F

    move-result v1

    iget-object v0, p2, Lcom/airbnb/lottie/d;->l:Lcom/airbnb/lottie/bm;

    invoke-virtual {v0}, Lcom/airbnb/lottie/bm;->b()Lcom/airbnb/lottie/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/n;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    iget v2, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_3

    :cond_2
    iget v2, v0, Landroid/graphics/PointF;->x:F

    mul-float/2addr v2, v1

    iget v0, v0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v0, v1

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_3
    iget-object v0, p2, Lcom/airbnb/lottie/d;->l:Lcom/airbnb/lottie/bm;

    invoke-virtual {v0}, Lcom/airbnb/lottie/bm;->d()Lcom/airbnb/lottie/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/n;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v2, v0, v3

    if-eqz v2, :cond_4

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    :cond_4
    iget-object v0, p2, Lcom/airbnb/lottie/d;->l:Lcom/airbnb/lottie/bm;

    invoke-virtual {v0}, Lcom/airbnb/lottie/bm;->c()Lcom/airbnb/lottie/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/n;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/ba;

    invoke-virtual {v0}, Lcom/airbnb/lottie/ba;->a()F

    move-result v2

    cmpl-float v2, v2, v4

    if-nez v2, :cond_5

    invoke-virtual {v0}, Lcom/airbnb/lottie/ba;->b()F

    move-result v2

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_6

    :cond_5
    invoke-virtual {v0}, Lcom/airbnb/lottie/ba;->a()F

    move-result v2

    invoke-virtual {v0}, Lcom/airbnb/lottie/ba;->b()F

    move-result v0

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->scale(FF)V

    :cond_6
    iget-object v0, p2, Lcom/airbnb/lottie/d;->l:Lcom/airbnb/lottie/bm;

    invoke-virtual {v0}, Lcom/airbnb/lottie/bm;->a()Lcom/airbnb/lottie/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/n;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_7

    iget v2, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    :cond_7
    iget v2, v0, Landroid/graphics/PointF;->x:F

    neg-float v2, v2

    mul-float/2addr v2, v1

    iget v0, v0, Landroid/graphics/PointF;->y:F

    neg-float v0, v0

    mul-float/2addr v0, v1

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    goto/16 :goto_0
.end method

.method a(Lcom/airbnb/lottie/bm;)V
    .locals 6

    iput-object p1, p0, Lcom/airbnb/lottie/d;->l:Lcom/airbnb/lottie/bm;

    invoke-virtual {p1}, Lcom/airbnb/lottie/bm;->a()Lcom/airbnb/lottie/n;

    move-result-object v0

    invoke-virtual {p1}, Lcom/airbnb/lottie/bm;->b()Lcom/airbnb/lottie/n;

    move-result-object v1

    invoke-virtual {p1}, Lcom/airbnb/lottie/bm;->c()Lcom/airbnb/lottie/n;

    move-result-object v2

    invoke-virtual {p1}, Lcom/airbnb/lottie/bm;->d()Lcom/airbnb/lottie/n;

    move-result-object v3

    invoke-virtual {p1}, Lcom/airbnb/lottie/bm;->e()Lcom/airbnb/lottie/n;

    move-result-object v4

    iget-object v5, p0, Lcom/airbnb/lottie/d;->f:Lcom/airbnb/lottie/n$a;

    invoke-virtual {v0, v5}, Lcom/airbnb/lottie/n;->a(Lcom/airbnb/lottie/n$a;)V

    iget-object v5, p0, Lcom/airbnb/lottie/d;->f:Lcom/airbnb/lottie/n$a;

    invoke-virtual {v1, v5}, Lcom/airbnb/lottie/n;->a(Lcom/airbnb/lottie/n$a;)V

    iget-object v5, p0, Lcom/airbnb/lottie/d;->e:Lcom/airbnb/lottie/n$a;

    invoke-virtual {v2, v5}, Lcom/airbnb/lottie/n;->a(Lcom/airbnb/lottie/n$a;)V

    iget-object v5, p0, Lcom/airbnb/lottie/d;->d:Lcom/airbnb/lottie/n$a;

    invoke-virtual {v3, v5}, Lcom/airbnb/lottie/n;->a(Lcom/airbnb/lottie/n$a;)V

    iget-object v5, p0, Lcom/airbnb/lottie/d;->c:Lcom/airbnb/lottie/n$a;

    invoke-virtual {v4, v5}, Lcom/airbnb/lottie/n;->a(Lcom/airbnb/lottie/n$a;)V

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/d;->a(Lcom/airbnb/lottie/n;)V

    invoke-virtual {p0, v1}, Lcom/airbnb/lottie/d;->a(Lcom/airbnb/lottie/n;)V

    invoke-virtual {p0, v2}, Lcom/airbnb/lottie/d;->a(Lcom/airbnb/lottie/n;)V

    invoke-virtual {p0, v3}, Lcom/airbnb/lottie/d;->a(Lcom/airbnb/lottie/n;)V

    invoke-virtual {p0, v4}, Lcom/airbnb/lottie/d;->a(Lcom/airbnb/lottie/n;)V

    invoke-virtual {p0}, Lcom/airbnb/lottie/d;->invalidateSelf()V

    return-void
.end method

.method a(Lcom/airbnb/lottie/d;)V
    .locals 1

    iput-object p0, p1, Lcom/airbnb/lottie/d;->g:Lcom/airbnb/lottie/d;

    iget-object v0, p0, Lcom/airbnb/lottie/d;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/airbnb/lottie/d;->k:F

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/d;->a(F)V

    invoke-virtual {p0}, Lcom/airbnb/lottie/d;->invalidateSelf()V

    return-void
.end method

.method a(Lcom/airbnb/lottie/n;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/n",
            "<**>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/airbnb/lottie/d;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method b()V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/d;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Lcom/airbnb/lottie/d;->invalidateSelf()V

    return-void
.end method

.method b(Lcom/airbnb/lottie/n;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/n",
            "<**>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/airbnb/lottie/d;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method c()F
    .locals 1

    iget v0, p0, Lcom/airbnb/lottie/d;->k:F

    return v0
.end method

.method d()Lcom/airbnb/lottie/ak;
    .locals 1

    invoke-virtual {p0}, Lcom/airbnb/lottie/d;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    instance-of v0, v0, Lcom/airbnb/lottie/ak;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/d;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/ak;

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v6

    invoke-virtual {p0, p1, p0}, Lcom/airbnb/lottie/d;->a(Landroid/graphics/Canvas;Lcom/airbnb/lottie/d;)V

    iget v0, p0, Lcom/airbnb/lottie/d;->i:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/d;->l:Lcom/airbnb/lottie/bm;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/airbnb/lottie/d;->l:Lcom/airbnb/lottie/bm;

    invoke-virtual {v0}, Lcom/airbnb/lottie/bm;->e()Lcom/airbnb/lottie/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/n;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/2addr v0, v2

    div-int/lit16 v0, v0, 0xff

    :goto_0
    iget-object v2, p0, Lcom/airbnb/lottie/d;->h:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/airbnb/lottie/d;->d()Lcom/airbnb/lottie/ak;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/ak;->k()F

    move-result v0

    invoke-virtual {p0}, Lcom/airbnb/lottie/d;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    mul-float v3, v2, v0

    invoke-virtual {p0}, Lcom/airbnb/lottie/d;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float v4, v2, v0

    iget-object v5, p0, Lcom/airbnb/lottie/d;->h:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/airbnb/lottie/d;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/airbnb/lottie/d;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/d;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/d;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public getAlpha()I
    .locals 1

    invoke-virtual {p0}, Lcom/airbnb/lottie/d;->a()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "This shouldn\'t be used."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
