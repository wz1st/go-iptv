.class public Lcom/a/a/c/n;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/a/c/t;


# static fields
.field private static final c:[C

.field private static final d:[C


# instance fields
.field protected a:I

.field protected b:Ljava/lang/String;

.field private final e:[Lcom/a/a/c/j;

.field private final f:[Lcom/a/a/c/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/a/a/c/n;->c:[C

    const/4 v0, 0x5

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/a/a/c/n;->d:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x74s
        0x72s
        0x75s
        0x65s
    .end array-data

    :array_1
    .array-data 2
        0x66s
        0x61s
        0x6cs
        0x73s
        0x65s
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/Class;ILjava/util/Map;ZZZZLcom/a/a/g;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZZZZ",
            "Lcom/a/a/g;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/a/a/c/n;->a:I

    if-eqz p5, :cond_1

    const-class v0, Lcom/a/a/a/c;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/c;

    move-object v3, v0

    :goto_0
    if-eqz v3, :cond_0

    invoke-interface {v3}, Lcom/a/a/a/c;->c()[Lcom/a/a/c/aa;

    move-result-object v0

    invoke-static {v0}, Lcom/a/a/c/aa;->a([Lcom/a/a/c/aa;)I

    move-result v0

    iput v0, p0, Lcom/a/a/c/n;->a:I

    invoke-interface {v3}, Lcom/a/a/a/c;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/c/n;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/a/a/c/n;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/a/c/n;->b:Ljava/lang/String;

    :cond_0
    const/4 v5, 0x0

    move-object v0, p1

    move v1, p2

    move v2, p4

    move-object v4, p3

    move v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-static/range {v0 .. v8}, Lcom/a/a/d/d;->a(Ljava/lang/Class;IZLcom/a/a/a/c;Ljava/util/Map;ZZZLcom/a/a/g;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/d/a;

    new-instance v4, Lcom/a/a/c/j;

    invoke-direct {v4, v0}, Lcom/a/a/c/j;-><init>(Lcom/a/a/d/a;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/a/a/c/j;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/a/a/c/j;

    iput-object v0, p0, Lcom/a/a/c/n;->e:[Lcom/a/a/c/j;

    const/4 v0, 0x0

    if-eqz v3, :cond_3

    invoke-interface {v3}, Lcom/a/a/a/c;->a()[Ljava/lang/String;

    move-result-object v0

    :cond_3
    if-eqz v0, :cond_5

    array-length v0, v0

    if-eqz v0, :cond_5

    const/4 v5, 0x1

    move-object v0, p1

    move v1, p2

    move v2, p4

    move-object v4, p3

    move v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-static/range {v0 .. v8}, Lcom/a/a/d/d;->a(Ljava/lang/Class;IZLcom/a/a/a/c;Ljava/util/Map;ZZZLcom/a/a/g;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/d/a;

    new-instance v3, Lcom/a/a/c/j;

    invoke-direct {v3, v0}, Lcom/a/a/c/j;-><init>(Lcom/a/a/d/a;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/a/a/c/j;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/a/a/c/j;

    iput-object v0, p0, Lcom/a/a/c/n;->f:[Lcom/a/a/c/j;

    :goto_3
    return-void

    :cond_5
    iget-object v0, p0, Lcom/a/a/c/n;->e:[Lcom/a/a/c/j;

    array-length v0, v0

    new-array v0, v0, [Lcom/a/a/c/j;

    iget-object v1, p0, Lcom/a/a/c/n;->e:[Lcom/a/a/c/j;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/a/a/c/n;->e:[Lcom/a/a/c/j;

    array-length v4, v4

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/a/a/c/n;->e:[Lcom/a/a/c/j;

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v0, p0, Lcom/a/a/c/n;->e:[Lcom/a/a/c/j;

    iput-object v0, p0, Lcom/a/a/c/n;->f:[Lcom/a/a/c/j;

    goto :goto_3

    :cond_6
    iput-object v0, p0, Lcom/a/a/c/n;->f:[Lcom/a/a/c/j;

    goto :goto_3
.end method

.method public constructor <init>(Ljava/lang/Class;Lcom/a/a/g;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/a/a/g;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x1

    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result v2

    const/4 v3, 0x0

    check-cast v3, Ljava/util/Map;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v6, v5

    move v7, v5

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/a/a/c/n;-><init>(Ljava/lang/Class;ILjava/util/Map;ZZZZLcom/a/a/g;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/LinkedHashMap;

    iget-object v0, p0, Lcom/a/a/c/n;->f:[Lcom/a/a/c/j;

    array-length v0, v0

    invoke-direct {v1, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    iget-object v2, p0, Lcom/a/a/c/n;->f:[Lcom/a/a/c/j;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    iget-object v5, v4, Lcom/a/a/c/j;->a:Lcom/a/a/d/a;

    iget-object v5, v5, Lcom/a/a/d/a;->a:Ljava/lang/String;

    invoke-virtual {v4, p1}, Lcom/a/a/c/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public a(Lcom/a/a/c/m;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 34

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/a/a/c/m;->b:Lcom/a/a/c/z;

    move-object/from16 v24, v0

    if-nez p2, :cond_0

    invoke-virtual/range {v24 .. v24}, Lcom/a/a/c/z;->a()V

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/a/a/c/m;->j:Lcom/a/a/c/w;

    if-eqz v4, :cond_1

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/a/a/c/m;->j:Lcom/a/a/c/w;

    iget v4, v4, Lcom/a/a/c/w;->d:I

    sget-object v5, Lcom/a/a/c/aa;->o:Lcom/a/a/c/aa;

    iget v5, v5, Lcom/a/a/c/aa;->x:I

    and-int/2addr v4, v5

    if-nez v4, :cond_2

    :cond_1
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/a/a/c/m;->i:Ljava/util/IdentityHashMap;

    if-eqz v4, :cond_2

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/a/a/c/m;->i:Ljava/util/IdentityHashMap;

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual/range {p1 .. p2}, Lcom/a/a/c/m;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    move-object/from16 v0, v24

    iget v4, v0, Lcom/a/a/c/z;->c:I

    sget-object v5, Lcom/a/a/c/aa;->k:Lcom/a/a/c/aa;

    iget v5, v5, Lcom/a/a/c/aa;->x:I

    and-int/2addr v4, v5

    if-eqz v4, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/a/a/c/n;->f:[Lcom/a/a/c/j;

    move-object v6, v4

    :goto_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/a/a/c/m;->j:Lcom/a/a/c/w;

    move-object/from16 v25, v0

    move-object/from16 v0, v24

    iget v4, v0, Lcom/a/a/c/z;->c:I

    sget-object v5, Lcom/a/a/c/aa;->o:Lcom/a/a/c/aa;

    iget v5, v5, Lcom/a/a/c/aa;->x:I

    and-int/2addr v4, v5

    if-nez v4, :cond_4

    new-instance v4, Lcom/a/a/c/w;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/a/a/c/n;->a:I

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v4, v0, v1, v2, v5}, Lcom/a/a/c/w;-><init>(Lcom/a/a/c/w;Ljava/lang/Object;Ljava/lang/Object;I)V

    move-object/from16 v0, p1

    iput-object v4, v0, Lcom/a/a/c/m;->j:Lcom/a/a/c/w;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/a/a/c/m;->i:Ljava/util/IdentityHashMap;

    if-nez v4, :cond_3

    new-instance v4, Ljava/util/IdentityHashMap;

    invoke-direct {v4}, Ljava/util/IdentityHashMap;-><init>()V

    move-object/from16 v0, p1

    iput-object v4, v0, Lcom/a/a/c/m;->i:Ljava/util/IdentityHashMap;

    :cond_3
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/a/a/c/m;->i:Ljava/util/IdentityHashMap;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/a/a/c/m;->j:Lcom/a/a/c/w;

    move-object/from16 v0, p2

    invoke-virtual {v4, v0, v5}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    move-object/from16 v0, p0

    iget v4, v0, Lcom/a/a/c/n;->a:I

    sget-object v5, Lcom/a/a/c/aa;->u:Lcom/a/a/c/aa;

    iget v5, v5, Lcom/a/a/c/aa;->x:I

    and-int/2addr v4, v5

    if-nez v4, :cond_5

    move-object/from16 v0, v24

    iget v4, v0, Lcom/a/a/c/z;->c:I

    sget-object v5, Lcom/a/a/c/aa;->u:Lcom/a/a/c/aa;

    iget v5, v5, Lcom/a/a/c/aa;->x:I

    and-int/2addr v4, v5

    if-eqz v4, :cond_c

    :cond_5
    const/4 v4, 0x1

    move v7, v4

    :goto_2
    if-eqz v7, :cond_d

    const/16 v4, 0x5b

    move v5, v4

    :goto_3
    if-eqz v7, :cond_e

    const/16 v4, 0x5d

    move/from16 v23, v4

    :goto_4
    :try_start_0
    move-object/from16 v0, v24

    iget v4, v0, Lcom/a/a/c/z;->b:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v24

    iget-object v8, v0, Lcom/a/a/c/z;->a:[C

    array-length v8, v8

    if-le v4, v8, :cond_6

    move-object/from16 v0, v24

    iget-object v8, v0, Lcom/a/a/c/z;->d:Ljava/io/Writer;

    if-nez v8, :cond_f

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Lcom/a/a/c/z;->a(I)V

    :cond_6
    :goto_5
    move-object/from16 v0, v24

    iget-object v8, v0, Lcom/a/a/c/z;->a:[C

    move-object/from16 v0, v24

    iget v9, v0, Lcom/a/a/c/z;->b:I

    aput-char v5, v8, v9

    move-object/from16 v0, v24

    iput v4, v0, Lcom/a/a/c/z;->b:I

    array-length v4, v6

    if-lez v4, :cond_7

    move-object/from16 v0, v24

    iget v4, v0, Lcom/a/a/c/z;->c:I

    sget-object v5, Lcom/a/a/c/aa;->m:Lcom/a/a/c/aa;

    iget v5, v5, Lcom/a/a/c/aa;->x:I

    and-int/2addr v4, v5

    if-eqz v4, :cond_7

    invoke-virtual/range {p1 .. p1}, Lcom/a/a/c/m;->c()V

    invoke-virtual/range {p1 .. p1}, Lcom/a/a/c/m;->e()V

    :cond_7
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/a/a/c/n;->a:I

    sget-object v8, Lcom/a/a/c/aa;->n:Lcom/a/a/c/aa;

    iget v8, v8, Lcom/a/a/c/aa;->x:I

    and-int/2addr v5, v8

    if-nez v5, :cond_8

    move-object/from16 v0, v24

    iget v5, v0, Lcom/a/a/c/z;->c:I

    sget-object v8, Lcom/a/a/c/aa;->n:Lcom/a/a/c/aa;

    iget v8, v8, Lcom/a/a/c/aa;->x:I

    and-int/2addr v5, v8

    if-eqz v5, :cond_10

    if-nez p4, :cond_8

    move-object/from16 v0, v24

    iget v5, v0, Lcom/a/a/c/z;->c:I

    sget-object v8, Lcom/a/a/c/aa;->s:Lcom/a/a/c/aa;

    iget v8, v8, Lcom/a/a/c/aa;->x:I

    and-int/2addr v5, v8

    if-eqz v5, :cond_8

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/a/a/c/m;->j:Lcom/a/a/c/w;

    iget-object v5, v5, Lcom/a/a/c/w;->a:Lcom/a/a/c/w;

    if-eqz v5, :cond_10

    :cond_8
    const/4 v5, 0x1

    :goto_6
    if-eqz v5, :cond_a

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    move-object/from16 v0, p4

    if-eq v5, v0, :cond_a

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/a/a/c/m;->a:Lcom/a/a/c/x;

    iget-object v4, v4, Lcom/a/a/c/x;->b:Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Lcom/a/a/c/z;->a(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/a/a/c/n;->b:Ljava/lang/String;

    if-nez v4, :cond_9

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    :cond_9
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/a/a/c/m;->b(Ljava/lang/String;)V

    const/4 v4, 0x1

    :cond_a
    if-eqz v4, :cond_11

    const/16 v4, 0x2c

    :goto_7
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/a/a/c/m;->c:Ljava/util/List;

    if-eqz v5, :cond_13

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/a/a/c/m;->c:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v5, v4

    :goto_8
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/a/a/c/d;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v4, v0, v1, v5}, Lcom/a/a/c/d;->a(Lcom/a/a/c/m;Ljava/lang/Object;C)C
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    goto :goto_8

    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/a/a/c/n;->e:[Lcom/a/a/c/j;

    move-object v6, v4

    goto/16 :goto_1

    :cond_c
    const/4 v4, 0x0

    move v7, v4

    goto/16 :goto_2

    :cond_d
    const/16 v4, 0x7b

    move v5, v4

    goto/16 :goto_3

    :cond_e
    const/16 v4, 0x7d

    move/from16 v23, v4

    goto/16 :goto_4

    :cond_f
    :try_start_1
    invoke-virtual/range {v24 .. v24}, Lcom/a/a/c/z;->flush()V

    const/4 v4, 0x1

    goto/16 :goto_5

    :cond_10
    const/4 v5, 0x0

    goto :goto_6

    :cond_11
    const/4 v4, 0x0

    goto :goto_7

    :cond_12
    move v4, v5

    :cond_13
    const/16 v5, 0x2c

    if-ne v4, v5, :cond_14

    const/4 v9, 0x1

    :goto_9
    move-object/from16 v0, v24

    iget v4, v0, Lcom/a/a/c/z;->c:I

    sget-object v5, Lcom/a/a/c/aa;->a:Lcom/a/a/c/aa;

    iget v5, v5, Lcom/a/a/c/aa;->x:I

    and-int/2addr v4, v5

    if-eqz v4, :cond_15

    move-object/from16 v0, v24

    iget v4, v0, Lcom/a/a/c/z;->c:I

    sget-object v5, Lcom/a/a/c/aa;->b:Lcom/a/a/c/aa;

    iget v5, v5, Lcom/a/a/c/aa;->x:I

    and-int/2addr v4, v5

    if-nez v4, :cond_15

    const/4 v4, 0x1

    move/from16 v22, v4

    :goto_a
    move-object/from16 v0, v24

    iget v4, v0, Lcom/a/a/c/z;->c:I

    sget-object v5, Lcom/a/a/c/aa;->b:Lcom/a/a/c/aa;

    iget v5, v5, Lcom/a/a/c/aa;->x:I

    and-int/2addr v4, v5

    if-eqz v4, :cond_16

    const/4 v4, 0x1

    move/from16 v21, v4

    :goto_b
    move-object/from16 v0, v24

    iget v4, v0, Lcom/a/a/c/z;->c:I

    sget-object v5, Lcom/a/a/c/aa;->w:Lcom/a/a/c/aa;

    iget v5, v5, Lcom/a/a/c/aa;->x:I

    and-int/2addr v4, v5

    if-eqz v4, :cond_17

    const/4 v4, 0x1

    move/from16 v20, v4

    :goto_c
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/a/a/c/m;->e:Ljava/util/List;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/a/a/c/m;->g:Ljava/util/List;

    move-object/from16 v27, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/a/a/c/m;->f:Ljava/util/List;

    move-object/from16 v28, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/a/a/c/m;->h:Ljava/util/List;

    move-object/from16 v29, v0

    const/4 v4, 0x0

    move/from16 v17, v4

    :goto_d
    array-length v4, v6

    move/from16 v0, v17

    if-ge v0, v4, :cond_4e

    aget-object v30, v6, v17

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/a/a/c/j;->a:Lcom/a/a/d/a;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/a/a/d/a;->f:Ljava/lang/Class;

    move-object/from16 v32, v0

    move-object/from16 v0, v31

    iget-object v14, v0, Lcom/a/a/d/a;->a:Ljava/lang/String;

    move-object/from16 v0, v24

    iget v4, v0, Lcom/a/a/c/z;->c:I

    sget-object v5, Lcom/a/a/c/aa;->j:Lcom/a/a/c/aa;

    iget v5, v5, Lcom/a/a/c/aa;->x:I

    and-int/2addr v4, v5

    if-eqz v4, :cond_18

    move-object/from16 v0, v31

    iget-object v4, v0, Lcom/a/a/d/a;->c:Ljava/lang/reflect/Field;

    if-eqz v4, :cond_18

    move-object/from16 v0, v31

    iget-boolean v4, v0, Lcom/a/a/d/a;->e:Z

    if-eqz v4, :cond_18

    move v4, v9

    :goto_e
    add-int/lit8 v5, v17, 0x1

    move/from16 v17, v5

    move v9, v4

    goto :goto_d

    :cond_14
    const/4 v9, 0x0

    goto/16 :goto_9

    :cond_15
    const/4 v4, 0x0

    move/from16 v22, v4

    goto :goto_a

    :cond_16
    const/4 v4, 0x0

    move/from16 v21, v4

    goto :goto_b

    :cond_17
    const/4 v4, 0x0

    move/from16 v20, v4

    goto :goto_c

    :cond_18
    const/4 v5, 0x1

    if-eqz v29, :cond_5c

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_19
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/a/a/c/v;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v4, v0, v1, v14}, Lcom/a/a/c/v;->a(Lcom/a/a/c/m;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_19

    const/4 v4, 0x0

    :goto_f
    if-nez v4, :cond_1a

    move v4, v9

    goto :goto_e

    :cond_1a
    const/4 v4, 0x0

    const/4 v8, 0x0

    const-wide/16 v12, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v31

    iget-boolean v15, v0, Lcom/a/a/d/a;->d:Z

    if-eqz v15, :cond_20

    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v32

    if-ne v0, v15, :cond_1d

    move-object/from16 v0, v31

    iget-object v5, v0, Lcom/a/a/d/a;->c:Ljava/lang/reflect/Field;

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v8

    const/4 v5, 0x1

    move v15, v5

    move/from16 v16, v10

    move-wide/from16 v18, v12

    :goto_10
    const/4 v5, 0x1

    if-eqz v26, :cond_1c

    if-eqz v15, :cond_5b

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v32

    if-ne v0, v10, :cond_21

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v11, 0x1

    move-object v10, v4

    :goto_11
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_1b
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5a

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/a/a/c/u;

    move-object/from16 v0, p2

    invoke-interface {v4, v0, v14, v10}, Lcom/a/a/c/u;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1b

    const/4 v5, 0x0

    move-object v4, v10

    :cond_1c
    :goto_12
    if-nez v5, :cond_23

    move v4, v9

    goto/16 :goto_e

    :cond_1d
    sget-object v15, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v32

    if-ne v0, v15, :cond_1e

    move-object/from16 v0, v31

    iget-object v5, v0, Lcom/a/a/d/a;->c:Ljava/lang/reflect/Field;

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v12

    const/4 v5, 0x1

    move v15, v5

    move/from16 v16, v10

    move-wide/from16 v18, v12

    goto :goto_10

    :cond_1e
    sget-object v15, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v32

    if-ne v0, v15, :cond_1f

    move-object/from16 v0, v31

    iget-object v5, v0, Lcom/a/a/d/a;->c:Ljava/lang/reflect/Field;

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v10

    const/4 v5, 0x1

    move v15, v5

    move/from16 v16, v10

    move-wide/from16 v18, v12

    goto :goto_10

    :cond_1f
    move-object/from16 v0, v31

    iget-object v4, v0, Lcom/a/a/d/a;->c:Ljava/lang/reflect/Field;

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const/4 v11, 0x1

    move v15, v5

    move/from16 v16, v10

    move-wide/from16 v18, v12

    goto :goto_10

    :cond_20
    move-object/from16 v0, v30

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/a/a/c/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const/4 v11, 0x1

    move v15, v5

    move/from16 v16, v10

    move-wide/from16 v18, v12

    goto :goto_10

    :cond_21
    sget-object v10, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v32

    if-ne v0, v10, :cond_22

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v11, 0x1

    move-object v10, v4

    goto :goto_11

    :cond_22
    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v32

    if-ne v0, v10, :cond_5b

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v11, 0x1

    move-object v10, v4

    goto/16 :goto_11

    :cond_23
    if-eqz v27, :cond_59

    if-eqz v15, :cond_58

    if-nez v11, :cond_58

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v32

    if-ne v0, v5, :cond_24

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v11, 0x1

    move-object v10, v4

    :goto_13
    invoke-interface/range {v27 .. v27}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move-object v5, v14

    :goto_14
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_26

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/a/a/c/r;

    move-object/from16 v0, p2

    invoke-interface {v4, v0, v5, v10}, Lcom/a/a/c/r;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_14

    :cond_24
    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v32

    if-ne v0, v5, :cond_25

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v11, 0x1

    move-object v10, v4

    goto :goto_13

    :cond_25
    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v32

    if-ne v0, v5, :cond_58

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v11, 0x1

    move-object v10, v4

    goto :goto_13

    :cond_26
    move-object v13, v5

    move-object v4, v10

    :goto_15
    if-eqz v28, :cond_57

    if-eqz v15, :cond_56

    if-nez v11, :cond_56

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v32

    if-ne v0, v5, :cond_27

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v11, 0x1

    move-object v10, v4

    move-object v5, v4

    :goto_16
    invoke-interface/range {v28 .. v28}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_17
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_29

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/a/a/c/ac;

    move-object/from16 v0, p2

    invoke-interface {v4, v0, v14, v5}, Lcom/a/a/c/ac;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_17

    :cond_27
    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v32

    if-ne v0, v5, :cond_28

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v11, 0x1

    move-object v10, v4

    move-object v5, v4

    goto :goto_16

    :cond_28
    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v32

    if-ne v0, v5, :cond_56

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v11, 0x1

    move-object v10, v4

    move-object v5, v4

    goto :goto_16

    :cond_29
    move v12, v11

    :goto_18
    if-eqz v12, :cond_2a

    if-nez v5, :cond_2a

    if-nez v7, :cond_2a

    move-object/from16 v0, v30

    iget-boolean v4, v0, Lcom/a/a/c/j;->b:Z

    if-nez v4, :cond_2a

    move-object/from16 v0, v24

    iget v4, v0, Lcom/a/a/c/z;->c:I

    sget-object v11, Lcom/a/a/c/aa;->c:Lcom/a/a/c/aa;

    iget v11, v11, Lcom/a/a/c/aa;->x:I

    and-int/2addr v4, v11

    if-nez v4, :cond_2a

    move v4, v9

    goto/16 :goto_e

    :cond_2a
    if-eqz v12, :cond_2d

    if-eqz v5, :cond_2d

    if-eqz v20, :cond_2d

    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v32

    if-eq v0, v4, :cond_2b

    sget-object v4, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v32

    if-eq v0, v4, :cond_2b

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v32

    if-eq v0, v4, :cond_2b

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v32

    if-eq v0, v4, :cond_2b

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v32

    if-eq v0, v4, :cond_2b

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v32

    if-ne v0, v4, :cond_2c

    :cond_2b
    instance-of v4, v5, Ljava/lang/Number;

    if-eqz v4, :cond_2c

    move-object v0, v5

    check-cast v0, Ljava/lang/Number;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Number;->byteValue()B

    move-result v4

    if-nez v4, :cond_2c

    move v4, v9

    goto/16 :goto_e

    :cond_2c
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v32

    if-ne v0, v4, :cond_2d

    instance-of v4, v5, Ljava/lang/Boolean;

    if-eqz v4, :cond_2d

    move-object v0, v5

    check-cast v0, Ljava/lang/Boolean;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_2d

    move v4, v9

    goto/16 :goto_e

    :cond_2d
    if-eqz v9, :cond_2f

    move-object/from16 v0, v24

    iget v4, v0, Lcom/a/a/c/z;->b:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v24

    iget-object v9, v0, Lcom/a/a/c/z;->a:[C

    array-length v9, v9

    if-le v4, v9, :cond_2e

    move-object/from16 v0, v24

    iget-object v9, v0, Lcom/a/a/c/z;->d:Ljava/io/Writer;

    if-nez v9, :cond_32

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Lcom/a/a/c/z;->a(I)V

    :cond_2e
    :goto_19
    move-object/from16 v0, v24

    iget-object v9, v0, Lcom/a/a/c/z;->a:[C

    move-object/from16 v0, v24

    iget v11, v0, Lcom/a/a/c/z;->b:I

    const/16 v33, 0x2c

    aput-char v33, v9, v11

    move-object/from16 v0, v24

    iput v4, v0, Lcom/a/a/c/z;->b:I

    move-object/from16 v0, v24

    iget v4, v0, Lcom/a/a/c/z;->c:I

    sget-object v9, Lcom/a/a/c/aa;->m:Lcom/a/a/c/aa;

    iget v9, v9, Lcom/a/a/c/aa;->x:I

    and-int/2addr v4, v9

    if-eqz v4, :cond_2f

    invoke-virtual/range {p1 .. p1}, Lcom/a/a/c/m;->e()V

    :cond_2f
    if-eq v13, v14, :cond_33

    if-nez v7, :cond_30

    const/4 v4, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v13, v4}, Lcom/a/a/c/z;->a(Ljava/lang/String;Z)V

    :cond_30
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/a/a/c/m;->b(Ljava/lang/Object;)V

    :cond_31
    :goto_1a
    const/4 v4, 0x1

    goto/16 :goto_e

    :cond_32
    invoke-virtual/range {v24 .. v24}, Lcom/a/a/c/z;->flush()V

    const/4 v4, 0x1

    goto :goto_19

    :cond_33
    if-eq v10, v5, :cond_36

    if-nez v7, :cond_34

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/a/a/c/j;->a(Lcom/a/a/c/m;)V

    :cond_34
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/a/a/c/m;->b(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1a

    :catch_0
    move-exception v4

    :try_start_2
    const-string v5, "write javaBean error"

    if-eqz p3, :cond_35

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", fieldName : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_35
    new-instance v6, Lcom/a/a/d;

    invoke-direct {v6, v5, v4}, Lcom/a/a/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v4

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/a/a/c/m;->j:Lcom/a/a/c/w;

    throw v4

    :cond_36
    if-nez v7, :cond_37

    if-eqz v22, :cond_39

    :try_start_3
    move-object/from16 v0, v31

    iget-object v13, v0, Lcom/a/a/d/a;->j:[C

    const/4 v11, 0x0

    array-length v9, v13

    move-object/from16 v0, v24

    iget v4, v0, Lcom/a/a/c/z;->b:I

    add-int/2addr v4, v9

    move-object/from16 v0, v24

    iget-object v10, v0, Lcom/a/a/c/z;->a:[C

    array-length v10, v10

    if-le v4, v10, :cond_55

    move-object/from16 v0, v24

    iget-object v10, v0, Lcom/a/a/c/z;->d:Ljava/io/Writer;

    if-nez v10, :cond_38

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Lcom/a/a/c/z;->a(I)V

    move v10, v9

    :goto_1b
    move-object/from16 v0, v24

    iget-object v9, v0, Lcom/a/a/c/z;->a:[C

    move-object/from16 v0, v24

    iget v14, v0, Lcom/a/a/c/z;->b:I

    invoke-static {v13, v11, v9, v14, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, v24

    iput v4, v0, Lcom/a/a/c/z;->b:I

    :cond_37
    :goto_1c
    if-eqz v15, :cond_42

    if-nez v12, :cond_42

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v32

    if-ne v0, v4, :cond_3f

    const/high16 v4, -0x80000000

    if-ne v8, v4, :cond_3a

    const-string v4, "-2147483648"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Lcom/a/a/c/z;->write(Ljava/lang/String;)V

    goto/16 :goto_1a

    :cond_38
    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/a/a/c/z;->a:[C

    array-length v4, v4

    move-object/from16 v0, v24

    iget v10, v0, Lcom/a/a/c/z;->b:I

    sub-int/2addr v4, v10

    move-object/from16 v0, v24

    iget-object v10, v0, Lcom/a/a/c/z;->a:[C

    move-object/from16 v0, v24

    iget v14, v0, Lcom/a/a/c/z;->b:I

    invoke-static {v13, v11, v10, v14, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, v24

    iget-object v10, v0, Lcom/a/a/c/z;->a:[C

    array-length v10, v10

    move-object/from16 v0, v24

    iput v10, v0, Lcom/a/a/c/z;->b:I

    invoke-virtual/range {v24 .. v24}, Lcom/a/a/c/z;->flush()V

    sub-int/2addr v9, v4

    add-int/2addr v11, v4

    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/a/a/c/z;->a:[C

    array-length v4, v4

    if-gt v9, v4, :cond_38

    move v4, v9

    move v10, v9

    goto :goto_1b

    :cond_39
    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/a/a/c/j;->a(Lcom/a/a/c/m;)V

    goto :goto_1c

    :cond_3a
    if-gez v8, :cond_3c

    neg-int v4, v8

    :goto_1d
    const/4 v5, 0x0

    :goto_1e
    sget-object v9, Lcom/a/a/c/z;->e:[I

    aget v9, v9, v5

    if-gt v4, v9, :cond_3d

    add-int/lit8 v4, v5, 0x1

    if-gez v8, :cond_54

    add-int/lit8 v4, v4, 0x1

    move v5, v4

    :goto_1f
    const/4 v4, 0x0

    move-object/from16 v0, v24

    iget v9, v0, Lcom/a/a/c/z;->b:I

    add-int/2addr v9, v5

    move-object/from16 v0, v24

    iget-object v10, v0, Lcom/a/a/c/z;->a:[C

    array-length v10, v10

    if-le v9, v10, :cond_3b

    move-object/from16 v0, v24

    iget-object v10, v0, Lcom/a/a/c/z;->d:Ljava/io/Writer;

    if-nez v10, :cond_3e

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Lcom/a/a/c/z;->a(I)V

    :cond_3b
    :goto_20
    if-nez v4, :cond_31

    int-to-long v4, v8

    move-object/from16 v0, v24

    iget-object v8, v0, Lcom/a/a/c/z;->a:[C

    invoke-static {v4, v5, v9, v8}, Lcom/a/a/c/z;->a(JI[C)V

    move-object/from16 v0, v24

    iput v9, v0, Lcom/a/a/c/z;->b:I

    goto/16 :goto_1a

    :cond_3c
    move v4, v8

    goto :goto_1d

    :cond_3d
    add-int/lit8 v5, v5, 0x1

    goto :goto_1e

    :cond_3e
    new-array v4, v5, [C

    int-to-long v10, v8

    invoke-static {v10, v11, v5, v4}, Lcom/a/a/c/z;->a(JI[C)V

    const/4 v5, 0x0

    array-length v10, v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5, v10}, Lcom/a/a/c/z;->write([CII)V

    const/4 v4, 0x1

    goto :goto_20

    :cond_3f
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v32

    if-ne v0, v4, :cond_40

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/a/a/c/m;->b:Lcom/a/a/c/z;

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Lcom/a/a/c/z;->a(J)V

    goto/16 :goto_1a

    :cond_40
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v32

    if-ne v0, v4, :cond_31

    if-eqz v16, :cond_41

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/a/a/c/m;->b:Lcom/a/a/c/z;

    sget-object v5, Lcom/a/a/c/n;->c:[C

    const/4 v8, 0x0

    sget-object v9, Lcom/a/a/c/n;->c:[C

    array-length v9, v9

    invoke-virtual {v4, v5, v8, v9}, Lcom/a/a/c/z;->write([CII)V

    goto/16 :goto_1a

    :cond_41
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/a/a/c/m;->b:Lcom/a/a/c/z;

    sget-object v5, Lcom/a/a/c/n;->d:[C

    const/4 v8, 0x0

    sget-object v9, Lcom/a/a/c/n;->d:[C

    array-length v9, v9

    invoke-virtual {v4, v5, v8, v9}, Lcom/a/a/c/z;->write([CII)V

    goto/16 :goto_1a

    :cond_42
    if-nez v7, :cond_4d

    const-class v4, Ljava/lang/String;

    move-object/from16 v0, v32

    if-ne v0, v4, :cond_47

    if-nez v5, :cond_45

    move-object/from16 v0, v24

    iget v4, v0, Lcom/a/a/c/z;->c:I

    sget-object v5, Lcom/a/a/c/aa;->g:Lcom/a/a/c/aa;

    iget v5, v5, Lcom/a/a/c/aa;->x:I

    and-int/2addr v4, v5

    if-nez v4, :cond_43

    move-object/from16 v0, v30

    iget v4, v0, Lcom/a/a/c/j;->c:I

    sget-object v5, Lcom/a/a/c/aa;->g:Lcom/a/a/c/aa;

    iget v5, v5, Lcom/a/a/c/aa;->x:I

    and-int/2addr v4, v5

    if-eqz v4, :cond_44

    :cond_43
    const-string v4, ""

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Lcom/a/a/c/z;->a(Ljava/lang/String;)V

    goto/16 :goto_1a

    :cond_44
    invoke-virtual/range {v24 .. v24}, Lcom/a/a/c/z;->a()V

    goto/16 :goto_1a

    :cond_45
    check-cast v5, Ljava/lang/String;

    if-eqz v21, :cond_46

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Lcom/a/a/c/z;->b(Ljava/lang/String;)V

    goto/16 :goto_1a

    :cond_46
    const/4 v4, 0x0

    const/4 v8, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v5, v4, v8}, Lcom/a/a/c/z;->a(Ljava/lang/String;CZ)V

    goto/16 :goto_1a

    :cond_47
    move-object/from16 v0, v31

    iget-boolean v4, v0, Lcom/a/a/d/a;->k:Z

    if-eqz v4, :cond_4c

    if-eqz v5, :cond_4b

    move-object/from16 v0, v24

    iget v4, v0, Lcom/a/a/c/z;->c:I

    sget-object v8, Lcom/a/a/c/aa;->d:Lcom/a/a/c/aa;

    iget v8, v8, Lcom/a/a/c/aa;->x:I

    and-int/2addr v4, v8

    if-eqz v4, :cond_4a

    check-cast v5, Ljava/lang/Enum;

    invoke-virtual {v5}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v24

    iget v4, v0, Lcom/a/a/c/z;->c:I

    sget-object v8, Lcom/a/a/c/aa;->b:Lcom/a/a/c/aa;

    iget v8, v8, Lcom/a/a/c/aa;->x:I

    and-int/2addr v4, v8

    if-eqz v4, :cond_48

    const/4 v4, 0x1

    :goto_21
    if-eqz v4, :cond_49

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Lcom/a/a/c/z;->b(Ljava/lang/String;)V

    goto/16 :goto_1a

    :cond_48
    const/4 v4, 0x0

    goto :goto_21

    :cond_49
    const/4 v4, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v5, v4, v8}, Lcom/a/a/c/z;->a(Ljava/lang/String;CZ)V

    goto/16 :goto_1a

    :cond_4a
    check-cast v5, Ljava/lang/Enum;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Lcom/a/a/c/z;->b(I)V

    goto/16 :goto_1a

    :cond_4b
    invoke-virtual/range {v24 .. v24}, Lcom/a/a/c/z;->a()V

    goto/16 :goto_1a

    :cond_4c
    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v5}, Lcom/a/a/c/j;->a(Lcom/a/a/c/m;Ljava/lang/Object;)V

    goto/16 :goto_1a

    :cond_4d
    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v5}, Lcom/a/a/c/j;->a(Lcom/a/a/c/m;Ljava/lang/Object;)V

    goto/16 :goto_1a

    :cond_4e
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/a/a/c/m;->d:Ljava/util/List;

    if-eqz v4, :cond_50

    if-eqz v9, :cond_4f

    const/16 v4, 0x2c

    :goto_22
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/a/a/c/m;->d:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v5, v4

    :goto_23
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_50

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/a/a/c/a;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v4, v0, v1, v5}, Lcom/a/a/c/a;->a(Lcom/a/a/c/m;Ljava/lang/Object;C)C

    move-result v4

    move v5, v4

    goto :goto_23

    :cond_4f
    const/4 v4, 0x0

    goto :goto_22

    :cond_50
    array-length v4, v6

    if-lez v4, :cond_51

    move-object/from16 v0, v24

    iget v4, v0, Lcom/a/a/c/z;->c:I

    sget-object v5, Lcom/a/a/c/aa;->m:Lcom/a/a/c/aa;

    iget v5, v5, Lcom/a/a/c/aa;->x:I

    and-int/2addr v4, v5

    if-eqz v4, :cond_51

    invoke-virtual/range {p1 .. p1}, Lcom/a/a/c/m;->d()V

    invoke-virtual/range {p1 .. p1}, Lcom/a/a/c/m;->e()V

    :cond_51
    move-object/from16 v0, v24

    iget v4, v0, Lcom/a/a/c/z;->b:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v24

    iget-object v5, v0, Lcom/a/a/c/z;->a:[C

    array-length v5, v5

    if-le v4, v5, :cond_52

    move-object/from16 v0, v24

    iget-object v5, v0, Lcom/a/a/c/z;->d:Ljava/io/Writer;

    if-nez v5, :cond_53

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Lcom/a/a/c/z;->a(I)V

    :cond_52
    :goto_24
    move-object/from16 v0, v24

    iget-object v5, v0, Lcom/a/a/c/z;->a:[C

    move-object/from16 v0, v24

    iget v6, v0, Lcom/a/a/c/z;->b:I

    aput-char v23, v5, v6

    move-object/from16 v0, v24

    iput v4, v0, Lcom/a/a/c/z;->b:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/a/a/c/m;->j:Lcom/a/a/c/w;

    goto/16 :goto_0

    :cond_53
    :try_start_4
    invoke-virtual/range {v24 .. v24}, Lcom/a/a/c/z;->flush()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v4, 0x1

    goto :goto_24

    :cond_54
    move v5, v4

    goto/16 :goto_1f

    :cond_55
    move v10, v9

    goto/16 :goto_1b

    :cond_56
    move-object v10, v4

    move-object v5, v4

    goto/16 :goto_16

    :cond_57
    move-object v10, v4

    move v12, v11

    move-object v5, v4

    goto/16 :goto_18

    :cond_58
    move-object v10, v4

    goto/16 :goto_13

    :cond_59
    move-object v13, v14

    goto/16 :goto_15

    :cond_5a
    move-object v4, v10

    goto/16 :goto_12

    :cond_5b
    move-object v10, v4

    goto/16 :goto_11

    :cond_5c
    move v4, v5

    goto/16 :goto_f
.end method
