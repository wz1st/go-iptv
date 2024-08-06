.class public Lcom/eztv/powerful/recycleview/b/c;
.super Ljava/util/ArrayList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/eztv/powerful/recycleview/b/d;",
        ">;"
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "favor_movie.db"

    sput-object v0, Lcom/eztv/powerful/recycleview/b/c;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 10

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    sget-object v0, Lcom/eztv/powerful/recycleview/b/c;->a:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/eztv/powerful/util/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    if-eqz v9, :cond_0

    const/4 v0, 0x0

    move v8, v0

    :goto_0
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v8, v0, :cond_0

    invoke-virtual {v9, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "engine"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "img"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "des"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "api"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v5, "id"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v0, Lcom/eztv/powerful/recycleview/b/d;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/eztv/powerful/recycleview/b/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/eztv/powerful/recycleview/b/c;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/e/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 3

    const-string v2, "["

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/eztv/powerful/recycleview/b/c;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v1}, Lcom/eztv/powerful/recycleview/b/c;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eztv/powerful/recycleview/b/d;

    invoke-virtual {v0}, Lcom/eztv/powerful/recycleview/b/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    move-object v2, v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v1}, Lcom/eztv/powerful/recycleview/b/c;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eztv/powerful/recycleview/b/d;

    invoke-virtual {v0}, Lcom/eztv/powerful/recycleview/b/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/eztv/powerful/recycleview/b/c;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/eztv/powerful/recycleview/b/c;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/eztv/powerful/recycleview/b/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/eztv/powerful/util/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    invoke-virtual {p0}, Lcom/eztv/powerful/recycleview/b/c;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/eztv/powerful/recycleview/b/c;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eztv/powerful/recycleview/b/d;

    invoke-virtual {v0}, Lcom/eztv/powerful/recycleview/b/d;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/eztv/powerful/recycleview/b/c;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eztv/powerful/recycleview/b/d;

    invoke-virtual {v0}, Lcom/eztv/powerful/recycleview/b/d;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    :cond_0
    return v2

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/eztv/powerful/recycleview/b/c;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/eztv/powerful/recycleview/b/c;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eztv/powerful/recycleview/b/d;

    invoke-virtual {v0}, Lcom/eztv/powerful/recycleview/b/d;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/eztv/powerful/recycleview/b/c;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eztv/powerful/recycleview/b/d;

    invoke-virtual {v0}, Lcom/eztv/powerful/recycleview/b/d;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/eztv/powerful/recycleview/b/c;->remove(I)Ljava/lang/Object;

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method
