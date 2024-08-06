.class public Lcom/a/a/b/p;
.super Lcom/a/a/b/g;


# direct methods
.method public constructor <init>(Lcom/a/a/b/m;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/b/m;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p2}, Lcom/a/a/b/g;-><init>(Lcom/a/a/b/m;Ljava/lang/Class;Ljava/lang/reflect/Type;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/a/a/b/b;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/a/a/b/b;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    iget-object v5, p1, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    iget v0, v5, Lcom/a/a/b/e;->a:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    invoke-virtual {v5}, Lcom/a/a/b/e;->f()V

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget v0, p1, Lcom/a/a/b/b;->e:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    const/4 v0, 0x0

    iput v0, p1, Lcom/a/a/b/b;->e:I

    :cond_2
    const/4 v4, 0x0

    const/4 v0, 0x0

    if-eqz p2, :cond_17

    instance-of v1, p2, Ljava/lang/Class;

    if-eqz v1, :cond_17

    check-cast p2, Ljava/lang/Class;

    const-class v1, Ljava/lang/Throwable;

    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_17

    :goto_1
    const/4 v2, 0x0

    const/4 v1, 0x0

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    move-object v3, p2

    :cond_3
    iget-object v0, p1, Lcom/a/a/b/b;->a:Lcom/a/a/b/o;

    invoke-virtual {v5, v0}, Lcom/a/a/b/e;->a(Lcom/a/a/b/o;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    iget v7, v5, Lcom/a/a/b/e;->a:I

    const/16 v8, 0xd

    if-ne v7, v8, :cond_6

    const/16 v0, 0x10

    invoke-virtual {v5, v0}, Lcom/a/a/b/e;->b(I)V

    move-object v6, v1

    move-object v7, v2

    move-object v5, v3

    move-object v8, v4

    :goto_2
    const/4 v4, 0x0

    if-nez v5, :cond_f

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, v7, v8}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_3
    if-eqz v6, :cond_0

    invoke-virtual {v0, v6}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    goto :goto_0

    :cond_5
    iget v0, v5, Lcom/a/a/b/e;->a:I

    const/16 v1, 0xc

    if-eq v0, v1, :cond_2

    new-instance v0, Lcom/a/a/d;

    const-string v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/a/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    iget v7, v5, Lcom/a/a/b/e;->a:I

    const/16 v8, 0x10

    if-ne v7, v8, :cond_7

    iget v7, v5, Lcom/a/a/b/e;->c:I

    sget-object v8, Lcom/a/a/b/d;->g:Lcom/a/a/b/d;

    iget v8, v8, Lcom/a/a/b/d;->q:I

    and-int/2addr v7, v8

    if-nez v7, :cond_3

    :cond_7
    const/16 v7, 0x3a

    invoke-virtual {v5, v7}, Lcom/a/a/b/e;->a(C)V

    const-string v7, "@type"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    iget v0, v5, Lcom/a/a/b/e;->a:I

    const/4 v3, 0x4

    if-ne v0, v3, :cond_8

    invoke-virtual {v5}, Lcom/a/a/b/e;->p()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p1, Lcom/a/a/b/b;->b:Lcom/a/a/b/m;

    iget-object v3, v3, Lcom/a/a/b/m;->c:Ljava/lang/ClassLoader;

    invoke-static {v0, v3}, Lcom/a/a/d/d;->a(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const/16 v3, 0x10

    invoke-virtual {v5, v3}, Lcom/a/a/b/e;->b(I)V

    move-object v3, v0

    :goto_4
    iget v0, v5, Lcom/a/a/b/e;->a:I

    const/16 v7, 0xd

    if-ne v0, v7, :cond_3

    const/16 v0, 0x10

    invoke-virtual {v5, v0}, Lcom/a/a/b/e;->b(I)V

    move-object v6, v1

    move-object v7, v2

    move-object v5, v3

    move-object v8, v4

    goto :goto_2

    :cond_8
    new-instance v0, Lcom/a/a/d;

    const-string v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/a/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    const-string v7, "message"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    iget v0, v5, Lcom/a/a/b/e;->a:I

    const/16 v2, 0x8

    if-ne v0, v2, :cond_a

    const/4 v0, 0x0

    :goto_5
    invoke-virtual {v5}, Lcom/a/a/b/e;->f()V

    move-object v2, v0

    goto :goto_4

    :cond_a
    iget v0, v5, Lcom/a/a/b/e;->a:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_b

    invoke-virtual {v5}, Lcom/a/a/b/e;->p()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_b
    new-instance v0, Lcom/a/a/d;

    const-string v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/a/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    const-string v7, "cause"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    const/4 v0, 0x0

    const-string v4, "cause"

    invoke-virtual {p0, p1, v0, v4}, Lcom/a/a/b/p;->a(Lcom/a/a/b/b;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    move-object v4, v0

    goto :goto_4

    :cond_d
    const-string v7, "stackTrace"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    const-class v0, [Ljava/lang/StackTraceElement;

    invoke-virtual {p1, v0}, Lcom/a/a/b/b;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/StackTraceElement;

    move-object v1, v0

    goto :goto_4

    :cond_e
    invoke-virtual {p1}, Lcom/a/a/b/b;->e()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_f
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v5}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v9

    array-length v10, v9

    const/4 v1, 0x0

    move v5, v1

    :goto_6
    if-ge v5, v10, :cond_13

    aget-object v1, v9, v5

    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v11

    array-length v11, v11

    if-nez v11, :cond_11

    move-object v3, v1

    :cond_10
    :goto_7
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_6

    :cond_11
    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v11

    array-length v11, v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_12

    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v11

    const/4 v12, 0x0

    aget-object v11, v11, v12

    const-class v12, Ljava/lang/String;

    if-ne v11, v12, :cond_12

    move-object v2, v1

    goto :goto_7

    :cond_12
    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v11

    array-length v11, v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_10

    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v11

    const/4 v12, 0x0

    aget-object v11, v11, v12

    const-class v12, Ljava/lang/String;

    if-ne v11, v12, :cond_10

    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v11

    const/4 v12, 0x1

    aget-object v11, v11, v12

    const-class v12, Ljava/lang/Throwable;

    if-ne v11, v12, :cond_10

    move-object v0, v1

    goto :goto_7

    :cond_13
    if-eqz v0, :cond_14

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v7, v1, v2

    const/4 v2, 0x1

    aput-object v8, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    :goto_8
    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, v7, v8}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception v0

    new-instance v1, Lcom/a/a/d;

    const-string v2, "create instance error"

    invoke-direct {v1, v2, v0}, Lcom/a/a/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_14
    if-eqz v2, :cond_15

    const/4 v0, 0x1

    :try_start_1
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v7, v0, v1

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    goto :goto_8

    :cond_15
    if-eqz v3, :cond_16

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_8

    :cond_16
    move-object v0, v4

    goto :goto_8

    :cond_17
    move-object p2, v0

    goto/16 :goto_1
.end method
