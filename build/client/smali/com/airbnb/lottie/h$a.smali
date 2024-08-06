.class final Lcom/airbnb/lottie/h$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# direct methods
.method static a(Lorg/json/JSONObject;Lcom/airbnb/lottie/aj;)Lcom/airbnb/lottie/h;
    .locals 4

    invoke-virtual {p1}, Lcom/airbnb/lottie/aj;->h()F

    move-result v0

    sget-object v1, Lcom/airbnb/lottie/bb$a;->a:Lcom/airbnb/lottie/bb$a;

    invoke-static {p0, v0, p1, v1}, Lcom/airbnb/lottie/l;->a(Lorg/json/JSONObject;FLcom/airbnb/lottie/aj;Lcom/airbnb/lottie/k$a;)Lcom/airbnb/lottie/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/l;->a()Lcom/airbnb/lottie/l$a;

    move-result-object v0

    new-instance v1, Lcom/airbnb/lottie/h;

    iget-object v2, v0, Lcom/airbnb/lottie/l$a;->a:Ljava/util/List;

    iget-object v0, v0, Lcom/airbnb/lottie/l$a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/airbnb/lottie/bb;

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v0, v3}, Lcom/airbnb/lottie/h;-><init>(Ljava/util/List;Lcom/airbnb/lottie/aj;Lcom/airbnb/lottie/bb;Lcom/airbnb/lottie/h$1;)V

    return-object v1
.end method
