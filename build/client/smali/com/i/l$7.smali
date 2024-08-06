.class Lcom/i/l$7;
.super Ljava/lang/Object;

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;


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

    iput-object p1, p0, Lcom/i/l$7;->a:Lcom/i/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSeekComplete(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 6

    iget-object v0, p0, Lcom/i/l$7;->a:Lcom/i/l;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/i/l;->b(Lcom/i/l;J)J

    iget-object v0, p0, Lcom/i/l$7;->a:Lcom/i/l;

    invoke-static {v0}, Lcom/i/l;->h(Lcom/i/l;)Lcom/i/e;

    move-result-object v0

    iget-object v1, p0, Lcom/i/l$7;->a:Lcom/i/l;

    invoke-static {v1}, Lcom/i/l;->q(Lcom/i/l;)J

    move-result-wide v2

    iget-object v1, p0, Lcom/i/l$7;->a:Lcom/i/l;

    invoke-static {v1}, Lcom/i/l;->r(Lcom/i/l;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/i/e;->b(J)V

    return-void
.end method
