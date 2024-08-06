.class public Lcom/f/a/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/f/a/c$a;
    }
.end annotation


# static fields
.field static a:Lcom/f/a/a;

.field static b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/f/a/c$a;",
            ">;"
        }
    .end annotation
.end field

.field static c:Lcom/f/a/a;

.field static d:Landroid/os/HandlerThread;

.field static e:Lcom/f/a/a;

.field static f:Landroid/os/HandlerThread;

.field static g:Lcom/f/a/a;

.field static h:Landroid/os/HandlerThread;

.field static i:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/f/a/c;->b:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()V
    .locals 3

    const-class v0, Lcom/f/a/c;

    monitor-enter v0

    :try_start_0
    sget-object v0, Lcom/f/a/c;->d:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "BackgroundHandler"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/f/a/c;->d:Landroid/os/HandlerThread;

    sget-object v0, Lcom/f/a/c;->d:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/f/a/a;

    const-string v1, "BackgroundHandler"

    sget-object v2, Lcom/f/a/c;->d:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/f/a/a;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    sput-object v0, Lcom/f/a/c;->c:Lcom/f/a/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    const-class v0, Lcom/f/a/c;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v0

    const-class v1, Lcom/f/a/c;

    monitor-exit v1

    throw v0
.end method

.method public static a(ILjava/lang/Runnable;)V
    .locals 8

    const/4 v2, 0x0

    const/4 v0, 0x2

    if-ne v0, p0, :cond_0

    invoke-static {p1}, Lcom/f/a/c;->a(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move v1, p0

    move-object v3, p1

    move-object v4, v2

    invoke-static/range {v1 .. v7}, Lcom/f/a/c;->a(ILjava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;ZJ)V

    goto :goto_0
.end method

.method public static a(ILjava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;ZJ)V
    .locals 7

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/f/a/c;->b()V

    packed-switch p0, :pswitch_data_0

    sget-object v4, Lcom/f/a/c;->a:Lcom/f/a/a;

    :goto_1
    const/4 v3, 0x0

    if-nez p4, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    if-nez v3, :cond_1

    sget-object v0, Lcom/f/a/c;->a:Lcom/f/a/a;

    invoke-virtual {v0}, Lcom/f/a/a;->getLooper()Landroid/os/Looper;

    move-result-object v3

    :cond_1
    new-instance v5, Lcom/f/a/c$1;

    invoke-direct {v5, p2, p3, p4, v3}, Lcom/f/a/c$1;-><init>(Ljava/lang/Runnable;Ljava/lang/Runnable;ZLandroid/os/Looper;)V

    new-instance v0, Lcom/f/a/c$2;

    move-object v1, p1

    move v2, p4

    invoke-direct/range {v0 .. v5}, Lcom/f/a/c$2;-><init>(Ljava/lang/Runnable;ZLandroid/os/Looper;Landroid/os/Handler;Ljava/lang/Runnable;)V

    invoke-virtual {v4, v0, p5, p6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    if-nez p1, :cond_2

    sget-object v1, Lcom/f/a/c;->b:Ljava/util/HashMap;

    new-instance v2, Lcom/f/a/c$a;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/f/a/c$a;-><init>(Ljava/lang/Runnable;Ljava/lang/Integer;)V

    invoke-virtual {v1, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :pswitch_0
    invoke-static {}, Lcom/f/a/c;->a()V

    sget-object v4, Lcom/f/a/c;->c:Lcom/f/a/a;

    goto :goto_1

    :pswitch_1
    invoke-static {}, Lcom/f/a/c;->e()V

    sget-object v4, Lcom/f/a/c;->g:Lcom/f/a/a;

    goto :goto_1

    :pswitch_2
    sget-object v4, Lcom/f/a/c;->a:Lcom/f/a/a;

    goto :goto_1

    :pswitch_3
    invoke-static {}, Lcom/f/a/c;->c()V

    sget-object v4, Lcom/f/a/c;->e:Lcom/f/a/a;

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/f/a/c;->b:Ljava/util/HashMap;

    new-instance v1, Lcom/f/a/c$a;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v5, v2}, Lcom/f/a/c$a;-><init>(Ljava/lang/Runnable;Ljava/lang/Integer;)V

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static a(Ljava/lang/Runnable;)V
    .locals 1

    invoke-static {}, Lcom/f/a/c;->d()V

    sget-object v0, Lcom/f/a/c;->i:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static b()V
    .locals 3

    const-class v0, Lcom/f/a/c;

    monitor-enter v0

    :try_start_0
    sget-object v0, Lcom/f/a/c;->a:Lcom/f/a/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/f/a/a;

    const-string v1, "BackgroundHandler.MainThreadHandler + 38"

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/f/a/a;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    sput-object v0, Lcom/f/a/c;->a:Lcom/f/a/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    const-class v0, Lcom/f/a/c;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v0

    const-class v1, Lcom/f/a/c;

    monitor-exit v1

    throw v0
.end method

.method private static c()V
    .locals 3

    const-class v0, Lcom/f/a/c;

    monitor-enter v0

    :try_start_0
    sget-object v0, Lcom/f/a/c;->f:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "sNormalHandler"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/f/a/c;->f:Landroid/os/HandlerThread;

    sget-object v0, Lcom/f/a/c;->f:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/f/a/a;

    const-string v1, "sNormalHandler"

    sget-object v2, Lcom/f/a/c;->f:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/f/a/a;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    sput-object v0, Lcom/f/a/c;->e:Lcom/f/a/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    const-class v0, Lcom/f/a/c;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v0

    const-class v1, Lcom/f/a/c;

    monitor-exit v1

    throw v0
.end method

.method private static d()V
    .locals 2

    sget-object v0, Lcom/f/a/c;->i:Landroid/os/Handler;

    if-nez v0, :cond_1

    const-class v0, Lcom/f/a/c;

    monitor-enter v0

    :try_start_0
    sget-object v0, Lcom/f/a/c;->i:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/f/a/c;->i:Landroid/os/Handler;

    :cond_0
    const-class v0, Lcom/f/a/c;

    monitor-exit v0

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    const-class v1, Lcom/f/a/c;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static e()V
    .locals 3

    const-class v0, Lcom/f/a/c;

    monitor-enter v0

    :try_start_0
    sget-object v0, Lcom/f/a/c;->h:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "WorkHandler"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/f/a/c;->h:Landroid/os/HandlerThread;

    sget-object v0, Lcom/f/a/c;->h:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/f/a/a;

    const-string v1, "WorkHandler"

    sget-object v2, Lcom/f/a/c;->h:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/f/a/a;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    sput-object v0, Lcom/f/a/c;->g:Lcom/f/a/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    const-class v0, Lcom/f/a/c;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v0

    const-class v1, Lcom/f/a/c;

    monitor-exit v1

    throw v0
.end method
