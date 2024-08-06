.class public Lcom/nagasoft/player/VJPlayer;
.super Ljava/lang/Object;


# static fields
.field public static final PLAYER_NOTIFY_URL:I = 0x1011

.field protected static final TAG:Ljava/lang/String; = "NGPlayer"

.field private static gbload:Z


# instance fields
.field private final mNativeListener:I

.field private final mNativePlayer:I

.field private mStrVideoURL:Ljava/lang/String;

.field private mUCCallback:Lcom/nagasoft/player/UrlChanged;

.field private mVELCallback:Lcom/nagasoft/player/OnVJMSErrorListener;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v1, 0x0

    sput-boolean v1, Lcom/nagasoft/player/VJPlayer;->gbload:Z

    :try_start_0
    const-string v0, "p2pcore"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "vjplayer_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/nagasoft/player/VJPlayer;->gbload:Z

    invoke-static {}, Lcom/nagasoft/player/VJPlayer;->native_init()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sput-boolean v1, Lcom/nagasoft/player/VJPlayer;->gbload:Z

    const-string v1, "NGPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadLibrary libvjplayer_jni error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {v0}, Lcom/e/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public constructor <init>(Lcom/nagasoft/player/UrlChanged;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/nagasoft/player/VJPlayer;->mNativeListener:I

    iput v0, p0, Lcom/nagasoft/player/VJPlayer;->mNativePlayer:I

    iput-object v1, p0, Lcom/nagasoft/player/VJPlayer;->mUCCallback:Lcom/nagasoft/player/UrlChanged;

    iput-object v1, p0, Lcom/nagasoft/player/VJPlayer;->mVELCallback:Lcom/nagasoft/player/OnVJMSErrorListener;

    sget-boolean v0, Lcom/nagasoft/player/VJPlayer;->gbload:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/nagasoft/player/VJPlayer;->native_setup(Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lcom/nagasoft/player/VJPlayer;->mUCCallback:Lcom/nagasoft/player/UrlChanged;

    return-void
.end method

.method public static final native native_init()V
.end method


# virtual methods
.method public native _release()V
.end method

.method public native getMac()Ljava/lang/String;
.end method

.method public native getPlayBackDuration()J
.end method

.method public getVideoURL()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nagasoft/player/VJPlayer;->mStrVideoURL:Ljava/lang/String;

    return-object v0
.end method

.method public native isLiveStream()Z
.end method

.method public native isPlayBackStream()Z
.end method

.method public native isVodFile()Z
.end method

.method public final native native_finalize()V
.end method

.method public final native native_setup(Ljava/lang/Object;)V
.end method

.method public notifyError(I)V
    .locals 3

    const-string v0, "NGPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "from native error is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/nagasoft/player/VJPlayer;->notifyUIError(I)V

    return-void
.end method

.method public notifyPlayURL(Ljava/lang/String;)V
    .locals 3

    const-string v0, "NGPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "from native string is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/nagasoft/player/VJPlayer;->mStrVideoURL:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/nagasoft/player/VJPlayer;->notifyUI(Ljava/lang/String;)V

    return-void
.end method

.method protected notifyUI(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/nagasoft/player/VJPlayer;->mUCCallback:Lcom/nagasoft/player/UrlChanged;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nagasoft/player/VJPlayer;->mUCCallback:Lcom/nagasoft/player/UrlChanged;

    invoke-interface {v0, p1}, Lcom/nagasoft/player/UrlChanged;->onUrlChanged(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected notifyUIError(I)V
    .locals 1

    iget-object v0, p0, Lcom/nagasoft/player/VJPlayer;->mVELCallback:Lcom/nagasoft/player/OnVJMSErrorListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nagasoft/player/VJPlayer;->mVELCallback:Lcom/nagasoft/player/OnVJMSErrorListener;

    invoke-interface {v0, p1}, Lcom/nagasoft/player/OnVJMSErrorListener;->onVJMSError(I)V

    :cond_0
    return-void
.end method

.method public native seekPlayBack(J)Z
.end method

.method public setOnVJMSErrorListener(Lcom/nagasoft/player/OnVJMSErrorListener;)V
    .locals 0

    iput-object p1, p0, Lcom/nagasoft/player/VJPlayer;->mVELCallback:Lcom/nagasoft/player/OnVJMSErrorListener;

    return-void
.end method

.method public native setURL(Ljava/lang/String;)V
.end method

.method public native setVJMSBufferTimeout(I)V
.end method

.method public native start()Z
.end method

.method public native stop()V
.end method
