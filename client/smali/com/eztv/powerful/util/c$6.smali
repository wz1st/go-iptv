.class Lcom/eztv/powerful/util/c$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/eztv/powerful/util/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eztv/powerful/util/c;->p(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/eztv/powerful/util/c;


# direct methods
.method constructor <init>(Lcom/eztv/powerful/util/c;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/eztv/powerful/util/c$6;->b:Lcom/eztv/powerful/util/c;

    iput-object p2, p0, Lcom/eztv/powerful/util/c$6;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/eztv/powerful/util/c$6;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/eztv/powerful/util/c;->b(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "FloatPermissionManager"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v0, "FloatPermissionManager"

    const-string v1, "user manually refuse OVERLAY_PERMISSION"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
