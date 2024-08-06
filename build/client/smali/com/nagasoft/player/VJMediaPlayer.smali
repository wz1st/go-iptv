.class public Lcom/nagasoft/player/VJMediaPlayer;
.super Ljava/lang/Object;


# static fields
.field public static final LIBS:[Ljava/lang/String;

.field private static sLoaded:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPlaying:Z

.field private mRenderThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "ffplay"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "p2pcore"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "ffmpeg"

    aput-object v2, v0, v1

    sput-object v0, Lcom/nagasoft/player/VJMediaPlayer;->LIBS:[Ljava/lang/String;

    sput-boolean v3, Lcom/nagasoft/player/VJMediaPlayer;->sLoaded:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcom/nagasoft/player/VJMediaPlayer;->initVideoView()V

    return-void
.end method

.method private native Close()V
.end method

.method private native EnableDecodeAudio(Z)V
.end method

.method private native EnableErrorCallback()V
.end method

.method private native GetProgress()D
.end method

.method private native InitCodecs()V
.end method

.method private native Open(Ljava/lang/String;)V
.end method

.method private native Play()V
.end method

.method private native SetSurface(Landroid/view/Surface;)V
.end method

.method private native Stop()V
.end method

.method static synthetic access$000(Lcom/nagasoft/player/VJMediaPlayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/nagasoft/player/VJMediaPlayer;->Play()V

    return-void
.end method

.method static synthetic access$102(Lcom/nagasoft/player/VJMediaPlayer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/nagasoft/player/VJMediaPlayer;->mPlaying:Z

    return p1
.end method

.method private initVideoView()V
    .locals 2

    invoke-static {}, Lcom/nagasoft/player/VJMediaPlayer;->loadLibs()Z

    sget-boolean v0, Lcom/nagasoft/player/VJMediaPlayer;->sLoaded:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/nagasoft/player/VJMediaPlayer;->EnableErrorCallback()V

    invoke-direct {p0}, Lcom/nagasoft/player/VJMediaPlayer;->InitCodecs()V

    const-string v0, "FFMpeg"

    const-string v1, "initVideoView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private static loadLibs()Z
    .locals 6

    const/4 v1, 0x0

    const/4 v3, 0x1

    sget-boolean v0, Lcom/nagasoft/player/VJMediaPlayer;->sLoaded:Z

    if-eqz v0, :cond_0

    :goto_0
    return v3

    :cond_0
    move v0, v1

    move v2, v1

    :goto_1
    sget-object v1, Lcom/nagasoft/player/VJMediaPlayer;->LIBS:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    :try_start_0
    sget-object v1, Lcom/nagasoft/player/VJMediaPlayer;->LIBS:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v1, "FFMpeg"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "load lib: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/nagasoft/player/VJMediaPlayer;->LIBS:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    :goto_2
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "FFMpeg"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t load lib: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/nagasoft/player/VJMediaPlayer;->LIBS:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    goto :goto_2

    :cond_1
    if-nez v2, :cond_2

    sput-boolean v3, Lcom/nagasoft/player/VJMediaPlayer;->sLoaded:Z

    :cond_2
    sget-boolean v3, Lcom/nagasoft/player/VJMediaPlayer;->sLoaded:Z

    goto :goto_0
.end method


# virtual methods
.method public native GetCurrentTime()D
.end method

.method public native GetDuration()D
.end method

.method public native IsDecodingAudio()Z
.end method

.method public native IsLiveStream()Z
.end method

.method public native IsPlaying()Z
.end method

.method public native Pause(Z)Z
.end method

.method public native Seek(D)V
.end method

.method public decodeAudio(Z)V
    .locals 2

    const-string v0, "FFMpeg"

    const-string v1, "decodeAudio"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/nagasoft/player/VJMediaPlayer;->EnableDecodeAudio(Z)V

    return-void
.end method

.method protected finalize()V
    .locals 2

    const-string v0, "FFMpeg"

    const-string v1, "finalize"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/nagasoft/player/VJMediaPlayer;->sLoaded:Z

    return-void
.end method

.method public pause()Z
    .locals 2

    const-string v0, "FFMpeg"

    const-string v1, "Pause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nagasoft/player/VJMediaPlayer;->mPlaying:Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nagasoft/player/VJMediaPlayer;->Pause(Z)Z

    move-result v0

    return v0
.end method

.method public release()V
    .locals 2

    const-string v0, "FFMpeg"

    const-string v1, "release"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p0}, Lcom/nagasoft/player/VJMediaPlayer;->stop()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-direct {p0}, Lcom/nagasoft/player/VJMediaPlayer;->Close()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public resume()Z
    .locals 2

    const-string v0, "FFMpeg"

    const-string v1, "resume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nagasoft/player/VJMediaPlayer;->mPlaying:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nagasoft/player/VJMediaPlayer;->Pause(Z)Z

    move-result v0

    return v0
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 1

    :try_start_0
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nagasoft/player/VJMediaPlayer;->SetSurface(Landroid/view/Surface;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .locals 3

    const-string v0, "FFMpeg"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVideoPath:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/nagasoft/player/VJMediaPlayer;->Open(Ljava/lang/String;)V

    return-void
.end method

.method public start()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nagasoft/player/VJMediaPlayer;->mPlaying:Z

    const-string v0, "FFMpeg"

    const-string v1, "startVideo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/nagasoft/player/VJMediaPlayer;->mRenderThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    new-instance v0, Lcom/nagasoft/player/VJMediaPlayer$1;

    invoke-direct {v0, p0}, Lcom/nagasoft/player/VJMediaPlayer$1;-><init>(Lcom/nagasoft/player/VJMediaPlayer;)V

    iput-object v0, p0, Lcom/nagasoft/player/VJMediaPlayer;->mRenderThread:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/nagasoft/player/VJMediaPlayer;->mRenderThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    iget-boolean v0, p0, Lcom/nagasoft/player/VJMediaPlayer;->mPlaying:Z

    if-eqz v0, :cond_1

    const-string v0, "FFMpeg"

    const-string v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nagasoft/player/VJMediaPlayer;->mPlaying:Z

    invoke-direct {p0}, Lcom/nagasoft/player/VJMediaPlayer;->Stop()V

    iget-object v0, p0, Lcom/nagasoft/player/VJMediaPlayer;->mRenderThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nagasoft/player/VJMediaPlayer;->mRenderThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nagasoft/player/VJMediaPlayer;->mRenderThread:Ljava/lang/Thread;

    :cond_1
    return-void
.end method
