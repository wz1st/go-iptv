.class Lcom/i/l$4;
.super Ljava/lang/Object;

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;


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

    iput-object p1, p0, Lcom/i/l$4;->a:Lcom/i/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z
    .locals 3

    iget-object v0, p0, Lcom/i/l$4;->a:Lcom/i/l;

    invoke-static {v0}, Lcom/i/l;->m(Lcom/i/l;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/i/l$4;->a:Lcom/i/l;

    invoke-static {v0}, Lcom/i/l;->m(Lcom/i/l;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;->onInfo(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z

    :cond_0
    sparse-switch p2, :sswitch_data_0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0

    :sswitch_0
    iget-object v0, p0, Lcom/i/l$4;->a:Lcom/i/l;

    invoke-static {v0}, Lcom/i/l;->n(Lcom/i/l;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MEDIA_INFO_VIDEO_TRACK_LAGGING:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/i/l$4;->a:Lcom/i/l;

    invoke-static {v0}, Lcom/i/l;->n(Lcom/i/l;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MEDIA_INFO_VIDEO_RENDERING_START:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/i/l$4;->a:Lcom/i/l;

    invoke-static {v0}, Lcom/i/l;->n(Lcom/i/l;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MEDIA_INFO_BUFFERING_START:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/i/l$4;->a:Lcom/i/l;

    invoke-static {v0}, Lcom/i/l;->n(Lcom/i/l;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MEDIA_INFO_BUFFERING_END:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/i/l$4;->a:Lcom/i/l;

    invoke-static {v0}, Lcom/i/l;->n(Lcom/i/l;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MEDIA_INFO_NETWORK_BANDWIDTH: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/i/l$4;->a:Lcom/i/l;

    invoke-static {v0}, Lcom/i/l;->n(Lcom/i/l;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MEDIA_INFO_BAD_INTERLEAVING:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_6
    iget-object v0, p0, Lcom/i/l$4;->a:Lcom/i/l;

    invoke-static {v0}, Lcom/i/l;->n(Lcom/i/l;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MEDIA_INFO_NOT_SEEKABLE:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_7
    iget-object v0, p0, Lcom/i/l$4;->a:Lcom/i/l;

    invoke-static {v0}, Lcom/i/l;->n(Lcom/i/l;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MEDIA_INFO_METADATA_UPDATE:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_8
    iget-object v0, p0, Lcom/i/l$4;->a:Lcom/i/l;

    invoke-static {v0}, Lcom/i/l;->n(Lcom/i/l;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MEDIA_INFO_UNSUPPORTED_SUBTITLE:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_9
    iget-object v0, p0, Lcom/i/l$4;->a:Lcom/i/l;

    invoke-static {v0}, Lcom/i/l;->n(Lcom/i/l;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MEDIA_INFO_SUBTITLE_TIMED_OUT:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :sswitch_a
    iget-object v0, p0, Lcom/i/l$4;->a:Lcom/i/l;

    invoke-static {v0, p3}, Lcom/i/l;->g(Lcom/i/l;I)I

    iget-object v0, p0, Lcom/i/l$4;->a:Lcom/i/l;

    invoke-static {v0}, Lcom/i/l;->n(Lcom/i/l;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MEDIA_INFO_VIDEO_ROTATION_CHANGED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/i/l$4;->a:Lcom/i/l;

    invoke-static {v0}, Lcom/i/l;->c(Lcom/i/l;)Lcom/i/c;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/i/l$4;->a:Lcom/i/l;

    invoke-static {v0}, Lcom/i/l;->c(Lcom/i/l;)Lcom/i/c;

    move-result-object v0

    invoke-interface {v0, p3}, Lcom/i/c;->setVideoRotation(I)V

    goto/16 :goto_0

    :sswitch_b
    iget-object v0, p0, Lcom/i/l$4;->a:Lcom/i/l;

    invoke-static {v0}, Lcom/i/l;->n(Lcom/i/l;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MEDIA_INFO_AUDIO_RENDERING_START:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x2bc -> :sswitch_0
        0x2bd -> :sswitch_2
        0x2be -> :sswitch_3
        0x2bf -> :sswitch_4
        0x320 -> :sswitch_5
        0x321 -> :sswitch_6
        0x322 -> :sswitch_7
        0x385 -> :sswitch_8
        0x386 -> :sswitch_9
        0x2711 -> :sswitch_a
        0x2712 -> :sswitch_b
    .end sparse-switch
.end method
