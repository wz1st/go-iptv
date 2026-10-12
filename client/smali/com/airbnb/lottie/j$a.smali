.class Lcom/airbnb/lottie/j$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method static a(Lcom/airbnb/lottie/aj;)Lcom/airbnb/lottie/j;
    .locals 6

    new-instance v1, Lcom/airbnb/lottie/e;

    invoke-direct {v1}, Lcom/airbnb/lottie/e;-><init>()V

    new-instance v2, Lcom/airbnb/lottie/e;

    invoke-direct {v2}, Lcom/airbnb/lottie/e;-><init>()V

    invoke-static {p0}, Lcom/airbnb/lottie/g$a;->a(Lcom/airbnb/lottie/aj;)Lcom/airbnb/lottie/g;

    move-result-object v3

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/airbnb/lottie/b$a;->a(Lcom/airbnb/lottie/aj;Ljava/lang/Float;)Lcom/airbnb/lottie/b;

    move-result-object v4

    const/16 v0, 0xff

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/airbnb/lottie/c$a;->a(Lcom/airbnb/lottie/aj;Ljava/lang/Integer;)Lcom/airbnb/lottie/c;

    move-result-object v5

    new-instance v0, Lcom/airbnb/lottie/j;

    invoke-direct/range {v0 .. v5}, Lcom/airbnb/lottie/j;-><init>(Lcom/airbnb/lottie/e;Lcom/airbnb/lottie/z;Lcom/airbnb/lottie/g;Lcom/airbnb/lottie/b;Lcom/airbnb/lottie/c;)V

    return-object v0
.end method

.method static a(Lorg/json/JSONObject;Lcom/airbnb/lottie/aj;)Lcom/airbnb/lottie/j;
    .locals 7

    const/4 v6, 0x0

    const/4 v0, 0x0

    const-string v1, "a"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v1, Lcom/airbnb/lottie/e;

    const-string v3, "k"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/airbnb/lottie/e;-><init>(Ljava/lang/Object;Lcom/airbnb/lottie/aj;)V

    :goto_0
    const-string v2, "p"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {v2, p1}, Lcom/airbnb/lottie/e;->a(Lorg/json/JSONObject;Lcom/airbnb/lottie/aj;)Lcom/airbnb/lottie/z;

    move-result-object v2

    :goto_1
    const-string v3, "s"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-static {v3, p1, v6}, Lcom/airbnb/lottie/g$a;->a(Lorg/json/JSONObject;Lcom/airbnb/lottie/aj;Z)Lcom/airbnb/lottie/g;

    move-result-object v3

    :goto_2
    const-string v4, "r"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-nez v4, :cond_0

    const-string v4, "rz"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    :cond_0
    if-eqz v4, :cond_4

    invoke-static {v4, p1, v6}, Lcom/airbnb/lottie/b$a;->a(Lorg/json/JSONObject;Lcom/airbnb/lottie/aj;Z)Lcom/airbnb/lottie/b;

    move-result-object v4

    :goto_3
    const-string v5, "o"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_5

    const/4 v0, 0x1

    invoke-static {v5, p1, v6, v0}, Lcom/airbnb/lottie/c$a;->a(Lorg/json/JSONObject;Lcom/airbnb/lottie/aj;ZZ)Lcom/airbnb/lottie/c;

    move-result-object v5

    :goto_4
    new-instance v0, Lcom/airbnb/lottie/j;

    invoke-direct/range {v0 .. v5}, Lcom/airbnb/lottie/j;-><init>(Lcom/airbnb/lottie/e;Lcom/airbnb/lottie/z;Lcom/airbnb/lottie/g;Lcom/airbnb/lottie/b;Lcom/airbnb/lottie/c;)V

    return-object v0

    :cond_1
    const-string v1, "anchor"

    invoke-static {v1}, Lcom/airbnb/lottie/j$a;->a(Ljava/lang/String;)V

    move-object v1, v0

    goto :goto_0

    :cond_2
    const-string v2, "position"

    invoke-static {v2}, Lcom/airbnb/lottie/j$a;->a(Ljava/lang/String;)V

    move-object v2, v0

    goto :goto_1

    :cond_3
    const-string v3, "scale"

    invoke-static {v3}, Lcom/airbnb/lottie/j$a;->a(Ljava/lang/String;)V

    move-object v3, v0

    goto :goto_2

    :cond_4
    const-string v4, "rotation"

    invoke-static {v4}, Lcom/airbnb/lottie/j$a;->a(Ljava/lang/String;)V

    move-object v4, v0

    goto :goto_3

    :cond_5
    const-string v5, "opacity"

    invoke-static {v5}, Lcom/airbnb/lottie/j$a;->a(Ljava/lang/String;)V

    move-object v5, v0

    goto :goto_4
.end method

.method private static a(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing transform for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
