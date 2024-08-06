.class Lcom/eztv/powerful/g$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eztv/powerful/g;->a(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/eztv/powerful/g;


# direct methods
.method constructor <init>(Lcom/eztv/powerful/g;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/eztv/powerful/g$3;->b:Lcom/eztv/powerful/g;

    iput-object p2, p0, Lcom/eztv/powerful/g$3;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/eztv/powerful/SplashActivity;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/login/getver"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UA"

    invoke-static {v0, v1}, Lcom/eztv/powerful/util/f;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eztv/powerful/g$3;->b:Lcom/eztv/powerful/g;

    const-string v2, "appver"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/eztv/powerful/g;->a(Lcom/eztv/powerful/g;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/eztv/powerful/g$3;->b:Lcom/eztv/powerful/g;

    invoke-static {v0}, Lcom/eztv/powerful/g;->c(Lcom/eztv/powerful/g;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "V"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/eztv/powerful/g$3;->b:Lcom/eztv/powerful/g;

    iget-object v2, p0, Lcom/eztv/powerful/g$3;->b:Lcom/eztv/powerful/g;

    invoke-static {v2}, Lcom/eztv/powerful/g;->c(Lcom/eztv/powerful/g;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "V"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/eztv/powerful/g;->a(Lcom/eztv/powerful/g;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/eztv/powerful/g$3;->a:Ljava/lang/String;

    const-string v2, "V"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "V"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    :cond_1
    iget-object v2, p0, Lcom/eztv/powerful/g$3;->b:Lcom/eztv/powerful/g;

    const-string v3, "appurl"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/eztv/powerful/g;->i:Ljava/lang/String;

    iget-object v2, p0, Lcom/eztv/powerful/g$3;->b:Lcom/eztv/powerful/g;

    invoke-static {v2}, Lcom/eztv/powerful/g;->c(Lcom/eztv/powerful/g;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-gez v0, :cond_2

    :try_start_1
    const-string v0, "appver"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/eztv/powerful/g;->h:Ljava/lang/String;

    const-string v0, "appsets"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/eztv/powerful/g;->c:I

    const-string v0, "appsize"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/eztv/powerful/g;->e:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "appsize"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " MB"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/eztv/powerful/g;->f:Ljava/lang/String;

    const-string v0, "appurl"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/eztv/powerful/g;->g:Ljava/lang/String;

    const-string v0, "apptext"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/eztv/powerful/g;->d:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    const/4 v0, 0x1

    :try_start_2
    sput v0, Lcom/eztv/powerful/g;->a:I

    iget-object v0, p0, Lcom/eztv/powerful/g$3;->b:Lcom/eztv/powerful/g;

    invoke-static {v0}, Lcom/eztv/powerful/g;->d(Lcom/eztv/powerful/g;)Lcom/eztv/powerful/a/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/eztv/powerful/a/b;->a()V

    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/e/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/e/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/eztv/powerful/g$3;->b:Lcom/eztv/powerful/g;

    invoke-static {v0}, Lcom/eztv/powerful/g;->d(Lcom/eztv/powerful/g;)Lcom/eztv/powerful/a/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/eztv/powerful/a/b;->b()V

    goto :goto_1

    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/eztv/powerful/g$3;->b:Lcom/eztv/powerful/g;

    invoke-static {v0}, Lcom/eztv/powerful/g;->d(Lcom/eztv/powerful/g;)Lcom/eztv/powerful/a/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/eztv/powerful/a/b;->a()V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1
.end method
