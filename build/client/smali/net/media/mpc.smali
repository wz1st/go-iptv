.class public Lnet/media/mpc;
.super Ljava/lang/Object;


# static fields
.field private static isLoaded:Z

.field private static mp:Lnet/media/mpc;

.field private static port:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lnet/media/mpc;->isLoaded:Z

    const/16 v0, 0x214b

    sput v0, Lnet/media/mpc;->port:I

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    sget-boolean v0, Lnet/media/mpc;->isLoaded:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lnet/media/mpc;->isLoaded:Z

    const-string v0, "mpc_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    sget v1, Lnet/media/mpc;->port:I

    const-string v2, "mis.tvbdo.info"

    const-string v3, "5000"

    const-string v4, "5002"

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lnet/media/mpc;->MPCStart(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const-string v0, "mis-backup.tvbdo.info"

    const-string v1, "5000"

    const-string v2, "5002"

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v1, v2, v3}, Lnet/media/mpc;->MPCAddMISBackup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static getInstance()Lnet/media/mpc;
    .locals 1

    sget-object v0, Lnet/media/mpc;->mp:Lnet/media/mpc;

    if-nez v0, :cond_0

    new-instance v0, Lnet/media/mpc;

    invoke-direct {v0}, Lnet/media/mpc;-><init>()V

    sput-object v0, Lnet/media/mpc;->mp:Lnet/media/mpc;

    :cond_0
    sget-object v0, Lnet/media/mpc;->mp:Lnet/media/mpc;

    return-object v0
.end method


# virtual methods
.method public native MPCAddMISBackup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
.end method

.method public native MPCReset()I
.end method

.method public native MPCStart(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
.end method

.method public native MPCStop()I
.end method

.method public getPro()Ljava/lang/String;
    .locals 1

    const-string v0, "hls"

    return-object v0
.end method

.method public getUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://127.0.0.1:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lnet/media/mpc;->port:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".m3u8?t="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/eztv/powerful/SplashActivity;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&u=tvb@gmail.com&p=0&resp_mode=1&i=akamai"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
