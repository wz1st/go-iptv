.class public Lcom/b/a/c/b/a/k;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/b/a/c/b/a/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/b/a/c/b/a/k$b;,
        Lcom/b/a/c/b/a/k$a;
    }
.end annotation


# static fields
.field private static final a:Landroid/graphics/Bitmap$Config;


# instance fields
.field private final b:Lcom/b/a/c/b/a/l;

.field private final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/graphics/Bitmap$Config;",
            ">;"
        }
    .end annotation
.end field

.field private final d:J

.field private final e:Lcom/b/a/c/b/a/k$a;

.field private f:J

.field private g:J

.field private h:I

.field private i:I

.field private j:I

.field private k:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    sput-object v0, Lcom/b/a/c/b/a/k;->a:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 3

    invoke-static {}, Lcom/b/a/c/b/a/k;->f()Lcom/b/a/c/b/a/l;

    move-result-object v0

    invoke-static {}, Lcom/b/a/c/b/a/k;->g()Ljava/util/Set;

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/b/a/c/b/a/k;-><init>(JLcom/b/a/c/b/a/l;Ljava/util/Set;)V

    return-void
.end method

.method constructor <init>(JLcom/b/a/c/b/a/l;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/b/a/c/b/a/l;",
            "Ljava/util/Set",
            "<",
            "Landroid/graphics/Bitmap$Config;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/b/a/c/b/a/k;->d:J

    iput-wide p1, p0, Lcom/b/a/c/b/a/k;->f:J

    iput-object p3, p0, Lcom/b/a/c/b/a/k;->b:Lcom/b/a/c/b/a/l;

    iput-object p4, p0, Lcom/b/a/c/b/a/k;->c:Ljava/util/Set;

    new-instance v0, Lcom/b/a/c/b/a/k$b;

    invoke-direct {v0}, Lcom/b/a/c/b/a/k$b;-><init>()V

    iput-object v0, p0, Lcom/b/a/c/b/a/k;->e:Lcom/b/a/c/b/a/k$a;

    return-void
.end method

.method private declared-synchronized a(J)V
    .locals 7

    monitor-enter p0

    :goto_0
    :try_start_0
    iget-wide v0, p0, Lcom/b/a/c/b/a/k;->g:J

    cmp-long v0, v0, p1

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/b/a/c/b/a/k;->b:Lcom/b/a/c/b/a/l;

    invoke-interface {v0}, Lcom/b/a/c/b/a/l;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "LruBitmapPool"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "LruBitmapPool"

    const-string v1, "Size mismatch, resetting"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/b/a/c/b/a/k;->e()V

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/b/a/c/b/a/k;->g:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/b/a/c/b/a/k;->e:Lcom/b/a/c/b/a/k$a;

    invoke-interface {v1, v0}, Lcom/b/a/c/b/a/k$a;->b(Landroid/graphics/Bitmap;)V

    iget-wide v2, p0, Lcom/b/a/c/b/a/k;->g:J

    iget-object v1, p0, Lcom/b/a/c/b/a/k;->b:Lcom/b/a/c/b/a/l;

    invoke-interface {v1, v0}, Lcom/b/a/c/b/a/l;->c(Landroid/graphics/Bitmap;)I

    move-result v1

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/b/a/c/b/a/k;->g:J

    iget v1, p0, Lcom/b/a/c/b/a/k;->k:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/b/a/c/b/a/k;->k:I

    const-string v1, "LruBitmapPool"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "LruBitmapPool"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Evicting bitmap="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/b/a/c/b/a/k;->b:Lcom/b/a/c/b/a/l;

    invoke-interface {v3, v0}, Lcom/b/a/c/b/a/l;->b(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-direct {p0}, Lcom/b/a/c/b/a/k;->d()V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static a(Landroid/graphics/Bitmap$Config;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_1

    :cond_0
    return-void

    :cond_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-ne p0, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot create a mutable Bitmap with config: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Consider setting Downsampler#ALLOW_HARDWARE_CONFIG to false in your RequestOptions and/or in GlideBuilder.setDefaultRequestOptions"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static b(Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    invoke-static {p0}, Lcom/b/a/c/b/a/k;->c(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private static c(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 1

    if-eqz p2, :cond_0

    :goto_0
    invoke-static {p0, p1, p2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object p2, Lcom/b/a/c/b/a/k;->a:Landroid/graphics/Bitmap$Config;

    goto :goto_0
.end method

.method private c()V
    .locals 2

    iget-wide v0, p0, Lcom/b/a/c/b/a/k;->f:J

    invoke-direct {p0, v0, v1}, Lcom/b/a/c/b/a/k;->a(J)V

    return-void
.end method

.method private static c(Landroid/graphics/Bitmap;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->setPremultiplied(Z)V

    :cond_0
    return-void
.end method

.method private declared-synchronized d(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-static {p3}, Lcom/b/a/c/b/a/k;->a(Landroid/graphics/Bitmap$Config;)V

    iget-object v1, p0, Lcom/b/a/c/b/a/k;->b:Lcom/b/a/c/b/a/l;

    if-eqz p3, :cond_2

    move-object v0, p3

    :goto_0
    invoke-interface {v1, p1, p2, v0}, Lcom/b/a/c/b/a/l;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v1, "LruBitmapPool"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "LruBitmapPool"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing bitmap="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/b/a/c/b/a/k;->b:Lcom/b/a/c/b/a/l;

    invoke-interface {v3, p1, p2, p3}, Lcom/b/a/c/b/a/l;->b(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v1, p0, Lcom/b/a/c/b/a/k;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/b/a/c/b/a/k;->i:I

    :goto_1
    const-string v1, "LruBitmapPool"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "LruBitmapPool"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Get bitmap="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/b/a/c/b/a/k;->b:Lcom/b/a/c/b/a/l;

    invoke-interface {v3, p1, p2, p3}, Lcom/b/a/c/b/a/l;->b(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-direct {p0}, Lcom/b/a/c/b/a/k;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_2
    :try_start_1
    sget-object v0, Lcom/b/a/c/b/a/k;->a:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/b/a/c/b/a/k;->h:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/b/a/c/b/a/k;->h:I

    iget-wide v2, p0, Lcom/b/a/c/b/a/k;->g:J

    iget-object v1, p0, Lcom/b/a/c/b/a/k;->b:Lcom/b/a/c/b/a/l;

    invoke-interface {v1, v0}, Lcom/b/a/c/b/a/l;->c(Landroid/graphics/Bitmap;)I

    move-result v1

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/b/a/c/b/a/k;->g:J

    iget-object v1, p0, Lcom/b/a/c/b/a/k;->e:Lcom/b/a/c/b/a/k$a;

    invoke-interface {v1, v0}, Lcom/b/a/c/b/a/k$a;->b(Landroid/graphics/Bitmap;)V

    invoke-static {v0}, Lcom/b/a/c/b/a/k;->b(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private d()V
    .locals 2

    const-string v0, "LruBitmapPool"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/b/a/c/b/a/k;->e()V

    :cond_0
    return-void
.end method

.method private e()V
    .locals 4

    const-string v0, "LruBitmapPool"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Hits="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/b/a/c/b/a/k;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", misses="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/b/a/c/b/a/k;->i:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", puts="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/b/a/c/b/a/k;->j:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", evictions="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/b/a/c/b/a/k;->k:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", currentSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/b/a/c/b/a/k;->g:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", maxSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/b/a/c/b/a/k;->f:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nStrategy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/b/a/c/b/a/k;->b:Lcom/b/a/c/b/a/l;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static f()Lcom/b/a/c/b/a/l;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    new-instance v0, Lcom/b/a/c/b/a/n;

    invoke-direct {v0}, Lcom/b/a/c/b/a/n;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/b/a/c/b/a/c;

    invoke-direct {v0}, Lcom/b/a/c/b/a/c;-><init>()V

    goto :goto_0
.end method

.method private static g()Ljava/util/Set;
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Landroid/graphics/Bitmap$Config;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-static {}, Landroid/graphics/Bitmap$Config;->values()[Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_1

    sget-object v1, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lcom/b/a/c/b/a/k;->d(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1, p2, p3}, Lcom/b/a/c/b/a/k;->c(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public a()V
    .locals 2

    const-string v0, "LruBitmapPool"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "LruBitmapPool"

    const-string v1, "clearMemory"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/b/a/c/b/a/k;->a(J)V

    return-void
.end method

.method public a(I)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    const-string v0, "LruBitmapPool"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "LruBitmapPool"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "trimMemory, level="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 v0, 0x28

    if-lt p1, v0, :cond_2

    invoke-virtual {p0}, Lcom/b/a/c/b/a/k;->a()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/16 v0, 0x14

    if-ge p1, v0, :cond_3

    const/16 v0, 0xf

    if-ne p1, v0, :cond_1

    :cond_3
    invoke-virtual {p0}, Lcom/b/a/c/b/a/k;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/b/a/c/b/a/k;->a(J)V

    goto :goto_0
.end method

.method public declared-synchronized a(Landroid/graphics/Bitmap;)V
    .locals 4

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Bitmap must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot pool recycled bitmap"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/b/a/c/b/a/k;->b:Lcom/b/a/c/b/a/l;

    invoke-interface {v0, p1}, Lcom/b/a/c/b/a/l;->c(Landroid/graphics/Bitmap;)I

    move-result v0

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/b/a/c/b/a/k;->f:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    iget-object v0, p0, Lcom/b/a/c/b/a/k;->c:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    const-string v0, "LruBitmapPool"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "LruBitmapPool"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reject bitmap from pool, bitmap: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/b/a/c/b/a/k;->b:Lcom/b/a/c/b/a/l;

    invoke-interface {v2, p1}, Lcom/b/a/c/b/a/l;->b(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", is mutable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", is allowed config: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/b/a/c/b/a/k;->c:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_4
    :try_start_2
    iget-object v0, p0, Lcom/b/a/c/b/a/k;->b:Lcom/b/a/c/b/a/l;

    invoke-interface {v0, p1}, Lcom/b/a/c/b/a/l;->c(Landroid/graphics/Bitmap;)I

    move-result v0

    iget-object v1, p0, Lcom/b/a/c/b/a/k;->b:Lcom/b/a/c/b/a/l;

    invoke-interface {v1, p1}, Lcom/b/a/c/b/a/l;->a(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/b/a/c/b/a/k;->e:Lcom/b/a/c/b/a/k$a;

    invoke-interface {v1, p1}, Lcom/b/a/c/b/a/k$a;->a(Landroid/graphics/Bitmap;)V

    iget v1, p0, Lcom/b/a/c/b/a/k;->j:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/b/a/c/b/a/k;->j:I

    iget-wide v2, p0, Lcom/b/a/c/b/a/k;->g:J

    int-to-long v0, v0

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/b/a/c/b/a/k;->g:J

    const-string v0, "LruBitmapPool"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "LruBitmapPool"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Put bitmap in pool="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/b/a/c/b/a/k;->b:Lcom/b/a/c/b/a/l;

    invoke-interface {v2, p1}, Lcom/b/a/c/b/a/l;->b(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-direct {p0}, Lcom/b/a/c/b/a/k;->d()V

    invoke-direct {p0}, Lcom/b/a/c/b/a/k;->c()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Lcom/b/a/c/b/a/k;->f:J

    return-wide v0
.end method

.method public b(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/b/a/c/b/a/k;->d(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p1, p2, p3}, Lcom/b/a/c/b/a/k;->c(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_0
    return-object v0
.end method
