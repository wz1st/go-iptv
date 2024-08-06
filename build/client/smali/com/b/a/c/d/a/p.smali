.class final Lcom/b/a/c/d/a/p;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/io/File;

.field private static volatile d:Lcom/b/a/c/d/a/p;


# instance fields
.field private volatile b:I

.field private volatile c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/self/fd"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/b/a/c/d/a/p;->a:Ljava/io/File;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b/a/c/d/a/p;->c:Z

    return-void
.end method

.method static a()Lcom/b/a/c/d/a/p;
    .locals 2

    sget-object v0, Lcom/b/a/c/d/a/p;->d:Lcom/b/a/c/d/a/p;

    if-nez v0, :cond_1

    const-class v1, Lcom/b/a/c/d/a/p;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/b/a/c/d/a/p;->d:Lcom/b/a/c/d/a/p;

    if-nez v0, :cond_0

    new-instance v0, Lcom/b/a/c/d/a/p;

    invoke-direct {v0}, Lcom/b/a/c/d/a/p;-><init>()V

    sput-object v0, Lcom/b/a/c/d/a/p;->d:Lcom/b/a/c/d/a/p;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/b/a/c/d/a/p;->d:Lcom/b/a/c/d/a/p;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private declared-synchronized b()Z
    .locals 4

    const/16 v3, 0x2bc

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/b/a/c/d/a/p;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/b/a/c/d/a/p;->b:I

    const/16 v2, 0x32

    if-lt v1, v2, :cond_1

    const/4 v1, 0x0

    iput v1, p0, Lcom/b/a/c/d/a/p;->b:I

    sget-object v1, Lcom/b/a/c/d/a/p;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-ge v1, v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/b/a/c/d/a/p;->c:Z

    iget-boolean v0, p0, Lcom/b/a/c/d/a/p;->c:Z

    if-nez v0, :cond_1

    const-string v0, "Downsampler"

    const/4 v2, 0x5

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Downsampler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Excluding HARDWARE bitmap config because we\'re over the file descriptor limit, file descriptors "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", limit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2bc

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-boolean v0, p0, Lcom/b/a/c/d/a/p;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method a(IILandroid/graphics/BitmapFactory$Options;Lcom/b/a/c/b;ZZ)Z
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    const/16 v3, 0x80

    const/4 v1, 0x0

    if-eqz p5, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_0

    if-eqz p6, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    if-lt p1, v3, :cond_3

    if-lt p2, v3, :cond_3

    invoke-direct {p0}, Lcom/b/a/c/d/a/p;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_1

    sget-object v2, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    iput-object v2, p3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    iput-boolean v1, p3, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method
