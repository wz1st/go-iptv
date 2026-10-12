.class final Lcom/airbnb/lottie/u$a;
.super Lcom/airbnb/lottie/bf;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
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
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Landroid/graphics/Path;

.field private f:Lcom/airbnb/lottie/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/n",
            "<*",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/airbnb/lottie/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/n",
            "<*",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/graphics/drawable/Drawable$Callback;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/airbnb/lottie/bf;-><init>(Landroid/graphics/drawable/Drawable$Callback;)V

    new-instance v0, Lcom/airbnb/lottie/u$a$1;

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/u$a$1;-><init>(Lcom/airbnb/lottie/u$a;)V

    iput-object v0, p0, Lcom/airbnb/lottie/u$a;->c:Lcom/airbnb/lottie/n$a;

    new-instance v0, Lcom/airbnb/lottie/u$a$2;

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/u$a$2;-><init>(Lcom/airbnb/lottie/u$a;)V

    iput-object v0, p0, Lcom/airbnb/lottie/u$a;->d:Lcom/airbnb/lottie/n$a;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/u$a;->e:Landroid/graphics/Path;

    new-instance v0, Lcom/airbnb/lottie/bl;

    iget-object v1, p0, Lcom/airbnb/lottie/u$a;->e:Landroid/graphics/Path;

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/bl;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/u$a;->d(Lcom/airbnb/lottie/n;)V

    return-void
.end method

.method static synthetic a(Lcom/airbnb/lottie/u$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/airbnb/lottie/u$a;->g()V

    return-void
.end method

.method private g()V
    .locals 14

    iget-object v0, p0, Lcom/airbnb/lottie/u$a;->f:Lcom/airbnb/lottie/n;

    invoke-virtual {v0}, Lcom/airbnb/lottie/n;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float v3, v0, v1

    iget-object v0, p0, Lcom/airbnb/lottie/u$a;->f:Lcom/airbnb/lottie/n;

    invoke-virtual {v0}, Lcom/airbnb/lottie/n;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float v11, v0, v1

    const/4 v0, 0x0

    const/4 v1, 0x0

    float-to-int v2, v3

    mul-int/lit8 v2, v2, 0x2

    float-to-int v4, v11

    mul-int/lit8 v4, v4, 0x2

    invoke-virtual {p0, v0, v1, v2, v4}, Lcom/airbnb/lottie/u$a;->setBounds(IIII)V

    const v0, 0x3f0d6239    # 0.55228f

    mul-float v12, v3, v0

    const v0, 0x3f0d6239    # 0.55228f

    mul-float v13, v11, v0

    iget-object v0, p0, Lcom/airbnb/lottie/u$a;->e:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/airbnb/lottie/u$a;->e:Landroid/graphics/Path;

    const/4 v1, 0x0

    neg-float v2, v11

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lcom/airbnb/lottie/u$a;->e:Landroid/graphics/Path;

    const/4 v1, 0x0

    add-float/2addr v1, v12

    neg-float v2, v11

    const/4 v4, 0x0

    sub-float/2addr v4, v13

    const/4 v6, 0x0

    move v5, v3

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v2, p0, Lcom/airbnb/lottie/u$a;->e:Landroid/graphics/Path;

    const/4 v0, 0x0

    add-float v4, v0, v13

    const/4 v0, 0x0

    add-float v5, v0, v12

    const/4 v7, 0x0

    move v6, v11

    move v8, v11

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v4, p0, Lcom/airbnb/lottie/u$a;->e:Landroid/graphics/Path;

    const/4 v0, 0x0

    sub-float v5, v0, v12

    neg-float v7, v3

    const/4 v0, 0x0

    add-float v8, v0, v13

    neg-float v9, v3

    const/4 v10, 0x0

    move v6, v11

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v0, p0, Lcom/airbnb/lottie/u$a;->e:Landroid/graphics/Path;

    neg-float v1, v3

    const/4 v2, 0x0

    sub-float/2addr v2, v13

    const/4 v3, 0x0

    sub-float/2addr v3, v12

    neg-float v4, v11

    const/4 v5, 0x0

    neg-float v6, v11

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v1, p0, Lcom/airbnb/lottie/u$a;->e:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/airbnb/lottie/u$a;->g:Lcom/airbnb/lottie/n;

    invoke-virtual {v0}, Lcom/airbnb/lottie/n;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/airbnb/lottie/u$a;->g:Lcom/airbnb/lottie/n;

    invoke-virtual {v0}, Lcom/airbnb/lottie/n;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Path;->offset(FF)V

    iget-object v0, p0, Lcom/airbnb/lottie/u$a;->e:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    invoke-virtual {p0}, Lcom/airbnb/lottie/u$a;->f()V

    return-void
.end method


# virtual methods
.method a(Lcom/airbnb/lottie/n;Lcom/airbnb/lottie/n;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/n",
            "<*",
            "Landroid/graphics/PointF;",
            ">;",
            "Lcom/airbnb/lottie/n",
            "<*",
            "Landroid/graphics/PointF;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/airbnb/lottie/u$a;->f:Lcom/airbnb/lottie/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/u$a;->f:Lcom/airbnb/lottie/n;

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/u$a;->b(Lcom/airbnb/lottie/n;)V

    iget-object v0, p0, Lcom/airbnb/lottie/u$a;->f:Lcom/airbnb/lottie/n;

    iget-object v1, p0, Lcom/airbnb/lottie/u$a;->c:Lcom/airbnb/lottie/n$a;

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/n;->b(Lcom/airbnb/lottie/n$a;)V

    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/u$a;->g:Lcom/airbnb/lottie/n;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/airbnb/lottie/u$a;->g:Lcom/airbnb/lottie/n;

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/u$a;->b(Lcom/airbnb/lottie/n;)V

    iget-object v0, p0, Lcom/airbnb/lottie/u$a;->g:Lcom/airbnb/lottie/n;

    iget-object v1, p0, Lcom/airbnb/lottie/u$a;->d:Lcom/airbnb/lottie/n$a;

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/n;->b(Lcom/airbnb/lottie/n$a;)V

    :cond_1
    iput-object p2, p0, Lcom/airbnb/lottie/u$a;->f:Lcom/airbnb/lottie/n;

    iput-object p1, p0, Lcom/airbnb/lottie/u$a;->g:Lcom/airbnb/lottie/n;

    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/u$a;->a(Lcom/airbnb/lottie/n;)V

    iget-object v0, p0, Lcom/airbnb/lottie/u$a;->c:Lcom/airbnb/lottie/n$a;

    invoke-virtual {p2, v0}, Lcom/airbnb/lottie/n;->a(Lcom/airbnb/lottie/n$a;)V

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/u$a;->a(Lcom/airbnb/lottie/n;)V

    iget-object v0, p0, Lcom/airbnb/lottie/u$a;->d:Lcom/airbnb/lottie/n$a;

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/n;->a(Lcom/airbnb/lottie/n$a;)V

    invoke-direct {p0}, Lcom/airbnb/lottie/u$a;->g()V

    return-void
.end method
