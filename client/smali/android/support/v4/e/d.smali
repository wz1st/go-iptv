.class public final Landroid/support/v4/e/d;
.super Ljava/lang/Object;


# instance fields
.field private a:[I

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/support/v4/e/d;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ge p1, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "capacity must be >= 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    if-le p1, v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "capacity must be <= 2^30"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    if-eq v0, v1, :cond_2

    add-int/lit8 v0, p1, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    shl-int/lit8 p1, v0, 0x1

    :cond_2
    add-int/lit8 v0, p1, -0x1

    iput v0, p0, Landroid/support/v4/e/d;->d:I

    new-array v0, p1, [I

    iput-object v0, p0, Landroid/support/v4/e/d;->a:[I

    return-void
.end method

.method private e()V
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Landroid/support/v4/e/d;->a:[I

    array-length v0, v0

    iget v1, p0, Landroid/support/v4/e/d;->b:I

    sub-int v1, v0, v1

    shl-int/lit8 v2, v0, 0x1

    if-gez v2, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Max array capacity exceeded"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-array v3, v2, [I

    iget-object v4, p0, Landroid/support/v4/e/d;->a:[I

    iget v5, p0, Landroid/support/v4/e/d;->b:I

    invoke-static {v4, v5, v3, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Landroid/support/v4/e/d;->a:[I

    iget v5, p0, Landroid/support/v4/e/d;->b:I

    invoke-static {v4, v6, v3, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, p0, Landroid/support/v4/e/d;->a:[I

    iput v6, p0, Landroid/support/v4/e/d;->b:I

    iput v0, p0, Landroid/support/v4/e/d;->c:I

    add-int/lit8 v0, v2, -0x1

    iput v0, p0, Landroid/support/v4/e/d;->d:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    iget v0, p0, Landroid/support/v4/e/d;->b:I

    iget v1, p0, Landroid/support/v4/e/d;->c:I

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Landroid/support/v4/e/d;->c:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Landroid/support/v4/e/d;->d:I

    and-int/2addr v0, v1

    iget-object v1, p0, Landroid/support/v4/e/d;->a:[I

    aget v1, v1, v0

    iput v0, p0, Landroid/support/v4/e/d;->c:I

    return v1
.end method

.method public a(I)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/e/d;->a:[I

    iget v1, p0, Landroid/support/v4/e/d;->c:I

    aput p1, v0, v1

    iget v0, p0, Landroid/support/v4/e/d;->c:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroid/support/v4/e/d;->d:I

    and-int/2addr v0, v1

    iput v0, p0, Landroid/support/v4/e/d;->c:I

    iget v0, p0, Landroid/support/v4/e/d;->c:I

    iget v1, p0, Landroid/support/v4/e/d;->b:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Landroid/support/v4/e/d;->e()V

    :cond_0
    return-void
.end method

.method public b(I)I
    .locals 3

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/e/d;->d()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_1
    iget-object v0, p0, Landroid/support/v4/e/d;->a:[I

    iget v1, p0, Landroid/support/v4/e/d;->b:I

    add-int/2addr v1, p1

    iget v2, p0, Landroid/support/v4/e/d;->d:I

    and-int/2addr v1, v2

    aget v0, v0, v1

    return v0
.end method

.method public b()V
    .locals 1

    iget v0, p0, Landroid/support/v4/e/d;->b:I

    iput v0, p0, Landroid/support/v4/e/d;->c:I

    return-void
.end method

.method public c()I
    .locals 3

    iget v0, p0, Landroid/support/v4/e/d;->b:I

    iget v1, p0, Landroid/support/v4/e/d;->c:I

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/e/d;->a:[I

    iget v1, p0, Landroid/support/v4/e/d;->c:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Landroid/support/v4/e/d;->d:I

    and-int/2addr v1, v2

    aget v0, v0, v1

    return v0
.end method

.method public d()I
    .locals 2

    iget v0, p0, Landroid/support/v4/e/d;->c:I

    iget v1, p0, Landroid/support/v4/e/d;->b:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/support/v4/e/d;->d:I

    and-int/2addr v0, v1

    return v0
.end method
