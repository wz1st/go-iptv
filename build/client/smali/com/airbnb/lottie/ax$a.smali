.class Lcom/airbnb/lottie/ax$a;
.super Lcom/airbnb/lottie/bf;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/ax;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final c:Lcom/airbnb/lottie/n$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/n$a",
            "<",
            "Landroid/graphics/PointF;",
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
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Landroid/graphics/Path;

.field private final g:Landroid/graphics/RectF;

.field private h:Lcom/airbnb/lottie/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/n",
            "<*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/airbnb/lottie/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/n",
            "<*",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/airbnb/lottie/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/n",
            "<*",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private k:Z


# direct methods
.method constructor <init>(Landroid/graphics/drawable/Drawable$Callback;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/airbnb/lottie/bf;-><init>(Landroid/graphics/drawable/Drawable$Callback;)V

    new-instance v0, Lcom/airbnb/lottie/ax$a$1;

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/ax$a$1;-><init>(Lcom/airbnb/lottie/ax$a;)V

    iput-object v0, p0, Lcom/airbnb/lottie/ax$a;->c:Lcom/airbnb/lottie/n$a;

    new-instance v0, Lcom/airbnb/lottie/ax$a$2;

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/ax$a$2;-><init>(Lcom/airbnb/lottie/ax$a;)V

    iput-object v0, p0, Lcom/airbnb/lottie/ax$a;->d:Lcom/airbnb/lottie/n$a;

    new-instance v0, Lcom/airbnb/lottie/ax$a$3;

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/ax$a$3;-><init>(Lcom/airbnb/lottie/ax$a;)V

    iput-object v0, p0, Lcom/airbnb/lottie/ax$a;->e:Lcom/airbnb/lottie/n$a;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/ax$a;->f:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/ax$a;->g:Landroid/graphics/RectF;

    new-instance v0, Lcom/airbnb/lottie/bl;

    iget-object v1, p0, Lcom/airbnb/lottie/ax$a;->f:Landroid/graphics/Path;

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/bl;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/ax$a;->d(Lcom/airbnb/lottie/n;)V

    return-void
.end method

.method static synthetic a(Lcom/airbnb/lottie/ax$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/airbnb/lottie/ax$a;->g()V

    return-void
.end method

.method private g()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/lottie/ax$a;->k:Z

    invoke-virtual {p0}, Lcom/airbnb/lottie/ax$a;->invalidateSelf()V

    return-void
.end method

.method private h()V
    .locals 14

    const/4 v13, 0x0

    const/high16 v12, 0x42b40000    # 90.0f

    const/4 v1, 0x0

    const/high16 v11, 0x40000000    # 2.0f

    iget-object v0, p0, Lcom/airbnb/lottie/ax$a;->f:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/airbnb/lottie/ax$a;->j:Lcom/airbnb/lottie/n;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/ax$a;->j:Lcom/airbnb/lottie/n;

    invoke-virtual {v0}, Lcom/airbnb/lottie/n;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    div-float v3, v2, v11

    iget v0, v0, Landroid/graphics/PointF;->y:F

    div-float v4, v0, v11

    iget-object v0, p0, Lcom/airbnb/lottie/ax$a;->h:Lcom/airbnb/lottie/n;

    if-nez v0, :cond_5

    move v0, v1

    :goto_1
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    cmpl-float v5, v0, v2

    if-lez v5, :cond_7

    :goto_2
    iget-object v0, p0, Lcom/airbnb/lottie/ax$a;->i:Lcom/airbnb/lottie/n;

    if-nez v0, :cond_6

    invoke-static {}, Lcom/airbnb/lottie/bn;->a()Landroid/graphics/PointF;

    move-result-object v0

    :goto_3
    iget-object v5, p0, Lcom/airbnb/lottie/ax$a;->f:Landroid/graphics/Path;

    iget v6, v0, Landroid/graphics/PointF;->x:F

    add-float/2addr v6, v3

    iget v7, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v7, v4

    add-float/2addr v7, v2

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v5, p0, Lcom/airbnb/lottie/ax$a;->f:Landroid/graphics/Path;

    iget v6, v0, Landroid/graphics/PointF;->x:F

    add-float/2addr v6, v3

    iget v7, v0, Landroid/graphics/PointF;->y:F

    add-float/2addr v7, v4

    sub-float/2addr v7, v2

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    cmpl-float v5, v2, v1

    if-lez v5, :cond_1

    iget-object v5, p0, Lcom/airbnb/lottie/ax$a;->g:Landroid/graphics/RectF;

    iget v6, v0, Landroid/graphics/PointF;->x:F

    add-float/2addr v6, v3

    mul-float v7, v11, v2

    sub-float/2addr v6, v7

    iget v7, v0, Landroid/graphics/PointF;->y:F

    add-float/2addr v7, v4

    mul-float v8, v11, v2

    sub-float/2addr v7, v8

    iget v8, v0, Landroid/graphics/PointF;->x:F

    add-float/2addr v8, v3

    iget v9, v0, Landroid/graphics/PointF;->y:F

    add-float/2addr v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v5, p0, Lcom/airbnb/lottie/ax$a;->f:Landroid/graphics/Path;

    iget-object v6, p0, Lcom/airbnb/lottie/ax$a;->g:Landroid/graphics/RectF;

    invoke-virtual {v5, v6, v1, v12, v13}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    :cond_1
    iget-object v5, p0, Lcom/airbnb/lottie/ax$a;->f:Landroid/graphics/Path;

    iget v6, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v6, v3

    add-float/2addr v6, v2

    iget v7, v0, Landroid/graphics/PointF;->y:F

    add-float/2addr v7, v4

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    cmpl-float v5, v2, v1

    if-lez v5, :cond_2

    iget-object v5, p0, Lcom/airbnb/lottie/ax$a;->g:Landroid/graphics/RectF;

    iget v6, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v6, v3

    iget v7, v0, Landroid/graphics/PointF;->y:F

    add-float/2addr v7, v4

    mul-float v8, v11, v2

    sub-float/2addr v7, v8

    iget v8, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v8, v3

    mul-float v9, v11, v2

    add-float/2addr v8, v9

    iget v9, v0, Landroid/graphics/PointF;->y:F

    add-float/2addr v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v5, p0, Lcom/airbnb/lottie/ax$a;->f:Landroid/graphics/Path;

    iget-object v6, p0, Lcom/airbnb/lottie/ax$a;->g:Landroid/graphics/RectF;

    invoke-virtual {v5, v6, v12, v12, v13}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    :cond_2
    iget-object v5, p0, Lcom/airbnb/lottie/ax$a;->f:Landroid/graphics/Path;

    iget v6, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v6, v3

    iget v7, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v7, v4

    mul-float v8, v11, v2

    add-float/2addr v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    cmpl-float v5, v2, v1

    if-lez v5, :cond_3

    iget-object v5, p0, Lcom/airbnb/lottie/ax$a;->g:Landroid/graphics/RectF;

    iget v6, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v6, v3

    iget v7, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v7, v4

    iget v8, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v8, v3

    mul-float v9, v11, v2

    add-float/2addr v8, v9

    iget v9, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v9, v4

    mul-float v10, v11, v2

    add-float/2addr v9, v10

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v5, p0, Lcom/airbnb/lottie/ax$a;->f:Landroid/graphics/Path;

    iget-object v6, p0, Lcom/airbnb/lottie/ax$a;->g:Landroid/graphics/RectF;

    const/high16 v7, 0x43340000    # 180.0f

    invoke-virtual {v5, v6, v7, v12, v13}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    :cond_3
    iget-object v5, p0, Lcom/airbnb/lottie/ax$a;->f:Landroid/graphics/Path;

    iget v6, v0, Landroid/graphics/PointF;->x:F

    add-float/2addr v6, v3

    mul-float v7, v11, v2

    sub-float/2addr v6, v7

    iget v7, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v7, v4

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    cmpl-float v1, v2, v1

    if-lez v1, :cond_4

    iget-object v1, p0, Lcom/airbnb/lottie/ax$a;->g:Landroid/graphics/RectF;

    iget v5, v0, Landroid/graphics/PointF;->x:F

    add-float/2addr v5, v3

    mul-float v6, v11, v2

    sub-float/2addr v5, v6

    iget v6, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v6, v4

    iget v7, v0, Landroid/graphics/PointF;->x:F

    add-float/2addr v3, v7

    iget v0, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v4

    mul-float/2addr v2, v11

    add-float/2addr v0, v2

    invoke-virtual {v1, v5, v6, v3, v0}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/airbnb/lottie/ax$a;->f:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/airbnb/lottie/ax$a;->g:Landroid/graphics/RectF;

    const/high16 v2, 0x43870000    # 270.0f

    invoke-virtual {v0, v1, v2, v12, v13}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    :cond_4
    iget-object v0, p0, Lcom/airbnb/lottie/ax$a;->f:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    invoke-virtual {p0}, Lcom/airbnb/lottie/ax$a;->f()V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/airbnb/lottie/ax$a;->h:Lcom/airbnb/lottie/n;

    invoke-virtual {v0}, Lcom/airbnb/lottie/n;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto/16 :goto_1

    :cond_6
    iget-object v0, p0, Lcom/airbnb/lottie/ax$a;->i:Lcom/airbnb/lottie/n;

    invoke-virtual {v0}, Lcom/airbnb/lottie/n;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    goto/16 :goto_3

    :cond_7
    move v2, v0

    goto/16 :goto_2
.end method


# virtual methods
.method a(Lcom/airbnb/lottie/ag;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/ag",
            "<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/airbnb/lottie/ax$a;->h:Lcom/airbnb/lottie/n;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/ax$a;->b(Lcom/airbnb/lottie/n;)V

    iget-object v0, p0, Lcom/airbnb/lottie/ax$a;->h:Lcom/airbnb/lottie/n;

    iget-object v1, p0, Lcom/airbnb/lottie/ax$a;->d:Lcom/airbnb/lottie/n$a;

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/n;->b(Lcom/airbnb/lottie/n$a;)V

    :cond_0
    iput-object p1, p0, Lcom/airbnb/lottie/ax$a;->h:Lcom/airbnb/lottie/n;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/ax$a;->a(Lcom/airbnb/lottie/n;)V

    iget-object v0, p0, Lcom/airbnb/lottie/ax$a;->d:Lcom/airbnb/lottie/n$a;

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/ag;->a(Lcom/airbnb/lottie/n$a;)V

    invoke-direct {p0}, Lcom/airbnb/lottie/ax$a;->g()V

    return-void
.end method

.method b(Lcom/airbnb/lottie/ag;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/ag",
            "<",
            "Landroid/graphics/PointF;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/airbnb/lottie/ax$a;->j:Lcom/airbnb/lottie/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/ax$a;->j:Lcom/airbnb/lottie/n;

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/ax$a;->b(Lcom/airbnb/lottie/n;)V

    iget-object v0, p0, Lcom/airbnb/lottie/ax$a;->j:Lcom/airbnb/lottie/n;

    iget-object v1, p0, Lcom/airbnb/lottie/ax$a;->c:Lcom/airbnb/lottie/n$a;

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/n;->b(Lcom/airbnb/lottie/n$a;)V

    :cond_0
    iput-object p1, p0, Lcom/airbnb/lottie/ax$a;->j:Lcom/airbnb/lottie/n;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/ax$a;->a(Lcom/airbnb/lottie/n;)V

    iget-object v0, p0, Lcom/airbnb/lottie/ax$a;->c:Lcom/airbnb/lottie/n$a;

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/ag;->a(Lcom/airbnb/lottie/n$a;)V

    invoke-direct {p0}, Lcom/airbnb/lottie/ax$a;->g()V

    return-void
.end method

.method c(Lcom/airbnb/lottie/n;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/n",
            "<*",
            "Landroid/graphics/PointF;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/airbnb/lottie/ax$a;->i:Lcom/airbnb/lottie/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/ax$a;->i:Lcom/airbnb/lottie/n;

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/ax$a;->b(Lcom/airbnb/lottie/n;)V

    iget-object v0, p0, Lcom/airbnb/lottie/ax$a;->i:Lcom/airbnb/lottie/n;

    iget-object v1, p0, Lcom/airbnb/lottie/ax$a;->e:Lcom/airbnb/lottie/n$a;

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/n;->b(Lcom/airbnb/lottie/n$a;)V

    :cond_0
    iput-object p1, p0, Lcom/airbnb/lottie/ax$a;->i:Lcom/airbnb/lottie/n;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/ax$a;->a(Lcom/airbnb/lottie/n;)V

    iget-object v0, p0, Lcom/airbnb/lottie/ax$a;->e:Lcom/airbnb/lottie/n$a;

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/n;->a(Lcom/airbnb/lottie/n$a;)V

    invoke-direct {p0}, Lcom/airbnb/lottie/ax$a;->g()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-boolean v0, p0, Lcom/airbnb/lottie/ax$a;->k:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/airbnb/lottie/ax$a;->k:Z

    invoke-direct {p0}, Lcom/airbnb/lottie/ax$a;->h()V

    :cond_0
    invoke-super {p0, p1}, Lcom/airbnb/lottie/bf;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method
