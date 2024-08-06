.class public final Lcom/b/a/i/e;
.super Ljava/lang/Object;


# static fields
.field private static final a:D


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    const-wide/high16 v4, 0x4018000000000000L    # 6.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    div-double/2addr v0, v2

    :cond_0
    sput-wide v0, Lcom/b/a/i/e;->a:D

    return-void
.end method

.method public static a(J)D
    .locals 4

    invoke-static {}, Lcom/b/a/i/e;->a()J

    move-result-wide v0

    sub-long/2addr v0, p0

    long-to-double v0, v0

    sget-wide v2, Lcom/b/a/i/e;->a:D

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public static a()J
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    goto :goto_0
.end method
