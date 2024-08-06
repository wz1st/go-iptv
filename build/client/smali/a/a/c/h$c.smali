.class final La/a/c/h$c;
.super Ljava/lang/Object;

# interfaces
.implements La/a/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/c/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation


# instance fields
.field final a:La/a/c/z$a;

.field private final b:Lb/d;

.field private final c:La/a/c/h$a;

.field private final d:Z


# direct methods
.method constructor <init>(Lb/d;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/a/c/h$c;->b:Lb/d;

    iput-boolean p2, p0, La/a/c/h$c;->d:Z

    new-instance v0, La/a/c/h$a;

    iget-object v1, p0, La/a/c/h$c;->b:Lb/d;

    invoke-direct {v0, v1}, La/a/c/h$a;-><init>(Lb/d;)V

    iput-object v0, p0, La/a/c/h$c;->c:La/a/c/h$a;

    new-instance v0, La/a/c/z$a;

    iget-object v1, p0, La/a/c/h$c;->c:La/a/c/h$a;

    invoke-direct {v0, v1}, La/a/c/z$a;-><init>(Lb/m;)V

    iput-object v0, p0, La/a/c/h$c;->a:La/a/c/z$a;

    return-void
.end method

.method private a(ISBI)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ISBI)",
            "Ljava/util/List",
            "<",
            "La/a/c/f;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, La/a/c/h$c;->c:La/a/c/h$a;

    iget-object v1, p0, La/a/c/h$c;->c:La/a/c/h$a;

    iput p1, v1, La/a/c/h$a;->d:I

    iput p1, v0, La/a/c/h$a;->a:I

    iget-object v0, p0, La/a/c/h$c;->c:La/a/c/h$a;

    iput-short p2, v0, La/a/c/h$a;->e:S

    iget-object v0, p0, La/a/c/h$c;->c:La/a/c/h$a;

    iput-byte p3, v0, La/a/c/h$a;->b:B

    iget-object v0, p0, La/a/c/h$c;->c:La/a/c/h$a;

    iput p4, v0, La/a/c/h$a;->c:I

    iget-object v0, p0, La/a/c/h$c;->a:La/a/c/z$a;

    invoke-virtual {v0}, La/a/c/z$a;->a()V

    iget-object v0, p0, La/a/c/h$c;->a:La/a/c/z$a;

    invoke-virtual {v0}, La/a/c/z$a;->b()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private a(La/a/c/b$a;I)V
    .locals 3

    iget-object v0, p0, La/a/c/h$c;->b:Lb/d;

    invoke-interface {v0}, Lb/d;->m()I

    move-result v1

    const/high16 v0, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const v2, 0x7fffffff

    and-int/2addr v1, v2

    iget-object v2, p0, La/a/c/h$c;->b:Lb/d;

    invoke-interface {v2}, Lb/d;->i()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v2, v2, 0x1

    invoke-interface {p1, p2, v1, v2, v0}, La/a/c/b$a;->a(IIIZ)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-boolean v0, p0, La/a/c/h$c;->d:Z

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, La/a/c/h$c;->b:Lb/d;

    invoke-static {}, La/a/c/h;->a()Lb/e;

    move-result-object v1

    invoke-virtual {v1}, Lb/e;->c()I

    move-result v1

    int-to-long v2, v1

    invoke-interface {v0, v2, v3}, Lb/d;->d(J)Lb/e;

    move-result-object v0

    invoke-static {}, La/a/c/h;->b()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, La/a/c/h;->b()Ljava/util/logging/Logger;

    move-result-object v1

    const-string v2, "<< CONNECTION %s"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Lb/e;->b()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, La/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_2
    invoke-static {}, La/a/c/h;->a()Lb/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lb/e;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Expected a connection header but was %s"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Lb/e;->f()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-static {v1, v2}, La/a/c/h;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final a(La/a/c/b$a;)Z
    .locals 11

    const/16 v10, 0x4000

    const/16 v9, 0x8

    const/4 v4, 0x4

    const/4 v7, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, La/a/c/h$c;->b:Lb/d;

    const-wide/16 v2, 0x9

    invoke-interface {v0, v2, v3}, Lb/d;->f(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, La/a/c/h$c;->b:Lb/d;

    invoke-static {v0}, La/a/c/h;->a(Lb/d;)I

    move-result v0

    if-ltz v0, :cond_0

    if-le v0, v10, :cond_1

    :cond_0
    const-string v2, "FRAME_SIZE_ERROR: %s"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {v2, v3}, La/a/c/h;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :catch_0
    move-exception v0

    move v7, v1

    :goto_0
    return v7

    :cond_1
    iget-object v2, p0, La/a/c/h$c;->b:Lb/d;

    invoke-interface {v2}, Lb/d;->i()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    iget-object v3, p0, La/a/c/h$c;->b:Lb/d;

    invoke-interface {v3}, Lb/d;->i()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v6, v3

    iget-object v3, p0, La/a/c/h$c;->b:Lb/d;

    invoke-interface {v3}, Lb/d;->m()I

    move-result v3

    const v5, 0x7fffffff

    and-int/2addr v3, v5

    invoke-static {}, La/a/c/h;->b()Ljava/util/logging/Logger;

    move-result-object v5

    sget-object v8, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v5, v8}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {}, La/a/c/h;->b()Ljava/util/logging/Logger;

    move-result-object v5

    invoke-static {v7, v3, v0, v2, v6}, La/a/c/h$b;->a(ZIIBB)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_2
    packed-switch v2, :pswitch_data_0

    iget-object v1, p0, La/a/c/h$c;->b:Lb/d;

    int-to-long v2, v0

    invoke-interface {v1, v2, v3}, Lb/d;->g(J)V

    goto :goto_0

    :pswitch_0
    and-int/lit8 v2, v6, 0x1

    if-eqz v2, :cond_3

    move v4, v7

    :goto_1
    and-int/lit8 v2, v6, 0x20

    if-eqz v2, :cond_4

    move v2, v7

    :goto_2
    if-eqz v2, :cond_5

    const-string v0, "PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, La/a/c/h;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_3
    move v4, v1

    goto :goto_1

    :cond_4
    move v2, v1

    goto :goto_2

    :cond_5
    and-int/lit8 v2, v6, 0x8

    if-eqz v2, :cond_6

    iget-object v1, p0, La/a/c/h$c;->b:Lb/d;

    invoke-interface {v1}, Lb/d;->i()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    int-to-short v1, v1

    :cond_6
    invoke-static {v0, v6, v1}, La/a/c/h;->a(IBS)I

    move-result v0

    iget-object v2, p0, La/a/c/h$c;->b:Lb/d;

    invoke-interface {p1, v4, v3, v2, v0}, La/a/c/b$a;->a(ZILb/d;I)V

    iget-object v0, p0, La/a/c/h$c;->b:Lb/d;

    int-to-long v2, v1

    invoke-interface {v0, v2, v3}, Lb/d;->g(J)V

    goto :goto_0

    :pswitch_1
    if-nez v3, :cond_7

    const-string v0, "PROTOCOL_ERROR: TYPE_HEADERS streamId == 0"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, La/a/c/h;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_7
    and-int/lit8 v2, v6, 0x1

    if-eqz v2, :cond_9

    move v2, v7

    :goto_3
    and-int/lit8 v4, v6, 0x8

    if-eqz v4, :cond_a

    iget-object v4, p0, La/a/c/h$c;->b:Lb/d;

    invoke-interface {v4}, Lb/d;->i()B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-short v4, v4

    move v5, v4

    :goto_4
    and-int/lit8 v4, v6, 0x20

    if-eqz v4, :cond_8

    invoke-direct {p0, p1, v3}, La/a/c/h$c;->a(La/a/c/b$a;I)V

    add-int/lit8 v0, v0, -0x5

    :cond_8
    const/4 v4, -0x1

    invoke-static {v0, v6, v5}, La/a/c/h;->a(IBS)I

    move-result v0

    invoke-direct {p0, v0, v5, v6, v3}, La/a/c/h$c;->a(ISBI)Ljava/util/List;

    move-result-object v5

    sget-object v6, La/a/c/g;->a:La/a/c/g;

    move-object v0, p1

    invoke-interface/range {v0 .. v6}, La/a/c/b$a;->a(ZZIILjava/util/List;La/a/c/g;)V

    goto/16 :goto_0

    :cond_9
    move v2, v1

    goto :goto_3

    :cond_a
    move v5, v1

    goto :goto_4

    :pswitch_2
    const/4 v2, 0x5

    if-eq v0, v2, :cond_b

    const-string v2, "TYPE_PRIORITY length: %d != 5"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {v2, v3}, La/a/c/h;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_b
    if-nez v3, :cond_c

    const-string v0, "TYPE_PRIORITY streamId == 0"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, La/a/c/h;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_c
    invoke-direct {p0, p1, v3}, La/a/c/h$c;->a(La/a/c/b$a;I)V

    goto/16 :goto_0

    :pswitch_3
    if-eq v0, v4, :cond_d

    const-string v2, "TYPE_RST_STREAM length: %d != 4"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {v2, v3}, La/a/c/h;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_d
    if-nez v3, :cond_e

    const-string v0, "TYPE_RST_STREAM streamId == 0"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, La/a/c/h;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_e
    iget-object v0, p0, La/a/c/h$c;->b:Lb/d;

    invoke-interface {v0}, Lb/d;->m()I

    move-result v0

    invoke-static {v0}, La/a/c/a;->a(I)La/a/c/a;

    move-result-object v2

    if-nez v2, :cond_f

    const-string v2, "TYPE_RST_STREAM unexpected error code: %d"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {v2, v3}, La/a/c/h;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_f
    invoke-interface {p1, v3, v2}, La/a/c/b$a;->a(ILa/a/c/a;)V

    goto/16 :goto_0

    :pswitch_4
    if-eqz v3, :cond_10

    const-string v0, "TYPE_SETTINGS streamId != 0"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, La/a/c/h;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_10
    and-int/lit8 v2, v6, 0x1

    if-eqz v2, :cond_12

    if-eqz v0, :cond_11

    const-string v0, "FRAME_SIZE_ERROR ack frame should be empty!"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, La/a/c/h;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_11
    invoke-interface {p1}, La/a/c/b$a;->b()V

    goto/16 :goto_0

    :cond_12
    rem-int/lit8 v2, v0, 0x6

    if-eqz v2, :cond_13

    const-string v2, "TYPE_SETTINGS length %% 6 != 0: %s"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {v2, v3}, La/a/c/h;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_13
    new-instance v5, La/a/c/k;

    invoke-direct {v5}, La/a/c/k;-><init>()V

    move v3, v1

    :goto_5
    if-ge v3, v0, :cond_16

    iget-object v2, p0, La/a/c/h$c;->b:Lb/d;

    invoke-interface {v2}, Lb/d;->o()S

    move-result v2

    iget-object v6, p0, La/a/c/h$c;->b:Lb/d;

    invoke-interface {v6}, Lb/d;->m()I

    move-result v6

    packed-switch v2, :pswitch_data_1

    :cond_14
    :goto_6
    :pswitch_5
    invoke-virtual {v5, v2, v1, v6}, La/a/c/k;->a(III)La/a/c/k;

    add-int/lit8 v2, v3, 0x6

    move v3, v2

    goto :goto_5

    :pswitch_6
    if-eqz v6, :cond_14

    if-eq v6, v7, :cond_14

    const-string v0, "PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, La/a/c/h;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :pswitch_7
    move v2, v4

    goto :goto_6

    :pswitch_8
    const/4 v2, 0x7

    if-gez v6, :cond_14

    const-string v0, "PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, La/a/c/h;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :pswitch_9
    if-lt v6, v10, :cond_15

    const v8, 0xffffff

    if-le v6, v8, :cond_14

    :cond_15
    const-string v0, "PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: %s"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, La/a/c/h;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_16
    invoke-interface {p1, v1, v5}, La/a/c/b$a;->a(ZLa/a/c/k;)V

    goto/16 :goto_0

    :pswitch_a
    if-nez v3, :cond_17

    const-string v0, "PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, La/a/c/h;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_17
    and-int/lit8 v2, v6, 0x8

    if-eqz v2, :cond_18

    iget-object v1, p0, La/a/c/h$c;->b:Lb/d;

    invoke-interface {v1}, Lb/d;->i()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    int-to-short v1, v1

    :cond_18
    iget-object v2, p0, La/a/c/h$c;->b:Lb/d;

    invoke-interface {v2}, Lb/d;->m()I

    move-result v2

    const v4, 0x7fffffff

    and-int/2addr v2, v4

    add-int/lit8 v0, v0, -0x4

    invoke-static {v0, v6, v1}, La/a/c/h;->a(IBS)I

    move-result v0

    invoke-direct {p0, v0, v1, v6, v3}, La/a/c/h$c;->a(ISBI)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v3, v2, v0}, La/a/c/b$a;->a(IILjava/util/List;)V

    goto/16 :goto_0

    :pswitch_b
    if-eq v0, v9, :cond_19

    const-string v2, "TYPE_PING length != 8: %s"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {v2, v3}, La/a/c/h;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_19
    if-eqz v3, :cond_1a

    const-string v0, "TYPE_PING streamId != 0"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, La/a/c/h;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_1a
    iget-object v0, p0, La/a/c/h$c;->b:Lb/d;

    invoke-interface {v0}, Lb/d;->m()I

    move-result v0

    iget-object v2, p0, La/a/c/h$c;->b:Lb/d;

    invoke-interface {v2}, Lb/d;->m()I

    move-result v2

    and-int/lit8 v3, v6, 0x1

    if-eqz v3, :cond_1b

    move v1, v7

    :cond_1b
    invoke-interface {p1, v1, v0, v2}, La/a/c/b$a;->a(ZII)V

    goto/16 :goto_0

    :pswitch_c
    if-ge v0, v9, :cond_1c

    const-string v2, "TYPE_GOAWAY length < 8: %s"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {v2, v3}, La/a/c/h;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_1c
    if-eqz v3, :cond_1d

    const-string v0, "TYPE_GOAWAY streamId != 0"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, La/a/c/h;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_1d
    iget-object v2, p0, La/a/c/h$c;->b:Lb/d;

    invoke-interface {v2}, Lb/d;->m()I

    move-result v2

    iget-object v3, p0, La/a/c/h$c;->b:Lb/d;

    invoke-interface {v3}, Lb/d;->m()I

    move-result v3

    add-int/lit8 v4, v0, -0x8

    invoke-static {v3}, La/a/c/a;->a(I)La/a/c/a;

    move-result-object v5

    if-nez v5, :cond_1e

    const-string v0, "TYPE_GOAWAY unexpected error code: %d"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, La/a/c/h;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_1e
    sget-object v0, Lb/e;->a:Lb/e;

    if-lez v4, :cond_1f

    iget-object v0, p0, La/a/c/h$c;->b:Lb/d;

    int-to-long v8, v4

    invoke-interface {v0, v8, v9}, Lb/d;->d(J)Lb/e;

    move-result-object v0

    :cond_1f
    invoke-interface {p1, v2, v5, v0}, La/a/c/b$a;->a(ILa/a/c/a;Lb/e;)V

    goto/16 :goto_0

    :pswitch_d
    if-eq v0, v4, :cond_20

    const-string v2, "TYPE_WINDOW_UPDATE length !=4: %s"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {v2, v3}, La/a/c/h;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_20
    iget-object v0, p0, La/a/c/h$c;->b:Lb/d;

    invoke-interface {v0}, Lb/d;->m()I

    move-result v0

    int-to-long v4, v0

    const-wide/32 v8, 0x7fffffff

    and-long/2addr v4, v8

    const-wide/16 v8, 0x0

    cmp-long v0, v4, v8

    if-nez v0, :cond_21

    const-string v0, "windowSizeIncrement was 0"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, La/a/c/h;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_21
    invoke-interface {p1, v3, v4, v5}, La/a/c/b$a;->a(IJ)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public final close()V
    .locals 1

    iget-object v0, p0, La/a/c/h$c;->b:Lb/d;

    invoke-interface {v0}, Lb/d;->close()V

    return-void
.end method
