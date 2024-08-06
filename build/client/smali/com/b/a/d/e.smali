.class final Lcom/b/a/d/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/b/a/d/c;


# instance fields
.field final a:Lcom/b/a/d/c$a;

.field b:Z

.field private final c:Landroid/content/Context;

.field private d:Z

.field private final e:Landroid/content/BroadcastReceiver;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/b/a/d/c$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/b/a/d/e$1;

    invoke-direct {v0, p0}, Lcom/b/a/d/e$1;-><init>(Lcom/b/a/d/e;)V

    iput-object v0, p0, Lcom/b/a/d/e;->e:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/d/e;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/b/a/d/e;->a:Lcom/b/a/d/c$a;

    return-void
.end method

.method private a()V
    .locals 4

    iget-boolean v0, p0, Lcom/b/a/d/e;->d:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/b/a/d/e;->c:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/b/a/d/e;->a(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/b/a/d/e;->b:Z

    :try_start_0
    iget-object v0, p0, Lcom/b/a/d/e;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/b/a/d/e;->e:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b/a/d/e;->d:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ConnectivityMonitor"

    const/4 v2, 0x5

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ConnectivityMonitor"

    const-string v2, "Failed to register"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private b()V
    .locals 2

    iget-boolean v0, p0, Lcom/b/a/d/e;->d:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/b/a/d/e;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/b/a/d/e;->e:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/b/a/d/e;->d:Z

    goto :goto_0
.end method


# virtual methods
.method a(Landroid/content/Context;)Z
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    const/4 v1, 0x1

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-static {v0}, Lcom/b/a/i/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    :try_start_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v2, "ConnectivityMonitor"

    const/4 v3, 0x5

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "ConnectivityMonitor"

    const-string v3, "Failed to determine connectivity status when connectivity changed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()V
    .locals 0

    invoke-direct {p0}, Lcom/b/a/d/e;->a()V

    return-void
.end method

.method public d()V
    .locals 0

    invoke-direct {p0}, Lcom/b/a/d/e;->b()V

    return-void
.end method

.method public e()V
    .locals 0

    return-void
.end method
