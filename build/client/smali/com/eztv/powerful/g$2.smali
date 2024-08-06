.class Lcom/eztv/powerful/g$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eztv/powerful/g;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/eztv/powerful/g;


# direct methods
.method constructor <init>(Lcom/eztv/powerful/g;)V
    .locals 0

    iput-object p1, p0, Lcom/eztv/powerful/g$2;->a:Lcom/eztv/powerful/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "region"

    iget-object v2, p0, Lcom/eztv/powerful/g$2;->a:Lcom/eztv/powerful/g;

    iget-object v2, v2, Lcom/eztv/powerful/g;->r:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "nettype"

    iget-object v2, p0, Lcom/eztv/powerful/g$2;->a:Lcom/eztv/powerful/g;

    iget-object v2, v2, Lcom/eztv/powerful/g;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "rand"

    iget-object v2, p0, Lcom/eztv/powerful/g$2;->a:Lcom/eztv/powerful/g;

    iget-object v2, v2, Lcom/eztv/powerful/g;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mac"

    iget-object v2, p0, Lcom/eztv/powerful/g$2;->a:Lcom/eztv/powerful/g;

    iget-object v2, v2, Lcom/eztv/powerful/g;->n:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "androidid"

    iget-object v2, p0, Lcom/eztv/powerful/g$2;->a:Lcom/eztv/powerful/g;

    iget-object v2, v2, Lcom/eztv/powerful/g;->o:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "model"

    iget-object v2, p0, Lcom/eztv/powerful/g$2;->a:Lcom/eztv/powerful/g;

    iget-object v2, v2, Lcom/eztv/powerful/g;->p:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "appname"

    iget-object v2, p0, Lcom/eztv/powerful/g$2;->a:Lcom/eztv/powerful/g;

    iget-object v2, v2, Lcom/eztv/powerful/g;->q:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/eztv/powerful/g$2;->a:Lcom/eztv/powerful/g;

    iget-object v1, v1, Lcom/eztv/powerful/g;->k:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "data="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/eztv/powerful/util/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "A9SZzkKb5bJKldYrCBa3"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/eztv/powerful/g$2;->a:Lcom/eztv/powerful/g;

    invoke-static {v1}, Lcom/eztv/powerful/g;->a(Lcom/eztv/powerful/g;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/eztv/powerful/util/b;->a(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/eztv/powerful/g$2;->a:Lcom/eztv/powerful/g;

    invoke-static {v1}, Lcom/eztv/powerful/g;->a(Lcom/eztv/powerful/g;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/eztv/powerful/b/b;->b:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/eztv/powerful/util/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eztv/powerful/g$2;->a:Lcom/eztv/powerful/g;

    iget-object v0, v0, Lcom/eztv/powerful/g;->j:Lcom/setting/MySettings;

    const-string v1, "rand"

    iget-object v2, p0, Lcom/eztv/powerful/g$2;->a:Lcom/eztv/powerful/g;

    iget-object v2, v2, Lcom/eztv/powerful/g;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/setting/MySettings;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eztv/powerful/g$2;->a:Lcom/eztv/powerful/g;

    invoke-static {v0}, Lcom/eztv/powerful/g;->b(Lcom/eztv/powerful/g;)Lcom/eztv/powerful/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/eztv/powerful/a/a;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
