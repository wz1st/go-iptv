.class Lcom/i/l$1;
.super Ljava/lang/Object;

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;


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

    iput-object p1, p0, Lcom/i/l$1;->a:Lcom/i/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoSizeChanged(Ltv/danmaku/ijk/media/player/IMediaPlayer;IIII)V
    .locals 3

    iget-object v0, p0, Lcom/i/l$1;->a:Lcom/i/l;

    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/i/l;->a(Lcom/i/l;I)I

    iget-object v0, p0, Lcom/i/l$1;->a:Lcom/i/l;

    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/i/l;->b(Lcom/i/l;I)I

    iget-object v0, p0, Lcom/i/l$1;->a:Lcom/i/l;

    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoSarNum()I

    move-result v1

    invoke-static {v0, v1}, Lcom/i/l;->c(Lcom/i/l;I)I

    iget-object v0, p0, Lcom/i/l$1;->a:Lcom/i/l;

    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoSarDen()I

    move-result v1

    invoke-static {v0, v1}, Lcom/i/l;->d(Lcom/i/l;I)I

    iget-object v0, p0, Lcom/i/l$1;->a:Lcom/i/l;

    invoke-static {v0}, Lcom/i/l;->a(Lcom/i/l;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/i/l$1;->a:Lcom/i/l;

    invoke-static {v0}, Lcom/i/l;->b(Lcom/i/l;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/i/l$1;->a:Lcom/i/l;

    invoke-static {v0}, Lcom/i/l;->c(Lcom/i/l;)Lcom/i/c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/i/l$1;->a:Lcom/i/l;

    invoke-static {v0}, Lcom/i/l;->c(Lcom/i/l;)Lcom/i/c;

    move-result-object v0

    iget-object v1, p0, Lcom/i/l$1;->a:Lcom/i/l;

    invoke-static {v1}, Lcom/i/l;->a(Lcom/i/l;)I

    move-result v1

    iget-object v2, p0, Lcom/i/l$1;->a:Lcom/i/l;

    invoke-static {v2}, Lcom/i/l;->b(Lcom/i/l;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/i/c;->a(II)V

    iget-object v0, p0, Lcom/i/l$1;->a:Lcom/i/l;

    invoke-static {v0}, Lcom/i/l;->c(Lcom/i/l;)Lcom/i/c;

    move-result-object v0

    iget-object v1, p0, Lcom/i/l$1;->a:Lcom/i/l;

    invoke-static {v1}, Lcom/i/l;->d(Lcom/i/l;)I

    move-result v1

    iget-object v2, p0, Lcom/i/l$1;->a:Lcom/i/l;

    invoke-static {v2}, Lcom/i/l;->e(Lcom/i/l;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/i/c;->b(II)V

    :cond_0
    iget-object v0, p0, Lcom/i/l$1;->a:Lcom/i/l;

    invoke-virtual {v0}, Lcom/i/l;->requestLayout()V

    :cond_1
    return-void
.end method
