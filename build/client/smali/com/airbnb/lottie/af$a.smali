.class Lcom/airbnb/lottie/af$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/af;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method static a(Lorg/json/JSONObject;Lcom/airbnb/lottie/aj;FLcom/airbnb/lottie/k$a;)Lcom/airbnb/lottie/af;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/json/JSONObject;",
            "Lcom/airbnb/lottie/aj;",
            "F",
            "Lcom/airbnb/lottie/k$a",
            "<TT;>;)",
            "Lcom/airbnb/lottie/af",
            "<TT;>;"
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    const-string v0, "t"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "t"

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v5, v0

    const-string v0, "s"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {p3, v0, p2}, Lcom/airbnb/lottie/k$a;->b(Ljava/lang/Object;F)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    const-string v1, "e"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {p3, v1, p2}, Lcom/airbnb/lottie/k$a;->b(Ljava/lang/Object;F)Ljava/lang/Object;

    move-result-object v1

    :goto_1
    const-string v2, "o"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "i"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    if-eqz v2, :cond_4

    if-eqz v8, :cond_4

    invoke-static {v2, p2}, Lcom/airbnb/lottie/ae;->a(Lorg/json/JSONObject;F)Landroid/graphics/PointF;

    move-result-object v3

    invoke-static {v8, p2}, Lcom/airbnb/lottie/ae;->a(Lorg/json/JSONObject;F)Landroid/graphics/PointF;

    move-result-object v2

    :goto_2
    const-string v8, "h"

    invoke-virtual {p0, v8, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v4, :cond_0

    :goto_3
    if-eqz v4, :cond_1

    invoke-static {}, Lcom/airbnb/lottie/af;->d()Landroid/view/animation/Interpolator;

    move-result-object v1

    move-object v4, v1

    move-object v3, v0

    :goto_4
    move-object v2, v0

    :goto_5
    new-instance v0, Lcom/airbnb/lottie/af;

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/airbnb/lottie/af;-><init>(Lcom/airbnb/lottie/aj;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    return-object v0

    :cond_0
    move v4, v7

    goto :goto_3

    :cond_1
    if-eqz v3, :cond_2

    iget v4, v3, Landroid/graphics/PointF;->x:F

    div-float/2addr v4, p2

    iget v3, v3, Landroid/graphics/PointF;->y:F

    div-float/2addr v3, p2

    iget v7, v2, Landroid/graphics/PointF;->x:F

    div-float/2addr v7, p2

    iget v2, v2, Landroid/graphics/PointF;->y:F

    div-float/2addr v2, p2

    invoke-static {v4, v3, v7, v2}, Landroid/support/v4/f/b/f;->a(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v2

    move-object v4, v2

    move-object v3, v1

    goto :goto_4

    :cond_2
    invoke-static {}, Lcom/airbnb/lottie/af;->d()Landroid/view/animation/Interpolator;

    move-result-object v2

    move-object v4, v2

    move-object v3, v1

    goto :goto_4

    :cond_3
    invoke-interface {p3, p0, p2}, Lcom/airbnb/lottie/k$a;->b(Ljava/lang/Object;F)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v6

    move-object v3, v0

    move-object v2, v0

    goto :goto_5

    :cond_4
    move-object v2, v6

    move-object v3, v6

    goto :goto_2

    :cond_5
    move-object v1, v6

    goto :goto_1

    :cond_6
    move-object v0, v6

    goto :goto_0
.end method

.method static a(Lorg/json/JSONArray;Lcom/airbnb/lottie/aj;FLcom/airbnb/lottie/k$a;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/json/JSONArray;",
            "Lcom/airbnb/lottie/aj;",
            "F",
            "Lcom/airbnb/lottie/k$a",
            "<TT;>;)",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/af",
            "<TT;>;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3, p1, p2, p3}, Lcom/airbnb/lottie/af$a;->a(Lorg/json/JSONObject;Lcom/airbnb/lottie/aj;FLcom/airbnb/lottie/k$a;)Lcom/airbnb/lottie/af;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-static {v0}, Lcom/airbnb/lottie/af;->a(Ljava/util/List;)V

    goto :goto_0
.end method
