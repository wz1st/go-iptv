.class Lcom/eztv/powerful/SplashActivity$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/eztv/powerful/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eztv/powerful/SplashActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/eztv/powerful/g;

.field final synthetic b:Lcom/eztv/powerful/SplashActivity;


# direct methods
.method constructor <init>(Lcom/eztv/powerful/SplashActivity;Lcom/eztv/powerful/g;)V
    .locals 0

    iput-object p1, p0, Lcom/eztv/powerful/SplashActivity$2;->b:Lcom/eztv/powerful/SplashActivity;

    iput-object p2, p0, Lcom/eztv/powerful/SplashActivity$2;->a:Lcom/eztv/powerful/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/eztv/powerful/SplashActivity$2;->b:Lcom/eztv/powerful/SplashActivity;

    const/16 v1, 0x21

    invoke-static {v0, v1}, Lcom/eztv/powerful/SplashActivity;->a(Lcom/eztv/powerful/SplashActivity;I)V

    return-void
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, Lcom/eztv/powerful/SplashActivity$2;->b:Lcom/eztv/powerful/SplashActivity;

    const-string v1, "\u7f51\u7edc\u8fde\u63a5\u5931\u8d25!"

    invoke-static {v0, v1}, Lcom/eztv/powerful/SplashActivity;->a(Lcom/eztv/powerful/SplashActivity;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eztv/powerful/SplashActivity$2;->a:Lcom/eztv/powerful/g;

    sget-object v1, Lcom/eztv/powerful/SplashActivity;->A:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/eztv/powerful/g;->a(Ljava/lang/String;I)V

    return-void
.end method
