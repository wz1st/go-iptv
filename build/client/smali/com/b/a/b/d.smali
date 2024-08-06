.class public Lcom/b/a/b/d;
.super Ljava/lang/Object;


# instance fields
.field private final a:[B

.field private b:Ljava/nio/ByteBuffer;

.field private c:Lcom/b/a/b/c;

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/b/a/b/d;->a:[B

    const/4 v0, 0x0

    iput v0, p0, Lcom/b/a/b/d;->d:I

    return-void
.end method

.method private a(I)V
    .locals 6

    const/4 v1, 0x1

    const/4 v3, 0x0

    move v0, v3

    :goto_0
    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/b/a/b/d;->o()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/b/a/b/d;->c:Lcom/b/a/b/c;

    iget v2, v2, Lcom/b/a/b/c;->c:I

    if-gt v2, p1, :cond_3

    invoke-direct {p0}, Lcom/b/a/b/d;->m()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    iget-object v2, p0, Lcom/b/a/b/d;->c:Lcom/b/a/b/c;

    iput v1, v2, Lcom/b/a/b/c;->b:I

    goto :goto_0

    :sswitch_0
    iget-object v2, p0, Lcom/b/a/b/d;->c:Lcom/b/a/b/c;

    iget-object v2, v2, Lcom/b/a/b/c;->d:Lcom/b/a/b/b;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/b/a/b/d;->c:Lcom/b/a/b/c;

    new-instance v4, Lcom/b/a/b/b;

    invoke-direct {v4}, Lcom/b/a/b/b;-><init>()V

    iput-object v4, v2, Lcom/b/a/b/c;->d:Lcom/b/a/b/b;

    :cond_0
    invoke-direct {p0}, Lcom/b/a/b/d;->f()V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcom/b/a/b/d;->m()I

    move-result v2

    sparse-switch v2, :sswitch_data_1

    invoke-direct {p0}, Lcom/b/a/b/d;->k()V

    goto :goto_0

    :sswitch_2
    iget-object v2, p0, Lcom/b/a/b/d;->c:Lcom/b/a/b/c;

    new-instance v4, Lcom/b/a/b/b;

    invoke-direct {v4}, Lcom/b/a/b/b;-><init>()V

    iput-object v4, v2, Lcom/b/a/b/c;->d:Lcom/b/a/b/b;

    invoke-direct {p0}, Lcom/b/a/b/d;->e()V

    goto :goto_0

    :sswitch_3
    invoke-direct {p0}, Lcom/b/a/b/d;->l()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move v2, v3

    :goto_1
    const/16 v5, 0xb

    if-ge v2, v5, :cond_1

    iget-object v5, p0, Lcom/b/a/b/d;->a:[B

    aget-byte v5, v5, v2

    int-to-char v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "NETSCAPE2.0"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/b/a/b/d;->g()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/b/a/b/d;->k()V

    goto :goto_0

    :sswitch_4
    invoke-direct {p0}, Lcom/b/a/b/d;->k()V

    goto :goto_0

    :sswitch_5
    invoke-direct {p0}, Lcom/b/a/b/d;->k()V

    goto :goto_0

    :sswitch_6
    move v0, v1

    goto :goto_0

    :cond_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_1
        0x2c -> :sswitch_0
        0x3b -> :sswitch_6
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_5
        0xf9 -> :sswitch_2
        0xfe -> :sswitch_4
        0xff -> :sswitch_3
    .end sparse-switch
.end method

.method private b(I)[I
    .locals 9

    const/4 v2, 0x0

    mul-int/lit8 v1, p1, 0x3

    const/4 v0, 0x0

    new-array v4, v1, [B

    :try_start_0
    iget-object v1, p0, Lcom/b/a/b/d;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/16 v1, 0x100

    new-array v0, v1, [I

    move v1, v2

    move v3, v2

    :goto_0
    if-ge v3, p1, :cond_1

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, v4, v1

    and-int/lit16 v5, v1, 0xff

    add-int/lit8 v6, v2, 0x1

    aget-byte v1, v4, v2

    and-int/lit16 v7, v1, 0xff

    add-int/lit8 v1, v6, 0x1

    aget-byte v2, v4, v6

    and-int/lit16 v6, v2, 0xff

    add-int/lit8 v2, v3, 0x1

    const/high16 v8, -0x1000000

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v5, v8

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v5, v7

    or-int/2addr v5, v6

    aput v5, v0, v3
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v2

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "GifHeaderParser"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "GifHeaderParser"

    const-string v3, "Format Error Reading Color Table"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    iget-object v1, p0, Lcom/b/a/b/d;->c:Lcom/b/a/b/c;

    const/4 v2, 0x1

    iput v2, v1, Lcom/b/a/b/c;->b:I

    :cond_1
    return-object v0
.end method

.method private c()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/b/a/b/d;->b:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/b/a/b/d;->a:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    new-instance v0, Lcom/b/a/b/c;

    invoke-direct {v0}, Lcom/b/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/b/a/b/d;->c:Lcom/b/a/b/c;

    iput v1, p0, Lcom/b/a/b/d;->d:I

    return-void
.end method

.method private d()V
    .locals 1

    const v0, 0x7fffffff

    invoke-direct {p0, v0}, Lcom/b/a/b/d;->a(I)V

    return-void
.end method

.method private e()V
    .locals 4

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/b/a/b/d;->m()I

    invoke-direct {p0}, Lcom/b/a/b/d;->m()I

    move-result v1

    iget-object v2, p0, Lcom/b/a/b/d;->c:Lcom/b/a/b/c;

    iget-object v2, v2, Lcom/b/a/b/c;->d:Lcom/b/a/b/b;

    and-int/lit8 v3, v1, 0x1c

    shr-int/lit8 v3, v3, 0x2

    iput v3, v2, Lcom/b/a/b/b;->g:I

    iget-object v2, p0, Lcom/b/a/b/d;->c:Lcom/b/a/b/c;

    iget-object v2, v2, Lcom/b/a/b/c;->d:Lcom/b/a/b/b;

    iget v2, v2, Lcom/b/a/b/b;->g:I

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/b/a/b/d;->c:Lcom/b/a/b/c;

    iget-object v2, v2, Lcom/b/a/b/c;->d:Lcom/b/a/b/b;

    iput v0, v2, Lcom/b/a/b/b;->g:I

    :cond_0
    iget-object v2, p0, Lcom/b/a/b/d;->c:Lcom/b/a/b/c;

    iget-object v2, v2, Lcom/b/a/b/c;->d:Lcom/b/a/b/b;

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    :goto_0
    iput-boolean v0, v2, Lcom/b/a/b/b;->f:Z

    invoke-direct {p0}, Lcom/b/a/b/d;->n()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    const/16 v0, 0xa

    :cond_1
    iget-object v1, p0, Lcom/b/a/b/d;->c:Lcom/b/a/b/c;

    iget-object v1, v1, Lcom/b/a/b/c;->d:Lcom/b/a/b/b;

    mul-int/lit8 v0, v0, 0xa

    iput v0, v1, Lcom/b/a/b/b;->i:I

    iget-object v0, p0, Lcom/b/a/b/d;->c:Lcom/b/a/b/c;

    iget-object v0, v0, Lcom/b/a/b/c;->d:Lcom/b/a/b/b;

    invoke-direct {p0}, Lcom/b/a/b/d;->m()I

    move-result v1

    iput v1, v0, Lcom/b/a/b/b;->h:I

    invoke-direct {p0}, Lcom/b/a/b/d;->m()I

    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f()V
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/b/a/b/d;->c:Lcom/b/a/b/c;

    iget-object v0, v0, Lcom/b/a/b/c;->d:Lcom/b/a/b/b;

    invoke-direct {p0}, Lcom/b/a/b/d;->n()I

    move-result v3

    iput v3, v0, Lcom/b/a/b/b;->a:I

    iget-object v0, p0, Lcom/b/a/b/d;->c:Lcom/b/a/b/c;

    iget-object v0, v0, Lcom/b/a/b/c;->d:Lcom/b/a/b/b;

    invoke-direct {p0}, Lcom/b/a/b/d;->n()I

    move-result v3

    iput v3, v0, Lcom/b/a/b/b;->b:I

    iget-object v0, p0, Lcom/b/a/b/d;->c:Lcom/b/a/b/c;

    iget-object v0, v0, Lcom/b/a/b/c;->d:Lcom/b/a/b/b;

    invoke-direct {p0}, Lcom/b/a/b/d;->n()I

    move-result v3

    iput v3, v0, Lcom/b/a/b/b;->c:I

    iget-object v0, p0, Lcom/b/a/b/d;->c:Lcom/b/a/b/c;

    iget-object v0, v0, Lcom/b/a/b/c;->d:Lcom/b/a/b/b;

    invoke-direct {p0}, Lcom/b/a/b/d;->n()I

    move-result v3

    iput v3, v0, Lcom/b/a/b/b;->d:I

    invoke-direct {p0}, Lcom/b/a/b/d;->m()I

    move-result v3

    and-int/lit16 v0, v3, 0x80

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    and-int/lit8 v6, v3, 0x7

    add-int/lit8 v6, v6, 0x1

    int-to-double v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-int v4, v4

    iget-object v5, p0, Lcom/b/a/b/d;->c:Lcom/b/a/b/c;

    iget-object v5, v5, Lcom/b/a/b/c;->d:Lcom/b/a/b/b;

    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_1

    :goto_1
    iput-boolean v1, v5, Lcom/b/a/b/b;->e:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/b/a/b/d;->c:Lcom/b/a/b/c;

    iget-object v0, v0, Lcom/b/a/b/c;->d:Lcom/b/a/b/b;

    invoke-direct {p0, v4}, Lcom/b/a/b/d;->b(I)[I

    move-result-object v1

    iput-object v1, v0, Lcom/b/a/b/b;->k:[I

    :goto_2
    iget-object v0, p0, Lcom/b/a/b/d;->c:Lcom/b/a/b/c;

    iget-object v0, v0, Lcom/b/a/b/c;->d:Lcom/b/a/b/b;

    iget-object v1, p0, Lcom/b/a/b/d;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    iput v1, v0, Lcom/b/a/b/b;->j:I

    invoke-direct {p0}, Lcom/b/a/b/d;->j()V

    invoke-direct {p0}, Lcom/b/a/b/d;->o()Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_3
    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/b/a/b/d;->c:Lcom/b/a/b/c;

    iget-object v0, v0, Lcom/b/a/b/c;->d:Lcom/b/a/b/b;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/b/a/b/b;->k:[I

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/b/a/b/d;->c:Lcom/b/a/b/c;

    iget v1, v0, Lcom/b/a/b/c;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/b/a/b/c;->c:I

    iget-object v0, p0, Lcom/b/a/b/d;->c:Lcom/b/a/b/c;

    iget-object v0, v0, Lcom/b/a/b/c;->e:Ljava/util/List;

    iget-object v1, p0, Lcom/b/a/b/d;->c:Lcom/b/a/b/c;

    iget-object v1, v1, Lcom/b/a/b/c;->d:Lcom/b/a/b/b;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3
.end method

.method private g()V
    .locals 4

    const/4 v3, 0x1

    :cond_0
    invoke-direct {p0}, Lcom/b/a/b/d;->l()V

    iget-object v0, p0, Lcom/b/a/b/d;->a:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/b/a/b/d;->a:[B

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    iget-object v1, p0, Lcom/b/a/b/d;->a:[B

    const/4 v2, 0x2

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    iget-object v2, p0, Lcom/b/a/b/d;->c:Lcom/b/a/b/c;

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iput v0, v2, Lcom/b/a/b/c;->m:I

    :cond_1
    iget v0, p0, Lcom/b/a/b/d;->d:I

    if-lez v0, :cond_2

    invoke-direct {p0}, Lcom/b/a/b/d;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    return-void
.end method

.method private h()V
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x6

    if-ge v0, v2, :cond_0

    invoke-direct {p0}, Lcom/b/a/b/d;->m()I

    move-result v2

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GIF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/b/a/b/d;->c:Lcom/b/a/b/c;

    const/4 v1, 0x1

    iput v1, v0, Lcom/b/a/b/c;->b:I

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-direct {p0}, Lcom/b/a/b/d;->i()V

    iget-object v0, p0, Lcom/b/a/b/d;->c:Lcom/b/a/b/c;

    iget-boolean v0, v0, Lcom/b/a/b/c;->h:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/b/a/b/d;->o()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/b/a/b/d;->c:Lcom/b/a/b/c;

    iget-object v1, p0, Lcom/b/a/b/d;->c:Lcom/b/a/b/c;

    iget v1, v1, Lcom/b/a/b/c;->i:I

    invoke-direct {p0, v1}, Lcom/b/a/b/d;->b(I)[I

    move-result-object v1

    iput-object v1, v0, Lcom/b/a/b/c;->a:[I

    iget-object v0, p0, Lcom/b/a/b/d;->c:Lcom/b/a/b/c;

    iget-object v1, p0, Lcom/b/a/b/d;->c:Lcom/b/a/b/c;

    iget-object v1, v1, Lcom/b/a/b/c;->a:[I

    iget-object v2, p0, Lcom/b/a/b/d;->c:Lcom/b/a/b/c;

    iget v2, v2, Lcom/b/a/b/c;->j:I

    aget v1, v1, v2

    iput v1, v0, Lcom/b/a/b/c;->l:I

    goto :goto_1
.end method

.method private i()V
    .locals 6

    iget-object v0, p0, Lcom/b/a/b/d;->c:Lcom/b/a/b/c;

    invoke-direct {p0}, Lcom/b/a/b/d;->n()I

    move-result v1

    iput v1, v0, Lcom/b/a/b/c;->f:I

    iget-object v0, p0, Lcom/b/a/b/d;->c:Lcom/b/a/b/c;

    invoke-direct {p0}, Lcom/b/a/b/d;->n()I

    move-result v1

    iput v1, v0, Lcom/b/a/b/c;->g:I

    invoke-direct {p0}, Lcom/b/a/b/d;->m()I

    move-result v1

    iget-object v2, p0, Lcom/b/a/b/d;->c:Lcom/b/a/b/c;

    and-int/lit16 v0, v1, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, v2, Lcom/b/a/b/c;->h:Z

    iget-object v0, p0, Lcom/b/a/b/d;->c:Lcom/b/a/b/c;

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    and-int/lit8 v1, v1, 0x7

    add-int/lit8 v1, v1, 0x1

    int-to-double v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-int v1, v2

    iput v1, v0, Lcom/b/a/b/c;->i:I

    iget-object v0, p0, Lcom/b/a/b/d;->c:Lcom/b/a/b/c;

    invoke-direct {p0}, Lcom/b/a/b/d;->m()I

    move-result v1

    iput v1, v0, Lcom/b/a/b/c;->j:I

    iget-object v0, p0, Lcom/b/a/b/d;->c:Lcom/b/a/b/c;

    invoke-direct {p0}, Lcom/b/a/b/d;->m()I

    move-result v1

    iput v1, v0, Lcom/b/a/b/c;->k:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private j()V
    .locals 0

    invoke-direct {p0}, Lcom/b/a/b/d;->m()I

    invoke-direct {p0}, Lcom/b/a/b/d;->k()V

    return-void
.end method

.method private k()V
    .locals 3

    :cond_0
    invoke-direct {p0}, Lcom/b/a/b/d;->m()I

    move-result v0

    iget-object v1, p0, Lcom/b/a/b/d;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/b/a/b/d;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, p0, Lcom/b/a/b/d;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    if-gtz v0, :cond_0

    return-void
.end method

.method private l()V
    .locals 6

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/b/a/b/d;->m()I

    move-result v1

    iput v1, p0, Lcom/b/a/b/d;->d:I

    iget v1, p0, Lcom/b/a/b/d;->d:I

    if-lez v1, :cond_1

    move v1, v0

    move v2, v0

    :goto_0
    :try_start_0
    iget v0, p0, Lcom/b/a/b/d;->d:I

    if-ge v2, v0, :cond_1

    iget v0, p0, Lcom/b/a/b/d;->d:I

    sub-int v1, v0, v2

    iget-object v0, p0, Lcom/b/a/b/d;->b:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/b/a/b/d;->a:[B

    invoke-virtual {v0, v3, v2, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int v0, v2, v1

    move v2, v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "GifHeaderParser"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "GifHeaderParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error Reading Block n: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " count: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " blockSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/b/a/b/d;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    iget-object v0, p0, Lcom/b/a/b/d;->c:Lcom/b/a/b/c;

    const/4 v1, 0x1

    iput v1, v0, Lcom/b/a/b/c;->b:I

    :cond_1
    return-void
.end method

.method private m()I
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/b/a/b/d;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    and-int/lit16 v0, v0, 0xff

    :goto_0
    return v0

    :catch_0
    move-exception v1

    iget-object v1, p0, Lcom/b/a/b/d;->c:Lcom/b/a/b/c;

    const/4 v2, 0x1

    iput v2, v1, Lcom/b/a/b/c;->b:I

    goto :goto_0
.end method

.method private n()I
    .locals 1

    iget-object v0, p0, Lcom/b/a/b/d;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    return v0
.end method

.method private o()Z
    .locals 1

    iget-object v0, p0, Lcom/b/a/b/d;->c:Lcom/b/a/b/c;

    iget v0, v0, Lcom/b/a/b/c;->b:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/nio/ByteBuffer;)Lcom/b/a/b/d;
    .locals 2

    invoke-direct {p0}, Lcom/b/a/b/d;->c()V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/b/d;->b:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/b/a/b/d;->b:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/b/a/b/d;->b:Ljava/nio/ByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public a()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/b/a/b/d;->b:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/b/a/b/d;->c:Lcom/b/a/b/c;

    return-void
.end method

.method public b()Lcom/b/a/b/c;
    .locals 2

    iget-object v0, p0, Lcom/b/a/b/d;->b:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must call setData() before parseHeader()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/b/a/b/d;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/b/a/b/d;->c:Lcom/b/a/b/c;

    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0}, Lcom/b/a/b/d;->h()V

    invoke-direct {p0}, Lcom/b/a/b/d;->o()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/b/a/b/d;->d()V

    iget-object v0, p0, Lcom/b/a/b/d;->c:Lcom/b/a/b/c;

    iget v0, v0, Lcom/b/a/b/c;->c:I

    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/b/a/b/d;->c:Lcom/b/a/b/c;

    const/4 v1, 0x1

    iput v1, v0, Lcom/b/a/b/c;->b:I

    :cond_2
    iget-object v0, p0, Lcom/b/a/b/d;->c:Lcom/b/a/b/c;

    goto :goto_0
.end method
