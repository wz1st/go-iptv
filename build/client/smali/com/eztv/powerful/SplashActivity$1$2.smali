.class Lcom/eztv/powerful/SplashActivity$1$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eztv/powerful/SplashActivity$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/eztv/powerful/SplashActivity$1;


# direct methods
.method constructor <init>(Lcom/eztv/powerful/SplashActivity$1;)V
    .locals 0

    iput-object p1, p0, Lcom/eztv/powerful/SplashActivity$1$2;->a:Lcom/eztv/powerful/SplashActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/eztv/powerful/SplashActivity;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/login/bg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MyTV/1.0"

    invoke-static {v0, v1}, Lcom/eztv/powerful/util/f;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/eztv/powerful/SplashActivity$1$2;->a:Lcom/eztv/powerful/SplashActivity$1;

    iget-object v1, v1, Lcom/eztv/powerful/SplashActivity$1;->a:Lcom/eztv/powerful/SplashActivity;

    invoke-virtual {v1}, Lcom/eztv/powerful/SplashActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/eztv/powerful/util/b;->a(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/k/a/f;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
