.class public Lcom/tvbus/engine/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tvbus/engine/d;


# instance fields
.field tvCore:Lcom/tvbus/engine/TVCore;


# direct methods
.method constructor <init>(Lcom/tvbus/engine/TVCore;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tvbus/engine/a;->tvCore:Lcom/tvbus/engine/TVCore;

    return-void
.end method


# virtual methods
.method public onInfo(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onInited(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onPrepared(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "hls"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/eztv/powerful/PlayerActivity;->at:Ljava/lang/String;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "TVBUS_ONPREPARED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/eztv/powerful/PlayerActivity;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/e/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onQuit(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStart(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStop(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
