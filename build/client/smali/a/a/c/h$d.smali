.class final La/a/c/h$d;
.super Ljava/lang/Object;

# interfaces
.implements La/a/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/c/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "d"
.end annotation


# instance fields
.field final a:La/a/c/z$b;

.field private final b:Lb/c;

.field private final c:Z

.field private final d:Lb/b;

.field private e:I

.field private f:Z


# direct methods
.method constructor <init>(Lb/c;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/a/c/h$d;->b:Lb/c;

    iput-boolean p2, p0, La/a/c/h$d;->c:Z

    new-instance v0, Lb/b;

    invoke-direct {v0}, Lb/b;-><init>()V

    iput-object v0, p0, La/a/c/h$d;->d:Lb/b;

    new-instance v0, La/a/c/z$b;

    iget-object v1, p0, La/a/c/h$d;->d:Lb/b;

    invoke-direct {v0, v1}, La/a/c/z$b;-><init>(Lb/b;)V

    iput-object v0, p0, La/a/c/h$d;->a:La/a/c/z$b;

    const/16 v0, 0x4000

    iput v0, p0, La/a/c/h$d;->e:I

    return-void
.end method

.method private a(IIBB)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {}, La/a/c/h;->b()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, La/a/c/h;->b()Ljava/util/logging/Logger;

    move-result-object v0

    invoke-static {v3, p1, p2, p3, p4}, La/a/c/h$b;->a(ZIIBB)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_0
    iget v0, p0, La/a/c/h$d;->e:I

    if-le p2, v0, :cond_1

    const-string v0, "FRAME_SIZE_ERROR length > %d: %d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, La/a/c/h$d;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, La/a/c/h;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_1
    const/high16 v0, -0x80000000

    and-int/2addr v0, p1

    if-eqz v0, :cond_2

    const-string v0, "reserved bit set: %s"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, La/a/c/h;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_2
    iget-object v0, p0, La/a/c/h$d;->b:Lb/c;

    invoke-static {v0, p2}, La/a/c/h;->a(Lb/c;I)V

    iget-object v0, p0, La/a/c/h$d;->b:Lb/c;

    and-int/lit16 v1, p3, 0xff

    invoke-interface {v0, v1}, Lb/c;->d(I)Lb/c;

    iget-object v0, p0, La/a/c/h$d;->b:Lb/c;

    and-int/lit16 v1, p4, 0xff

    invoke-interface {v0, v1}, Lb/c;->d(I)Lb/c;

    iget-object v0, p0, La/a/c/h$d;->b:Lb/c;

    const v1, 0x7fffffff

    and-int/2addr v1, p1

    invoke-interface {v0, v1}, Lb/c;->f(I)Lb/c;

    return-void
.end method

.method private a(ZILjava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/util/List",
            "<",
            "La/a/c/f;",
            ">;)V"
        }
    .end annotation

    iget-boolean v0, p0, La/a/c/h$d;->f:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, La/a/c/h$d;->a:La/a/c/z$b;

    invoke-virtual {v0, p3}, La/a/c/z$b;->a(Ljava/util/List;)V

    iget-object v0, p0, La/a/c/h$d;->d:Lb/b;

    invoke-virtual {v0}, Lb/b;->s()J

    move-result-wide v2

    iget v0, p0, La/a/c/h$d;->e:I

    int-to-long v0, v0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    int-to-long v4, v1

    cmp-long v0, v2, v4

    if-nez v0, :cond_3

    const/4 v0, 0x4

    :goto_0
    if-eqz p1, :cond_1

    or-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    :cond_1
    const/4 v4, 0x1

    invoke-direct {p0, p2, v1, v4, v0}, La/a/c/h$d;->a(IIBB)V

    iget-object v0, p0, La/a/c/h$d;->b:Lb/c;

    iget-object v4, p0, La/a/c/h$d;->d:Lb/b;

    int-to-long v6, v1

    invoke-interface {v0, v4, v6, v7}, Lb/c;->a_(Lb/b;J)V

    int-to-long v4, v1

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    int-to-long v0, v1

    sub-long v0, v2, v0

    invoke-direct {p0, p2, v0, v1}, La/a/c/h$d;->b(IJ)V

    :cond_2
    return-void

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(IJ)V
    .locals 8

    const-wide/16 v6, 0x0

    :goto_0
    cmp-long v0, p2, v6

    if-lez v0, :cond_1

    iget v0, p0, La/a/c/h$d;->e:I

    int-to-long v0, v0

    invoke-static {v0, v1, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    int-to-long v2, v1

    sub-long/2addr p2, v2

    cmp-long v0, p2, v6

    if-nez v0, :cond_0

    const/4 v0, 0x4

    :goto_1
    const/16 v2, 0x9

    invoke-direct {p0, p1, v1, v2, v0}, La/a/c/h$d;->a(IIBB)V

    iget-object v0, p0, La/a/c/h$d;->b:Lb/c;

    iget-object v2, p0, La/a/c/h$d;->d:Lb/b;

    int-to-long v4, v1

    invoke-interface {v0, v2, v4, v5}, Lb/c;->a_(Lb/b;J)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, La/a/c/h$d;->f:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget-boolean v0, p0, La/a/c/h$d;->c:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    invoke-static {}, La/a/c/h;->b()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, La/a/c/h;->b()Ljava/util/logging/Logger;

    move-result-object v0

    const-string v1, ">> CONNECTION %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, La/a/c/h;->a()Lb/e;

    move-result-object v4

    invoke-virtual {v4}, Lb/e;->b()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, La/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, La/a/c/h$d;->b:Lb/c;

    invoke-static {}, La/a/c/h;->a()Lb/e;

    move-result-object v1

    invoke-virtual {v1}, Lb/e;->e()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lb/c;->c([B)Lb/c;

    iget-object v0, p0, La/a/c/h$d;->b:Lb/c;

    invoke-interface {v0}, Lb/c;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public final a(IILjava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "La/a/c/f;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, La/a/c/h$d;->f:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, La/a/c/h$d;->a:La/a/c/z$b;

    invoke-virtual {v0, p3}, La/a/c/z$b;->a(Ljava/util/List;)V

    iget-object v0, p0, La/a/c/h$d;->d:Lb/b;

    invoke-virtual {v0}, Lb/b;->s()J

    move-result-wide v2

    iget v0, p0, La/a/c/h$d;->e:I

    add-int/lit8 v0, v0, -0x4

    int-to-long v0, v0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    int-to-long v4, v1

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    const/4 v0, 0x4

    :goto_0
    add-int/lit8 v4, v1, 0x4

    const/4 v5, 0x5

    invoke-direct {p0, p1, v4, v5, v0}, La/a/c/h$d;->a(IIBB)V

    iget-object v0, p0, La/a/c/h$d;->b:Lb/c;

    const v4, 0x7fffffff

    and-int/2addr v4, p2

    invoke-interface {v0, v4}, Lb/c;->f(I)Lb/c;

    iget-object v0, p0, La/a/c/h$d;->b:Lb/c;

    iget-object v4, p0, La/a/c/h$d;->d:Lb/b;

    int-to-long v6, v1

    invoke-interface {v0, v4, v6, v7}, Lb/c;->a_(Lb/b;J)V

    int-to-long v4, v1

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    int-to-long v0, v1

    sub-long v0, v2, v0

    invoke-direct {p0, p1, v0, v1}, La/a/c/h$d;->b(IJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(IJ)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, La/a/c/h$d;->f:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_1

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p2, v0

    if-lez v0, :cond_2

    :cond_1
    :try_start_1
    const-string v0, "windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, La/a/c/h;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_2
    const/4 v0, 0x4

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, La/a/c/h$d;->a(IIBB)V

    iget-object v0, p0, La/a/c/h$d;->b:Lb/c;

    long-to-int v1, p2

    invoke-interface {v0, v1}, Lb/c;->f(I)Lb/c;

    iget-object v0, p0, La/a/c/h$d;->b:Lb/c;

    invoke-interface {v0}, Lb/c;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public final a(ILa/a/c/a;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, La/a/c/h$d;->f:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget v0, p2, La/a/c/a;->s:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, La/a/c/h$d;->a(IIBB)V

    iget-object v0, p0, La/a/c/h$d;->b:Lb/c;

    iget v1, p2, La/a/c/a;->s:I

    invoke-interface {v0, v1}, Lb/c;->f(I)Lb/c;

    iget-object v0, p0, La/a/c/h$d;->b:Lb/c;

    invoke-interface {v0}, Lb/c;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public final a(ILa/a/c/a;[B)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, La/a/c/h$d;->f:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget v0, p2, La/a/c/a;->s:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const-string v0, "errorCode.httpCode == -1"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, La/a/c/h;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_1
    const/4 v0, 0x0

    array-length v1, p3

    add-int/lit8 v1, v1, 0x8

    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, La/a/c/h$d;->a(IIBB)V

    iget-object v0, p0, La/a/c/h$d;->b:Lb/c;

    invoke-interface {v0, p1}, Lb/c;->f(I)Lb/c;

    iget-object v0, p0, La/a/c/h$d;->b:Lb/c;

    iget v1, p2, La/a/c/a;->s:I

    invoke-interface {v0, v1}, Lb/c;->f(I)Lb/c;

    array-length v0, p3

    if-lez v0, :cond_2

    iget-object v0, p0, La/a/c/h$d;->b:Lb/c;

    invoke-interface {v0, p3}, Lb/c;->c([B)Lb/c;

    :cond_2
    iget-object v0, p0, La/a/c/h$d;->b:Lb/c;

    invoke-interface {v0}, Lb/c;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public final a(La/a/c/k;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, La/a/c/h$d;->f:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget v0, p0, La/a/c/h$d;->e:I

    invoke-virtual {p1, v0}, La/a/c/k;->d(I)I

    move-result v0

    iput v0, p0, La/a/c/h$d;->e:I

    invoke-virtual {p1}, La/a/c/k;->c()I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v0, p0, La/a/c/h$d;->a:La/a/c/z$b;

    invoke-virtual {p1}, La/a/c/k;->c()I

    move-result v1

    invoke-virtual {v0, v1}, La/a/c/z$b;->a(I)V

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, La/a/c/h$d;->a(IIBB)V

    iget-object v0, p0, La/a/c/h$d;->b:Lb/c;

    invoke-interface {v0}, Lb/c;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public final a(ZII)V
    .locals 4

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, La/a/c/h$d;->f:Z

    if-eqz v1, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    const/4 v1, 0x0

    const/16 v2, 0x8

    const/4 v3, 0x6

    :try_start_1
    invoke-direct {p0, v1, v2, v3, v0}, La/a/c/h$d;->a(IIBB)V

    iget-object v0, p0, La/a/c/h$d;->b:Lb/c;

    invoke-interface {v0, p2}, Lb/c;->f(I)Lb/c;

    iget-object v0, p0, La/a/c/h$d;->b:Lb/c;

    invoke-interface {v0, p3}, Lb/c;->f(I)Lb/c;

    iget-object v0, p0, La/a/c/h$d;->b:Lb/c;

    invoke-interface {v0}, Lb/c;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public final a(ZILb/b;I)V
    .locals 4

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, La/a/c/h$d;->f:Z

    if-eqz v1, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    const/4 v1, 0x0

    :try_start_1
    invoke-direct {p0, p2, p4, v1, v0}, La/a/c/h$d;->a(IIBB)V

    if-lez p4, :cond_2

    iget-object v0, p0, La/a/c/h$d;->b:Lb/c;

    int-to-long v2, p4

    invoke-interface {v0, p3, v2, v3}, Lb/c;->a_(Lb/b;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit p0

    return-void
.end method

.method public final a(ZZIILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZII",
            "Ljava/util/List",
            "<",
            "La/a/c/f;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p2, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget-boolean v0, p0, La/a/c/h$d;->f:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-direct {p0, p1, p3, p5}, La/a/c/h$d;->a(ZILjava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public final b()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, La/a/c/h$d;->f:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, La/a/c/h$d;->b:Lb/c;

    invoke-interface {v0}, Lb/c;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public final b(La/a/c/k;)V
    .locals 6

    const/4 v2, 0x4

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, La/a/c/h$d;->f:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p1}, La/a/c/k;->b()I

    move-result v3

    mul-int/lit8 v3, v3, 0x6

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-direct {p0, v0, v3, v4, v5}, La/a/c/h$d;->a(IIBB)V

    :goto_0
    const/16 v0, 0xa

    if-ge v1, v0, :cond_2

    invoke-virtual {p1, v1}, La/a/c/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    if-ne v1, v2, :cond_4

    const/4 v0, 0x3

    :goto_1
    iget-object v3, p0, La/a/c/h$d;->b:Lb/c;

    invoke-interface {v3, v0}, Lb/c;->h(I)Lb/c;

    iget-object v0, p0, La/a/c/h$d;->b:Lb/c;

    invoke-virtual {p1, v1}, La/a/c/k;->b(I)I

    move-result v3

    invoke-interface {v0, v3}, Lb/c;->f(I)Lb/c;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, La/a/c/h$d;->b:Lb/c;

    invoke-interface {v0}, Lb/c;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    const/4 v0, 0x7

    if-ne v1, v0, :cond_3

    move v0, v2

    goto :goto_1
.end method

.method public final c()I
    .locals 1

    iget v0, p0, La/a/c/h$d;->e:I

    return v0
.end method

.method public final close()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, La/a/c/h$d;->f:Z

    iget-object v0, p0, La/a/c/h$d;->b:Lb/c;

    invoke-interface {v0}, Lb/c;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
