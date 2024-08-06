.class public Lcom/airbnb/lottie/aj$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/aj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method static a(Landroid/content/res/Resources;Ljava/io/InputStream;)Lcom/airbnb/lottie/aj;
    .locals 3

    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/airbnb/lottie/aj$a;->a(Landroid/content/res/Resources;Lorg/json/JSONObject;)Lcom/airbnb/lottie/aj;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    invoke-static {p1}, Lcom/airbnb/lottie/bn;->a(Ljava/io/Closeable;)V

    return-object v0

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unable to find file."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    invoke-static {p1}, Lcom/airbnb/lottie/bn;->a(Ljava/io/Closeable;)V

    throw v0

    :catch_1
    move-exception v0

    :try_start_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unable to load JSON."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method static a(Landroid/content/res/Resources;Lorg/json/JSONObject;)Lcom/airbnb/lottie/aj;
    .locals 9

    const-wide/16 v4, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    const/4 v2, -0x1

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v7, v0, Landroid/util/DisplayMetrics;->density:F

    const-string v0, "w"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "h"

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-eq v0, v2, :cond_0

    if-eq v1, v2, :cond_0

    int-to-float v0, v0

    mul-float/2addr v0, v7

    float-to-int v0, v0

    int-to-float v1, v1

    mul-float/2addr v1, v7

    float-to-int v2, v1

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v6, v6, v0, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_0
    const-string v0, "ip"

    invoke-virtual {p1, v0, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    const-string v0, "op"

    invoke-virtual {p1, v0, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    const-string v0, "fr"

    invoke-virtual {p1, v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    new-instance v0, Lcom/airbnb/lottie/aj;

    invoke-direct/range {v0 .. v8}, Lcom/airbnb/lottie/aj;-><init>(Landroid/graphics/Rect;JJIFLcom/airbnb/lottie/aj$1;)V

    const-string v1, "assets"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/airbnb/lottie/aj$a;->b(Lorg/json/JSONArray;Lcom/airbnb/lottie/aj;)V

    invoke-static {v1, v0}, Lcom/airbnb/lottie/aj$a;->a(Lorg/json/JSONArray;Lcom/airbnb/lottie/aj;)V

    invoke-static {p1, v0}, Lcom/airbnb/lottie/aj$a;->a(Lorg/json/JSONObject;Lcom/airbnb/lottie/aj;)V

    return-object v0

    :cond_0
    move-object v1, v8

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/io/InputStream;Lcom/airbnb/lottie/ap;)Lcom/airbnb/lottie/o;
    .locals 4

    new-instance v0, Lcom/airbnb/lottie/v;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/airbnb/lottie/v;-><init>(Landroid/content/res/Resources;Lcom/airbnb/lottie/ap;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/io/InputStream;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/lottie/v;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/airbnb/lottie/ap;)Lcom/airbnb/lottie/o;
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/airbnb/lottie/aj$a;->a(Landroid/content/Context;Ljava/io/InputStream;Lcom/airbnb/lottie/ap;)Lcom/airbnb/lottie/o;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static a(Landroid/content/res/Resources;Lorg/json/JSONObject;Lcom/airbnb/lottie/ap;)Lcom/airbnb/lottie/o;
    .locals 4

    new-instance v0, Lcom/airbnb/lottie/ad;

    invoke-direct {v0, p0, p2}, Lcom/airbnb/lottie/ad;-><init>(Landroid/content/res/Resources;Lcom/airbnb/lottie/ap;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Lorg/json/JSONObject;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/lottie/ad;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-object v0
.end method

.method private static a(Ljava/util/List;Landroid/support/v4/e/h;Lcom/airbnb/lottie/ah;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/ah;",
            ">;",
            "Landroid/support/v4/e/h",
            "<",
            "Lcom/airbnb/lottie/ah;",
            ">;",
            "Lcom/airbnb/lottie/ah;",
            ")V"
        }
    .end annotation

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Lcom/airbnb/lottie/ah;->c()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1, p2}, Landroid/support/v4/e/h;->b(JLjava/lang/Object;)V

    return-void
.end method

.method private static a(Lorg/json/JSONArray;Lcom/airbnb/lottie/aj;)V
    .locals 12

    const/4 v1, 0x0

    if-nez p0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_0

    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v0, "layers"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    if-nez v5, :cond_2

    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    new-instance v6, Ljava/util/ArrayList;

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v0

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v7, Landroid/support/v4/e/h;

    invoke-direct {v7}, Landroid/support/v4/e/h;-><init>()V

    move v0, v1

    :goto_2
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v0, v8, :cond_3

    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    invoke-static {v8, p1}, Lcom/airbnb/lottie/ah$a;->a(Lorg/json/JSONObject;Lcom/airbnb/lottie/aj;)Lcom/airbnb/lottie/ah;

    move-result-object v8

    invoke-virtual {v8}, Lcom/airbnb/lottie/ah;->c()J

    move-result-wide v10

    invoke-virtual {v7, v10, v11, v8}, Landroid/support/v4/e/h;->b(JLjava/lang/Object;)V

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    const-string v0, "id"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/airbnb/lottie/aj;->c(Lcom/airbnb/lottie/aj;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private static a(Lorg/json/JSONObject;Lcom/airbnb/lottie/aj;)V
    .locals 6

    const-string v0, "layers"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/airbnb/lottie/ah$a;->a(Lorg/json/JSONObject;Lcom/airbnb/lottie/aj;)Lcom/airbnb/lottie/ah;

    move-result-object v3

    invoke-static {p1}, Lcom/airbnb/lottie/aj;->a(Lcom/airbnb/lottie/aj;)Ljava/util/List;

    move-result-object v4

    invoke-static {p1}, Lcom/airbnb/lottie/aj;->b(Lcom/airbnb/lottie/aj;)Landroid/support/v4/e/h;

    move-result-object v5

    invoke-static {v4, v5, v3}, Lcom/airbnb/lottie/aj$a;->a(Ljava/util/List;Landroid/support/v4/e/h;Lcom/airbnb/lottie/ah;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static b(Lorg/json/JSONArray;Lcom/airbnb/lottie/aj;)V
    .locals 5

    if-nez p0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "p"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v2}, Lcom/airbnb/lottie/al$a;->a(Lorg/json/JSONObject;)Lcom/airbnb/lottie/al;

    move-result-object v2

    invoke-static {p1}, Lcom/airbnb/lottie/aj;->d(Lcom/airbnb/lottie/aj;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2}, Lcom/airbnb/lottie/al;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method
