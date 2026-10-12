.class final Lcom/airbnb/lottie/g$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# direct methods
.method static a(Lcom/airbnb/lottie/aj;)Lcom/airbnb/lottie/g;
    .locals 2

    new-instance v0, Lcom/airbnb/lottie/g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/airbnb/lottie/g;-><init>(Lcom/airbnb/lottie/aj;Lcom/airbnb/lottie/g$1;)V

    return-object v0
.end method

.method static a(Lorg/json/JSONObject;Lcom/airbnb/lottie/aj;Z)Lcom/airbnb/lottie/g;
    .locals 4

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/airbnb/lottie/aj;->h()F

    move-result v0

    :goto_0
    sget-object v1, Lcom/airbnb/lottie/ba$a;->a:Lcom/airbnb/lottie/ba$a;

    invoke-static {p0, v0, p1, v1}, Lcom/airbnb/lottie/l;->a(Lorg/json/JSONObject;FLcom/airbnb/lottie/aj;Lcom/airbnb/lottie/k$a;)Lcom/airbnb/lottie/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/l;->a()Lcom/airbnb/lottie/l$a;

    move-result-object v0

    new-instance v1, Lcom/airbnb/lottie/g;

    iget-object v2, v0, Lcom/airbnb/lottie/l$a;->a:Ljava/util/List;

    iget-object v0, v0, Lcom/airbnb/lottie/l$a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/airbnb/lottie/ba;

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v0, v3}, Lcom/airbnb/lottie/g;-><init>(Ljava/util/List;Lcom/airbnb/lottie/aj;Lcom/airbnb/lottie/ba;Lcom/airbnb/lottie/g$1;)V

    return-object v1

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method
