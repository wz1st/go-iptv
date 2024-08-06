.class Lcom/i/l$8;
.super Ljava/lang/Object;

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnTimedTextListener;


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

    iput-object p1, p0, Lcom/i/l$8;->a:Lcom/i/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimedText(Ltv/danmaku/ijk/media/player/IMediaPlayer;Ltv/danmaku/ijk/media/player/IjkTimedText;)V
    .locals 2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/i/l$8;->a:Lcom/i/l;

    invoke-static {v0}, Lcom/i/l;->s(Lcom/i/l;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Ltv/danmaku/ijk/media/player/IjkTimedText;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
