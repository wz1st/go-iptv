.class final La/a/c/l$b;
.super Ljava/lang/Object;

# interfaces
.implements La/a/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/c/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private final a:Lb/c;

.field private final b:Lb/b;

.field private final c:Lb/c;

.field private final d:Z

.field private e:Z


# direct methods
.method constructor <init>(Lb/c;Z)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/a/c/l$b;->a:Lb/c;

    iput-boolean p2, p0, La/a/c/l$b;->d:Z

    new-instance v0, Ljava/util/zip/Deflater;

    invoke-direct {v0}, Ljava/util/zip/Deflater;-><init>()V

    sget-object v1, La/a/c/l;->a:[B

    invoke-virtual {v0, v1}, Ljava/util/zip/Deflater;->setDictionary([B)V

    new-instance v1, Lb/b;

    invoke-direct {v1}, Lb/b;-><init>()V

    iput-object v1, p0, La/a/c/l$b;->b:Lb/b;

    new-instance v1, Lb/f;

    iget-object v2, p0, La/a/c/l$b;->b:Lb/b;

    invoke-direct {v1, v2, v0}, Lb/f;-><init>(Lb/l;Ljava/util/zip/Deflater;)V

    invoke-static {v1}, Lb/k;->a(Lb/l;)Lb/c;

    move-result-object v0

    iput-object v0, p0, La/a/c/l$b;->c:Lb/c;

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "La/a/c/f;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, La/a/c/l$b;->c:Lb/c;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1}, Lb/c;->f(I)Lb/c;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/c/f;

    iget-object v0, v0, La/a/c/f;->i:Lb/e;

    iget-object v3, p0, La/a/c/l$b;->c:Lb/c;

    invoke-virtual {v0}, Lb/e;->c()I

    move-result v4

    invoke-interface {v3, v4}, Lb/c;->f(I)Lb/c;

    iget-object v3, p0, La/a/c/l$b;->c:Lb/c;

    invoke-interface {v3, v0}, Lb/c;->b(Lb/e;)Lb/c;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/c/f;

    iget-object v0, v0, La/a/c/f;->j:Lb/e;

    iget-object v3, p0, La/a/c/l$b;->c:Lb/c;

    invoke-virtual {v0}, Lb/e;->c()I

    move-result v4

    invoke-interface {v3, v4}, Lb/c;->f(I)Lb/c;

    iget-object v3, p0, La/a/c/l$b;->c:Lb/c;

    invoke-interface {v3, v0}, Lb/c;->b(Lb/e;)Lb/c;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, La/a/c/l$b;->c:Lb/c;

    invoke-interface {v0}, Lb/c;->flush()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public final a(IILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "La/a/c/f;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public final a(IJ)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, La/a/c/l$b;->e:Z

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
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "windowSizeIncrement must be between 1 and 0x7fffffff: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, La/a/c/l$b;->a:Lb/c;

    const v1, -0x7ffcfff7

    invoke-interface {v0, v1}, Lb/c;->f(I)Lb/c;

    iget-object v0, p0, La/a/c/l$b;->a:Lb/c;

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Lb/c;->f(I)Lb/c;

    iget-object v0, p0, La/a/c/l$b;->a:Lb/c;

    invoke-interface {v0, p1}, Lb/c;->f(I)Lb/c;

    iget-object v0, p0, La/a/c/l$b;->a:Lb/c;

    long-to-int v1, p2

    invoke-interface {v0, v1}, Lb/c;->f(I)Lb/c;

    iget-object v0, p0, La/a/c/l$b;->a:Lb/c;

    invoke-interface {v0}, Lb/c;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public final a(ILa/a/c/a;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, La/a/c/l$b;->e:Z

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
    iget v0, p2, La/a/c/a;->u:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    iget-object v0, p0, La/a/c/l$b;->a:Lb/c;

    const v1, -0x7ffcfffd

    invoke-interface {v0, v1}, Lb/c;->f(I)Lb/c;

    iget-object v0, p0, La/a/c/l$b;->a:Lb/c;

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Lb/c;->f(I)Lb/c;

    iget-object v0, p0, La/a/c/l$b;->a:Lb/c;

    const v1, 0x7fffffff

    and-int/2addr v1, p1

    invoke-interface {v0, v1}, Lb/c;->f(I)Lb/c;

    iget-object v0, p0, La/a/c/l$b;->a:Lb/c;

    iget v1, p2, La/a/c/a;->u:I

    invoke-interface {v0, v1}, Lb/c;->f(I)Lb/c;

    iget-object v0, p0, La/a/c/l$b;->a:Lb/c;

    invoke-interface {v0}, Lb/c;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public final a(ILa/a/c/a;[B)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, La/a/c/l$b;->e:Z

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
    iget v0, p2, La/a/c/a;->t:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "errorCode.spdyGoAwayCode == -1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, La/a/c/l$b;->a:Lb/c;

    const v1, -0x7ffcfff9

    invoke-interface {v0, v1}, Lb/c;->f(I)Lb/c;

    iget-object v0, p0, La/a/c/l$b;->a:Lb/c;

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Lb/c;->f(I)Lb/c;

    iget-object v0, p0, La/a/c/l$b;->a:Lb/c;

    invoke-interface {v0, p1}, Lb/c;->f(I)Lb/c;

    iget-object v0, p0, La/a/c/l$b;->a:Lb/c;

    iget v1, p2, La/a/c/a;->t:I

    invoke-interface {v0, v1}, Lb/c;->f(I)Lb/c;

    iget-object v0, p0, La/a/c/l$b;->a:Lb/c;

    invoke-interface {v0}, Lb/c;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public final a(La/a/c/k;)V
    .locals 0

    return-void
.end method

.method public final a(ZII)V
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, La/a/c/l$b;->e:Z

    if-eqz v2, :cond_0

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
    iget-boolean v3, p0, La/a/c/l$b;->d:Z

    and-int/lit8 v2, p2, 0x1

    if-ne v2, v0, :cond_2

    move v2, v0

    :goto_0
    if-eq v3, v2, :cond_3

    :goto_1
    if-eq p1, v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "payload != reply"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, La/a/c/l$b;->a:Lb/c;

    const v1, -0x7ffcfffa

    invoke-interface {v0, v1}, Lb/c;->f(I)Lb/c;

    iget-object v0, p0, La/a/c/l$b;->a:Lb/c;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lb/c;->f(I)Lb/c;

    iget-object v0, p0, La/a/c/l$b;->a:Lb/c;

    invoke-interface {v0, p2}, Lb/c;->f(I)Lb/c;

    iget-object v0, p0, La/a/c/l$b;->a:Lb/c;

    invoke-interface {v0}, Lb/c;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    move v2, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public final a(ZILb/b;I)V
    .locals 6

    monitor-enter p0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    :try_start_0
    iget-boolean v1, p0, La/a/c/l$b;->e:Z

    if-eqz v1, :cond_1

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

    goto :goto_0

    :cond_1
    int-to-long v2, p4

    const-wide/32 v4, 0xffffff

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FRAME_TOO_LARGE max size is 16Mib: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v1, p0, La/a/c/l$b;->a:Lb/c;

    const v2, 0x7fffffff

    and-int/2addr v2, p2

    invoke-interface {v1, v2}, Lb/c;->f(I)Lb/c;

    iget-object v1, p0, La/a/c/l$b;->a:Lb/c;

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    const v2, 0xffffff

    and-int/2addr v2, p4

    or-int/2addr v0, v2

    invoke-interface {v1, v0}, Lb/c;->f(I)Lb/c;

    if-lez p4, :cond_3

    iget-object v0, p0, La/a/c/l$b;->a:Lb/c;

    int-to-long v2, p4

    invoke-interface {v0, p3, v2, v3}, Lb/c;->a_(Lb/b;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    monitor-exit p0

    return-void
.end method

.method public final a(ZZIILjava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZII",
            "Ljava/util/List",
            "<",
            "La/a/c/f;",
            ">;)V"
        }
    .end annotation

    const v6, 0x7fffffff

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, La/a/c/l$b;->e:Z

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
    :try_start_1
    invoke-direct {p0, p5}, La/a/c/l$b;->a(Ljava/util/List;)V

    const-wide/16 v2, 0xa

    iget-object v1, p0, La/a/c/l$b;->b:Lb/b;

    invoke-virtual {v1}, Lb/b;->s()J

    move-result-wide v4

    add-long/2addr v2, v4

    long-to-int v2, v2

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :goto_0
    if-eqz p2, :cond_1

    const/4 v0, 0x2

    :cond_1
    iget-object v3, p0, La/a/c/l$b;->a:Lb/c;

    const v4, -0x7ffcffff

    invoke-interface {v3, v4}, Lb/c;->f(I)Lb/c;

    iget-object v3, p0, La/a/c/l$b;->a:Lb/c;

    or-int/2addr v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    const v1, 0xffffff

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    invoke-interface {v3, v0}, Lb/c;->f(I)Lb/c;

    iget-object v0, p0, La/a/c/l$b;->a:Lb/c;

    and-int v1, p3, v6

    invoke-interface {v0, v1}, Lb/c;->f(I)Lb/c;

    iget-object v0, p0, La/a/c/l$b;->a:Lb/c;

    and-int v1, p4, v6

    invoke-interface {v0, v1}, Lb/c;->f(I)Lb/c;

    iget-object v0, p0, La/a/c/l$b;->a:Lb/c;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lb/c;->h(I)Lb/c;

    iget-object v0, p0, La/a/c/l$b;->a:Lb/c;

    iget-object v1, p0, La/a/c/l$b;->b:Lb/b;

    invoke-interface {v0, v1}, Lb/c;->a(Lb/m;)J

    iget-object v0, p0, La/a/c/l$b;->a:Lb/c;

    invoke-interface {v0}, Lb/c;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    move v1, v0

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, La/a/c/l$b;->e:Z

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
    iget-object v0, p0, La/a/c/l$b;->a:Lb/c;

    invoke-interface {v0}, Lb/c;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public final b(La/a/c/k;)V
    .locals 5

    const v4, 0xffffff

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, La/a/c/l$b;->e:Z

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
    invoke-virtual {p1}, La/a/c/k;->b()I

    move-result v0

    iget-object v1, p0, La/a/c/l$b;->a:Lb/c;

    const v2, -0x7ffcfffc

    invoke-interface {v1, v2}, Lb/c;->f(I)Lb/c;

    iget-object v1, p0, La/a/c/l$b;->a:Lb/c;

    mul-int/lit8 v2, v0, 0x8

    add-int/lit8 v2, v2, 0x4

    and-int/2addr v2, v4

    or-int/lit8 v2, v2, 0x0

    invoke-interface {v1, v2}, Lb/c;->f(I)Lb/c;

    iget-object v1, p0, La/a/c/l$b;->a:Lb/c;

    invoke-interface {v1, v0}, Lb/c;->f(I)Lb/c;

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xa

    if-gt v0, v1, :cond_2

    invoke-virtual {p1, v0}, La/a/c/k;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, La/a/c/k;->c(I)I

    move-result v1

    iget-object v2, p0, La/a/c/l$b;->a:Lb/c;

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    and-int v3, v0, v4

    or-int/2addr v1, v3

    invoke-interface {v2, v1}, Lb/c;->f(I)Lb/c;

    iget-object v1, p0, La/a/c/l$b;->a:Lb/c;

    invoke-virtual {p1, v0}, La/a/c/k;->b(I)I

    move-result v2

    invoke-interface {v1, v2}, Lb/c;->f(I)Lb/c;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, La/a/c/l$b;->a:Lb/c;

    invoke-interface {v0}, Lb/c;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public final c()I
    .locals 1

    const/16 v0, 0x3fff

    return v0
.end method

.method public final close()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, La/a/c/l$b;->e:Z

    iget-object v0, p0, La/a/c/l$b;->a:Lb/c;

    iget-object v1, p0, La/a/c/l$b;->c:Lb/c;

    invoke-static {v0, v1}, La/a/c;->a(Ljava/io/Closeable;Ljava/io/Closeable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
