.class final La/a/c/z$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/c/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:[La/a/c/f;

.field d:I

.field e:I

.field f:I

.field private final g:Lb/b;

.field private h:I

.field private i:Z


# direct methods
.method constructor <init>(Lb/b;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, La/a/c/z$b;-><init>(Lb/b;B)V

    return-void
.end method

.method private constructor <init>(Lb/b;B)V
    .locals 3

    const/16 v2, 0x1000

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, La/a/c/z$b;->h:I

    const/16 v0, 0x8

    new-array v0, v0, [La/a/c/f;

    iput-object v0, p0, La/a/c/z$b;->c:[La/a/c/f;

    iget-object v0, p0, La/a/c/z$b;->c:[La/a/c/f;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, La/a/c/z$b;->d:I

    iput v1, p0, La/a/c/z$b;->e:I

    iput v1, p0, La/a/c/z$b;->f:I

    iput v2, p0, La/a/c/z$b;->a:I

    iput v2, p0, La/a/c/z$b;->b:I

    iput-object p1, p0, La/a/c/z$b;->g:Lb/b;

    return-void
.end method

.method private a()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, La/a/c/z$b;->c:[La/a/c/f;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, La/a/c/z$b;->c:[La/a/c/f;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, La/a/c/z$b;->d:I

    iput v2, p0, La/a/c/z$b;->e:I

    iput v2, p0, La/a/c/z$b;->f:I

    return-void
.end method

.method private a(III)V
    .locals 3

    if-ge p1, p2, :cond_0

    iget-object v0, p0, La/a/c/z$b;->g:Lb/b;

    or-int v1, p3, p1

    invoke-virtual {v0, v1}, Lb/b;->c(I)Lb/b;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, La/a/c/z$b;->g:Lb/b;

    or-int v1, p3, p2

    invoke-virtual {v0, v1}, Lb/b;->c(I)Lb/b;

    sub-int v0, p1, p2

    :goto_1
    const/16 v1, 0x80

    if-lt v0, v1, :cond_1

    iget-object v1, p0, La/a/c/z$b;->g:Lb/b;

    and-int/lit8 v2, v0, 0x7f

    or-int/lit16 v2, v2, 0x80

    invoke-virtual {v1, v2}, Lb/b;->c(I)Lb/b;

    ushr-int/lit8 v0, v0, 0x7

    goto :goto_1

    :cond_1
    iget-object v1, p0, La/a/c/z$b;->g:Lb/b;

    invoke-virtual {v1, v0}, Lb/b;->c(I)Lb/b;

    goto :goto_0
.end method

.method private a(Lb/e;)V
    .locals 3

    invoke-virtual {p1}, Lb/e;->c()I

    move-result v0

    const/16 v1, 0x7f

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, La/a/c/z$b;->a(III)V

    iget-object v0, p0, La/a/c/z$b;->g:Lb/b;

    invoke-virtual {v0, p1}, Lb/b;->a(Lb/e;)Lb/b;

    return-void
.end method

.method private b(I)I
    .locals 6

    const/4 v1, 0x0

    if-lez p1, :cond_1

    iget-object v0, p0, La/a/c/z$b;->c:[La/a/c/f;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    iget v2, p0, La/a/c/z$b;->d:I

    if-lt v0, v2, :cond_0

    if-lez p1, :cond_0

    iget-object v2, p0, La/a/c/z$b;->c:[La/a/c/f;

    aget-object v2, v2, v0

    iget v2, v2, La/a/c/f;->h:I

    sub-int/2addr p1, v2

    iget v2, p0, La/a/c/z$b;->f:I

    iget-object v3, p0, La/a/c/z$b;->c:[La/a/c/f;

    aget-object v3, v3, v0

    iget v3, v3, La/a/c/f;->h:I

    sub-int/2addr v2, v3

    iput v2, p0, La/a/c/z$b;->f:I

    iget v2, p0, La/a/c/z$b;->e:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, La/a/c/z$b;->e:I

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, La/a/c/z$b;->c:[La/a/c/f;

    iget v2, p0, La/a/c/z$b;->d:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, La/a/c/z$b;->c:[La/a/c/f;

    iget v4, p0, La/a/c/z$b;->d:I

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v4, v1

    iget v5, p0, La/a/c/z$b;->e:I

    invoke-static {v0, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, La/a/c/z$b;->c:[La/a/c/f;

    iget v2, p0, La/a/c/z$b;->d:I

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, La/a/c/z$b;->d:I

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v3, v1

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    iget v0, p0, La/a/c/z$b;->d:I

    add-int/2addr v0, v1

    iput v0, p0, La/a/c/z$b;->d:I

    :cond_1
    return v1
.end method


# virtual methods
.method final a(I)V
    .locals 2

    iput p1, p0, La/a/c/z$b;->a:I

    const/16 v0, 0x4000

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, La/a/c/z$b;->b:I

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p0, La/a/c/z$b;->b:I

    if-ge v0, v1, :cond_2

    iget v1, p0, La/a/c/z$b;->h:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, La/a/c/z$b;->h:I

    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, La/a/c/z$b;->i:Z

    iput v0, p0, La/a/c/z$b;->b:I

    iget v0, p0, La/a/c/z$b;->b:I

    iget v1, p0, La/a/c/z$b;->f:I

    if-ge v0, v1, :cond_0

    iget v0, p0, La/a/c/z$b;->b:I

    if-nez v0, :cond_3

    invoke-direct {p0}, La/a/c/z$b;->a()V

    goto :goto_0

    :cond_3
    iget v0, p0, La/a/c/z$b;->f:I

    iget v1, p0, La/a/c/z$b;->b:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, La/a/c/z$b;->b(I)I

    goto :goto_0
.end method

.method final a(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "La/a/c/f;",
            ">;)V"
        }
    .end annotation

    const/16 v4, 0x20

    const/16 v2, 0x1f

    const/4 v3, 0x0

    iget-boolean v0, p0, La/a/c/z$b;->i:Z

    if-eqz v0, :cond_1

    iget v0, p0, La/a/c/z$b;->h:I

    iget v1, p0, La/a/c/z$b;->b:I

    if-ge v0, v1, :cond_0

    iget v0, p0, La/a/c/z$b;->h:I

    invoke-direct {p0, v0, v2, v4}, La/a/c/z$b;->a(III)V

    :cond_0
    iput-boolean v3, p0, La/a/c/z$b;->i:Z

    const v0, 0x7fffffff

    iput v0, p0, La/a/c/z$b;->h:I

    iget v0, p0, La/a/c/z$b;->b:I

    invoke-direct {p0, v0, v2, v4}, La/a/c/z$b;->a(III)V

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_6

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/c/f;

    iget-object v1, v0, La/a/c/f;->i:Lb/e;

    invoke-virtual {v1}, Lb/e;->d()Lb/e;

    move-result-object v5

    iget-object v6, v0, La/a/c/f;->j:Lb/e;

    invoke-static {}, La/a/c/z;->b()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0xf

    invoke-direct {p0, v0, v1, v3}, La/a/c/z$b;->a(III)V

    invoke-direct {p0, v6}, La/a/c/z$b;->a(Lb/e;)V

    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    iget-object v1, p0, La/a/c/z$b;->c:[La/a/c/f;

    invoke-static {v1, v0}, La/a/c;->a([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    const/4 v7, -0x1

    if-eq v1, v7, :cond_3

    iget v0, p0, La/a/c/z$b;->d:I

    sub-int v0, v1, v0

    invoke-static {}, La/a/c/z;->a()[La/a/c/f;

    move-result-object v1

    array-length v1, v1

    add-int/2addr v0, v1

    const/16 v1, 0x7f

    const/16 v5, 0x80

    invoke-direct {p0, v0, v1, v5}, La/a/c/z$b;->a(III)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, La/a/c/z$b;->g:Lb/b;

    const/16 v7, 0x40

    invoke-virtual {v1, v7}, Lb/b;->c(I)Lb/b;

    invoke-direct {p0, v5}, La/a/c/z$b;->a(Lb/e;)V

    invoke-direct {p0, v6}, La/a/c/z$b;->a(Lb/e;)V

    iget v1, v0, La/a/c/f;->h:I

    iget v5, p0, La/a/c/z$b;->b:I

    if-le v1, v5, :cond_4

    invoke-direct {p0}, La/a/c/z$b;->a()V

    goto :goto_1

    :cond_4
    iget v5, p0, La/a/c/z$b;->f:I

    add-int/2addr v5, v1

    iget v6, p0, La/a/c/z$b;->b:I

    sub-int/2addr v5, v6

    invoke-direct {p0, v5}, La/a/c/z$b;->b(I)I

    iget v5, p0, La/a/c/z$b;->e:I

    add-int/lit8 v5, v5, 0x1

    iget-object v6, p0, La/a/c/z$b;->c:[La/a/c/f;

    array-length v6, v6

    if-le v5, v6, :cond_5

    iget-object v5, p0, La/a/c/z$b;->c:[La/a/c/f;

    array-length v5, v5

    mul-int/lit8 v5, v5, 0x2

    new-array v5, v5, [La/a/c/f;

    iget-object v6, p0, La/a/c/z$b;->c:[La/a/c/f;

    iget-object v7, p0, La/a/c/z$b;->c:[La/a/c/f;

    array-length v7, v7

    iget-object v8, p0, La/a/c/z$b;->c:[La/a/c/f;

    array-length v8, v8

    invoke-static {v6, v3, v5, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v6, p0, La/a/c/z$b;->c:[La/a/c/f;

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, La/a/c/z$b;->d:I

    iput-object v5, p0, La/a/c/z$b;->c:[La/a/c/f;

    :cond_5
    iget v5, p0, La/a/c/z$b;->d:I

    add-int/lit8 v6, v5, -0x1

    iput v6, p0, La/a/c/z$b;->d:I

    iget-object v6, p0, La/a/c/z$b;->c:[La/a/c/f;

    aput-object v0, v6, v5

    iget v0, p0, La/a/c/z$b;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, La/a/c/z$b;->e:I

    iget v0, p0, La/a/c/z$b;->f:I

    add-int/2addr v0, v1

    iput v0, p0, La/a/c/z$b;->f:I

    goto :goto_1

    :cond_6
    return-void
.end method
