.class public final Lcom/b/a/c/b/b/i;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/b/a/c/b/b/i$b;,
        Lcom/b/a/c/b/b/i$a;,
        Lcom/b/a/c/b/b/i$c;
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Landroid/content/Context;

.field private final d:I


# direct methods
.method constructor <init>(Lcom/b/a/c/b/b/i$a;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/b/a/c/b/b/i$a;->b:Landroid/content/Context;

    iput-object v0, p0, Lcom/b/a/c/b/b/i;->c:Landroid/content/Context;

    iget-object v0, p1, Lcom/b/a/c/b/b/i$a;->c:Landroid/app/ActivityManager;

    invoke-static {v0}, Lcom/b/a/c/b/b/i;->a(Landroid/app/ActivityManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p1, Lcom/b/a/c/b/b/i$a;->i:I

    div-int/lit8 v0, v0, 0x2

    :goto_0
    iput v0, p0, Lcom/b/a/c/b/b/i;->d:I

    iget-object v0, p1, Lcom/b/a/c/b/b/i$a;->c:Landroid/app/ActivityManager;

    iget v1, p1, Lcom/b/a/c/b/b/i$a;->g:F

    iget v2, p1, Lcom/b/a/c/b/b/i$a;->h:F

    invoke-static {v0, v1, v2}, Lcom/b/a/c/b/b/i;->a(Landroid/app/ActivityManager;FF)I

    move-result v1

    iget-object v0, p1, Lcom/b/a/c/b/b/i$a;->d:Lcom/b/a/c/b/b/i$c;

    invoke-interface {v0}, Lcom/b/a/c/b/b/i$c;->a()I

    move-result v0

    iget-object v2, p1, Lcom/b/a/c/b/b/i$a;->d:Lcom/b/a/c/b/b/i$c;

    invoke-interface {v2}, Lcom/b/a/c/b/b/i$c;->b()I

    move-result v2

    mul-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x4

    int-to-float v2, v0

    iget v3, p1, Lcom/b/a/c/b/b/i$a;->f:F

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v0, v0

    iget v3, p1, Lcom/b/a/c/b/b/i$a;->e:F

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget v3, p0, Lcom/b/a/c/b/b/i;->d:I

    sub-int v3, v1, v3

    add-int v4, v0, v2

    if-gt v4, v3, :cond_2

    iput v0, p0, Lcom/b/a/c/b/b/i;->b:I

    iput v2, p0, Lcom/b/a/c/b/b/i;->a:I

    :goto_1
    const-string v3, "MemorySizeCalculator"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "MemorySizeCalculator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calculation complete, Calculated memory cache size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/b/a/c/b/b/i;->b:I

    invoke-direct {p0, v5}, Lcom/b/a/c/b/b/i;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", pool size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/b/a/c/b/b/i;->a:I

    invoke-direct {p0, v5}, Lcom/b/a/c/b/b/i;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", byte array size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/b/a/c/b/b/i;->d:I

    invoke-direct {p0, v5}, Lcom/b/a/c/b/b/i;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", memory class limited? "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/2addr v0, v2

    if-le v0, v1, :cond_3

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", max size: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, v1}, Lcom/b/a/c/b/b/i;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", memoryClass: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/b/a/c/b/b/i$a;->c:Landroid/app/ActivityManager;

    invoke-virtual {v1}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isLowMemoryDevice: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/b/a/c/b/b/i$a;->c:Landroid/app/ActivityManager;

    invoke-static {v1}, Lcom/b/a/c/b/b/i;->a(Landroid/app/ActivityManager;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    iget v0, p1, Lcom/b/a/c/b/b/i$a;->i:I

    goto/16 :goto_0

    :cond_2
    int-to-float v3, v3

    iget v4, p1, Lcom/b/a/c/b/b/i$a;->f:F

    iget v5, p1, Lcom/b/a/c/b/b/i$a;->e:F

    add-float/2addr v4, v5

    div-float/2addr v3, v4

    iget v4, p1, Lcom/b/a/c/b/b/i$a;->e:F

    mul-float/2addr v4, v3

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, p0, Lcom/b/a/c/b/b/i;->b:I

    iget v4, p1, Lcom/b/a/c/b/b/i$a;->f:F

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p0, Lcom/b/a/c/b/b/i;->a:I

    goto/16 :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private static a(Landroid/app/ActivityManager;FF)I
    .locals 2

    invoke-virtual {p0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v0

    mul-int/lit16 v0, v0, 0x400

    mul-int/lit16 v0, v0, 0x400

    invoke-static {p0}, Lcom/b/a/c/b/b/i;->a(Landroid/app/ActivityManager;)Z

    move-result v1

    int-to-float v0, v0

    if-eqz v1, :cond_0

    :goto_0
    mul-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0

    :cond_0
    move p2, p1

    goto :goto_0
.end method

.method private a(I)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/b/a/c/b/b/i;->c:Landroid/content/Context;

    int-to-long v2, p1

    invoke-static {v0, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static a(Landroid/app/ActivityManager;)Z
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/b/a/c/b/b/i;->b:I

    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/b/a/c/b/b/i;->a:I

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/b/a/c/b/b/i;->d:I

    return v0
.end method
