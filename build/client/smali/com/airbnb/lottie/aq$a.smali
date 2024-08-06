.class Lcom/airbnb/lottie/aq$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/aq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method static a(Lorg/json/JSONObject;Lcom/airbnb/lottie/aj;Lcom/airbnb/lottie/k$a;)Lcom/airbnb/lottie/aq;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lcom/airbnb/lottie/aj;",
            "Lcom/airbnb/lottie/k$a",
            "<",
            "Landroid/graphics/PointF;",
            ">;)",
            "Lcom/airbnb/lottie/aq;"
        }
    .end annotation

    const/4 v7, 0x0

    invoke-virtual {p1}, Lcom/airbnb/lottie/aj;->h()F

    move-result v0

    invoke-static {p0, p1, v0, p2}, Lcom/airbnb/lottie/af$a;->a(Lorg/json/JSONObject;Lcom/airbnb/lottie/aj;FLcom/airbnb/lottie/k$a;)Lcom/airbnb/lottie/af;

    move-result-object v10

    const-string v0, "ti"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const-string v1, "to"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/airbnb/lottie/aj;->h()F

    move-result v2

    invoke-static {v1, v2}, Lcom/airbnb/lottie/ae;->a(Lorg/json/JSONArray;F)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {p1}, Lcom/airbnb/lottie/aj;->h()F

    move-result v2

    invoke-static {v0, v2}, Lcom/airbnb/lottie/ae;->a(Lorg/json/JSONArray;F)Landroid/graphics/PointF;

    move-result-object v0

    move-object v8, v0

    move-object v9, v1

    :goto_0
    new-instance v0, Lcom/airbnb/lottie/aq;

    iget-object v2, v10, Lcom/airbnb/lottie/af;->a:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/PointF;

    iget-object v3, v10, Lcom/airbnb/lottie/af;->b:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/PointF;

    iget-object v4, v10, Lcom/airbnb/lottie/af;->c:Landroid/view/animation/Interpolator;

    iget v5, v10, Lcom/airbnb/lottie/af;->d:F

    iget-object v6, v10, Lcom/airbnb/lottie/af;->e:Ljava/lang/Float;

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/airbnb/lottie/aq;-><init>(Lcom/airbnb/lottie/aj;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/view/animation/Interpolator;FLjava/lang/Float;Lcom/airbnb/lottie/aq$1;)V

    iget-object v1, v10, Lcom/airbnb/lottie/af;->b:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, v10, Lcom/airbnb/lottie/af;->a:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/PointF;

    iget-object v2, v10, Lcom/airbnb/lottie/af;->b:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v10, Lcom/airbnb/lottie/af;->a:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/PointF;

    iget-object v2, v10, Lcom/airbnb/lottie/af;->b:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/PointF;

    invoke-static {v1, v2, v9, v8}, Lcom/airbnb/lottie/bn;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/Path;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/airbnb/lottie/aq;->a(Lcom/airbnb/lottie/aq;Landroid/graphics/Path;)Landroid/graphics/Path;

    :cond_0
    return-object v0

    :cond_1
    move-object v8, v7

    move-object v9, v7

    goto :goto_0
.end method
