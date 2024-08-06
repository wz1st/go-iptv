.class Lcom/i/d$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/i/d;->onError(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/i/d;


# direct methods
.method constructor <init>(Lcom/i/d;)V
    .locals 0

    iput-object p1, p0, Lcom/i/d$2;->a:Lcom/i/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/i/d$2;->a:Lcom/i/d;

    invoke-static {v0}, Lcom/i/d;->h(Lcom/i/d;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/i/d$2;->a:Lcom/i/d;

    invoke-static {v0}, Lcom/i/d;->h(Lcom/i/d;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/i/d$2;->a:Lcom/i/d;

    invoke-static {v1}, Lcom/i/d;->e(Lcom/i/d;)Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v1

    invoke-interface {v0, v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;->onCompletion(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    :cond_0
    return-void
.end method
