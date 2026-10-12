.class public final Lcom/a/a/c/o;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/a/c/t;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/a/a/c/m;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 11

    iget-object v6, p1, Lcom/a/a/c/m;->b:Lcom/a/a/c/z;

    iget v0, v6, Lcom/a/a/c/z;->c:I

    sget-object v1, Lcom/a/a/c/aa;->n:Lcom/a/a/c/aa;

    iget v1, v1, Lcom/a/a/c/aa;->x:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    move v5, v0

    :goto_0
    const/4 v0, 0x0

    if-eqz v5, :cond_1b

    instance-of v1, p4, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_1b

    check-cast p4, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p4}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    move-object v4, v0

    :goto_1
    if-nez p2, :cond_2

    iget v0, v6, Lcom/a/a/c/z;->c:I

    sget-object v1, Lcom/a/a/c/aa;->f:Lcom/a/a/c/aa;

    iget v1, v1, Lcom/a/a/c/aa;->x:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    const-string v0, "[]"

    invoke-virtual {v6, v0}, Lcom/a/a/c/z;->write(Ljava/lang/String;)V

    :goto_2
    return-void

    :cond_0
    const/4 v0, 0x0

    move v5, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v6}, Lcom/a/a/c/z;->a()V

    goto :goto_2

    :cond_2
    move-object v0, p2

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_3

    const-string v0, "[]"

    invoke-virtual {v6, v0}, Lcom/a/a/c/z;->a(Ljava/lang/CharSequence;)Lcom/a/a/c/z;

    goto :goto_2

    :cond_3
    iget-object v7, p1, Lcom/a/a/c/m;->j:Lcom/a/a/c/w;

    iget v1, v6, Lcom/a/a/c/z;->c:I

    sget-object v3, Lcom/a/a/c/aa;->o:Lcom/a/a/c/aa;

    iget v3, v3, Lcom/a/a/c/aa;->x:I

    and-int/2addr v1, v3

    if-nez v1, :cond_5

    new-instance v1, Lcom/a/a/c/w;

    const/4 v3, 0x0

    invoke-direct {v1, v7, p2, p3, v3}, Lcom/a/a/c/w;-><init>(Lcom/a/a/c/w;Ljava/lang/Object;Ljava/lang/Object;I)V

    iput-object v1, p1, Lcom/a/a/c/m;->j:Lcom/a/a/c/w;

    iget-object v1, p1, Lcom/a/a/c/m;->i:Ljava/util/IdentityHashMap;

    if-nez v1, :cond_4

    new-instance v1, Ljava/util/IdentityHashMap;

    invoke-direct {v1}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v1, p1, Lcom/a/a/c/m;->i:Ljava/util/IdentityHashMap;

    :cond_4
    iget-object v1, p1, Lcom/a/a/c/m;->i:Ljava/util/IdentityHashMap;

    invoke-virtual {v1, p2, v7}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :try_start_0
    iget v1, v6, Lcom/a/a/c/z;->c:I

    sget-object v3, Lcom/a/a/c/aa;->m:Lcom/a/a/c/aa;

    iget v3, v3, Lcom/a/a/c/aa;->x:I

    and-int/2addr v1, v3

    if-eqz v1, :cond_a

    const/16 v1, 0x5b

    invoke-virtual {v6, v1}, Lcom/a/a/c/z;->write(I)V

    invoke-virtual {p1}, Lcom/a/a/c/m;->c()V

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v2, :cond_9

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v1, :cond_6

    const/16 v5, 0x2c

    invoke-virtual {v6, v5}, Lcom/a/a/c/z;->write(I)V

    :cond_6
    invoke-virtual {p1}, Lcom/a/a/c/m;->e()V

    if-eqz v3, :cond_8

    iget-object v5, p1, Lcom/a/a/c/m;->i:Ljava/util/IdentityHashMap;

    if-eqz v5, :cond_7

    iget-object v5, p1, Lcom/a/a/c/m;->i:Ljava/util/IdentityHashMap;

    invoke-virtual {v5, v3}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {p1, v3}, Lcom/a/a/c/m;->a(Ljava/lang/Object;)V

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_7
    iget-object v5, p1, Lcom/a/a/c/m;->a:Lcom/a/a/c/x;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/a/a/c/x;->a(Ljava/lang/Class;)Lcom/a/a/c/t;

    move-result-object v5

    new-instance v8, Lcom/a/a/c/w;

    const/4 v9, 0x0

    invoke-direct {v8, v7, p2, p3, v9}, Lcom/a/a/c/w;-><init>(Lcom/a/a/c/w;Ljava/lang/Object;Ljava/lang/Object;I)V

    iput-object v8, p1, Lcom/a/a/c/m;->j:Lcom/a/a/c/w;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v5, p1, v3, v8, v4}, Lcom/a/a/c/t;->a(Lcom/a/a/c/m;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    iput-object v7, p1, Lcom/a/a/c/m;->j:Lcom/a/a/c/w;

    throw v0

    :cond_8
    :try_start_1
    iget-object v3, p1, Lcom/a/a/c/m;->b:Lcom/a/a/c/z;

    invoke-virtual {v3}, Lcom/a/a/c/z;->a()V

    goto :goto_4

    :cond_9
    invoke-virtual {p1}, Lcom/a/a/c/m;->d()V

    invoke-virtual {p1}, Lcom/a/a/c/m;->e()V

    const/16 v0, 0x5d

    invoke-virtual {v6, v0}, Lcom/a/a/c/z;->write(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-object v7, p1, Lcom/a/a/c/m;->j:Lcom/a/a/c/w;

    goto/16 :goto_2

    :cond_a
    :try_start_2
    iget v1, v6, Lcom/a/a/c/z;->b:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, v6, Lcom/a/a/c/z;->a:[C

    array-length v2, v2

    if-le v1, v2, :cond_b

    iget-object v2, v6, Lcom/a/a/c/z;->d:Ljava/io/Writer;

    if-nez v2, :cond_e

    invoke-virtual {v6, v1}, Lcom/a/a/c/z;->a(I)V

    :cond_b
    :goto_5
    iget-object v2, v6, Lcom/a/a/c/z;->a:[C

    iget v3, v6, Lcom/a/a/c/z;->b:I

    const/16 v8, 0x5b

    aput-char v8, v2, v3

    iput v1, v6, Lcom/a/a/c/z;->b:I

    const/4 v1, 0x0

    move v3, v1

    :goto_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_18

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v3, :cond_d

    iget v2, v6, Lcom/a/a/c/z;->b:I

    add-int/lit8 v2, v2, 0x1

    iget-object v8, v6, Lcom/a/a/c/z;->a:[C

    array-length v8, v8

    if-le v2, v8, :cond_c

    iget-object v8, v6, Lcom/a/a/c/z;->d:Ljava/io/Writer;

    if-nez v8, :cond_f

    invoke-virtual {v6, v2}, Lcom/a/a/c/z;->a(I)V

    :cond_c
    :goto_7
    iget-object v8, v6, Lcom/a/a/c/z;->a:[C

    iget v9, v6, Lcom/a/a/c/z;->b:I

    const/16 v10, 0x2c

    aput-char v10, v8, v9

    iput v2, v6, Lcom/a/a/c/z;->b:I

    :cond_d
    if-nez v1, :cond_10

    const-string v1, "null"

    invoke-virtual {v6, v1}, Lcom/a/a/c/z;->a(Ljava/lang/CharSequence;)Lcom/a/a/c/z;

    :goto_8
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_6

    :cond_e
    invoke-virtual {v6}, Lcom/a/a/c/z;->flush()V

    const/4 v1, 0x1

    goto :goto_5

    :cond_f
    invoke-virtual {v6}, Lcom/a/a/c/z;->flush()V

    const/4 v2, 0x1

    goto :goto_7

    :cond_10
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v8, Ljava/lang/Integer;

    if-ne v2, v8, :cond_11

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v6, v1}, Lcom/a/a/c/z;->b(I)V

    goto :goto_8

    :cond_11
    const-class v8, Ljava/lang/Long;

    if-ne v2, v8, :cond_13

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    if-eqz v5, :cond_12

    invoke-virtual {v6, v8, v9}, Lcom/a/a/c/z;->a(J)V

    const/16 v1, 0x4c

    invoke-virtual {v6, v1}, Lcom/a/a/c/z;->write(I)V

    goto :goto_8

    :cond_12
    invoke-virtual {v6, v8, v9}, Lcom/a/a/c/z;->a(J)V

    goto :goto_8

    :cond_13
    const-class v8, Ljava/lang/String;

    if-ne v2, v8, :cond_15

    check-cast v1, Ljava/lang/String;

    iget v2, v6, Lcom/a/a/c/z;->c:I

    sget-object v8, Lcom/a/a/c/aa;->b:Lcom/a/a/c/aa;

    iget v8, v8, Lcom/a/a/c/aa;->x:I

    and-int/2addr v2, v8

    if-eqz v2, :cond_14

    invoke-virtual {v6, v1}, Lcom/a/a/c/z;->b(Ljava/lang/String;)V

    goto :goto_8

    :cond_14
    const/4 v2, 0x0

    const/4 v8, 0x1

    invoke-virtual {v6, v1, v2, v8}, Lcom/a/a/c/z;->a(Ljava/lang/String;CZ)V

    goto :goto_8

    :cond_15
    iget v2, v6, Lcom/a/a/c/z;->c:I

    sget-object v8, Lcom/a/a/c/aa;->o:Lcom/a/a/c/aa;

    iget v8, v8, Lcom/a/a/c/aa;->x:I

    and-int/2addr v2, v8

    if-nez v2, :cond_16

    new-instance v2, Lcom/a/a/c/w;

    const/4 v8, 0x0

    invoke-direct {v2, v7, p2, p3, v8}, Lcom/a/a/c/w;-><init>(Lcom/a/a/c/w;Ljava/lang/Object;Ljava/lang/Object;I)V

    iput-object v2, p1, Lcom/a/a/c/m;->j:Lcom/a/a/c/w;

    :cond_16
    iget-object v2, p1, Lcom/a/a/c/m;->i:Ljava/util/IdentityHashMap;

    if-eqz v2, :cond_17

    iget-object v2, p1, Lcom/a/a/c/m;->i:Ljava/util/IdentityHashMap;

    invoke-virtual {v2, v1}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-virtual {p1, v1}, Lcom/a/a/c/m;->a(Ljava/lang/Object;)V

    goto :goto_8

    :cond_17
    iget-object v2, p1, Lcom/a/a/c/m;->a:Lcom/a/a/c/x;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/a/a/c/x;->a(Ljava/lang/Class;)Lcom/a/a/c/t;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v2, p1, v1, v8, v4}, Lcom/a/a/c/t;->a(Lcom/a/a/c/m;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V

    goto/16 :goto_8

    :cond_18
    iget v0, v6, Lcom/a/a/c/z;->b:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, v6, Lcom/a/a/c/z;->a:[C

    array-length v1, v1

    if-le v0, v1, :cond_19

    iget-object v1, v6, Lcom/a/a/c/z;->d:Ljava/io/Writer;

    if-nez v1, :cond_1a

    invoke-virtual {v6, v0}, Lcom/a/a/c/z;->a(I)V

    :cond_19
    :goto_9
    iget-object v1, v6, Lcom/a/a/c/z;->a:[C

    iget v2, v6, Lcom/a/a/c/z;->b:I

    const/16 v3, 0x5d

    aput-char v3, v1, v2

    iput v0, v6, Lcom/a/a/c/z;->b:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iput-object v7, p1, Lcom/a/a/c/m;->j:Lcom/a/a/c/w;

    goto/16 :goto_2

    :cond_1a
    :try_start_3
    invoke-virtual {v6}, Lcom/a/a/c/z;->flush()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v0, 0x1

    goto :goto_9

    :cond_1b
    move-object v4, v0

    goto/16 :goto_1
.end method
