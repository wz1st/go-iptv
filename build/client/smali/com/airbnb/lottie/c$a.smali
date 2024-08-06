.class final Lcom/airbnb/lottie/c$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# direct methods
.method static a(Lcom/airbnb/lottie/aj;Ljava/lang/Integer;)Lcom/airbnb/lottie/c;
    .locals 2

    new-instance v0, Lcom/airbnb/lottie/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/airbnb/lottie/c;-><init>(Lcom/airbnb/lottie/aj;Ljava/lang/Integer;Lcom/airbnb/lottie/c$1;)V

    return-object v0
.end method

.method static a(Lorg/json/JSONObject;Lcom/airbnb/lottie/aj;ZZ)Lcom/airbnb/lottie/c;
    .locals 6

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/airbnb/lottie/aj;->h()F

    move-result v0

    :goto_0
    invoke-static {}, Lcom/airbnb/lottie/c$b;->a()Lcom/airbnb/lottie/c$b;

    move-result-object v1

    invoke-static {p0, v0, p1, v1}, Lcom/airbnb/lottie/l;->a(Lorg/json/JSONObject;FLcom/airbnb/lottie/aj;Lcom/airbnb/lottie/k$a;)Lcom/airbnb/lottie/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/l;->a()Lcom/airbnb/lottie/l$a;

    move-result-object v4

    iget-object v0, v4, Lcom/airbnb/lottie/l$a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    if-eqz p3, :cond_2

    iget-object v1, v4, Lcom/airbnb/lottie/l$a;->b:Ljava/lang/Object;

    if-eqz v1, :cond_2

    iget-object v0, v4, Lcom/airbnb/lottie/l$a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit16 v0, v0, 0xff

    div-int/lit8 v0, v0, 0x64

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v0, v4, Lcom/airbnb/lottie/l$a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    const/4 v0, 0x0

    move v3, v0

    :goto_1
    if-ge v3, v5, :cond_1

    iget-object v0, v4, Lcom/airbnb/lottie/l$a;->a:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/af;

    iget-object v1, v0, Lcom/airbnb/lottie/af;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit16 v1, v1, 0xff

    div-int/lit8 v1, v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/airbnb/lottie/af;->a:Ljava/lang/Object;

    iget-object v1, v0, Lcom/airbnb/lottie/af;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit16 v1, v1, 0xff

    div-int/lit8 v1, v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/airbnb/lottie/af;->b:Ljava/lang/Object;

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    move-object v0, v2

    :cond_2
    new-instance v1, Lcom/airbnb/lottie/c;

    iget-object v2, v4, Lcom/airbnb/lottie/l$a;->a:Ljava/util/List;

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v0, v3}, Lcom/airbnb/lottie/c;-><init>(Ljava/util/List;Lcom/airbnb/lottie/aj;Ljava/lang/Integer;Lcom/airbnb/lottie/c$1;)V

    return-object v1
.end method
