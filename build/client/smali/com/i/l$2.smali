.class Lcom/i/l$2;
.super Ljava/lang/Object;

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/i/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/i/l;


# direct methods
.method constructor <init>(Lcom/i/l;)V
    .locals 0

    iput-object p1, p0, Lcom/i/l$2;->a:Lcom/i/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 6

    iget-object v0, p0, Lcom/i/l$2;->a:Lcom/i/l;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/i/l;->a(Lcom/i/l;J)J

    iget-object v0, p0, Lcom/i/l$2;->a:Lcom/i/l;

    invoke-static {v0}, Lcom/i/l;->h(Lcom/i/l;)Lcom/i/e;

    move-result-object v0

    iget-object v1, p0, Lcom/i/l$2;->a:Lcom/i/l;

    invoke-static {v1}, Lcom/i/l;->f(Lcom/i/l;)J

    move-result-wide v2

    iget-object v1, p0, Lcom/i/l$2;->a:Lcom/i/l;

    invoke-static {v1}, Lcom/i/l;->g(Lcom/i/l;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/i/e;->a(J)V

    iget-object v0, p0, Lcom/i/l$2;->a:Lcom/i/l;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/i/l;->e(Lcom/i/l;I)I

    iget-object v0, p0, Lcom/i/l$2;->a:Lcom/i/l;

    invoke-static {v0}, Lcom/i/l;->i(Lcom/i/l;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/i/l$2;->a:Lcom/i/l;

    invoke-static {v0}, Lcom/i/l;->i(Lcom/i/l;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/i/l$2;->a:Lcom/i/l;

    invoke-static {v1}, Lcom/i/l;->j(Lcom/i/l;)Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v1

    invoke-interface {v0, v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;->onPrepared(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    :cond_0
    iget-object v0, p0, Lcom/i/l$2;->a:Lcom/i/l;

    invoke-static {v0}, Lcom/i/l;->k(Lcom/i/l;)Lcom/i/b;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/i/l$2;->a:Lcom/i/l;

    invoke-static {v0}, Lcom/i/l;->k(Lcom/i/l;)Lcom/i/b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/i/b;->a(Z)V

    :cond_1
    iget-object v0, p0, Lcom/i/l$2;->a:Lcom/i/l;

    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/i/l;->a(Lcom/i/l;I)I

    iget-object v0, p0, Lcom/i/l$2;->a:Lcom/i/l;

    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/i/l;->b(Lcom/i/l;I)I

    return-void
.end method
