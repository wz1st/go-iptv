.class final La/a/c/z$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/c/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field a:[La/a/c/f;

.field b:I

.field c:I

.field d:I

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "La/a/c/f;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lb/d;

.field private final g:I

.field private h:I


# direct methods
.method constructor <init>(Lb/m;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, La/a/c/z$a;-><init>(Lb/m;B)V

    return-void
.end method

.method private constructor <init>(Lb/m;B)V
    .locals 3

    const/16 v2, 0x1000

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, La/a/c/z$a;->e:Ljava/util/List;

    const/16 v0, 0x8

    new-array v0, v0, [La/a/c/f;

    iput-object v0, p0, La/a/c/z$a;->a:[La/a/c/f;

    iget-object v0, p0, La/a/c/z$a;->a:[La/a/c/f;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, La/a/c/z$a;->b:I

    iput v1, p0, La/a/c/z$a;->c:I

    iput v1, p0, La/a/c/z$a;->d:I

    iput v2, p0, La/a/c/z$a;->g:I

    iput v2, p0, La/a/c/z$a;->h:I

    invoke-static {p1}, Lb/k;->a(Lb/m;)Lb/d;

    move-result-object v0

    iput-object v0, p0, La/a/c/z$a;->f:Lb/d;

    return-void
.end method

.method private a(I)I
    .locals 6

    const/4 v1, 0x0

    if-lez p1, :cond_1

    iget-object v0, p0, La/a/c/z$a;->a:[La/a/c/f;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    iget v2, p0, La/a/c/z$a;->b:I

    if-lt v0, v2, :cond_0

    if-lez p1, :cond_0

    iget-object v2, p0, La/a/c/z$a;->a:[La/a/c/f;

    aget-object v2, v2, v0

    iget v2, v2, La/a/c/f;->h:I

    sub-int/2addr p1, v2

    iget v2, p0, La/a/c/z$a;->d:I

    iget-object v3, p0, La/a/c/z$a;->a:[La/a/c/f;

    aget-object v3, v3, v0

    iget v3, v3, La/a/c/f;->h:I

    sub-int/2addr v2, v3

    iput v2, p0, La/a/c/z$a;->d:I

    iget v2, p0, La/a/c/z$a;->c:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, La/a/c/z$a;->c:I

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, La/a/c/z$a;->a:[La/a/c/f;

    iget v2, p0, La/a/c/z$a;->b:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, La/a/c/z$a;->a:[La/a/c/f;

    iget v4, p0, La/a/c/z$a;->b:I

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v4, v1

    iget v5, p0, La/a/c/z$a;->c:I

    invoke-static {v0, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, La/a/c/z$a;->b:I

    add-int/2addr v0, v1

    iput v0, p0, La/a/c/z$a;->b:I

    :cond_1
    return v1
.end method

.method private a(II)I
    .locals 3

    and-int v0, p1, p2

    if-ge v0, p2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    invoke-direct {p0}, La/a/c/z$a;->e()I

    move-result v1

    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_1

    and-int/lit8 v1, v1, 0x7f

    shl-int/2addr v1, v0

    add-int/2addr p2, v1

    add-int/lit8 v0, v0, 0x7

    goto :goto_1

    :cond_1
    shl-int v0, v1, v0

    add-int/2addr v0, p2

    goto :goto_0
.end method

.method private a(La/a/c/f;)V
    .locals 6

    iget-object v0, p0, La/a/c/z$a;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v0, p1, La/a/c/f;->h:I

    iget v1, p0, La/a/c/z$a;->h:I

    if-le v0, v1, :cond_0

    invoke-direct {p0}, La/a/c/z$a;->d()V

    :goto_0
    return-void

    :cond_0
    iget v1, p0, La/a/c/z$a;->d:I

    add-int/2addr v1, v0

    iget v2, p0, La/a/c/z$a;->h:I

    sub-int/2addr v1, v2

    invoke-direct {p0, v1}, La/a/c/z$a;->a(I)I

    iget v1, p0, La/a/c/z$a;->c:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, La/a/c/z$a;->a:[La/a/c/f;

    array-length v2, v2

    if-le v1, v2, :cond_1

    iget-object v1, p0, La/a/c/z$a;->a:[La/a/c/f;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [La/a/c/f;

    iget-object v2, p0, La/a/c/z$a;->a:[La/a/c/f;

    const/4 v3, 0x0

    iget-object v4, p0, La/a/c/z$a;->a:[La/a/c/f;

    array-length v4, v4

    iget-object v5, p0, La/a/c/z$a;->a:[La/a/c/f;

    array-length v5, v5

    invoke-static {v2, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, La/a/c/z$a;->a:[La/a/c/f;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, La/a/c/z$a;->b:I

    iput-object v1, p0, La/a/c/z$a;->a:[La/a/c/f;

    :cond_1
    iget v1, p0, La/a/c/z$a;->b:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, La/a/c/z$a;->b:I

    iget-object v2, p0, La/a/c/z$a;->a:[La/a/c/f;

    aput-object p1, v2, v1

    iget v1, p0, La/a/c/z$a;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, La/a/c/z$a;->c:I

    iget v1, p0, La/a/c/z$a;->d:I

    add-int/2addr v0, v1

    iput v0, p0, La/a/c/z$a;->d:I

    goto :goto_0
.end method

.method private b(I)I
    .locals 1

    iget v0, p0, La/a/c/z$a;->b:I

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, p1

    return v0
.end method

.method private c(I)Lb/e;
    .locals 2

    invoke-static {p1}, La/a/c/z$a;->d(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, La/a/c/z;->a()[La/a/c/f;

    move-result-object v0

    aget-object v0, v0, p1

    iget-object v0, v0, La/a/c/f;->i:Lb/e;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, La/a/c/z$a;->a:[La/a/c/f;

    invoke-static {}, La/a/c/z;->a()[La/a/c/f;

    move-result-object v1

    array-length v1, v1

    sub-int v1, p1, v1

    invoke-direct {p0, v1}, La/a/c/z$a;->b(I)I

    move-result v1

    aget-object v0, v0, v1

    iget-object v0, v0, La/a/c/f;->i:Lb/e;

    goto :goto_0
.end method

.method private c()V
    .locals 2

    iget v0, p0, La/a/c/z$a;->h:I

    iget v1, p0, La/a/c/z$a;->d:I

    if-ge v0, v1, :cond_0

    iget v0, p0, La/a/c/z$a;->h:I

    if-nez v0, :cond_1

    invoke-direct {p0}, La/a/c/z$a;->d()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, La/a/c/z$a;->d:I

    iget v1, p0, La/a/c/z$a;->h:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, La/a/c/z$a;->a(I)I

    goto :goto_0
.end method

.method private d()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, La/a/c/z$a;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, La/a/c/z$a;->a:[La/a/c/f;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, La/a/c/z$a;->a:[La/a/c/f;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, La/a/c/z$a;->b:I

    iput v2, p0, La/a/c/z$a;->c:I

    iput v2, p0, La/a/c/z$a;->d:I

    return-void
.end method

.method private static d(I)Z
    .locals 1

    if-ltz p0, :cond_0

    invoke-static {}, La/a/c/z;->a()[La/a/c/f;

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e()I
    .locals 1

    iget-object v0, p0, La/a/c/z$a;->f:Lb/d;

    invoke-interface {v0}, Lb/d;->i()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private f()Lb/e;
    .locals 6

    invoke-direct {p0}, La/a/c/z$a;->e()I

    move-result v1

    and-int/lit16 v0, v1, 0x80

    const/16 v2, 0x80

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/16 v2, 0x7f

    invoke-direct {p0, v1, v2}, La/a/c/z$a;->a(II)I

    move-result v1

    if-eqz v0, :cond_1

    invoke-static {}, La/a/c/aa;->a()La/a/c/aa;

    move-result-object v0

    iget-object v2, p0, La/a/c/z$a;->f:Lb/d;

    int-to-long v4, v1

    invoke-interface {v2, v4, v5}, Lb/d;->c(J)[B

    move-result-object v1

    invoke-virtual {v0, v1}, La/a/c/aa;->a([B)[B

    move-result-object v0

    invoke-static {v0}, Lb/e;->a([B)Lb/e;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, La/a/c/z$a;->f:Lb/d;

    int-to-long v2, v1

    invoke-interface {v0, v2, v3}, Lb/d;->d(J)Lb/e;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method final a()V
    .locals 6

    const/16 v5, 0x80

    const/16 v4, 0x40

    :goto_0
    iget-object v0, p0, La/a/c/z$a;->f:Lb/d;

    invoke-interface {v0}, Lb/d;->h()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, La/a/c/z$a;->f:Lb/d;

    invoke-interface {v0}, Lb/d;->i()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-ne v0, v5, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "index == 0"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    and-int/lit16 v1, v0, 0x80

    if-ne v1, v5, :cond_4

    const/16 v1, 0x7f

    invoke-direct {p0, v0, v1}, La/a/c/z$a;->a(II)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, La/a/c/z$a;->d(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, La/a/c/z;->a()[La/a/c/f;

    move-result-object v1

    aget-object v0, v1, v0

    iget-object v1, p0, La/a/c/z$a;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {}, La/a/c/z;->a()[La/a/c/f;

    move-result-object v1

    array-length v1, v1

    sub-int v1, v0, v1

    invoke-direct {p0, v1}, La/a/c/z$a;->b(I)I

    move-result v1

    if-ltz v1, :cond_2

    iget-object v2, p0, La/a/c/z$a;->a:[La/a/c/f;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-le v1, v2, :cond_3

    :cond_2
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Header index too large "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    iget-object v0, p0, La/a/c/z$a;->e:Ljava/util/List;

    iget-object v2, p0, La/a/c/z$a;->a:[La/a/c/f;

    aget-object v1, v2, v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    if-ne v0, v4, :cond_5

    new-instance v0, La/a/c/f;

    invoke-direct {p0}, La/a/c/z$a;->f()Lb/e;

    move-result-object v1

    invoke-static {v1}, La/a/c/z;->a(Lb/e;)Lb/e;

    move-result-object v1

    invoke-direct {p0}, La/a/c/z$a;->f()Lb/e;

    move-result-object v2

    invoke-direct {v0, v1, v2}, La/a/c/f;-><init>(Lb/e;Lb/e;)V

    invoke-direct {p0, v0}, La/a/c/z$a;->a(La/a/c/f;)V

    goto/16 :goto_0

    :cond_5
    and-int/lit8 v1, v0, 0x40

    if-ne v1, v4, :cond_6

    new-instance v1, La/a/c/f;

    const/16 v2, 0x3f

    invoke-direct {p0, v0, v2}, La/a/c/z$a;->a(II)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, La/a/c/z$a;->c(I)Lb/e;

    move-result-object v0

    invoke-direct {p0}, La/a/c/z$a;->f()Lb/e;

    move-result-object v2

    invoke-direct {v1, v0, v2}, La/a/c/f;-><init>(Lb/e;Lb/e;)V

    invoke-direct {p0, v1}, La/a/c/z$a;->a(La/a/c/f;)V

    goto/16 :goto_0

    :cond_6
    and-int/lit8 v1, v0, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_9

    const/16 v1, 0x1f

    invoke-direct {p0, v0, v1}, La/a/c/z$a;->a(II)I

    move-result v0

    iput v0, p0, La/a/c/z$a;->h:I

    iget v0, p0, La/a/c/z$a;->h:I

    if-ltz v0, :cond_7

    iget v0, p0, La/a/c/z$a;->h:I

    iget v1, p0, La/a/c/z$a;->g:I

    if-le v0, v1, :cond_8

    :cond_7
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid dynamic table size update "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, La/a/c/z$a;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    invoke-direct {p0}, La/a/c/z$a;->c()V

    goto/16 :goto_0

    :cond_9
    const/16 v1, 0x10

    if-eq v0, v1, :cond_a

    if-nez v0, :cond_b

    :cond_a
    invoke-direct {p0}, La/a/c/z$a;->f()Lb/e;

    move-result-object v0

    invoke-static {v0}, La/a/c/z;->a(Lb/e;)Lb/e;

    move-result-object v0

    invoke-direct {p0}, La/a/c/z$a;->f()Lb/e;

    move-result-object v1

    iget-object v2, p0, La/a/c/z$a;->e:Ljava/util/List;

    new-instance v3, La/a/c/f;

    invoke-direct {v3, v0, v1}, La/a/c/f;-><init>(Lb/e;Lb/e;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_b
    const/16 v1, 0xf

    invoke-direct {p0, v0, v1}, La/a/c/z$a;->a(II)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, La/a/c/z$a;->c(I)Lb/e;

    move-result-object v0

    invoke-direct {p0}, La/a/c/z$a;->f()Lb/e;

    move-result-object v1

    iget-object v2, p0, La/a/c/z$a;->e:Ljava/util/List;

    new-instance v3, La/a/c/f;

    invoke-direct {v3, v0, v1}, La/a/c/f;-><init>(Lb/e;Lb/e;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_c
    return-void
.end method

.method public final b()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "La/a/c/f;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, La/a/c/z$a;->e:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, La/a/c/z$a;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    return-object v0
.end method
