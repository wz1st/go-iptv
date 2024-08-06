.class Lcom/i/e$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/i/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/i/e;


# direct methods
.method constructor <init>(Lcom/i/e;)V
    .locals 0

    iput-object p1, p0, Lcom/i/e$1;->a:Lcom/i/e;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 22

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/i/e$1;->a:Lcom/i/e;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/i/e$1;->a:Lcom/i/e;

    invoke-static {v2}, Lcom/i/e;->a(Lcom/i/e;)Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/i/e$1;->a:Lcom/i/e;

    invoke-static {v2}, Lcom/i/e;->a(Lcom/i/e;)Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v2

    instance-of v2, v2, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/i/e$1;->a:Lcom/i/e;

    invoke-static {v2}, Lcom/i/e;->a(Lcom/i/e;)Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v2

    check-cast v2, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    :goto_1
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getVideoDecoder()I

    move-result v3

    packed-switch v3, :pswitch_data_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/i/e$1;->a:Lcom/i/e;

    const v4, 0x7f0f00e6

    const-string v5, ""

    invoke-static {v3, v4, v5}, Lcom/i/e;->a(Lcom/i/e;ILjava/lang/String;)V

    :goto_2
    invoke-virtual {v2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getVideoOutputFramesPerSecond()F

    move-result v3

    invoke-virtual {v2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getVideoDecodeFramesPerSecond()F

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/i/e$1;->a:Lcom/i/e;

    const v6, 0x7f0f004e

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, "%.2f / %.2f"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v9, v10

    const/4 v4, 0x1

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v9, v4

    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v6, v3}, Lcom/i/e;->a(Lcom/i/e;ILjava/lang/String;)V

    invoke-virtual {v2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getVideoCachedDuration()J

    move-result-wide v4

    invoke-virtual {v2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getAudioCachedDuration()J

    move-result-wide v6

    invoke-virtual {v2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getVideoCachedBytes()J

    move-result-wide v8

    invoke-virtual {v2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getAudioCachedBytes()J

    move-result-wide v10

    invoke-virtual {v2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getTcpSpeed()J

    move-result-wide v12

    invoke-virtual {v2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getBitRate()J

    move-result-wide v14

    invoke-virtual {v2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getSeekLoadDuration()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/i/e$1;->a:Lcom/i/e;

    move-object/from16 v16, v0

    const v17, 0x7f0f00e5

    sget-object v18, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v19, "%s, %s"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static {v4, v5}, Lcom/i/e;->c(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v20, v21

    const/4 v4, 0x1

    invoke-static {v8, v9}, Lcom/i/e;->d(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v20, v4

    invoke-static/range {v18 .. v20}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v0, v1, v4}, Lcom/i/e;->a(Lcom/i/e;ILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/i/e$1;->a:Lcom/i/e;

    const v5, 0x7f0f0018

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "%s, %s"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static {v6, v7}, Lcom/i/e;->c(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v16, v17

    const/4 v6, 0x1

    invoke-static {v10, v11}, Lcom/i/e;->d(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v16, v6

    move-object/from16 v0, v16

    invoke-static {v8, v9, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/i/e;->a(Lcom/i/e;ILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/i/e$1;->a:Lcom/i/e;

    const v5, 0x7f0f0081

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "%d ms"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/i/e$1;->a:Lcom/i/e;

    invoke-static {v10}, Lcom/i/e;->b(Lcom/i/e;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/i/e;->a(Lcom/i/e;ILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/i/e$1;->a:Lcom/i/e;

    const v5, 0x7f0f00c3

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "%d ms"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/i/e$1;->a:Lcom/i/e;

    invoke-static {v10}, Lcom/i/e;->c(Lcom/i/e;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/i/e;->a(Lcom/i/e;ILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/i/e$1;->a:Lcom/i/e;

    const v5, 0x7f0f00c4

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "%d ms"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v8, v9

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v5, v2}, Lcom/i/e;->a(Lcom/i/e;ILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/i/e$1;->a:Lcom/i/e;

    const v3, 0x7f0f00dc

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-wide/16 v8, 0x3e8

    invoke-static {v12, v13, v8, v9}, Lcom/i/e;->a(JJ)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/i/e;->a(Lcom/i/e;ILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/i/e$1;->a:Lcom/i/e;

    const v3, 0x7f0f0042

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%.2f kbs"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    long-to-float v8, v14

    const/high16 v9, 0x447a0000    # 1000.0f

    div-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/i/e;->a(Lcom/i/e;ILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/i/e$1;->a:Lcom/i/e;

    invoke-static {v2}, Lcom/i/e;->d(Lcom/i/e;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/i/e$1;->a:Lcom/i/e;

    invoke-static {v2}, Lcom/i/e;->d(Lcom/i/e;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/i/e$1;->a:Lcom/i/e;

    invoke-static {v2}, Lcom/i/e;->a(Lcom/i/e;)Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v2

    instance-of v2, v2, Ltv/danmaku/ijk/media/player/MediaPlayerProxy;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/i/e$1;->a:Lcom/i/e;

    invoke-static {v2}, Lcom/i/e;->a(Lcom/i/e;)Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v2

    check-cast v2, Ltv/danmaku/ijk/media/player/MediaPlayerProxy;

    invoke-virtual {v2}, Ltv/danmaku/ijk/media/player/MediaPlayerProxy;->getInternalMediaPlayer()Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v2

    if-eqz v2, :cond_2

    instance-of v4, v2, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v4, :cond_2

    check-cast v2, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    goto/16 :goto_1

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/i/e$1;->a:Lcom/i/e;

    const v4, 0x7f0f00e6

    const-string v5, "avcodec"

    invoke-static {v3, v4, v5}, Lcom/i/e;->a(Lcom/i/e;ILjava/lang/String;)V

    goto/16 :goto_2

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/i/e$1;->a:Lcom/i/e;

    const v4, 0x7f0f00e6

    const-string v5, "MediaCodec"

    invoke-static {v3, v4, v5}, Lcom/i/e;->a(Lcom/i/e;ILjava/lang/String;)V

    goto/16 :goto_2

    :cond_2
    move-object v2, v3

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
