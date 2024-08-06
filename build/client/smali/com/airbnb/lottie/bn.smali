.class final Lcom/airbnb/lottie/bn;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/graphics/PointF;

.field private static b:Landroid/util/DisplayMetrics;


# direct methods
.method static a(Landroid/content/Context;)I
    .locals 2

    sget-object v0, Lcom/airbnb/lottie/bn;->b:Landroid/util/DisplayMetrics;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/bn;->b:Landroid/util/DisplayMetrics;

    :cond_0
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    sget-object v1, Lcom/airbnb/lottie/bn;->b:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    sget-object v0, Lcom/airbnb/lottie/bn;->b:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method

.method static a(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/Path;
    .locals 7

    const/4 v3, 0x0

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iget v1, p0, Landroid/graphics/PointF;->x:F

    iget v2, p0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/graphics/PointF;->length()F

    move-result v1

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/graphics/PointF;->length()F

    move-result v1

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/graphics/PointF;->x:F

    iget v2, p2, Landroid/graphics/PointF;->x:F

    add-float/2addr v1, v2

    iget v2, p0, Landroid/graphics/PointF;->y:F

    iget v3, p2, Landroid/graphics/PointF;->y:F

    add-float/2addr v2, v3

    iget v3, p1, Landroid/graphics/PointF;->x:F

    iget v4, p3, Landroid/graphics/PointF;->x:F

    add-float/2addr v3, v4

    iget v4, p1, Landroid/graphics/PointF;->y:F

    iget v5, p3, Landroid/graphics/PointF;->y:F

    add-float/2addr v4, v5

    iget v5, p1, Landroid/graphics/PointF;->x:F

    iget v6, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    :goto_0
    return-object v0

    :cond_0
    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_0
.end method

.method static a()Landroid/graphics/PointF;
    .locals 1

    sget-object v0, Lcom/airbnb/lottie/bn;->a:Landroid/graphics/PointF;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/bn;->a:Landroid/graphics/PointF;

    :cond_0
    sget-object v0, Lcom/airbnb/lottie/bn;->a:Landroid/graphics/PointF;

    return-object v0
.end method

.method static a(Ljava/io/Closeable;)V
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method static b(Landroid/content/Context;)I
    .locals 2

    sget-object v0, Lcom/airbnb/lottie/bn;->b:Landroid/util/DisplayMetrics;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/bn;->b:Landroid/util/DisplayMetrics;

    :cond_0
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    sget-object v1, Lcom/airbnb/lottie/bn;->b:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    sget-object v0, Lcom/airbnb/lottie/bn;->b:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0
.end method
