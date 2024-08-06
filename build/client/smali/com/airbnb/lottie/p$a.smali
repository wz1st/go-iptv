.class Lcom/airbnb/lottie/p$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method static a(Lorg/json/JSONObject;Lcom/airbnb/lottie/aj;)Lcom/airbnb/lottie/p;
    .locals 4

    new-instance v0, Lcom/airbnb/lottie/p;

    const-string v1, "p"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/airbnb/lottie/e;->a(Lorg/json/JSONObject;Lcom/airbnb/lottie/aj;)Lcom/airbnb/lottie/z;

    move-result-object v1

    const-string v2, "s"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/airbnb/lottie/f$a;->a(Lorg/json/JSONObject;Lcom/airbnb/lottie/aj;)Lcom/airbnb/lottie/f;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/airbnb/lottie/p;-><init>(Lcom/airbnb/lottie/z;Lcom/airbnb/lottie/f;Lcom/airbnb/lottie/p$1;)V

    return-object v0
.end method
