.class Lcom/airbnb/lottie/am$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/am;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method static a(Lorg/json/JSONObject;Lcom/airbnb/lottie/aj;)Lcom/airbnb/lottie/am;
    .locals 4

    const-string v0, "mode"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/airbnb/lottie/am$b;->d:Lcom/airbnb/lottie/am$b;

    :goto_1
    const-string v1, "pt"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/airbnb/lottie/h$a;->a(Lorg/json/JSONObject;Lcom/airbnb/lottie/aj;)Lcom/airbnb/lottie/h;

    move-result-object v1

    new-instance v2, Lcom/airbnb/lottie/am;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/airbnb/lottie/am;-><init>(Lcom/airbnb/lottie/am$b;Lcom/airbnb/lottie/h;Lcom/airbnb/lottie/am$1;)V

    return-object v2

    :sswitch_0
    const-string v2, "a"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v2, "s"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "i"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :pswitch_0
    sget-object v0, Lcom/airbnb/lottie/am$b;->a:Lcom/airbnb/lottie/am$b;

    goto :goto_1

    :pswitch_1
    sget-object v0, Lcom/airbnb/lottie/am$b;->b:Lcom/airbnb/lottie/am$b;

    goto :goto_1

    :pswitch_2
    sget-object v0, Lcom/airbnb/lottie/am$b;->c:Lcom/airbnb/lottie/am$b;

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x61 -> :sswitch_0
        0x69 -> :sswitch_2
        0x73 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
