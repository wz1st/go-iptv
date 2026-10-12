.class public final Lb/i;
.super Ljava/lang/Object;

# interfaces
.implements Lb/m;


# instance fields
.field private a:I

.field private final b:Lb/d;

.field private final c:Ljava/util/zip/Inflater;

.field private final d:Lb/j;

.field private final e:Ljava/util/zip/CRC32;


# direct methods
.method public constructor <init>(Lb/m;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lb/i;->a:I

    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lb/i;->e:Ljava/util/zip/CRC32;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/util/zip/Inflater;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/zip/Inflater;-><init>(Z)V

    iput-object v0, p0, Lb/i;->c:Ljava/util/zip/Inflater;

    invoke-static {p1}, Lb/k;->a(Lb/m;)Lb/d;

    move-result-object v0

    iput-object v0, p0, Lb/i;->b:Lb/d;

    new-instance v0, Lb/j;

    iget-object v1, p0, Lb/i;->b:Lb/d;

    iget-object v2, p0, Lb/i;->c:Ljava/util/zip/Inflater;

    invoke-direct {v0, v1, v2}, Lb/j;-><init>(Lb/d;Ljava/util/zip/Inflater;)V

    iput-object v0, p0, Lb/i;->d:Lb/j;

    return-void
.end method

.method private a(Lb/b;JJ)V
    .locals 8

    const-wide/16 v2, 0x0

    iget-object v0, p1, Lb/b;->a:Lb/w;

    :goto_0
    iget v1, v0, Lb/w;->c:I

    iget v4, v0, Lb/w;->b:I

    sub-int/2addr v1, v4

    int-to-long v4, v1

    cmp-long v1, p2, v4

    if-ltz v1, :cond_0

    iget v1, v0, Lb/w;->c:I

    iget v4, v0, Lb/w;->b:I

    sub-int/2addr v1, v4

    int-to-long v4, v1

    sub-long/2addr p2, v4

    iget-object v0, v0, Lb/w;->f:Lb/w;

    goto :goto_0

    :cond_0
    :goto_1
    cmp-long v1, p4, v2

    if-lez v1, :cond_1

    iget v1, v0, Lb/w;->b:I

    int-to-long v4, v1

    add-long/2addr v4, p2

    long-to-int v1, v4

    iget v4, v0, Lb/w;->c:I

    sub-int/2addr v4, v1

    int-to-long v4, v4

    invoke-static {v4, v5, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v4, v4

    iget-object v5, p0, Lb/i;->e:Ljava/util/zip/CRC32;

    iget-object v6, v0, Lb/w;->a:[B

    invoke-virtual {v5, v6, v1, v4}, Ljava/util/zip/CRC32;->update([BII)V

    int-to-long v4, v4

    sub-long/2addr p4, v4

    iget-object v0, v0, Lb/w;->f:Lb/w;

    move-wide p2, v2

    goto :goto_1

    :cond_1
    return-void
.end method

.method private static a(Ljava/lang/String;II)V
    .locals 5

    if-eq p2, p1, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "%s: actual 0x%08x != expected 0x%08x"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lb/b;J)J
    .locals 10

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "byteCount < 0: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_1

    const-wide/16 v4, 0x0

    :goto_0
    return-wide v4

    :cond_1
    iget v0, p0, Lb/i;->a:I

    if-nez v0, :cond_e

    iget-object v0, p0, Lb/i;->b:Lb/d;

    const-wide/16 v2, 0xa

    invoke-interface {v0, v2, v3}, Lb/d;->f(J)V

    iget-object v0, p0, Lb/i;->b:Lb/d;

    invoke-interface {v0}, Lb/d;->b()Lb/b;

    move-result-object v0

    const-wide/16 v2, 0x3

    invoke-virtual {v0, v2, v3}, Lb/b;->b(J)B

    move-result v7

    shr-int/lit8 v0, v7, 0x1

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    const/4 v0, 0x1

    move v6, v0

    :goto_1
    if-eqz v6, :cond_2

    iget-object v0, p0, Lb/i;->b:Lb/d;

    invoke-interface {v0}, Lb/d;->b()Lb/b;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xa

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lb/i;->a(Lb/b;JJ)V

    :cond_2
    const-string v0, "ID1ID2"

    const/16 v1, 0x1f8b

    iget-object v2, p0, Lb/i;->b:Lb/d;

    invoke-interface {v2}, Lb/d;->o()S

    move-result v2

    invoke-static {v0, v1, v2}, Lb/i;->a(Ljava/lang/String;II)V

    iget-object v0, p0, Lb/i;->b:Lb/d;

    const-wide/16 v2, 0x8

    invoke-interface {v0, v2, v3}, Lb/d;->g(J)V

    shr-int/lit8 v0, v7, 0x2

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lb/i;->b:Lb/d;

    const-wide/16 v2, 0x2

    invoke-interface {v0, v2, v3}, Lb/d;->f(J)V

    if-eqz v6, :cond_3

    iget-object v0, p0, Lb/i;->b:Lb/d;

    invoke-interface {v0}, Lb/d;->b()Lb/b;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x2

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lb/i;->a(Lb/b;JJ)V

    :cond_3
    iget-object v0, p0, Lb/i;->b:Lb/d;

    invoke-interface {v0}, Lb/d;->b()Lb/b;

    move-result-object v0

    invoke-virtual {v0}, Lb/b;->p()S

    move-result v8

    iget-object v0, p0, Lb/i;->b:Lb/d;

    int-to-long v2, v8

    invoke-interface {v0, v2, v3}, Lb/d;->f(J)V

    if-eqz v6, :cond_4

    iget-object v0, p0, Lb/i;->b:Lb/d;

    invoke-interface {v0}, Lb/d;->b()Lb/b;

    move-result-object v1

    const-wide/16 v2, 0x0

    int-to-long v4, v8

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lb/i;->a(Lb/b;JJ)V

    :cond_4
    iget-object v0, p0, Lb/i;->b:Lb/d;

    int-to-long v2, v8

    invoke-interface {v0, v2, v3}, Lb/d;->g(J)V

    :cond_5
    shr-int/lit8 v0, v7, 0x3

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    iget-object v0, p0, Lb/i;->b:Lb/d;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lb/d;->a(B)J

    move-result-wide v8

    const-wide/16 v0, -0x1

    cmp-long v0, v8, v0

    if-nez v0, :cond_7

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_6
    const/4 v0, 0x0

    move v6, v0

    goto/16 :goto_1

    :cond_7
    if-eqz v6, :cond_8

    iget-object v0, p0, Lb/i;->b:Lb/d;

    invoke-interface {v0}, Lb/d;->b()Lb/b;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1

    add-long/2addr v4, v8

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lb/i;->a(Lb/b;JJ)V

    :cond_8
    iget-object v0, p0, Lb/i;->b:Lb/d;

    const-wide/16 v2, 0x1

    add-long/2addr v2, v8

    invoke-interface {v0, v2, v3}, Lb/d;->g(J)V

    :cond_9
    shr-int/lit8 v0, v7, 0x4

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    iget-object v0, p0, Lb/i;->b:Lb/d;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lb/d;->a(B)J

    move-result-wide v8

    const-wide/16 v0, -0x1

    cmp-long v0, v8, v0

    if-nez v0, :cond_a

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_a
    if-eqz v6, :cond_b

    iget-object v0, p0, Lb/i;->b:Lb/d;

    invoke-interface {v0}, Lb/d;->b()Lb/b;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1

    add-long/2addr v4, v8

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lb/i;->a(Lb/b;JJ)V

    :cond_b
    iget-object v0, p0, Lb/i;->b:Lb/d;

    const-wide/16 v2, 0x1

    add-long/2addr v2, v8

    invoke-interface {v0, v2, v3}, Lb/d;->g(J)V

    :cond_c
    if-eqz v6, :cond_d

    const-string v0, "FHCRC"

    iget-object v1, p0, Lb/i;->b:Lb/d;

    invoke-interface {v1}, Lb/d;->p()S

    move-result v1

    iget-object v2, p0, Lb/i;->e:Ljava/util/zip/CRC32;

    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    long-to-int v2, v2

    int-to-short v2, v2

    invoke-static {v0, v1, v2}, Lb/i;->a(Ljava/lang/String;II)V

    iget-object v0, p0, Lb/i;->e:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->reset()V

    :cond_d
    const/4 v0, 0x1

    iput v0, p0, Lb/i;->a:I

    :cond_e
    iget v0, p0, Lb/i;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    iget-wide v2, p1, Lb/b;->b:J

    iget-object v0, p0, Lb/i;->d:Lb/j;

    invoke-virtual {v0, p1, p2, p3}, Lb/j;->a(Lb/b;J)J

    move-result-wide v4

    const-wide/16 v0, -0x1

    cmp-long v0, v4, v0

    if-eqz v0, :cond_f

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lb/i;->a(Lb/b;JJ)V

    goto/16 :goto_0

    :cond_f
    const/4 v0, 0x2

    iput v0, p0, Lb/i;->a:I

    :cond_10
    iget v0, p0, Lb/i;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_11

    const-string v0, "CRC"

    iget-object v1, p0, Lb/i;->b:Lb/d;

    invoke-interface {v1}, Lb/d;->n()I

    move-result v1

    iget-object v2, p0, Lb/i;->e:Ljava/util/zip/CRC32;

    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v0, v1, v2}, Lb/i;->a(Ljava/lang/String;II)V

    const-string v0, "ISIZE"

    iget-object v1, p0, Lb/i;->b:Lb/d;

    invoke-interface {v1}, Lb/d;->n()I

    move-result v1

    iget-object v2, p0, Lb/i;->c:Ljava/util/zip/Inflater;

    invoke-virtual {v2}, Ljava/util/zip/Inflater;->getBytesWritten()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v0, v1, v2}, Lb/i;->a(Ljava/lang/String;II)V

    const/4 v0, 0x3

    iput v0, p0, Lb/i;->a:I

    iget-object v0, p0, Lb/i;->b:Lb/d;

    invoke-interface {v0}, Lb/d;->h()Z

    move-result v0

    if-nez v0, :cond_11

    new-instance v0, Ljava/io/IOException;

    const-string v1, "gzip finished without exhausting source"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    const-wide/16 v4, -0x1

    goto/16 :goto_0
.end method

.method public final a()Lb/n;
    .locals 1

    iget-object v0, p0, Lb/i;->b:Lb/d;

    invoke-interface {v0}, Lb/d;->a()Lb/n;

    move-result-object v0

    return-object v0
.end method

.method public final close()V
    .locals 1

    iget-object v0, p0, Lb/i;->d:Lb/j;

    invoke-virtual {v0}, Lb/j;->close()V

    return-void
.end method
