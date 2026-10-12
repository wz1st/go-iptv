.class public Lcom/b/a/c/d/a/w;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/b/a/c/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/b/a/c/d/a/w$d;,
        Lcom/b/a/c/d/a/w$a;,
        Lcom/b/a/c/d/a/w$c;,
        Lcom/b/a/c/d/a/w$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/b/a/c/k",
        "<TT;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/b/a/c/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/a/c/i",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lcom/b/a/c/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/a/c/i",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Lcom/b/a/c/d/a/w$b;


# instance fields
.field private final d:Lcom/b/a/c/d/a/w$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/a/c/d/a/w$c",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final e:Lcom/b/a/c/b/a/e;

.field private final f:Lcom/b/a/c/d/a/w$b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "com.bumptech.glide.load.resource.bitmap.VideoBitmapDecode.TargetFrame"

    const-wide/16 v2, -0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Lcom/b/a/c/d/a/w$1;

    invoke-direct {v2}, Lcom/b/a/c/d/a/w$1;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/b/a/c/i;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/b/a/c/i$a;)Lcom/b/a/c/i;

    move-result-object v0

    sput-object v0, Lcom/b/a/c/d/a/w;->a:Lcom/b/a/c/i;

    const-string v0, "com.bumptech.glide.load.resource.bitmap.VideoBitmapDecode.FrameOption"

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/b/a/c/d/a/w$2;

    invoke-direct {v2}, Lcom/b/a/c/d/a/w$2;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/b/a/c/i;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/b/a/c/i$a;)Lcom/b/a/c/i;

    move-result-object v0

    sput-object v0, Lcom/b/a/c/d/a/w;->b:Lcom/b/a/c/i;

    new-instance v0, Lcom/b/a/c/d/a/w$b;

    invoke-direct {v0}, Lcom/b/a/c/d/a/w$b;-><init>()V

    sput-object v0, Lcom/b/a/c/d/a/w;->c:Lcom/b/a/c/d/a/w$b;

    return-void
.end method

.method constructor <init>(Lcom/b/a/c/b/a/e;Lcom/b/a/c/d/a/w$c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/c/b/a/e;",
            "Lcom/b/a/c/d/a/w$c",
            "<TT;>;)V"
        }
    .end annotation

    sget-object v0, Lcom/b/a/c/d/a/w;->c:Lcom/b/a/c/d/a/w$b;

    invoke-direct {p0, p1, p2, v0}, Lcom/b/a/c/d/a/w;-><init>(Lcom/b/a/c/b/a/e;Lcom/b/a/c/d/a/w$c;Lcom/b/a/c/d/a/w$b;)V

    return-void
.end method

.method constructor <init>(Lcom/b/a/c/b/a/e;Lcom/b/a/c/d/a/w$c;Lcom/b/a/c/d/a/w$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/c/b/a/e;",
            "Lcom/b/a/c/d/a/w$c",
            "<TT;>;",
            "Lcom/b/a/c/d/a/w$b;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/b/a/c/d/a/w;->e:Lcom/b/a/c/b/a/e;

    iput-object p2, p0, Lcom/b/a/c/d/a/w;->d:Lcom/b/a/c/d/a/w$c;

    iput-object p3, p0, Lcom/b/a/c/d/a/w;->f:Lcom/b/a/c/d/a/w$b;

    return-void
.end method

.method private static a(Landroid/media/MediaMetadataRetriever;JI)Landroid/graphics/Bitmap;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(JI)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/media/MediaMetadataRetriever;JIIILcom/b/a/c/d/a/j;)Landroid/graphics/Bitmap;
    .locals 5

    const/high16 v3, -0x80000000

    const/4 v0, 0x0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1b

    if-lt v1, v2, :cond_0

    if-eq p4, v3, :cond_0

    if-eq p5, v3, :cond_0

    sget-object v1, Lcom/b/a/c/d/a/j;->f:Lcom/b/a/c/d/a/j;

    if-eq p6, v1, :cond_0

    invoke-static/range {p0 .. p6}, Lcom/b/a/c/d/a/w;->b(Landroid/media/MediaMetadataRetriever;JIIILcom/b/a/c/d/a/j;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    invoke-static {p0, p1, p2, p3}, Lcom/b/a/c/d/a/w;->a(Landroid/media/MediaMetadataRetriever;JI)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public static a(Lcom/b/a/c/b/a/e;)Lcom/b/a/c/k;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/c/b/a/e;",
            ")",
            "Lcom/b/a/c/k",
            "<",
            "Landroid/content/res/AssetFileDescriptor;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/b/a/c/d/a/w;

    new-instance v1, Lcom/b/a/c/d/a/w$a;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/b/a/c/d/a/w$a;-><init>(Lcom/b/a/c/d/a/w$1;)V

    invoke-direct {v0, p0, v1}, Lcom/b/a/c/d/a/w;-><init>(Lcom/b/a/c/b/a/e;Lcom/b/a/c/d/a/w$c;)V

    return-object v0
.end method

.method private static b(Landroid/media/MediaMetadataRetriever;JIIILcom/b/a/c/d/a/j;)Landroid/graphics/Bitmap;
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1b
    .end annotation

    const/16 v0, 0x12

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v3, 0x5a

    if-eq v0, v3, :cond_0

    const/16 v3, 0x10e

    if-ne v0, v3, :cond_2

    :cond_0
    move v0, v2

    move v3, v1

    :goto_0
    invoke-virtual {p6, v3, v0, p4, p5}, Lcom/b/a/c/d/a/j;->a(IIII)F

    move-result v1

    int-to-float v2, v3

    mul-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v5

    int-to-float v0, v0

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v6

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    invoke-virtual/range {v1 .. v6}, Landroid/media/MediaMetadataRetriever;->getScaledFrameAtTime(JIII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "VideoDecoder"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "VideoDecoder"

    const-string v2, "Exception trying to decode frame on oreo+"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    move v0, v1

    move v3, v2

    goto :goto_0
.end method

.method public static b(Lcom/b/a/c/b/a/e;)Lcom/b/a/c/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/c/b/a/e;",
            ")",
            "Lcom/b/a/c/k",
            "<",
            "Landroid/os/ParcelFileDescriptor;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/b/a/c/d/a/w;

    new-instance v1, Lcom/b/a/c/d/a/w$d;

    invoke-direct {v1}, Lcom/b/a/c/d/a/w$d;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/b/a/c/d/a/w;-><init>(Lcom/b/a/c/b/a/e;Lcom/b/a/c/d/a/w$c;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;IILcom/b/a/c/j;)Lcom/b/a/c/b/u;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II",
            "Lcom/b/a/c/j;",
            ")",
            "Lcom/b/a/c/b/u",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/b/a/c/d/a/w;->a:Lcom/b/a/c/i;

    invoke-virtual {p4, v0}, Lcom/b/a/c/j;->a(Lcom/b/a/c/i;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-gez v0, :cond_0

    const-wide/16 v0, -0x1

    cmp-long v0, v2, v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Requested frame must be non-negative, or DEFAULT_FRAME, given: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/b/a/c/d/a/w;->b:Lcom/b/a/c/i;

    invoke-virtual {p4, v0}, Lcom/b/a/c/j;->a(Lcom/b/a/c/i;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_2

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v4, v0

    :goto_0
    sget-object v0, Lcom/b/a/c/d/a/j;->h:Lcom/b/a/c/i;

    invoke-virtual {p4, v0}, Lcom/b/a/c/j;->a(Lcom/b/a/c/i;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/c/d/a/j;

    if-nez v0, :cond_1

    sget-object v7, Lcom/b/a/c/d/a/j;->g:Lcom/b/a/c/d/a/j;

    :goto_1
    iget-object v0, p0, Lcom/b/a/c/d/a/w;->f:Lcom/b/a/c/d/a/w$b;

    invoke-virtual {v0}, Lcom/b/a/c/d/a/w$b;->a()Landroid/media/MediaMetadataRetriever;

    move-result-object v1

    :try_start_0
    iget-object v0, p0, Lcom/b/a/c/d/a/w;->d:Lcom/b/a/c/d/a/w$c;

    invoke-interface {v0, v1, p1}, Lcom/b/a/c/d/a/w$c;->a(Landroid/media/MediaMetadataRetriever;Ljava/lang/Object;)V

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move v5, p2

    move v6, p3

    invoke-static/range {v1 .. v7}, Lcom/b/a/c/d/a/w;->a(Landroid/media/MediaMetadataRetriever;JIIILcom/b/a/c/d/a/j;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    iget-object v1, p0, Lcom/b/a/c/d/a/w;->e:Lcom/b/a/c/b/a/e;

    invoke-static {v0, v1}, Lcom/b/a/c/d/a/d;->a(Landroid/graphics/Bitmap;Lcom/b/a/c/b/a/e;)Lcom/b/a/c/d/a/d;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    throw v0

    :cond_1
    move-object v7, v0

    goto :goto_1

    :cond_2
    move-object v4, v0

    goto :goto_0
.end method

.method public a(Ljava/lang/Object;Lcom/b/a/c/j;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/b/a/c/j;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x1

    return v0
.end method
