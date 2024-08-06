.class Lcom/airbnb/lottie/bh$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/bh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method static a(Lorg/json/JSONObject;Lcom/airbnb/lottie/aj;)Lcom/airbnb/lottie/bh;
    .locals 5

    const-string v0, "ks"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/airbnb/lottie/h$a;->a(Lorg/json/JSONObject;Lcom/airbnb/lottie/aj;)Lcom/airbnb/lottie/h;

    move-result-object v0

    new-instance v1, Lcom/airbnb/lottie/bh;

    const-string v2, "nm"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ind"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/airbnb/lottie/bh;-><init>(Ljava/lang/String;ILcom/airbnb/lottie/h;Lcom/airbnb/lottie/bh$1;)V

    return-object v1
.end method
