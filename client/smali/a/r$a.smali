.class public final La/r$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/r$a$a;
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:I

.field final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, La/r$a;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, La/r$a;->c:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, La/r$a;->e:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, La/r$a;->f:Ljava/util/List;

    iget-object v0, p0, La/r$a;->f:Ljava/util/List;

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private a(Ljava/lang/String;II)V
    .locals 6

    const/4 v5, 0x1

    if-ne p2, p3, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_2

    const/16 v1, 0x5c

    if-ne v0, v1, :cond_4

    :cond_2
    iget-object v0, p0, La/r$a;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, La/r$a;->f:Ljava/util/List;

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, p2, 0x1

    :goto_0
    if-ge v2, p3, :cond_0

    const-string v0, "/\\"

    invoke-static {p1, v2, p3, v0}, La/a/c;->a(Ljava/lang/String;IILjava/lang/String;)I

    move-result v3

    if-ge v3, p3, :cond_5

    move v4, v5

    :goto_1
    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, La/r$a;->a(Ljava/lang/String;IIZZ)V

    if-eqz v4, :cond_3

    add-int/lit8 v3, v3, 0x1

    :cond_3
    move v2, v3

    goto :goto_0

    :cond_4
    iget-object v0, p0, La/r$a;->f:Ljava/util/List;

    iget-object v1, p0, La/r$a;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move v2, p2

    goto :goto_0

    :cond_5
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private a(Ljava/lang/String;IIZZ)V
    .locals 8

    const/4 v5, 0x0

    const-string v3, " \"<>^`{}|/\\?#"

    const/4 v7, 0x1

    move-object v0, p1

    move v1, p2

    move v2, p3

    move v4, p5

    move v6, v5

    invoke-static/range {v0 .. v7}, La/r;->a(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, La/r$a;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {v1}, La/r$a;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, La/r$a;->f:Ljava/util/List;

    iget-object v1, p0, La/r$a;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, La/r$a;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, La/r$a;->f:Ljava/util/List;

    iget-object v1, p0, La/r$a;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object v0, p0, La/r$a;->f:Ljava/util/List;

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, La/r$a;->f:Ljava/util/List;

    iget-object v2, p0, La/r$a;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, La/r$a;->f:Ljava/util/List;

    iget-object v2, p0, La/r$a;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_1
    if-eqz p4, :cond_0

    iget-object v0, p0, La/r$a;->f:Ljava/util/List;

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    iget-object v0, p0, La/r$a;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private static b(Ljava/lang/String;II)I
    .locals 3

    move v0, p1

    :goto_0
    if-ge v0, p2, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :sswitch_0
    add-int/lit8 v0, v0, 0x1

    if-ge v0, p2, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5d

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_2
    move v0, p2

    :sswitch_1
    return v0

    :sswitch_data_0
    .sparse-switch
        0x3a -> :sswitch_1
        0x5b -> :sswitch_0
    .end sparse-switch
.end method

.method private static c(Ljava/lang/String;II)Ljava/lang/String;
    .locals 9

    const/16 v8, 0x3a

    const/16 v7, 0x10

    const/4 v2, 0x0

    invoke-static {p0, p1, p2, v2}, La/r;->a(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v1, v3}, La/r$a;->d(Ljava/lang/String;II)Ljava/net/InetAddress;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v2, v1}, La/r$a;->d(Ljava/lang/String;II)Ljava/net/InetAddress;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v6

    array-length v0, v6

    if-ne v0, v7, :cond_9

    const/4 v0, -0x1

    move v1, v2

    move v3, v2

    :goto_2
    array-length v4, v6

    if-ge v3, v4, :cond_4

    move v5, v3

    :goto_3
    if-ge v5, v7, :cond_2

    aget-byte v4, v6, v5

    if-nez v4, :cond_2

    add-int/lit8 v4, v5, 0x1

    aget-byte v4, v6, v4

    if-nez v4, :cond_2

    add-int/lit8 v4, v5, 0x2

    move v5, v4

    goto :goto_3

    :cond_2
    sub-int v4, v5, v3

    if-le v4, v1, :cond_3

    move v1, v4

    move v0, v3

    :cond_3
    add-int/lit8 v3, v5, 0x2

    goto :goto_2

    :cond_4
    new-instance v3, Lb/b;

    invoke-direct {v3}, Lb/b;-><init>()V

    :cond_5
    :goto_4
    array-length v4, v6

    if-ge v2, v4, :cond_8

    if-ne v2, v0, :cond_6

    invoke-virtual {v3, v8}, Lb/b;->c(I)Lb/b;

    add-int/2addr v2, v1

    if-ne v2, v7, :cond_5

    invoke-virtual {v3, v8}, Lb/b;->c(I)Lb/b;

    goto :goto_4

    :cond_6
    if-lez v2, :cond_7

    invoke-virtual {v3, v8}, Lb/b;->c(I)Lb/b;

    :cond_7
    aget-byte v4, v6, v2

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    add-int/lit8 v5, v2, 0x1

    aget-byte v5, v6, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Lb/b;->j(J)Lb/b;

    add-int/lit8 v2, v2, 0x2

    goto :goto_4

    :cond_8
    invoke-virtual {v3}, Lb/b;->q()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_9
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_a
    invoke-static {v0}, La/a/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private static d(Ljava/lang/String;II)Ljava/net/InetAddress;
    .locals 10

    const/16 v0, 0x10

    new-array v7, v0, [B

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v3, -0x1

    move v4, p1

    :goto_0
    if-ge v4, p2, :cond_16

    const/16 v2, 0x10

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v2, v4, 0x2

    if-gt v2, p2, :cond_2

    const-string v2, "::"

    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-virtual {p0, v4, v2, v5, v6}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v4, 0x2

    add-int/lit8 v1, v0, 0x2

    if-ne v3, p2, :cond_15

    move v2, v1

    move v0, v1

    :goto_2
    const/16 v1, 0x10

    if-eq v0, v1, :cond_13

    const/4 v1, -0x1

    if-ne v2, v1, :cond_12

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_14

    const-string v2, ":"

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {p0, v4, v2, v5, v6}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_3

    add-int/lit8 v3, v4, 0x1

    move v2, v1

    :goto_3
    const/4 v1, 0x0

    move v4, v3

    :goto_4
    if-ge v4, p2, :cond_f

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, La/r;->a(C)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_f

    shl-int/lit8 v1, v1, 0x4

    add-int/2addr v1, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_3
    const-string v2, "."

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {p0, v4, v2, v5, v6}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_e

    add-int/lit8 v6, v0, -0x2

    move v5, v6

    move v2, v3

    :goto_5
    if-ge v2, p2, :cond_b

    const/16 v3, 0x10

    if-ne v5, v3, :cond_4

    const/4 v2, 0x0

    :goto_6
    if-nez v2, :cond_d

    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    if-eq v5, v6, :cond_6

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2e

    if-eq v3, v4, :cond_5

    const/4 v2, 0x0

    goto :goto_6

    :cond_5
    add-int/lit8 v2, v2, 0x1

    :cond_6
    const/4 v3, 0x0

    move v4, v2

    :goto_7
    if-ge v4, p2, :cond_9

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x30

    if-lt v8, v9, :cond_9

    const/16 v9, 0x39

    if-gt v8, v9, :cond_9

    if-nez v3, :cond_7

    if-eq v2, v4, :cond_7

    const/4 v2, 0x0

    goto :goto_6

    :cond_7
    mul-int/lit8 v3, v3, 0xa

    add-int/2addr v3, v8

    add-int/lit8 v3, v3, -0x30

    const/16 v8, 0xff

    if-le v3, v8, :cond_8

    const/4 v2, 0x0

    goto :goto_6

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_9
    sub-int v2, v4, v2

    if-nez v2, :cond_a

    const/4 v2, 0x0

    goto :goto_6

    :cond_a
    int-to-byte v2, v3

    aput-byte v2, v7, v5

    add-int/lit8 v3, v5, 0x1

    move v5, v3

    move v2, v4

    goto :goto_5

    :cond_b
    add-int/lit8 v2, v6, 0x4

    if-eq v5, v2, :cond_c

    const/4 v2, 0x0

    goto :goto_6

    :cond_c
    const/4 v2, 0x1

    goto :goto_6

    :cond_d
    add-int/lit8 v0, v0, 0x2

    move v2, v1

    goto/16 :goto_2

    :cond_e
    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_f
    sub-int v5, v4, v3

    if-eqz v5, :cond_10

    const/4 v6, 0x4

    if-le v5, v6, :cond_11

    :cond_10
    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_11
    add-int/lit8 v5, v0, 0x1

    ushr-int/lit8 v6, v1, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v7, v0

    and-int/lit16 v0, v1, 0xff

    int-to-byte v0, v0

    aput-byte v0, v7, v5

    add-int/lit8 v0, v5, 0x1

    move v1, v2

    goto/16 :goto_0

    :cond_12
    sub-int v1, v0, v2

    rsub-int/lit8 v1, v1, 0x10

    sub-int v3, v0, v2

    invoke-static {v7, v2, v7, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    rsub-int/lit8 v0, v0, 0x10

    add-int/2addr v0, v2

    const/4 v1, 0x0

    invoke-static {v7, v2, v0, v1}, Ljava/util/Arrays;->fill([BIIB)V

    :cond_13
    :try_start_0
    invoke-static {v7}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_14
    move v2, v1

    move v3, v4

    goto/16 :goto_3

    :cond_15
    move v0, v1

    move v2, v1

    goto/16 :goto_3

    :cond_16
    move v2, v1

    goto/16 :goto_2
.end method

.method private static d(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "%2e"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static e(Ljava/lang/String;II)I
    .locals 9

    const/4 v8, -0x1

    :try_start_0
    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-static/range {v0 .. v7}, La/r;->a(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-lez v0, :cond_0

    const v1, 0xffff

    if-gt v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v8

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v8

    goto :goto_0
.end method

.method private static e(Ljava/lang/String;)Z
    .locals 1

    const-string v0, ".."

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "%2e."

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".%2e"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "%2e%2e"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method final a()I
    .locals 2

    iget v0, p0, La/r$a;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, La/r$a;->e:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, La/r$a;->a:Ljava/lang/String;

    invoke-static {v0}, La/r;->b(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method final a(La/r;Ljava/lang/String;)La/r$a$a;
    .locals 13

    const/4 v0, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p2, v0, v1}, La/a/c;->a(Ljava/lang/String;II)I

    move-result v2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p2, v2, v0}, La/a/c;->b(Ljava/lang/String;II)I

    move-result v12

    sub-int v0, v12, v2

    const/4 v1, 0x2

    if-lt v0, v1, :cond_9

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x61

    if-lt v0, v1, :cond_0

    const/16 v1, 0x7a

    if-le v0, v1, :cond_4

    :cond_0
    const/16 v1, 0x41

    if-lt v0, v1, :cond_1

    const/16 v1, 0x5a

    if-le v0, v1, :cond_4

    :cond_1
    const/4 v0, -0x1

    :cond_2
    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    const/4 v1, 0x1

    const-string v3, "https:"

    const/4 v4, 0x0

    const/4 v5, 0x6

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "https"

    iput-object v0, p0, La/r$a;->a:Ljava/lang/String;

    add-int/lit8 v2, v2, 0x6

    :goto_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    move v4, v2

    :goto_2
    if-ge v4, v12, :cond_e

    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x5c

    if-eq v5, v6, :cond_3

    const/16 v6, 0x2f

    if-ne v5, v6, :cond_e

    :cond_3
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v0, v2, 0x1

    :goto_3
    if-ge v0, v12, :cond_9

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x61

    if-lt v1, v3, :cond_5

    const/16 v3, 0x7a

    if-le v1, v3, :cond_8

    :cond_5
    const/16 v3, 0x41

    if-lt v1, v3, :cond_6

    const/16 v3, 0x5a

    if-le v1, v3, :cond_8

    :cond_6
    const/16 v3, 0x30

    if-lt v1, v3, :cond_7

    const/16 v3, 0x39

    if-le v1, v3, :cond_8

    :cond_7
    const/16 v3, 0x2b

    if-eq v1, v3, :cond_8

    const/16 v3, 0x2d

    if-eq v1, v3, :cond_8

    const/16 v3, 0x2e

    if-eq v1, v3, :cond_8

    const/16 v3, 0x3a

    if-eq v1, v3, :cond_2

    const/4 v0, -0x1

    goto :goto_0

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_9
    const/4 v0, -0x1

    goto :goto_0

    :cond_a
    const/4 v1, 0x1

    const-string v3, "http:"

    const/4 v4, 0x0

    const/4 v5, 0x5

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "http"

    iput-object v0, p0, La/r$a;->a:Ljava/lang/String;

    add-int/lit8 v2, v2, 0x5

    goto :goto_1

    :cond_b
    sget-object v0, La/r$a$a;->e:La/r$a$a;

    :goto_4
    return-object v0

    :cond_c
    if-eqz p1, :cond_d

    invoke-static {p1}, La/r;->a(La/r;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/r$a;->a:Ljava/lang/String;

    goto :goto_1

    :cond_d
    sget-object v0, La/r$a$a;->c:La/r$a$a;

    goto :goto_4

    :cond_e
    const/4 v4, 0x2

    if-ge v3, v4, :cond_f

    if-eqz p1, :cond_f

    invoke-static {p1}, La/r;->a(La/r;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, La/r$a;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    :cond_f
    add-int v4, v2, v3

    move v11, v0

    :goto_5
    const-string v0, "@/\\?#"

    invoke-static {p2, v4, v12, v0}, La/a/c;->a(Ljava/lang/String;IILjava/lang/String;)I

    move-result v2

    if-eq v2, v12, :cond_10

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_6
    sparse-switch v0, :sswitch_data_0

    goto :goto_5

    :sswitch_0
    invoke-static {p2, v4, v2}, La/r$a;->b(Ljava/lang/String;II)I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    if-ge v1, v2, :cond_13

    invoke-static {p2, v4, v0}, La/r$a;->c(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, La/r$a;->d:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    invoke-static {p2, v0, v2}, La/r$a;->e(Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, La/r$a;->e:I

    iget v0, p0, La/r$a;->e:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_14

    sget-object v0, La/r$a$a;->b:La/r$a$a;

    goto :goto_4

    :cond_10
    const/4 v0, -0x1

    goto :goto_6

    :sswitch_1
    if-nez v1, :cond_12

    const/16 v0, 0x3a

    invoke-static {p2, v4, v2, v0}, La/a/c;->a(Ljava/lang/String;IIC)I

    move-result v5

    const-string v6, " \"\':;<=>@[]^`{}|/\\?#"

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v3, p2

    invoke-static/range {v3 .. v10}, La/r;->a(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    if-eqz v11, :cond_11

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, La/r$a;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%40"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_11
    iput-object v0, p0, La/r$a;->b:Ljava/lang/String;

    if-eq v5, v2, :cond_1a

    const/4 v8, 0x1

    add-int/lit8 v1, v5, 0x1

    const-string v3, " \"\':;<=>@[]^`{}|/\\?#"

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p2

    invoke-static/range {v0 .. v7}, La/r;->a(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/r$a;->c:Ljava/lang/String;

    move v0, v8

    :goto_7
    const/4 v3, 0x1

    move v1, v0

    :goto_8
    add-int/lit8 v4, v2, 0x1

    move v11, v3

    goto :goto_5

    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, La/r$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%40"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " \"\':;<=>@[]^`{}|/\\?#"

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v3, p2

    move v5, v2

    invoke-static/range {v3 .. v10}, La/r;->a(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/r$a;->c:Ljava/lang/String;

    move v3, v11

    goto :goto_8

    :cond_13
    invoke-static {p2, v4, v0}, La/r$a;->c(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/r$a;->d:Ljava/lang/String;

    iget-object v0, p0, La/r$a;->a:Ljava/lang/String;

    invoke-static {v0}, La/r;->b(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, La/r$a;->e:I

    :cond_14
    iget-object v0, p0, La/r$a;->d:Ljava/lang/String;

    if-nez v0, :cond_17

    sget-object v0, La/r$a$a;->a:La/r$a$a;

    goto/16 :goto_4

    :cond_15
    invoke-virtual {p1}, La/r;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/r$a;->b:Ljava/lang/String;

    invoke-virtual {p1}, La/r;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/r$a;->c:Ljava/lang/String;

    invoke-static {p1}, La/r;->b(La/r;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/r$a;->d:Ljava/lang/String;

    invoke-static {p1}, La/r;->c(La/r;)I

    move-result v0

    iput v0, p0, La/r$a;->e:I

    iget-object v0, p0, La/r$a;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, La/r$a;->f:Ljava/util/List;

    invoke-virtual {p1}, La/r;->d()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    if-eq v2, v12, :cond_16

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_17

    :cond_16
    invoke-virtual {p1}, La/r;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, La/r$a;->a(Ljava/lang/String;)La/r$a;

    :cond_17
    const-string v0, "?#"

    invoke-static {p2, v2, v12, v0}, La/a/c;->a(Ljava/lang/String;IILjava/lang/String;)I

    move-result v0

    invoke-direct {p0, p2, v2, v0}, La/r$a;->a(Ljava/lang/String;II)V

    if-ge v0, v12, :cond_19

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x3f

    if-ne v1, v2, :cond_19

    const/16 v1, 0x23

    invoke-static {p2, v0, v12, v1}, La/a/c;->a(Ljava/lang/String;IIC)I

    move-result v2

    add-int/lit8 v1, v0, 0x1

    const-string v3, " \"\'<>#"

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v0, p2

    invoke-static/range {v0 .. v7}, La/r;->a(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La/r;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, La/r$a;->g:Ljava/util/List;

    :goto_9
    if-ge v2, v12, :cond_18

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_18

    add-int/lit8 v1, v2, 0x1

    const-string v3, ""

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p2

    move v2, v12

    invoke-static/range {v0 .. v7}, La/r;->a(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/r$a;->h:Ljava/lang/String;

    :cond_18
    sget-object v0, La/r$a$a;->d:La/r$a$a;

    goto/16 :goto_4

    :cond_19
    move v2, v0

    goto :goto_9

    :cond_1a
    move v0, v1

    goto/16 :goto_7

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x23 -> :sswitch_0
        0x2f -> :sswitch_0
        0x3f -> :sswitch_0
        0x40 -> :sswitch_1
        0x5c -> :sswitch_0
    .end sparse-switch
.end method

.method public final a(I)La/r$a;
    .locals 3

    if-lez p1, :cond_0

    const v0, 0xffff

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unexpected port: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, La/r$a;->e:I

    return-object p0
.end method

.method public final a(Ljava/lang/String;)La/r$a;
    .locals 6

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    const-string v1, " \"\'<>#"

    const/4 v3, 0x0

    move-object v0, p1

    move v4, v2

    move v5, v2

    invoke-static/range {v0 .. v5}, La/r;->a(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La/r;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    :goto_0
    iput-object v0, p0, La/r$a;->g:Ljava/util/List;

    return-object p0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)La/r$a;
    .locals 3

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "host == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p1, v0, v1}, La/r$a;->c(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unexpected host: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object v0, p0, La/r$a;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final b()La/r;
    .locals 2

    iget-object v0, p0, La/r$a;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "scheme == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, La/r$a;->d:Ljava/lang/String;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "host == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, La/r;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, La/r;-><init>(La/r$a;B)V

    return-object v0
.end method

.method public final c(Ljava/lang/String;)La/r$a;
    .locals 3

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "scheme == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "http"

    iput-object v0, p0, La/r$a;->a:Ljava/lang/String;

    :goto_0
    return-object p0

    :cond_1
    const-string v0, "https"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "https"

    iput-object v0, p0, La/r$a;->a:Ljava/lang/String;

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unexpected scheme: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    const/16 v3, 0x3a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, La/r$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, La/r$a;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, La/r$a;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    iget-object v1, p0, La/r$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, La/r$a;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, La/r$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v1, p0, La/r$a;->d:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_6

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, La/r$a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {p0}, La/r$a;->a()I

    move-result v1

    iget-object v2, p0, La/r$a;->a:Ljava/lang/String;

    invoke-static {v2}, La/r;->b(Ljava/lang/String;)I

    move-result v2

    if-eq v1, v2, :cond_3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v1, p0, La/r$a;->f:Ljava/util/List;

    invoke-static {v0, v1}, La/r;->a(Ljava/lang/StringBuilder;Ljava/util/List;)V

    iget-object v1, p0, La/r$a;->g:Ljava/util/List;

    if-eqz v1, :cond_4

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, La/r$a;->g:Ljava/util/List;

    invoke-static {v0, v1}, La/r;->b(Ljava/lang/StringBuilder;Ljava/util/List;)V

    :cond_4
    iget-object v1, p0, La/r$a;->h:Ljava/lang/String;

    if-eqz v1, :cond_5

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, La/r$a;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_6
    iget-object v1, p0, La/r$a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
