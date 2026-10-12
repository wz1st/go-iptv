.class Lcom/eztv/powerful/util/d$1;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eztv/powerful/util/d;->a(Ljava/lang/Throwable;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/eztv/powerful/util/d;


# direct methods
.method constructor <init>(Lcom/eztv/powerful/util/d;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/eztv/powerful/util/d$1;->b:Lcom/eztv/powerful/util/d;

    iput-object p2, p0, Lcom/eztv/powerful/util/d$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Landroid/os/Looper;->prepare()V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/eztv/powerful/util/d$1;->b:Lcom/eztv/powerful/util/d;

    invoke-static {v1}, Lcom/eztv/powerful/util/d;->a(Lcom/eztv/powerful/util/d;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/eztv/powerful/util/CrashDialog;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "msg"

    iget-object v2, p0, Lcom/eztv/powerful/util/d$1;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/eztv/powerful/util/d$1;->b:Lcom/eztv/powerful/util/d;

    invoke-static {v1}, Lcom/eztv/powerful/util/d;->a(Lcom/eztv/powerful/util/d;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
