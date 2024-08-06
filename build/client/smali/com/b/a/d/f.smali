.class public Lcom/b/a/d/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/b/a/d/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/b/a/d/c$a;)Lcom/b/a/d/c;
    .locals 3

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p1, v0}, Landroid/support/v4/content/a;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string v1, "ConnectivityMonitor"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v2, "ConnectivityMonitor"

    if-eqz v0, :cond_2

    const-string v1, "ACCESS_NETWORK_STATE permission granted, registering connectivity monitor"

    :goto_1
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v0, :cond_3

    new-instance v0, Lcom/b/a/d/e;

    invoke-direct {v0, p1, p2}, Lcom/b/a/d/e;-><init>(Landroid/content/Context;Lcom/b/a/d/c$a;)V

    :goto_2
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const-string v1, "ACCESS_NETWORK_STATE permission missing, cannot register connectivity monitor"

    goto :goto_1

    :cond_3
    new-instance v0, Lcom/b/a/d/j;

    invoke-direct {v0}, Lcom/b/a/d/j;-><init>()V

    goto :goto_2
.end method
