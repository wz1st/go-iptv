.class public final La/a/c/k;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private final d:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    new-array v0, v0, [I

    iput-object v0, p0, La/a/c/k;->d:[I

    return-void
.end method


# virtual methods
.method final a(III)La/a/c/k;
    .locals 3

    iget-object v0, p0, La/a/c/k;->d:[I

    array-length v0, v0

    if-lt p1, v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    const/4 v0, 0x1

    shl-int/2addr v0, p1

    iget v1, p0, La/a/c/k;->a:I

    or-int/2addr v1, v0

    iput v1, p0, La/a/c/k;->a:I

    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_1

    iget v1, p0, La/a/c/k;->b:I

    or-int/2addr v1, v0

    iput v1, p0, La/a/c/k;->b:I

    :goto_1
    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_2

    iget v1, p0, La/a/c/k;->c:I

    or-int/2addr v0, v1

    iput v0, p0, La/a/c/k;->c:I

    :goto_2
    iget-object v0, p0, La/a/c/k;->d:[I

    aput p3, v0, p1

    goto :goto_0

    :cond_1
    iget v1, p0, La/a/c/k;->b:I

    xor-int/lit8 v2, v0, -0x1

    and-int/2addr v1, v2

    iput v1, p0, La/a/c/k;->b:I

    goto :goto_1

    :cond_2
    xor-int/lit8 v0, v0, -0x1

    iget v1, p0, La/a/c/k;->c:I

    and-int/2addr v0, v1

    iput v0, p0, La/a/c/k;->c:I

    goto :goto_2
.end method

.method final a()V
    .locals 2

    const/4 v1, 0x0

    iput v1, p0, La/a/c/k;->c:I

    iput v1, p0, La/a/c/k;->b:I

    iput v1, p0, La/a/c/k;->a:I

    iget-object v0, p0, La/a/c/k;->d:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    return-void
.end method

.method final a(La/a/c/k;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, La/a/c/k;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, La/a/c/k;->c(I)I

    move-result v1

    iget-object v2, p1, La/a/c/k;->d:[I

    aget v2, v2, v0

    invoke-virtual {p0, v0, v1, v2}, La/a/c/k;->a(III)La/a/c/k;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method final a(I)Z
    .locals 3

    const/4 v0, 0x1

    shl-int v1, v0, p1

    iget v2, p0, La/a/c/k;->a:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final b()I
    .locals 1

    iget v0, p0, La/a/c/k;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    return v0
.end method

.method final b(I)I
    .locals 1

    iget-object v0, p0, La/a/c/k;->d:[I

    aget v0, v0, p1

    return v0
.end method

.method final c()I
    .locals 2

    iget v0, p0, La/a/c/k;->a:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    iget-object v0, p0, La/a/c/k;->d:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method final c(I)I
    .locals 5

    const/4 v1, 0x0

    const/4 v2, 0x1

    shl-int v0, v2, p1

    iget v3, p0, La/a/c/k;->c:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_2

    move v0, v2

    :goto_0
    if-eqz v0, :cond_3

    const/4 v0, 0x2

    :goto_1
    shl-int v3, v2, p1

    iget v4, p0, La/a/c/k;->b:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    move v1, v2

    :cond_0
    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x1

    :cond_1
    return v0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method final d()I
    .locals 2

    iget v0, p0, La/a/c/k;->a:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    iget-object v0, p0, La/a/c/k;->d:[I

    const/4 v1, 0x4

    aget v0, v0, v1

    :goto_0
    return v0

    :cond_0
    const v0, 0x7fffffff

    goto :goto_0
.end method

.method final d(I)I
    .locals 2

    iget v0, p0, La/a/c/k;->a:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    iget-object v0, p0, La/a/c/k;->d:[I

    const/4 v1, 0x5

    aget p1, v0, v1

    :cond_0
    return p1
.end method

.method final e()I
    .locals 2

    iget v0, p0, La/a/c/k;->a:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    iget-object v0, p0, La/a/c/k;->d:[I

    const/4 v1, 0x7

    aget v0, v0, v1

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x10000

    goto :goto_0
.end method
