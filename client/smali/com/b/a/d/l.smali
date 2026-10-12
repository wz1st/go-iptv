.class public Lcom/b/a/d/l;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/b/a/d/l$a;
    }
.end annotation


# static fields
.field private static final i:Lcom/b/a/d/l$a;


# instance fields
.field final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/app/FragmentManager;",
            "Lcom/b/a/d/k;",
            ">;"
        }
    .end annotation
.end field

.field final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/support/v4/app/j;",
            "Lcom/b/a/d/o;",
            ">;"
        }
    .end annotation
.end field

.field private volatile c:Lcom/b/a/j;

.field private final d:Landroid/os/Handler;

.field private final e:Lcom/b/a/d/l$a;

.field private final f:Landroid/support/v4/e/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/e/a",
            "<",
            "Landroid/view/View;",
            "Landroid/support/v4/app/e;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Landroid/support/v4/e/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/e/a",
            "<",
            "Landroid/view/View;",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/b/a/d/l$1;

    invoke-direct {v0}, Lcom/b/a/d/l$1;-><init>()V

    sput-object v0, Lcom/b/a/d/l;->i:Lcom/b/a/d/l$a;

    return-void
.end method

.method public constructor <init>(Lcom/b/a/d/l$a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/b/a/d/l;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/b/a/d/l;->b:Ljava/util/Map;

    new-instance v0, Landroid/support/v4/e/a;

    invoke-direct {v0}, Landroid/support/v4/e/a;-><init>()V

    iput-object v0, p0, Lcom/b/a/d/l;->f:Landroid/support/v4/e/a;

    new-instance v0, Landroid/support/v4/e/a;

    invoke-direct {v0}, Landroid/support/v4/e/a;-><init>()V

    iput-object v0, p0, Lcom/b/a/d/l;->g:Landroid/support/v4/e/a;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/b/a/d/l;->h:Landroid/os/Bundle;

    if-eqz p1, :cond_0

    :goto_0
    iput-object p1, p0, Lcom/b/a/d/l;->e:Lcom/b/a/d/l$a;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/b/a/d/l;->d:Landroid/os/Handler;

    return-void

    :cond_0
    sget-object p1, Lcom/b/a/d/l;->i:Lcom/b/a/d/l$a;

    goto :goto_0
.end method

.method private a(Landroid/app/FragmentManager;Landroid/app/Fragment;Z)Lcom/b/a/d/k;
    .locals 3

    const-string v0, "com.bumptech.glide.manager"

    invoke-virtual {p1, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/b/a/d/k;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/b/a/d/l;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/d/k;

    if-nez v0, :cond_1

    new-instance v0, Lcom/b/a/d/k;

    invoke-direct {v0}, Lcom/b/a/d/k;-><init>()V

    invoke-virtual {v0, p2}, Lcom/b/a/d/k;->a(Landroid/app/Fragment;)V

    if-eqz p3, :cond_0

    invoke-virtual {v0}, Lcom/b/a/d/k;->a()Lcom/b/a/d/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/d/a;->a()V

    :cond_0
    iget-object v1, p0, Lcom/b/a/d/l;->a:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const-string v2, "com.bumptech.glide.manager"

    invoke-virtual {v1, v0, v2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    iget-object v1, p0, Lcom/b/a/d/l;->d:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    return-object v0
.end method

.method private a(Landroid/support/v4/app/j;Landroid/support/v4/app/e;Z)Lcom/b/a/d/o;
    .locals 3

    const-string v0, "com.bumptech.glide.manager"

    invoke-virtual {p1, v0}, Landroid/support/v4/app/j;->a(Ljava/lang/String;)Landroid/support/v4/app/e;

    move-result-object v0

    check-cast v0, Lcom/b/a/d/o;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/b/a/d/l;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/d/o;

    if-nez v0, :cond_1

    new-instance v0, Lcom/b/a/d/o;

    invoke-direct {v0}, Lcom/b/a/d/o;-><init>()V

    invoke-virtual {v0, p2}, Lcom/b/a/d/o;->b(Landroid/support/v4/app/e;)V

    if-eqz p3, :cond_0

    invoke-virtual {v0}, Lcom/b/a/d/o;->aa()Lcom/b/a/d/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/d/a;->a()V

    :cond_0
    iget-object v1, p0, Lcom/b/a/d/l;->b:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/support/v4/app/j;->a()Landroid/support/v4/app/o;

    move-result-object v1

    const-string v2, "com.bumptech.glide.manager"

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/o;->a(Landroid/support/v4/app/e;Ljava/lang/String;)Landroid/support/v4/app/o;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/o;->b()I

    iget-object v1, p0, Lcom/b/a/d/l;->d:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    return-object v0
.end method

.method private a(Landroid/content/Context;Landroid/app/FragmentManager;Landroid/app/Fragment;Z)Lcom/b/a/j;
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0, p2, p3, p4}, Lcom/b/a/d/l;->a(Landroid/app/FragmentManager;Landroid/app/Fragment;Z)Lcom/b/a/d/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/d/k;->b()Lcom/b/a/j;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/b/a/c;->a(Landroid/content/Context;)Lcom/b/a/c;

    move-result-object v0

    iget-object v2, p0, Lcom/b/a/d/l;->e:Lcom/b/a/d/l$a;

    invoke-virtual {v1}, Lcom/b/a/d/k;->a()Lcom/b/a/d/a;

    move-result-object v3

    invoke-virtual {v1}, Lcom/b/a/d/k;->c()Lcom/b/a/d/m;

    move-result-object v4

    invoke-interface {v2, v0, v3, v4, p1}, Lcom/b/a/d/l$a;->a(Lcom/b/a/c;Lcom/b/a/d/h;Lcom/b/a/d/m;Landroid/content/Context;)Lcom/b/a/j;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/b/a/d/k;->a(Lcom/b/a/j;)V

    :cond_0
    return-object v0
.end method

.method private a(Landroid/content/Context;Landroid/support/v4/app/j;Landroid/support/v4/app/e;Z)Lcom/b/a/j;
    .locals 5

    invoke-direct {p0, p2, p3, p4}, Lcom/b/a/d/l;->a(Landroid/support/v4/app/j;Landroid/support/v4/app/e;Z)Lcom/b/a/d/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/d/o;->ab()Lcom/b/a/j;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/b/a/c;->a(Landroid/content/Context;)Lcom/b/a/c;

    move-result-object v0

    iget-object v2, p0, Lcom/b/a/d/l;->e:Lcom/b/a/d/l$a;

    invoke-virtual {v1}, Lcom/b/a/d/o;->aa()Lcom/b/a/d/a;

    move-result-object v3

    invoke-virtual {v1}, Lcom/b/a/d/o;->ac()Lcom/b/a/d/m;

    move-result-object v4

    invoke-interface {v2, v0, v3, v4, p1}, Lcom/b/a/d/l$a;->a(Lcom/b/a/c;Lcom/b/a/d/h;Lcom/b/a/d/m;Landroid/content/Context;)Lcom/b/a/j;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/b/a/d/o;->a(Lcom/b/a/j;)V

    :cond_0
    return-object v0
.end method

.method private b(Landroid/content/Context;)Lcom/b/a/j;
    .locals 5

    iget-object v0, p0, Lcom/b/a/d/l;->c:Lcom/b/a/j;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/b/a/d/l;->c:Lcom/b/a/j;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/c;->a(Landroid/content/Context;)Lcom/b/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/b/a/d/l;->e:Lcom/b/a/d/l$a;

    new-instance v2, Lcom/b/a/d/b;

    invoke-direct {v2}, Lcom/b/a/d/b;-><init>()V

    new-instance v3, Lcom/b/a/d/g;

    invoke-direct {v3}, Lcom/b/a/d/g;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-interface {v1, v0, v2, v3, v4}, Lcom/b/a/d/l$a;->a(Lcom/b/a/c;Lcom/b/a/d/h;Lcom/b/a/d/m;Landroid/content/Context;)Lcom/b/a/j;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/d/l;->c:Lcom/b/a/j;

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object v0, p0, Lcom/b/a/d/l;->c:Lcom/b/a/j;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static c(Landroid/app/Activity;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You cannot start a load for a destroyed activity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private static d(Landroid/app/Activity;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/app/Activity;)Lcom/b/a/j;
    .locals 3

    invoke-static {}, Lcom/b/a/i/j;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/b/a/d/l;->a(Landroid/content/Context;)Lcom/b/a/j;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/b/a/d/l;->c(Landroid/app/Activity;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/b/a/d/l;->d(Landroid/app/Activity;)Z

    move-result v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/b/a/d/l;->a(Landroid/content/Context;Landroid/app/FragmentManager;Landroid/app/Fragment;Z)Lcom/b/a/j;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Landroid/content/Context;)Lcom/b/a/j;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You cannot start a load on a null Context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {}, Lcom/b/a/i/j;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    instance-of v0, p1, Landroid/app/Application;

    if-nez v0, :cond_3

    instance-of v0, p1, Landroid/support/v4/app/f;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/support/v4/app/f;

    invoke-virtual {p0, p1}, Lcom/b/a/d/l;->a(Landroid/support/v4/app/f;)Lcom/b/a/j;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_2

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p0, p1}, Lcom/b/a/d/l;->a(Landroid/app/Activity;)Lcom/b/a/j;

    move-result-object v0

    goto :goto_0

    :cond_2
    instance-of v0, p1, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_3

    check-cast p1, Landroid/content/ContextWrapper;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/b/a/d/l;->a(Landroid/content/Context;)Lcom/b/a/j;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1}, Lcom/b/a/d/l;->b(Landroid/content/Context;)Lcom/b/a/j;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Landroid/support/v4/app/f;)Lcom/b/a/j;
    .locals 3

    invoke-static {}, Lcom/b/a/i/j;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v4/app/f;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/b/a/d/l;->a(Landroid/content/Context;)Lcom/b/a/j;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/b/a/d/l;->c(Landroid/app/Activity;)V

    invoke-virtual {p1}, Landroid/support/v4/app/f;->f()Landroid/support/v4/app/j;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/b/a/d/l;->d(Landroid/app/Activity;)Z

    move-result v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/b/a/d/l;->a(Landroid/content/Context;Landroid/support/v4/app/j;Landroid/support/v4/app/e;Z)Lcom/b/a/j;

    move-result-object v0

    goto :goto_0
.end method

.method b(Landroid/app/Activity;)Lcom/b/a/d/k;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/b/a/d/l;->d(Landroid/app/Activity;)Z

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/b/a/d/l;->a(Landroid/app/FragmentManager;Landroid/app/Fragment;Z)Lcom/b/a/d/k;

    move-result-object v0

    return-object v0
.end method

.method b(Landroid/support/v4/app/f;)Lcom/b/a/d/o;
    .locals 3

    invoke-virtual {p1}, Landroid/support/v4/app/f;->f()Landroid/support/v4/app/j;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/b/a/d/l;->d(Landroid/app/Activity;)Z

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/b/a/d/l;->a(Landroid/support/v4/app/j;Landroid/support/v4/app/e;Z)Lcom/b/a/d/o;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 5

    const/4 v1, 0x0

    const/4 v3, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    const/4 v3, 0x0

    move-object v0, v1

    move-object v2, v1

    :goto_0
    if-eqz v3, :cond_0

    if-nez v2, :cond_0

    const-string v1, "RMRetriever"

    const/4 v2, 0x5

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "RMRetriever"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to remove expected request manager fragment, manager: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v3

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/FragmentManager;

    iget-object v1, p0, Lcom/b/a/d/l;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    goto :goto_0

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/app/j;

    iget-object v1, p0, Lcom/b/a/d/l;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
