.class Lcom/eztv/powerful/SplashActivity$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eztv/powerful/SplashActivity;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/eztv/powerful/SplashActivity;


# direct methods
.method constructor <init>(Lcom/eztv/powerful/SplashActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/eztv/powerful/SplashActivity$4;->a:Lcom/eztv/powerful/SplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-wide/16 v0, 0xbb8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    iget-object v0, p0, Lcom/eztv/powerful/SplashActivity$4;->a:Lcom/eztv/powerful/SplashActivity;

    invoke-static {v0}, Lcom/eztv/powerful/SplashActivity;->l(Lcom/eztv/powerful/SplashActivity;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
