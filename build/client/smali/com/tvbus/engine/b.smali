.class Lcom/tvbus/engine/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/tvbus/engine/TVCore;


# direct methods
.method constructor <init>(Lcom/tvbus/engine/TVCore;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tvbus/engine/b;->a:Lcom/tvbus/engine/TVCore;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "tvcore"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tvbus/engine/b;->a:Lcom/tvbus/engine/TVCore;

    invoke-static {v0}, Lcom/tvbus/engine/TVCore;->a(Lcom/tvbus/engine/TVCore;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/tvbus/engine/TVCore;->a(J)V

    invoke-static {}, Lcom/tvbus/engine/TVCore;->a()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tvbus/engine/b;->a:Lcom/tvbus/engine/TVCore;

    invoke-static {}, Lcom/tvbus/engine/TVCore;->a()J

    move-result-wide v2

    iget-object v1, p0, Lcom/tvbus/engine/b;->a:Lcom/tvbus/engine/TVCore;

    invoke-static {v1}, Lcom/tvbus/engine/TVCore;->b(Lcom/tvbus/engine/TVCore;)Lcom/tvbus/engine/d;

    move-result-object v1

    invoke-static {v0, v2, v3, v1}, Lcom/tvbus/engine/TVCore;->a(Lcom/tvbus/engine/TVCore;JLcom/tvbus/engine/d;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tvbus/engine/c;

    iget-object v2, p0, Lcom/tvbus/engine/b;->a:Lcom/tvbus/engine/TVCore;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/tvbus/engine/c;-><init>(Lcom/tvbus/engine/TVCore;Lcom/tvbus/engine/c;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const-string v1, "tvcore"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method
