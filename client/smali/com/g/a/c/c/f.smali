.class public Lcom/g/a/c/c/f;
.super Lcom/g/a/n;


# static fields
.field static final synthetic j:Z


# instance fields
.field private d:[B

.field k:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/g/a/c/c/f;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/g/a/c/c/f;->j:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/g/a/n;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/g/a/c/c/f;->k:I

    return-void
.end method


# virtual methods
.method public a(Lcom/g/a/i;Lcom/g/a/h;)V
    .locals 11

    const/4 v10, -0x1

    const/4 v9, -0x2

    const/4 v8, -0x3

    const/4 v7, -0x4

    const/4 v2, 0x0

    iget v0, p0, Lcom/g/a/c/c/f;->k:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/g/a/c/c/f;->d:[B

    array-length v0, v0

    invoke-static {v0}, Lcom/g/a/h;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/g/a/c/c/f;->d:[B

    iget v3, p0, Lcom/g/a/c/c/f;->k:I

    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {p2, v0}, Lcom/g/a/h;->c(Ljava/nio/ByteBuffer;)V

    iput v2, p0, Lcom/g/a/c/c/f;->k:I

    :cond_0
    invoke-virtual {p2}, Lcom/g/a/h;->l()I

    move-result v0

    new-array v3, v0, [B

    invoke-virtual {p2, v3}, Lcom/g/a/h;->a([B)V

    move v0, v2

    move v1, v2

    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_11

    iget v4, p0, Lcom/g/a/c/c/f;->k:I

    if-ltz v4, :cond_3

    aget-byte v4, v3, v1

    iget-object v5, p0, Lcom/g/a/c/c/f;->d:[B

    iget v6, p0, Lcom/g/a/c/c/f;->k:I

    aget-byte v5, v5, v6

    if-ne v4, v5, :cond_2

    iget v4, p0, Lcom/g/a/c/c/f;->k:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/g/a/c/c/f;->k:I

    iget v4, p0, Lcom/g/a/c/c/f;->k:I

    iget-object v5, p0, Lcom/g/a/c/c/f;->d:[B

    array-length v5, v5

    if-ne v4, v5, :cond_1

    iput v10, p0, Lcom/g/a/c/c/f;->k:I

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget v4, p0, Lcom/g/a/c/c/f;->k:I

    if-lez v4, :cond_1

    iget v4, p0, Lcom/g/a/c/c/f;->k:I

    sub-int/2addr v1, v4

    iput v2, p0, Lcom/g/a/c/c/f;->k:I

    goto :goto_1

    :cond_3
    iget v4, p0, Lcom/g/a/c/c/f;->k:I

    if-ne v4, v10, :cond_9

    aget-byte v4, v3, v1

    const/16 v5, 0xd

    if-ne v4, v5, :cond_6

    iput v7, p0, Lcom/g/a/c/c/f;->k:I

    sub-int v4, v1, v0

    iget-object v5, p0, Lcom/g/a/c/c/f;->d:[B

    array-length v5, v5

    sub-int/2addr v4, v5

    if-nez v0, :cond_4

    if-eqz v4, :cond_5

    :cond_4
    invoke-static {v4}, Lcom/g/a/h;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5, v3, v0, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    new-instance v5, Lcom/g/a/h;

    invoke-direct {v5}, Lcom/g/a/h;-><init>()V

    invoke-virtual {v5, v4}, Lcom/g/a/h;->b(Ljava/nio/ByteBuffer;)Lcom/g/a/h;

    invoke-super {p0, p0, v5}, Lcom/g/a/n;->a(Lcom/g/a/i;Lcom/g/a/h;)V

    :cond_5
    invoke-virtual {p0}, Lcom/g/a/c/c/f;->h()V

    goto :goto_1

    :cond_6
    aget-byte v4, v3, v1

    const/16 v5, 0x2d

    if-ne v4, v5, :cond_7

    iput v9, p0, Lcom/g/a/c/c/f;->k:I

    goto :goto_1

    :cond_7
    new-instance v0, Lcom/g/a/c/c/h;

    const-string v1, "Invalid multipart/form-data. Expected \r or -"

    invoke-direct {v0, v1}, Lcom/g/a/c/c/h;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/g/a/c/c/f;->a(Ljava/lang/Exception;)V

    :cond_8
    :goto_2
    return-void

    :cond_9
    iget v4, p0, Lcom/g/a/c/c/f;->k:I

    if-ne v4, v9, :cond_b

    aget-byte v4, v3, v1

    const/16 v5, 0x2d

    if-ne v4, v5, :cond_a

    iput v8, p0, Lcom/g/a/c/c/f;->k:I

    goto :goto_1

    :cond_a
    new-instance v0, Lcom/g/a/c/c/h;

    const-string v1, "Invalid multipart/form-data. Expected -"

    invoke-direct {v0, v1}, Lcom/g/a/c/c/h;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/g/a/c/c/f;->a(Ljava/lang/Exception;)V

    goto :goto_2

    :cond_b
    iget v4, p0, Lcom/g/a/c/c/f;->k:I

    if-ne v4, v8, :cond_d

    aget-byte v4, v3, v1

    const/16 v5, 0xd

    if-ne v4, v5, :cond_c

    iput v7, p0, Lcom/g/a/c/c/f;->k:I

    sub-int v4, v1, v0

    iget-object v5, p0, Lcom/g/a/c/c/f;->d:[B

    array-length v5, v5

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x2

    invoke-static {v4}, Lcom/g/a/h;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    sub-int v5, v1, v0

    iget-object v6, p0, Lcom/g/a/c/c/f;->d:[B

    array-length v6, v6

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x2

    invoke-virtual {v4, v3, v0, v5}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    new-instance v5, Lcom/g/a/h;

    invoke-direct {v5}, Lcom/g/a/h;-><init>()V

    invoke-virtual {v5, v4}, Lcom/g/a/h;->b(Ljava/nio/ByteBuffer;)Lcom/g/a/h;

    invoke-super {p0, p0, v5}, Lcom/g/a/n;->a(Lcom/g/a/i;Lcom/g/a/h;)V

    invoke-virtual {p0}, Lcom/g/a/c/c/f;->e()V

    goto/16 :goto_1

    :cond_c
    new-instance v0, Lcom/g/a/c/c/h;

    const-string v1, "Invalid multipart/form-data. Expected \r"

    invoke-direct {v0, v1}, Lcom/g/a/c/c/h;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/g/a/c/c/f;->a(Ljava/lang/Exception;)V

    goto :goto_2

    :cond_d
    iget v4, p0, Lcom/g/a/c/c/f;->k:I

    if-ne v4, v7, :cond_f

    aget-byte v4, v3, v1

    const/16 v5, 0xa

    if-ne v4, v5, :cond_e

    add-int/lit8 v0, v1, 0x1

    iput v2, p0, Lcom/g/a/c/c/f;->k:I

    goto/16 :goto_1

    :cond_e
    new-instance v4, Lcom/g/a/c/c/h;

    const-string v5, "Invalid multipart/form-data. Expected \n"

    invoke-direct {v4, v5}, Lcom/g/a/c/c/h;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/g/a/c/c/f;->a(Ljava/lang/Exception;)V

    goto/16 :goto_1

    :cond_f
    sget-boolean v4, Lcom/g/a/c/c/f;->j:Z

    if-nez v4, :cond_10

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_10
    new-instance v4, Lcom/g/a/c/c/h;

    const-string v5, "Invalid multipart/form-data. Unknown state?"

    invoke-direct {v4, v5}, Lcom/g/a/c/c/h;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/g/a/c/c/f;->a(Ljava/lang/Exception;)V

    goto/16 :goto_1

    :cond_11
    array-length v1, v3

    if-ge v0, v1, :cond_8

    iget v1, p0, Lcom/g/a/c/c/f;->k:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    array-length v2, v3

    sub-int/2addr v2, v0

    sub-int/2addr v2, v1

    invoke-static {v2}, Lcom/g/a/h;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    array-length v4, v3

    sub-int/2addr v4, v0

    sub-int v1, v4, v1

    invoke-virtual {v2, v3, v0, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    new-instance v1, Lcom/g/a/h;

    invoke-direct {v1}, Lcom/g/a/h;-><init>()V

    invoke-virtual {v1, v0}, Lcom/g/a/h;->b(Ljava/nio/ByteBuffer;)Lcom/g/a/h;

    invoke-super {p0, p0, v1}, Lcom/g/a/n;->a(Lcom/g/a/i;Lcom/g/a/h;)V

    goto/16 :goto_2
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\r\n--"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/g/a/c/c/f;->d:[B

    return-void
.end method

.method protected e()V
    .locals 0

    return-void
.end method

.method protected h()V
    .locals 0

    return-void
.end method
