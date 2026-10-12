.class public Lcom/i/e;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/i/j;

.field private b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ltv/danmaku/ijk/media/player/IMediaPlayer;

.field private d:J

.field private e:J

.field private f:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/TableLayout;)V
    .locals 4

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/i/e;->b:Landroid/util/SparseArray;

    iput-wide v2, p0, Lcom/i/e;->d:J

    iput-wide v2, p0, Lcom/i/e;->e:J

    new-instance v0, Lcom/i/e$1;

    invoke-direct {v0, p0}, Lcom/i/e$1;-><init>(Lcom/i/e;)V

    iput-object v0, p0, Lcom/i/e;->f:Landroid/os/Handler;

    new-instance v0, Lcom/i/j;

    invoke-direct {v0, p1, p2}, Lcom/i/j;-><init>(Landroid/content/Context;Landroid/widget/TableLayout;)V

    iput-object v0, p0, Lcom/i/e;->a:Lcom/i/j;

    return-void
.end method

.method static synthetic a(JJ)Ljava/lang/String;
    .locals 2

    invoke-static {p0, p1, p2, p3}, Lcom/i/e;->b(JJ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/i/e;)Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .locals 1

    iget-object v0, p0, Lcom/i/e;->c:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    return-object v0
.end method

.method private a(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/i/e;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/i/e;->a:Lcom/i/j;

    invoke-virtual {v0, p1, p2}, Lcom/i/j;->a(ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/i/e;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/i/e;->a:Lcom/i/j;

    invoke-virtual {v1, v0, p2}, Lcom/i/j;->a(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/i/e;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/i/e;->a(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/i/e;)J
    .locals 2

    iget-wide v0, p0, Lcom/i/e;->d:J

    return-wide v0
.end method

.method private static b(JJ)Ljava/lang/String;
    .locals 10

    const-wide/16 v8, 0x0

    const/4 v3, 0x1

    const/4 v6, 0x0

    const/high16 v4, 0x447a0000    # 1000.0f

    cmp-long v0, p2, v8

    if-gtz v0, :cond_0

    const-string v0, "0 B/s"

    :goto_0
    return-object v0

    :cond_0
    cmp-long v0, p0, v8

    if-gtz v0, :cond_1

    const-string v0, "0 B/s"

    goto :goto_0

    :cond_1
    long-to-float v0, p0

    mul-float/2addr v0, v4

    long-to-float v1, p2

    div-float/2addr v0, v1

    const v1, 0x49742400    # 1000000.0f

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_2

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%.2f MB/s"

    new-array v3, v3, [Ljava/lang/Object;

    div-float/2addr v0, v4

    div-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    cmpl-float v1, v0, v4

    if-ltz v1, :cond_3

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%.1f KB/s"

    new-array v3, v3, [Ljava/lang/Object;

    div-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%d B/s"

    new-array v3, v3, [Ljava/lang/Object;

    float-to-long v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic c(Lcom/i/e;)J
    .locals 2

    iget-wide v0, p0, Lcom/i/e;->e:J

    return-wide v0
.end method

.method static synthetic c(J)Ljava/lang/String;
    .locals 2

    invoke-static {p0, p1}, Lcom/i/e;->e(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/i/e;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/i/e;->f:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic d(J)Ljava/lang/String;
    .locals 2

    invoke-static {p0, p1}, Lcom/i/e;->f(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static e(J)Ljava/lang/String;
    .locals 6

    const/4 v2, 0x1

    const/4 v5, 0x0

    const-wide/16 v0, 0x3e8

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%.2f sec"

    new-array v2, v2, [Ljava/lang/Object;

    long-to-float v3, p0

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%d msec"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static f(J)Ljava/lang/String;
    .locals 6

    const/4 v2, 0x1

    const/4 v5, 0x0

    const/high16 v4, 0x447a0000    # 1000.0f

    const-wide/32 v0, 0x186a0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%.2f MB"

    new-array v2, v2, [Ljava/lang/Object;

    long-to-float v3, p0

    div-float/2addr v3, v4

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-wide/16 v0, 0x64

    cmp-long v0, p0, v0

    if-ltz v0, :cond_1

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%.1f KB"

    new-array v2, v2, [Ljava/lang/Object;

    long-to-float v3, p0

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%d B"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a(J)V
    .locals 1

    iput-wide p1, p0, Lcom/i/e;->d:J

    return-void
.end method

.method public a(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 4

    const/4 v1, 0x1

    iput-object p1, p0, Lcom/i/e;->c:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v0, p0, Lcom/i/e;->c:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/i/e;->f:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/i/e;->f:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method

.method public b(J)V
    .locals 1

    iput-wide p1, p0, Lcom/i/e;->e:J

    return-void
.end method
