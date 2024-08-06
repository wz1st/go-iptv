.class Lcom/i/l$3;
.super Ljava/lang/Object;

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;


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

    iput-object p1, p0, Lcom/i/l$3;->a:Lcom/i/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 2

    const/4 v1, 0x5

    iget-object v0, p0, Lcom/i/l$3;->a:Lcom/i/l;

    invoke-static {v0, v1}, Lcom/i/l;->e(Lcom/i/l;I)I

    iget-object v0, p0, Lcom/i/l$3;->a:Lcom/i/l;

    invoke-static {v0, v1}, Lcom/i/l;->f(Lcom/i/l;I)I

    iget-object v0, p0, Lcom/i/l$3;->a:Lcom/i/l;

    invoke-static {v0}, Lcom/i/l;->k(Lcom/i/l;)Lcom/i/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/i/l$3;->a:Lcom/i/l;

    invoke-static {v0}, Lcom/i/l;->k(Lcom/i/l;)Lcom/i/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/i/b;->a()V

    :cond_0
    iget-object v0, p0, Lcom/i/l$3;->a:Lcom/i/l;

    invoke-static {v0}, Lcom/i/l;->l(Lcom/i/l;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/i/l$3;->a:Lcom/i/l;

    invoke-static {v0}, Lcom/i/l;->l(Lcom/i/l;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/i/l$3;->a:Lcom/i/l;

    invoke-static {v1}, Lcom/i/l;->j(Lcom/i/l;)Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v1

    invoke-interface {v0, v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;->onCompletion(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    :cond_1
    return-void
.end method
