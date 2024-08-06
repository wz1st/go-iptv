.class final Lcom/f/a/c$1;
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

.field final synthetic b:Landroid/os/Looper;

.field final synthetic c:Ljava/lang/Runnable;

.field final synthetic d:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;Ljava/lang/Runnable;ZLandroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/f/a/c$1;->d:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/f/a/c$1;->c:Ljava/lang/Runnable;

    iput-boolean p3, p0, Lcom/f/a/c$1;->a:Z

    iput-object p4, p0, Lcom/f/a/c$1;->b:Landroid/os/Looper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    :try_start_0
    iget-object v0, p0, Lcom/f/a/c$1;->d:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2710

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    new-instance v0, Ljava/lang/Error;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8fd9\u91cc\u6709\u4e2a\u8017\u65f6\u4e25\u91cd\u7684\u540e\u53f0\u4efb\u52a1\uff0c\u4efb\u52a1\u4fe1\u606f\u5982\u4e0b\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/f/a/c$1;->d:Ljava/lang/Runnable;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/e/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :cond_0
    iget-object v0, p0, Lcom/f/a/c$1;->c:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/f/a/c$1;->a:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/f/a/c$1;->b:Landroid/os/Looper;

    sget-object v1, Lcom/f/a/c;->a:Lcom/f/a/a;

    invoke-virtual {v1}, Lcom/f/a/a;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_3

    :cond_1
    sget-object v0, Lcom/f/a/c;->a:Lcom/f/a/a;

    iget-object v1, p0, Lcom/f/a/c$1;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/f/a/a;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_1
    :try_start_1
    sget-object v0, Lcom/f/a/c;->b:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/f/a/c$1;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/e/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/f/a/c$1;->b:Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v1, p0, Lcom/f/a/c$1;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2
.end method
