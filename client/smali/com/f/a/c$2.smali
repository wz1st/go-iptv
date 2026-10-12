.class final Lcom/f/a/c$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/f/a/c;->a(ILjava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;ZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Landroid/os/Handler;

.field final synthetic c:Landroid/os/Looper;

.field final synthetic d:Ljava/lang/Runnable;

.field final synthetic e:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;ZLandroid/os/Looper;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/f/a/c$2;->e:Ljava/lang/Runnable;

    iput-boolean p2, p0, Lcom/f/a/c$2;->a:Z

    iput-object p3, p0, Lcom/f/a/c$2;->c:Landroid/os/Looper;

    iput-object p4, p0, Lcom/f/a/c$2;->b:Landroid/os/Handler;

    iput-object p5, p0, Lcom/f/a/c$2;->d:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/f/a/c$2;->e:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/f/a/c$2;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/f/a/c$2;->c:Landroid/os/Looper;

    sget-object v1, Lcom/f/a/c;->a:Lcom/f/a/a;

    invoke-virtual {v1}, Lcom/f/a/a;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    :cond_0
    sget-object v0, Lcom/f/a/c;->a:Lcom/f/a/a;

    new-instance v1, Lcom/f/a/c$2$1;

    invoke-direct {v1, p0}, Lcom/f/a/c$2$1;-><init>(Lcom/f/a/c$2;)V

    invoke-virtual {v0, v1}, Lcom/f/a/a;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/f/a/c$2;->c:Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/f/a/c$2$2;

    invoke-direct {v1, p0}, Lcom/f/a/c$2$2;-><init>(Lcom/f/a/c$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/f/a/c$2;->d:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method
