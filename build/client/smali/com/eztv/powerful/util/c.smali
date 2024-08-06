.class public Lcom/eztv/powerful/util/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eztv/powerful/util/c$a;
    }
.end annotation


# static fields
.field private static volatile a:Lcom/eztv/powerful/util/c;


# instance fields
.field private b:Z

.field private c:Landroid/view/WindowManager;

.field private d:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/eztv/powerful/util/c;->b:Z

    iput-object v1, p0, Lcom/eztv/powerful/util/c;->c:Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/eztv/powerful/util/c;->d:Landroid/view/WindowManager$LayoutParams;

    return-void
.end method

.method public static a()Lcom/eztv/powerful/util/c;
    .locals 2

    sget-object v0, Lcom/eztv/powerful/util/c;->a:Lcom/eztv/powerful/util/c;

    if-nez v0, :cond_1

    const-class v1, Lcom/eztv/powerful/util/c;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/eztv/powerful/util/c;->a:Lcom/eztv/powerful/util/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/eztv/powerful/util/c;

    invoke-direct {v0}, Lcom/eztv/powerful/util/c;-><init>()V

    sput-object v0, Lcom/eztv/powerful/util/c;->a:Lcom/eztv/powerful/util/c;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/eztv/powerful/util/c;->a:Lcom/eztv/powerful/util/c;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(Landroid/content/Context;Lcom/eztv/powerful/util/c$a;)V
    .locals 1

    const-string v0, "\u8fd8\u6ca1\u6709\u60ac\u6d6e\u6846\u6743\u9650,\u8981\u5f00\u542f\u6743\u9650\u5417?"

    invoke-direct {p0, p1, v0, p2}, Lcom/eztv/powerful/util/c;->a(Landroid/content/Context;Ljava/lang/String;Lcom/eztv/powerful/util/c$a;)V

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Lcom/eztv/powerful/util/c$a;)V
    .locals 1

    const/4 v0, 0x1

    invoke-interface {p3, v0}, Lcom/eztv/powerful/util/c$a;->a(Z)V

    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 3

    const-class v0, Landroid/provider/Settings;

    const-string v1, "ACTION_MANAGE_OVERLAY_PERMISSION"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private c(Landroid/content/Context;)Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_4

    invoke-static {}, Lcom/eztv/powerful/c/f;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/eztv/powerful/util/c;->e(Landroid/content/Context;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/eztv/powerful/c/f;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/eztv/powerful/util/c;->f(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/eztv/powerful/c/f;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/eztv/powerful/util/c;->d(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/eztv/powerful/c/f;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Lcom/eztv/powerful/util/c;->g(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/eztv/powerful/c/f;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0, p1}, Lcom/eztv/powerful/util/c;->h(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0

    :cond_4
    invoke-direct {p0, p1}, Lcom/eztv/powerful/util/c;->i(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0
.end method

.method private d(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p1}, Lcom/eztv/powerful/c/a;->a(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private e(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p1}, Lcom/eztv/powerful/c/c;->a(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private f(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p1}, Lcom/eztv/powerful/c/b;->a(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private g(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p1}, Lcom/eztv/powerful/c/e;->a(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private h(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p1}, Lcom/eztv/powerful/c/d;->a(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private i(Landroid/content/Context;)Z
    .locals 6

    const/4 v1, 0x1

    invoke-static {}, Lcom/eztv/powerful/c/f;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/eztv/powerful/util/c;->f(Landroid/content/Context;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v0, v2, :cond_1

    :try_start_0
    const-class v0, Landroid/provider/Settings;

    const-string v2, "canDrawOverlays"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "FloatPermissionManager"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method private j(Landroid/content/Context;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_5

    invoke-static {}, Lcom/eztv/powerful/c/f;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/eztv/powerful/util/c;->n(Landroid/content/Context;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/eztv/powerful/c/f;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/eztv/powerful/util/c;->m(Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/eztv/powerful/c/f;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Lcom/eztv/powerful/util/c;->l(Landroid/content/Context;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/eztv/powerful/c/f;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0, p1}, Lcom/eztv/powerful/util/c;->k(Landroid/content/Context;)V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/eztv/powerful/c/f;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/eztv/powerful/util/c;->o(Landroid/content/Context;)V

    goto :goto_0

    :cond_5
    invoke-direct {p0, p1}, Lcom/eztv/powerful/util/c;->p(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private k(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/eztv/powerful/util/c$1;

    invoke-direct {v0, p0, p1}, Lcom/eztv/powerful/util/c$1;-><init>(Lcom/eztv/powerful/util/c;Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/eztv/powerful/util/c;->a(Landroid/content/Context;Lcom/eztv/powerful/util/c$a;)V

    return-void
.end method

.method private l(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/eztv/powerful/util/c$2;

    invoke-direct {v0, p0, p1}, Lcom/eztv/powerful/util/c$2;-><init>(Lcom/eztv/powerful/util/c;Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/eztv/powerful/util/c;->a(Landroid/content/Context;Lcom/eztv/powerful/util/c$a;)V

    return-void
.end method

.method private m(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/eztv/powerful/util/c$3;

    invoke-direct {v0, p0, p1}, Lcom/eztv/powerful/util/c$3;-><init>(Lcom/eztv/powerful/util/c;Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/eztv/powerful/util/c;->a(Landroid/content/Context;Lcom/eztv/powerful/util/c$a;)V

    return-void
.end method

.method private n(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/eztv/powerful/util/c$4;

    invoke-direct {v0, p0, p1}, Lcom/eztv/powerful/util/c$4;-><init>(Lcom/eztv/powerful/util/c;Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/eztv/powerful/util/c;->a(Landroid/content/Context;Lcom/eztv/powerful/util/c$a;)V

    return-void
.end method

.method private o(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/eztv/powerful/util/c$5;

    invoke-direct {v0, p0, p1}, Lcom/eztv/powerful/util/c$5;-><init>(Lcom/eztv/powerful/util/c;Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/eztv/powerful/util/c;->a(Landroid/content/Context;Lcom/eztv/powerful/util/c$a;)V

    return-void
.end method

.method private p(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Lcom/eztv/powerful/c/f;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/eztv/powerful/util/c;->m(Landroid/content/Context;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    new-instance v0, Lcom/eztv/powerful/util/c$6;

    invoke-direct {v0, p0, p1}, Lcom/eztv/powerful/util/c$6;-><init>(Lcom/eztv/powerful/util/c;Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/eztv/powerful/util/c;->a(Landroid/content/Context;Lcom/eztv/powerful/util/c$a;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/eztv/powerful/util/c;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/eztv/powerful/util/c;->j(Landroid/content/Context;)V

    const/4 v0, 0x0

    goto :goto_0
.end method
