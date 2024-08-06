.class Lcom/a/a/b/h;
.super Ljava/lang/Object;


# instance fields
.field final a:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field

.field final b:I

.field final c:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field

.field final d:Ljava/lang/reflect/Method;

.field final e:[Lcom/a/a/d/a;

.field final f:[Lcom/a/a/d/a;

.field final g:Lcom/a/a/a/c;

.field h:Z

.field final i:Z

.field public final j:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;[Lcom/a/a/d/a;[Lcom/a/a/d/a;Lcom/a/a/a/c;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Constructor",
            "<*>;",
            "Ljava/lang/reflect/Constructor",
            "<*>;",
            "Ljava/lang/reflect/Method;",
            "[",
            "Lcom/a/a/d/a;",
            "[",
            "Lcom/a/a/d/a;",
            "Lcom/a/a/a/c;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/a/a/b/h;->h:Z

    iput-object p2, p0, Lcom/a/a/b/h;->a:Ljava/lang/reflect/Constructor;

    iput-object p3, p0, Lcom/a/a/b/h;->c:Ljava/lang/reflect/Constructor;

    iput-object p4, p0, Lcom/a/a/b/h;->d:Ljava/lang/reflect/Method;

    iput-object p5, p0, Lcom/a/a/b/h;->e:[Lcom/a/a/d/a;

    iput-object p7, p0, Lcom/a/a/b/h;->g:Lcom/a/a/a/c;

    if-eqz p7, :cond_2

    invoke-interface {p7}, Lcom/a/a/a/c;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    iput-object v0, p0, Lcom/a/a/b/h;->j:Ljava/lang/String;

    :goto_0
    if-eqz p7, :cond_3

    invoke-interface {p7}, Lcom/a/a/a/c;->d()[Lcom/a/a/b/d;

    move-result-object v3

    array-length v4, v3

    move v2, v1

    move v0, v1

    :goto_1
    if-ge v2, v4, :cond_4

    aget-object v5, v3, v2

    sget-object v6, Lcom/a/a/b/d;->n:Lcom/a/a/b/d;

    if-ne v5, v6, :cond_0

    const/4 v0, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/b/h;->j:Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/b/h;->j:Ljava/lang/String;

    goto :goto_0

    :cond_3
    move v0, v1

    :cond_4
    iput-boolean v0, p0, Lcom/a/a/b/h;->i:Z

    invoke-direct {p0, p5, p6}, Lcom/a/a/b/h;->a([Lcom/a/a/d/a;[Lcom/a/a/d/a;)[Lcom/a/a/d/a;

    move-result-object v0

    invoke-static {p5, v0}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :goto_2
    iput-object p5, p0, Lcom/a/a/b/h;->f:[Lcom/a/a/d/a;

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    array-length v1, v0

    :cond_5
    iput v1, p0, Lcom/a/a/b/h;->b:I

    return-void

    :cond_6
    move-object p5, v0

    goto :goto_2
.end method

.method public static a(Ljava/lang/Class;ILjava/lang/reflect/Type;ZZZZLcom/a/a/g;)Lcom/a/a/b/h;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I",
            "Ljava/lang/reflect/Type;",
            "ZZZZ",
            "Lcom/a/a/g;",
            ")",
            "Lcom/a/a/b/h;"
        }
    .end annotation

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move/from16 v0, p1

    and-int/lit16 v3, v0, 0x400

    if-nez v3, :cond_47

    const/4 v3, 0x0

    :try_start_0
    new-array v3, v3, [Ljava/lang/Class;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_0
    if-nez v3, :cond_46

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v2

    if-eqz v2, :cond_46

    and-int/lit8 v2, p1, 0x8

    if-nez v2, :cond_46

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v5

    array-length v6, v5

    const/4 v2, 0x0

    move v4, v2

    :goto_1
    if-ge v4, v6, :cond_46

    aget-object v2, v5, v4

    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    array-length v8, v7

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v15, v2

    :goto_2
    if-eqz p3, :cond_1

    const/4 v2, 0x0

    move-object v13, v2

    :goto_3
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v17

    if-nez v15, :cond_17

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->isInterface()Z

    move-result v2

    if-nez v2, :cond_17

    move/from16 v0, p1

    and-int/lit16 v2, v0, 0x400

    if-nez v2, :cond_17

    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v6

    array-length v7, v6

    const/4 v2, 0x0

    move v5, v2

    :goto_4
    if-ge v5, v7, :cond_45

    aget-object v3, v6, v5

    const-class v2, Lcom/a/a/a/a;

    invoke-virtual {v3, v2}, Ljava/lang/reflect/Constructor;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lcom/a/a/a/a;

    if-eqz v2, :cond_4

    if-eqz v4, :cond_2

    new-instance v2, Lcom/a/a/d;

    const-string v3, "multi-json creator"

    invoke-direct {v2, v3}, Lcom/a/a/d;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_0
    move-exception v3

    move-object v3, v2

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_1

    :cond_1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    move-object v13, v2

    goto :goto_3

    :cond_2
    move-object v14, v3

    :goto_5
    if-eqz v14, :cond_b

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static {v0, v14, v1}, Lcom/a/a/d/d;->a(Ljava/lang/Class;Ljava/lang/reflect/Member;I)Z

    invoke-virtual {v14}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v11

    if-eqz p6, :cond_5

    invoke-virtual {v14}, Ljava/lang/reflect/Constructor;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v2

    move-object v10, v2

    :goto_6
    const/4 v2, 0x0

    move v12, v2

    :goto_7
    array-length v2, v11

    if-ge v12, v2, :cond_9

    invoke-virtual {v14}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v2

    aget-object v5, v2, v12

    const/4 v3, 0x0

    array-length v6, v5

    const/4 v2, 0x0

    move v4, v2

    :goto_8
    if-ge v4, v6, :cond_3

    aget-object v2, v5, v4

    instance-of v7, v2, Lcom/a/a/a/b;

    if-eqz v7, :cond_6

    check-cast v2, Lcom/a/a/a/b;

    move-object v3, v2

    :cond_3
    if-nez v3, :cond_7

    new-instance v2, Lcom/a/a/d;

    const-string v3, "illegal json creator"

    invoke-direct {v2, v3}, Lcom/a/a/d;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_4

    :cond_5
    move-object v10, v11

    goto :goto_6

    :cond_6
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_8

    :cond_7
    aget-object v5, v11, v12

    aget-object v6, v10, v12

    invoke-interface {v3}, Lcom/a/a/a/b;->b()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v2, v1}, Lcom/a/a/d/d;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v7

    if-eqz v7, :cond_8

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static {v0, v7, v1}, Lcom/a/a/d/d;->a(Ljava/lang/Class;Ljava/lang/reflect/Member;I)Z

    :cond_8
    invoke-interface {v3}, Lcom/a/a/a/b;->a()I

    move-result v8

    invoke-interface {v3}, Lcom/a/a/a/b;->f()[Lcom/a/a/c/aa;

    move-result-object v2

    invoke-static {v2}, Lcom/a/a/c/aa;->a([Lcom/a/a/c/aa;)I

    move-result v9

    new-instance v2, Lcom/a/a/d/a;

    invoke-interface {v3}, Lcom/a/a/a/b;->b()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, p0

    invoke-direct/range {v2 .. v9}, Lcom/a/a/d/a;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;II)V

    move-object/from16 v0, v16

    move/from16 v1, p3

    invoke-static {v0, v2, v1}, Lcom/a/a/b/h;->a(Ljava/util/List;Lcom/a/a/d/a;Z)Z

    add-int/lit8 v2, v12, 0x1

    move v12, v2

    goto :goto_7

    :cond_9
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v2

    new-array v7, v2, [Lcom/a/a/d/a;

    move-object/from16 v0, v16

    invoke-interface {v0, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    array-length v2, v7

    new-array v8, v2, [Lcom/a/a/d/a;

    const/4 v2, 0x0

    const/4 v3, 0x0

    array-length v4, v7

    invoke-static {v7, v2, v8, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v8}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    if-eqz p4, :cond_a

    const-class v2, Lcom/a/a/a/c;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lcom/a/a/a/c;

    move-object v9, v2

    :goto_9
    new-instance v2, Lcom/a/a/b/h;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v3, p0

    move-object v5, v14

    invoke-direct/range {v2 .. v9}, Lcom/a/a/b/h;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;[Lcom/a/a/d/a;[Lcom/a/a/d/a;Lcom/a/a/a/c;)V

    :goto_a
    return-object v2

    :cond_a
    const/4 v9, 0x0

    goto :goto_9

    :cond_b
    const/4 v4, 0x0

    array-length v6, v13

    const/4 v2, 0x0

    move v5, v2

    :goto_b
    if-ge v5, v6, :cond_44

    aget-object v3, v13, v5

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_d

    :cond_c
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_b

    :cond_d
    const-class v2, Lcom/a/a/a/a;

    invoke-virtual {v3, v2}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lcom/a/a/a/a;

    if-eqz v2, :cond_c

    if-eqz v4, :cond_e

    new-instance v2, Lcom/a/a/d;

    const-string v3, "multi-json creator"

    invoke-direct {v2, v3}, Lcom/a/a/d;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_e
    move-object v13, v3

    :goto_c
    if-eqz v13, :cond_16

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static {v0, v13, v1}, Lcom/a/a/d/d;->a(Ljava/lang/Class;Ljava/lang/reflect/Member;I)Z

    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v11

    if-eqz p6, :cond_10

    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v2

    move-object v10, v2

    :goto_d
    const/4 v2, 0x0

    move v12, v2

    :goto_e
    array-length v2, v11

    if-ge v12, v2, :cond_13

    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v2

    aget-object v5, v2, v12

    const/4 v3, 0x0

    array-length v6, v5

    const/4 v2, 0x0

    move v4, v2

    :goto_f
    if-ge v4, v6, :cond_f

    aget-object v2, v5, v4

    instance-of v7, v2, Lcom/a/a/a/b;

    if-eqz v7, :cond_11

    check-cast v2, Lcom/a/a/a/b;

    move-object v3, v2

    :cond_f
    if-nez v3, :cond_12

    new-instance v2, Lcom/a/a/d;

    const-string v3, "illegal json creator"

    invoke-direct {v2, v3}, Lcom/a/a/d;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_10
    move-object v10, v11

    goto :goto_d

    :cond_11
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_f

    :cond_12
    aget-object v5, v11, v12

    aget-object v6, v10, v12

    invoke-interface {v3}, Lcom/a/a/a/b;->b()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v2, v1}, Lcom/a/a/d/d;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v7

    invoke-interface {v3}, Lcom/a/a/a/b;->a()I

    move-result v8

    invoke-interface {v3}, Lcom/a/a/a/b;->f()[Lcom/a/a/c/aa;

    move-result-object v2

    invoke-static {v2}, Lcom/a/a/c/aa;->a([Lcom/a/a/c/aa;)I

    move-result v9

    new-instance v2, Lcom/a/a/d/a;

    invoke-interface {v3}, Lcom/a/a/a/b;->b()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, p0

    invoke-direct/range {v2 .. v9}, Lcom/a/a/d/a;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;II)V

    move-object/from16 v0, v16

    move/from16 v1, p3

    invoke-static {v0, v2, v1}, Lcom/a/a/b/h;->a(Ljava/util/List;Lcom/a/a/d/a;Z)Z

    add-int/lit8 v2, v12, 0x1

    move v12, v2

    goto :goto_e

    :cond_13
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v2

    new-array v7, v2, [Lcom/a/a/d/a;

    move-object/from16 v0, v16

    invoke-interface {v0, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    array-length v2, v7

    new-array v8, v2, [Lcom/a/a/d/a;

    const/4 v2, 0x0

    const/4 v3, 0x0

    array-length v4, v7

    invoke-static {v7, v2, v8, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v8}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    invoke-static {v7, v8}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    move-object v8, v7

    :cond_14
    if-eqz p4, :cond_15

    const-class v2, Lcom/a/a/a/c;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lcom/a/a/a/c;

    move-object v9, v2

    :goto_10
    new-instance v2, Lcom/a/a/b/h;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v3, p0

    move-object v6, v13

    invoke-direct/range {v2 .. v9}, Lcom/a/a/b/h;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;[Lcom/a/a/d/a;[Lcom/a/a/d/a;Lcom/a/a/a/c;)V

    goto/16 :goto_a

    :cond_15
    const/4 v9, 0x0

    goto :goto_10

    :cond_16
    new-instance v2, Lcom/a/a/d;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "default constructor not found. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/a/a/d;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_17
    if-eqz v15, :cond_18

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static {v0, v15, v1}, Lcom/a/a/d/d;->a(Ljava/lang/Class;Ljava/lang/reflect/Member;I)Z

    :cond_18
    if-nez p3, :cond_28

    array-length v0, v13

    move/from16 v18, v0

    const/4 v2, 0x0

    move v14, v2

    :goto_11
    move/from16 v0, v18

    if-ge v14, v0, :cond_28

    aget-object v4, v13, v14

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v5, 0x4

    if-lt v2, v5, :cond_19

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v2

    if-eqz v2, :cond_1a

    :cond_19
    :goto_12
    add-int/lit8 v2, v14, 0x1

    move v14, v2

    goto :goto_11

    :cond_1a
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    sget-object v5, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v2, v5, :cond_1b

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v5

    if-ne v2, v5, :cond_19

    :cond_1b
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    array-length v2, v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_19

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    const-class v5, Ljava/lang/Object;

    if-eq v2, v5, :cond_19

    if-eqz p5, :cond_1d

    const-class v2, Lcom/a/a/a/b;

    invoke-virtual {v4, v2}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lcom/a/a/a/b;

    move-object v10, v2

    :goto_13
    if-nez v10, :cond_1c

    if-eqz p5, :cond_1c

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/a/a/d/d;->a(Ljava/lang/Class;Ljava/lang/reflect/Method;)Lcom/a/a/a/b;

    move-result-object v10

    :cond_1c
    if-eqz v10, :cond_1e

    invoke-interface {v10}, Lcom/a/a/a/b;->e()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v10}, Lcom/a/a/a/b;->a()I

    move-result v8

    invoke-interface {v10}, Lcom/a/a/a/b;->f()[Lcom/a/a/c/aa;

    move-result-object v2

    invoke-static {v2}, Lcom/a/a/c/aa;->a([Lcom/a/a/c/aa;)I

    move-result v9

    invoke-interface {v10}, Lcom/a/a/a/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v10}, Lcom/a/a/a/b;->b()Ljava/lang/String;

    move-result-object v3

    new-instance v2, Lcom/a/a/d/a;

    const/4 v5, 0x0

    const/4 v11, 0x0

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move/from16 v12, p6

    invoke-direct/range {v2 .. v12}, Lcom/a/a/d/a;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IILcom/a/a/a/b;Lcom/a/a/a/b;Z)V

    move-object/from16 v0, v16

    move/from16 v1, p3

    invoke-static {v0, v2, v1}, Lcom/a/a/b/h;->a(Ljava/util/List;Lcom/a/a/d/a;Z)Z

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static {v0, v4, v1}, Lcom/a/a/d/d;->a(Ljava/lang/Class;Ljava/lang/reflect/Member;I)Z

    goto :goto_12

    :cond_1d
    const/4 v10, 0x0

    goto :goto_13

    :cond_1e
    const-string v2, "set"

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    const/4 v2, 0x3

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v5

    if-eqz v5, :cond_21

    sget-boolean v2, Lcom/a/a/d/d;->a:Z

    if-eqz v2, :cond_20

    const/4 v2, 0x3

    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/a/a/d/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    :goto_14
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v3, v1}, Lcom/a/a/d/d;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v5

    if-nez v5, :cond_1f

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    const/4 v6, 0x0

    aget-object v2, v2, v6

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v2, v6, :cond_1f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "is"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v2, v1}, Lcom/a/a/d/d;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v5

    :cond_1f
    if-eqz v5, :cond_26

    if-eqz p5, :cond_24

    const-class v2, Lcom/a/a/a/b;

    invoke-virtual {v5, v2}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lcom/a/a/a/b;

    move-object v11, v2

    :goto_15
    if-eqz v11, :cond_26

    invoke-interface {v11}, Lcom/a/a/a/b;->a()I

    move-result v8

    invoke-interface {v11}, Lcom/a/a/a/b;->f()[Lcom/a/a/c/aa;

    move-result-object v2

    invoke-static {v2}, Lcom/a/a/c/aa;->a([Lcom/a/a/c/aa;)I

    move-result v9

    invoke-interface {v11}, Lcom/a/a/a/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v11}, Lcom/a/a/a/b;->b()Ljava/lang/String;

    move-result-object v3

    new-instance v2, Lcom/a/a/d/a;

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move/from16 v12, p6

    invoke-direct/range {v2 .. v12}, Lcom/a/a/d/a;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IILcom/a/a/a/b;Lcom/a/a/a/b;Z)V

    move-object/from16 v0, v16

    move/from16 v1, p3

    invoke-static {v0, v2, v1}, Lcom/a/a/b/h;->a(Ljava/util/List;Lcom/a/a/d/a;Z)Z

    goto/16 :goto_12

    :cond_20
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    goto/16 :goto_14

    :cond_21
    const/16 v5, 0x5f

    if-ne v2, v5, :cond_22

    const/4 v2, 0x4

    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    goto/16 :goto_14

    :cond_22
    const/16 v5, 0x66

    if-ne v2, v5, :cond_23

    const/4 v2, 0x3

    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    goto/16 :goto_14

    :cond_23
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v5, 0x5

    if-lt v2, v5, :cond_19

    const/4 v2, 0x4

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v2

    if-eqz v2, :cond_19

    const/4 v2, 0x3

    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/a/a/d/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    goto/16 :goto_14

    :cond_24
    const/4 v11, 0x0

    goto/16 :goto_15

    :cond_25
    if-nez v10, :cond_26

    move-object v10, v11

    :cond_26
    if-eqz p7, :cond_27

    move-object/from16 v0, p7

    invoke-virtual {v0, v3}, Lcom/a/a/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_27
    new-instance v2, Lcom/a/a/d/a;

    const/4 v5, 0x0

    const/4 v11, 0x0

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move/from16 v12, p6

    invoke-direct/range {v2 .. v12}, Lcom/a/a/d/a;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IILcom/a/a/a/b;Lcom/a/a/a/b;Z)V

    move-object/from16 v0, v16

    move/from16 v1, p3

    invoke-static {v0, v2, v1}, Lcom/a/a/b/h;->a(Ljava/util/List;Lcom/a/a/d/a;Z)Z

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static {v0, v4, v1}, Lcom/a/a/d/d;->a(Ljava/lang/Class;Ljava/lang/reflect/Member;I)Z

    goto/16 :goto_12

    :cond_28
    new-instance v5, Ljava/util/ArrayList;

    move-object/from16 v0, v17

    array-length v2, v0

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v17

    array-length v4, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_16
    if-ge v3, v4, :cond_2e

    aget-object v6, v17, v3

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v2

    and-int/lit8 v7, v2, 0x8

    if-eqz v7, :cond_2a

    :cond_29
    :goto_17
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_16

    :cond_2a
    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_2c

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    const-class v7, Ljava/util/Map;

    invoke-virtual {v7, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-nez v7, :cond_2b

    const-class v7, Ljava/util/Collection;

    invoke-virtual {v7, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_2d

    :cond_2b
    const/4 v2, 0x1

    :goto_18
    if-eqz v2, :cond_29

    :cond_2c
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_29

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_2d
    const/4 v2, 0x0

    goto :goto_18

    :cond_2e
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    :goto_19
    if-eqz v2, :cond_35

    const-class v3, Ljava/lang/Object;

    if-eq v2, v3, :cond_35

    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v6

    array-length v7, v6

    const/4 v3, 0x0

    move v4, v3

    :goto_1a
    if-ge v4, v7, :cond_34

    aget-object v8, v6, v4

    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v9

    and-int/lit8 v3, v9, 0x8

    if-eqz v3, :cond_30

    :cond_2f
    :goto_1b
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_1a

    :cond_30
    and-int/lit8 v3, v9, 0x10

    if-eqz v3, :cond_32

    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    const-class v10, Ljava/util/Map;

    invoke-virtual {v10, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v10

    if-nez v10, :cond_31

    const-class v10, Ljava/util/Collection;

    invoke-virtual {v10, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_33

    :cond_31
    const/4 v3, 0x1

    :goto_1c
    if-eqz v3, :cond_2f

    :cond_32
    and-int/lit8 v3, v9, 0x1

    if-eqz v3, :cond_2f

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    :cond_33
    const/4 v3, 0x0

    goto :goto_1c

    :cond_34
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_19

    :cond_35
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_36
    :goto_1d
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/reflect/Field;

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v7

    move v6, v2

    :goto_1e
    if-ge v6, v7, :cond_37

    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/a/a/d/a;

    iget-object v2, v2, Lcom/a/a/d/a;->a:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    const/4 v2, 0x1

    :goto_1f
    add-int/lit8 v6, v6, 0x1

    move v3, v2

    goto :goto_1e

    :cond_37
    if-nez v3, :cond_36

    const/4 v8, 0x0

    const/4 v9, 0x0

    if-eqz p5, :cond_39

    const-class v2, Lcom/a/a/a/b;

    invoke-virtual {v5, v2}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lcom/a/a/a/b;

    move-object v11, v2

    :goto_20
    if-eqz v11, :cond_42

    invoke-interface {v11}, Lcom/a/a/a/b;->a()I

    move-result v8

    invoke-interface {v11}, Lcom/a/a/a/b;->f()[Lcom/a/a/c/aa;

    move-result-object v2

    invoke-static {v2}, Lcom/a/a/c/aa;->a([Lcom/a/a/c/aa;)I

    move-result v9

    invoke-interface {v11}, Lcom/a/a/a/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_42

    invoke-interface {v11}, Lcom/a/a/a/b;->b()Ljava/lang/String;

    move-result-object v3

    :goto_21
    if-eqz p7, :cond_38

    move-object/from16 v0, p7

    invoke-virtual {v0, v3}, Lcom/a/a/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_38
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static {v0, v5, v1}, Lcom/a/a/d/d;->a(Ljava/lang/Class;Ljava/lang/reflect/Member;I)Z

    new-instance v2, Lcom/a/a/d/a;

    const/4 v4, 0x0

    const/4 v10, 0x0

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move/from16 v12, p6

    invoke-direct/range {v2 .. v12}, Lcom/a/a/d/a;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IILcom/a/a/a/b;Lcom/a/a/a/b;Z)V

    move-object/from16 v0, v16

    move/from16 v1, p3

    invoke-static {v0, v2, v1}, Lcom/a/a/b/h;->a(Ljava/util/List;Lcom/a/a/d/a;Z)Z

    goto :goto_1d

    :cond_39
    const/4 v11, 0x0

    goto :goto_20

    :cond_3a
    if-nez p3, :cond_40

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v14

    array-length v0, v14

    move/from16 v17, v0

    const/4 v2, 0x0

    move v13, v2

    :goto_22
    move/from16 v0, v17

    if-ge v13, v0, :cond_40

    aget-object v4, v14, v13

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-lt v2, v3, :cond_3b

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v2

    if-eqz v2, :cond_3c

    :cond_3b
    :goto_23
    add-int/lit8 v2, v13, 0x1

    move v13, v2

    goto :goto_22

    :cond_3c
    const-string v2, "get"

    invoke-virtual {v5, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3b

    const/4 v2, 0x3

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    array-length v2, v2

    if-nez v2, :cond_3b

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ljava/util/Collection;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_3d

    const-class v3, Ljava/util/Map;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_3b

    :cond_3d
    if-eqz p5, :cond_3e

    const-class v2, Lcom/a/a/a/b;

    invoke-virtual {v4, v2}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lcom/a/a/a/b;

    move-object v10, v2

    :goto_24
    if-eqz v10, :cond_3f

    invoke-interface {v10}, Lcom/a/a/a/b;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3f

    :goto_25
    new-instance v2, Lcom/a/a/d/a;

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move/from16 v12, p6

    invoke-direct/range {v2 .. v12}, Lcom/a/a/d/a;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IILcom/a/a/a/b;Lcom/a/a/a/b;Z)V

    move-object/from16 v0, v16

    move/from16 v1, p3

    invoke-static {v0, v2, v1}, Lcom/a/a/b/h;->a(Ljava/util/List;Lcom/a/a/d/a;Z)Z

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static {v0, v4, v1}, Lcom/a/a/d/d;->a(Ljava/lang/Class;Ljava/lang/reflect/Member;I)Z

    goto :goto_23

    :cond_3e
    const/4 v10, 0x0

    goto :goto_24

    :cond_3f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x3

    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v5, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_25

    :cond_40
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v2

    new-array v7, v2, [Lcom/a/a/d/a;

    move-object/from16 v0, v16

    invoke-interface {v0, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    array-length v2, v7

    new-array v8, v2, [Lcom/a/a/d/a;

    const/4 v2, 0x0

    const/4 v3, 0x0

    array-length v4, v7

    invoke-static {v7, v2, v8, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v8}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    if-eqz p4, :cond_41

    const-class v2, Lcom/a/a/a/c;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lcom/a/a/a/c;

    move-object v9, v2

    :goto_26
    new-instance v2, Lcom/a/a/b/h;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v3, p0

    move-object v4, v15

    invoke-direct/range {v2 .. v9}, Lcom/a/a/b/h;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;[Lcom/a/a/d/a;[Lcom/a/a/d/a;Lcom/a/a/a/c;)V

    goto/16 :goto_a

    :cond_41
    const/4 v9, 0x0

    goto :goto_26

    :cond_42
    move-object v3, v4

    goto/16 :goto_21

    :cond_43
    move v2, v3

    goto/16 :goto_1f

    :cond_44
    move-object v13, v4

    goto/16 :goto_c

    :cond_45
    move-object v14, v4

    goto/16 :goto_5

    :cond_46
    move-object v15, v3

    goto/16 :goto_2

    :cond_47
    move-object v15, v2

    goto/16 :goto_2
.end method

.method static a(Ljava/util/List;Lcom/a/a/d/a;Z)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/a/a/d/a;",
            ">;",
            "Lcom/a/a/d/a;",
            "Z)Z"
        }
    .end annotation

    const/4 v1, 0x0

    if-nez p2, :cond_2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_2

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/d/a;

    iget-object v4, v0, Lcom/a/a/d/a;->a:Ljava/lang/String;

    iget-object v5, p1, Lcom/a/a/d/a;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-boolean v0, v0, Lcom/a/a/d/a;->i:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p1, Lcom/a/a/d/a;->i:Z

    if-nez v0, :cond_1

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_1
    return v0

    :cond_2
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    goto :goto_1
.end method

.method private a([Lcom/a/a/d/a;[Lcom/a/a/d/a;)[Lcom/a/a/d/a;
    .locals 8

    const/4 v4, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/a/a/b/h;->g:Lcom/a/a/a/c;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object p2

    :cond_1
    iget-object v0, p0, Lcom/a/a/b/h;->g:Lcom/a/a/a/c;

    invoke-interface {v0}, Lcom/a/a/a/c;->a()[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    array-length v0, v5

    if-eqz v0, :cond_0

    move v0, v1

    :goto_1
    array-length v2, v5

    if-ge v0, v2, :cond_12

    move v2, v1

    :goto_2
    array-length v3, p2

    if-ge v2, v3, :cond_11

    aget-object v3, p2, v2

    iget-object v3, v3, Lcom/a/a/d/a;->a:Ljava/lang/String;

    aget-object v6, v5, v0

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v2, v4

    :goto_3
    if-nez v2, :cond_4

    move v0, v1

    :goto_4
    if-eqz v0, :cond_0

    array-length v0, v5

    array-length v2, p1

    if-ne v0, v2, :cond_8

    move v0, v1

    :goto_5
    array-length v2, v5

    if-ge v0, v2, :cond_10

    aget-object v2, p2, v0

    iget-object v2, v2, Lcom/a/a/d/a;->a:Ljava/lang/String;

    aget-object v3, v5, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    :goto_6
    if-nez v0, :cond_0

    array-length v0, p2

    new-array v3, v0, [Lcom/a/a/d/a;

    move v0, v1

    :goto_7
    array-length v2, v5

    if-ge v0, v2, :cond_7

    move v2, v1

    :goto_8
    array-length v6, p2

    if-ge v2, v6, :cond_2

    aget-object v6, p2, v2

    iget-object v6, v6, Lcom/a/a/d/a;->a:Ljava/lang/String;

    aget-object v7, v5, v0

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    aget-object v2, p2, v2

    aput-object v2, v3, v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_7
    iput-boolean v4, p0, Lcom/a/a/b/h;->h:Z

    move-object p2, v3

    goto :goto_0

    :cond_8
    array-length v0, p2

    new-array v6, v0, [Lcom/a/a/d/a;

    move v0, v1

    :goto_9
    array-length v2, v5

    if-ge v0, v2, :cond_b

    move v2, v1

    :goto_a
    array-length v3, p2

    if-ge v2, v3, :cond_9

    aget-object v3, p2, v2

    iget-object v3, v3, Lcom/a/a/d/a;->a:Ljava/lang/String;

    aget-object v7, v5, v0

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    aget-object v2, p2, v2

    aput-object v2, v6, v0

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_b
    array-length v2, v5

    move v0, v1

    :goto_b
    array-length v3, p2

    if-ge v0, v3, :cond_e

    move v3, v1

    :goto_c
    array-length v5, v6

    if-ge v3, v5, :cond_f

    if-ge v3, v2, :cond_f

    aget-object v5, v6, v0

    aget-object v7, p2, v3

    invoke-virtual {v5, v7}, Lcom/a/a/d/a;->b(Lcom/a/a/d/a;)Z

    move-result v5

    if-eqz v5, :cond_d

    move v3, v4

    :goto_d
    if-nez v3, :cond_c

    aget-object v3, p2, v0

    aput-object v3, v6, v2

    add-int/lit8 v2, v2, 0x1

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_e
    iput-boolean v4, p0, Lcom/a/a/b/h;->h:Z

    goto/16 :goto_0

    :cond_f
    move v3, v1

    goto :goto_d

    :cond_10
    move v0, v4

    goto :goto_6

    :cond_11
    move v2, v1

    goto/16 :goto_3

    :cond_12
    move v0, v4

    goto/16 :goto_4
.end method
