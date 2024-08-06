.class Lcom/airbnb/lottie/ae;
.super Ljava/lang/Object;


# direct methods
.method static a(Ljava/lang/Object;)F
    .locals 2

    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    goto :goto_0

    :cond_1
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_2

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    double-to-float v0, v0

    goto :goto_0

    :cond_2
    instance-of v0, p0, Lorg/json/JSONArray;

    if-eqz v0, :cond_3

    check-cast p0, Lorg/json/JSONArray;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v0

    double-to-float v0, v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static a(Lorg/json/JSONArray;F)Landroid/graphics/PointF;
    .locals 6

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to parse point for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Landroid/graphics/PointF;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v4, v5}, Lorg/json/JSONArray;->optDouble(ID)D

    move-result-wide v2

    double-to-float v1, v2

    mul-float/2addr v1, p1

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v4, v5}, Lorg/json/JSONArray;->optDouble(ID)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v2, p1

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method static a(Lorg/json/JSONObject;F)Landroid/graphics/PointF;
    .locals 3

    new-instance v0, Landroid/graphics/PointF;

    const-string v1, "x"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/airbnb/lottie/ae;->a(Ljava/lang/Object;)F

    move-result v1

    mul-float/2addr v1, p1

    const-string v2, "y"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/airbnb/lottie/ae;->a(Ljava/lang/Object;)F

    move-result v2

    mul-float/2addr v2, p1

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method
