.class final Lb/y;
.super Lb/e;


# instance fields
.field final transient f:[[B

.field final transient g:[I


# direct methods
.method constructor <init>(Lb/b;I)V
    .locals 7

    const/4 v6, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lb/e;-><init>([B)V

    iget-wide v0, p1, Lb/b;->b:J

    const-wide/16 v2, 0x0

    int-to-long v4, p2

    invoke-static/range {v0 .. v5}, Lb/aa;->a(JJJ)V

    iget-object v0, p1, Lb/b;->a:Lb/w;

    move v1, v6

    move v2, v6

    :goto_0
    if-ge v1, p2, :cond_1

    iget v3, v0, Lb/w;->c:I

    iget v4, v0, Lb/w;->b:I

    if-ne v3, v4, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "s.limit == s.pos"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    iget v3, v0, Lb/w;->c:I

    iget v4, v0, Lb/w;->b:I

    sub-int/2addr v3, v4

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    iget-object v0, v0, Lb/w;->f:Lb/w;

    goto :goto_0

    :cond_1
    new-array v0, v2, [[B

    iput-object v0, p0, Lb/y;->f:[[B

    mul-int/lit8 v0, v2, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lb/y;->g:[I

    iget-object v2, p1, Lb/b;->a:Lb/w;

    move v1, v6

    move v0, v6

    :goto_1
    if-ge v0, p2, :cond_3

    iget-object v3, p0, Lb/y;->f:[[B

    iget-object v4, v2, Lb/w;->a:[B

    aput-object v4, v3, v1

    iget v3, v2, Lb/w;->c:I

    iget v4, v2, Lb/w;->b:I

    sub-int/2addr v3, v4

    add-int/2addr v0, v3

    if-le v0, p2, :cond_2

    move v0, p2

    :cond_2
    iget-object v3, p0, Lb/y;->g:[I

    aput v0, v3, v1

    iget-object v3, p0, Lb/y;->g:[I

    iget-object v4, p0, Lb/y;->f:[[B

    array-length v4, v4

    add-int/2addr v4, v1

    iget v5, v2, Lb/w;->b:I

    aput v5, v3, v4

    const/4 v3, 0x1

    iput-boolean v3, v2, Lb/w;->d:Z

    add-int/lit8 v1, v1, 0x1

    iget-object v2, v2, Lb/w;->f:Lb/w;

    goto :goto_1

    :cond_3
    return-void
.end method

.method private b(I)I
    .locals 4

    iget-object v0, p0, Lb/y;->g:[I

    const/4 v1, 0x0

    iget-object v2, p0, Lb/y;->f:[[B

    array-length v2, v2

    add-int/lit8 v3, p1, 0x1

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->binarySearch([IIII)I

    move-result v0

    if-ltz v0, :cond_0

    :goto_0
    return v0

    :cond_0
    xor-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private g()Lb/e;
    .locals 2

    new-instance v0, Lb/e;

    invoke-virtual {p0}, Lb/y;->e()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lb/e;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public final a(I)B
    .locals 6

    iget-object v0, p0, Lb/y;->g:[I

    iget-object v1, p0, Lb/y;->f:[[B

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    int-to-long v0, v0

    int-to-long v2, p1

    const-wide/16 v4, 0x1

    invoke-static/range {v0 .. v5}, Lb/aa;->a(JJJ)V

    invoke-direct {p0, p1}, Lb/y;->b(I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lb/y;->g:[I

    iget-object v3, p0, Lb/y;->f:[[B

    array-length v3, v3

    add-int/2addr v3, v1

    aget v2, v2, v3

    iget-object v3, p0, Lb/y;->f:[[B

    aget-object v1, v3, v1

    sub-int v0, p1, v0

    add-int/2addr v0, v2

    aget-byte v0, v1, v0

    return v0

    :cond_0
    iget-object v0, p0, Lb/y;->g:[I

    add-int/lit8 v2, v1, -0x1

    aget v0, v0, v2

    goto :goto_0
.end method

.method public final a(II)Lb/e;
    .locals 1

    invoke-direct {p0}, Lb/y;->g()Lb/e;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lb/e;->a(II)Lb/e;

    move-result-object v0

    return-object v0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lb/y;->g()Lb/e;

    move-result-object v0

    invoke-virtual {v0}, Lb/e;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final a(Lb/b;)V
    .locals 8

    const/4 v1, 0x0

    iget-object v0, p0, Lb/y;->f:[[B

    array-length v3, v0

    move v0, v1

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_1

    iget-object v1, p0, Lb/y;->g:[I

    add-int v4, v3, v2

    aget v4, v1, v4

    iget-object v1, p0, Lb/y;->g:[I

    aget v1, v1, v2

    new-instance v5, Lb/w;

    iget-object v6, p0, Lb/y;->f:[[B

    aget-object v6, v6, v2

    add-int v7, v4, v1

    sub-int v0, v7, v0

    invoke-direct {v5, v6, v4, v0}, Lb/w;-><init>([BII)V

    iget-object v0, p1, Lb/b;->a:Lb/w;

    if-nez v0, :cond_0

    iput-object v5, v5, Lb/w;->g:Lb/w;

    iput-object v5, v5, Lb/w;->f:Lb/w;

    iput-object v5, p1, Lb/b;->a:Lb/w;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    move v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lb/b;->a:Lb/w;

    iget-object v0, v0, Lb/w;->g:Lb/w;

    invoke-virtual {v0, v5}, Lb/w;->a(Lb/w;)Lb/w;

    goto :goto_1

    :cond_1
    iget-wide v2, p1, Lb/b;->b:J

    int-to-long v0, v0

    add-long/2addr v0, v2

    iput-wide v0, p1, Lb/b;->b:J

    return-void
.end method

.method public final a(ILb/e;II)Z
    .locals 6

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lb/y;->c()I

    move-result v0

    sub-int/2addr v0, p4

    if-le p1, v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-direct {p0, p1}, Lb/y;->b(I)I

    move-result v0

    move v2, v0

    :goto_1
    if-lez p4, :cond_3

    if-nez v2, :cond_2

    move v0, v1

    :goto_2
    iget-object v3, p0, Lb/y;->g:[I

    aget v3, v3, v2

    sub-int/2addr v3, v0

    add-int/2addr v3, v0

    sub-int/2addr v3, p1

    invoke-static {p4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget-object v4, p0, Lb/y;->g:[I

    iget-object v5, p0, Lb/y;->f:[[B

    array-length v5, v5

    add-int/2addr v5, v2

    aget v4, v4, v5

    iget-object v5, p0, Lb/y;->f:[[B

    aget-object v5, v5, v2

    sub-int v0, p1, v0

    add-int/2addr v0, v4

    invoke-virtual {p2, p3, v5, v0, v3}, Lb/e;->a(I[BII)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/2addr p1, v3

    add-int/2addr p3, v3

    sub-int/2addr p4, v3

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lb/y;->g:[I

    add-int/lit8 v3, v2, -0x1

    aget v0, v0, v3

    goto :goto_2

    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public final a(I[BII)Z
    .locals 6

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lb/y;->c()I

    move-result v0

    sub-int/2addr v0, p4

    if-gt p1, v0, :cond_0

    if-ltz p3, :cond_0

    array-length v0, p2

    sub-int/2addr v0, p4

    if-le p3, v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-direct {p0, p1}, Lb/y;->b(I)I

    move-result v0

    move v2, v0

    :goto_1
    if-lez p4, :cond_3

    if-nez v2, :cond_2

    move v0, v1

    :goto_2
    iget-object v3, p0, Lb/y;->g:[I

    aget v3, v3, v2

    sub-int/2addr v3, v0

    add-int/2addr v3, v0

    sub-int/2addr v3, p1

    invoke-static {p4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget-object v4, p0, Lb/y;->g:[I

    iget-object v5, p0, Lb/y;->f:[[B

    array-length v5, v5

    add-int/2addr v5, v2

    aget v4, v4, v5

    iget-object v5, p0, Lb/y;->f:[[B

    aget-object v5, v5, v2

    sub-int v0, p1, v0

    add-int/2addr v0, v4

    invoke-static {v5, v0, p2, p3, v3}, Lb/aa;->a([BI[BII)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/2addr p1, v3

    add-int/2addr p3, v3

    sub-int/2addr p4, v3

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lb/y;->g:[I

    add-int/lit8 v3, v2, -0x1

    aget v0, v0, v3

    goto :goto_2

    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lb/y;->g()Lb/e;

    move-result-object v0

    invoke-virtual {v0}, Lb/e;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()I
    .locals 2

    iget-object v0, p0, Lb/y;->g:[I

    iget-object v1, p0, Lb/y;->f:[[B

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0
.end method

.method public final d()Lb/e;
    .locals 1

    invoke-direct {p0}, Lb/y;->g()Lb/e;

    move-result-object v0

    invoke-virtual {v0}, Lb/e;->d()Lb/e;

    move-result-object v0

    return-object v0
.end method

.method public final e()[B
    .locals 8

    const/4 v1, 0x0

    iget-object v0, p0, Lb/y;->g:[I

    iget-object v2, p0, Lb/y;->f:[[B

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget v0, v0, v2

    new-array v3, v0, [B

    iget-object v0, p0, Lb/y;->f:[[B

    array-length v4, v0

    move v0, v1

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_0

    iget-object v1, p0, Lb/y;->g:[I

    add-int v5, v4, v2

    aget v5, v1, v5

    iget-object v1, p0, Lb/y;->g:[I

    aget v1, v1, v2

    iget-object v6, p0, Lb/y;->f:[[B

    aget-object v6, v6, v2

    sub-int v7, v1, v0

    invoke-static {v6, v5, v3, v0, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v2, 0x1

    move v0, v1

    goto :goto_0

    :cond_0
    return-object v3
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, p0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lb/e;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lb/e;

    invoke-virtual {v0}, Lb/e;->c()I

    move-result v0

    invoke-virtual {p0}, Lb/y;->c()I

    move-result v3

    if-ne v0, v3, :cond_1

    check-cast p1, Lb/e;

    invoke-virtual {p0}, Lb/y;->c()I

    move-result v0

    invoke-virtual {p0, v2, p1, v2, v0}, Lb/y;->a(ILb/e;II)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lb/y;->g()Lb/e;

    move-result-object v0

    invoke-virtual {v0}, Lb/e;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .locals 9

    const/4 v1, 0x0

    iget v0, p0, Lb/y;->d:I

    if-eqz v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    iget-object v2, p0, Lb/y;->f:[[B

    array-length v7, v2

    move v4, v1

    move v6, v1

    :goto_1
    if-ge v6, v7, :cond_2

    iget-object v1, p0, Lb/y;->f:[[B

    aget-object v8, v1, v6

    iget-object v1, p0, Lb/y;->g:[I

    add-int v2, v7, v6

    aget v2, v1, v2

    iget-object v1, p0, Lb/y;->g:[I

    aget v5, v1, v6

    move v1, v2

    move v3, v0

    :goto_2
    sub-int v0, v5, v4

    add-int/2addr v0, v2

    if-ge v1, v0, :cond_1

    mul-int/lit8 v0, v3, 0x1f

    aget-byte v3, v8, v1

    add-int/2addr v3, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v6, 0x1

    move v4, v5

    move v6, v1

    move v0, v3

    goto :goto_1

    :cond_2
    iput v0, p0, Lb/y;->d:I

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lb/y;->g()Lb/e;

    move-result-object v0

    invoke-virtual {v0}, Lb/e;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
