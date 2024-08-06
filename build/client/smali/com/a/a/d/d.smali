.class public Lcom/a/a/d/d;
.super Ljava/lang/Object;


# static fields
.field public static a:Z

.field private static b:Z

.field private static c:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    sput-boolean v0, Lcom/a/a/d/d;->a:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/a/a/d/d;->b:Z

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/a/a/d/d;->c:Ljava/util/concurrent/ConcurrentMap;

    sget-object v0, Lcom/a/a/d/d;->c:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "byte"

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/a/a/d/d;->c:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "short"

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/a/a/d/d;->c:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "int"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/a/a/d/d;->c:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "long"

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/a/a/d/d;->c:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "float"

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/a/a/d/d;->c:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "double"

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/a/a/d/d;->c:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "boolean"

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/a/a/d/d;->c:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "char"

    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/a/a/d/d;->c:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "[byte"

    const-class v2, [B

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/a/a/d/d;->c:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "[short"

    const-class v2, [S

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/a/a/d/d;->c:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "[int"

    const-class v2, [I

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/a/a/d/d;->c:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "[long"

    const-class v2, [J

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/a/a/d/d;->c:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "[float"

    const-class v2, [F

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/a/a/d/d;->c:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "[double"

    const-class v2, [D

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/a/a/d/d;->c:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "[boolean"

    const-class v2, [Z

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/a/a/d/d;->c:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "[char"

    const-class v2, [C

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/a/a/d/d;->c:Ljava/util/concurrent/ConcurrentMap;

    const-class v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Ljava/util/HashMap;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Ljava/lang/Class;Ljava/lang/reflect/Method;)Lcom/a/a/a/b;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Method;",
            ")",
            "Lcom/a/a/a/b;"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v5

    array-length v6, v5

    move v4, v1

    :goto_0
    if-ge v4, v6, :cond_4

    aget-object v0, v5, v4

    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v7

    array-length v8, v7

    move v3, v1

    :goto_1
    if-ge v3, v8, :cond_3

    aget-object v9, v7, v3

    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v11

    array-length v0, v10

    array-length v2, v11

    if-ne v0, v2, :cond_0

    const/4 v2, 0x1

    move v0, v1

    :goto_2
    array-length v12, v10

    if-ge v0, v12, :cond_5

    aget-object v12, v10, v0

    aget-object v13, v11, v0

    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    move v0, v1

    :goto_3
    if-eqz v0, :cond_0

    const-class v0, Lcom/a/a/a/b;

    invoke-virtual {v9, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/b;

    if-eqz v0, :cond_0

    :goto_4
    return-object v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_4

    :cond_5
    move v0, v2

    goto :goto_3
.end method

.method public static a(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    sget-object v0, Lcom/a/a/d/d;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-nez v0, :cond_1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5b

    if-ne v1, v2, :cond_3

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/a/a/d/d;->a(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string v1, "L"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, ";"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/a/a/d/d;->a(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_4
    if-eqz p1, :cond_5

    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Lcom/a/a/d/d;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p0, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/e/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    move-object v2, v0

    :goto_1
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v0

    :try_start_2
    sget-object v1, Lcom/a/a/d/d;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p0, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v2, v0

    :goto_2
    invoke-static {v1}, Lcom/e/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    move-object v0, v2

    :goto_3
    :try_start_3
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Lcom/a/a/d/d;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p0, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    invoke-static {v1}, Lcom/e/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_5
    move-object v2, v0

    goto :goto_1

    :cond_6
    move-object v0, v2

    goto :goto_3

    :catch_3
    move-exception v0

    move-object v1, v0

    goto :goto_2
.end method

.method public static final a(Ljava/lang/Object;Ljava/lang/Class;Lcom/a/a/b/m;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/a/a/b/m;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_1

    move-object p0, v0

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    if-nez p1, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "clazz is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq p1, v1, :cond_0

    instance-of v1, p0, Ljava/util/Map;

    if-eqz v1, :cond_4

    const-class v0, Ljava/util/Map;

    if-eq p1, v0, :cond_0

    move-object v0, p0

    check-cast v0, Ljava/util/Map;

    const-class v1, Ljava/lang/Object;

    if-ne p1, v1, :cond_3

    const-string v1, "@type"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_3
    check-cast p0, Ljava/util/Map;

    invoke-static {p0, p1, p2}, Lcom/a/a/d/d;->a(Ljava/util/Map;Ljava/lang/Class;Lcom/a/a/b/m;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_7

    instance-of v1, p0, Ljava/util/Collection;

    if-eqz v1, :cond_6

    check-cast p0, Ljava/util/Collection;

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v3, v4, p2}, Lcom/a/a/d/d;->a(Ljava/lang/Object;Ljava/lang/Class;Lcom/a/a/b/m;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v0, v3}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    move-object p0, v1

    goto :goto_0

    :cond_6
    const-class v1, [B

    if-ne p1, v1, :cond_7

    invoke-static {p0}, Lcom/a/a/d/d;->l(Ljava/lang/Object;)[B

    move-result-object p0

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_8

    const-class v1, Ljava/lang/Boolean;

    if-ne p1, v1, :cond_9

    :cond_8
    invoke-static {p0}, Lcom/a/a/d/d;->m(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p0

    goto/16 :goto_0

    :cond_9
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_a

    const-class v1, Ljava/lang/Byte;

    if-ne p1, v1, :cond_b

    :cond_a
    invoke-static {p0}, Lcom/a/a/d/d;->b(Ljava/lang/Object;)Ljava/lang/Byte;

    move-result-object p0

    goto/16 :goto_0

    :cond_b
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_c

    const-class v1, Ljava/lang/Short;

    if-ne p1, v1, :cond_d

    :cond_c
    invoke-static {p0}, Lcom/a/a/d/d;->d(Ljava/lang/Object;)Ljava/lang/Short;

    move-result-object p0

    goto/16 :goto_0

    :cond_d
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_e

    const-class v1, Ljava/lang/Integer;

    if-ne p1, v1, :cond_f

    :cond_e
    invoke-static {p0}, Lcom/a/a/d/d;->k(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p0

    goto/16 :goto_0

    :cond_f
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_10

    const-class v1, Ljava/lang/Long;

    if-ne p1, v1, :cond_11

    :cond_10
    invoke-static {p0}, Lcom/a/a/d/d;->j(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object p0

    goto/16 :goto_0

    :cond_11
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_12

    const-class v1, Ljava/lang/Float;

    if-ne p1, v1, :cond_13

    :cond_12
    invoke-static {p0}, Lcom/a/a/d/d;->g(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object p0

    goto/16 :goto_0

    :cond_13
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_14

    const-class v1, Ljava/lang/Double;

    if-ne p1, v1, :cond_15

    :cond_14
    invoke-static {p0}, Lcom/a/a/d/d;->h(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object p0

    goto/16 :goto_0

    :cond_15
    const-class v1, Ljava/lang/String;

    if-ne p1, v1, :cond_16

    invoke-static {p0}, Lcom/a/a/d/d;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    :cond_16
    const-class v1, Ljava/math/BigDecimal;

    if-ne p1, v1, :cond_17

    invoke-static {p0}, Lcom/a/a/d/d;->e(Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object p0

    goto/16 :goto_0

    :cond_17
    const-class v1, Ljava/math/BigInteger;

    if-ne p1, v1, :cond_18

    invoke-static {p0}, Lcom/a/a/d/d;->f(Ljava/lang/Object;)Ljava/math/BigInteger;

    move-result-object p0

    goto/16 :goto_0

    :cond_18
    const-class v1, Ljava/util/Date;

    if-ne p1, v1, :cond_19

    invoke-static {p0}, Lcom/a/a/d/d;->i(Ljava/lang/Object;)Ljava/util/Date;

    move-result-object p0

    goto/16 :goto_0

    :cond_19
    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-static {p0, p1, p2}, Lcom/a/a/d/d;->b(Ljava/lang/Object;Ljava/lang/Class;Lcom/a/a/b/m;)Ljava/lang/Object;

    move-result-object p0

    goto/16 :goto_0

    :cond_1a
    const-class v1, Ljava/util/Calendar;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-static {p0}, Lcom/a/a/d/d;->i(Ljava/lang/Object;)Ljava/util/Date;

    move-result-object v1

    const-class v0, Ljava/util/Calendar;

    if-ne p1, v0, :cond_1b

    sget-object v0, Lcom/a/a/a;->a:Ljava/util/TimeZone;

    sget-object v2, Lcom/a/a/a;->b:Ljava/util/Locale;

    invoke-static {v0, v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    :goto_2
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    move-object p0, v0

    goto/16 :goto_0

    :cond_1b
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    new-instance v1, Lcom/a/a/d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can not cast to : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/a/a/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1c
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_1f

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1d

    const-string v1, "null"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    :cond_1d
    move-object p0, v0

    goto/16 :goto_0

    :cond_1e
    const-class v0, Ljava/util/Currency;

    if-ne p1, v0, :cond_1f

    invoke-static {p0}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object p0

    goto/16 :goto_0

    :cond_1f
    new-instance v0, Lcom/a/a/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not cast to : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/a/a/d;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final a(Ljava/lang/Object;Ljava/lang/reflect/ParameterizedType;Lcom/a/a/b/m;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/ParameterizedType;",
            "Lcom/a/a/b/m;",
            ")TT;"
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v1

    const-class v0, Ljava/util/Set;

    if-eq v1, v0, :cond_0

    const-class v0, Ljava/util/HashSet;

    if-eq v1, v0, :cond_0

    const-class v0, Ljava/util/TreeSet;

    if-eq v1, v0, :cond_0

    const-class v0, Ljava/util/List;

    if-eq v1, v0, :cond_0

    const-class v0, Ljava/util/ArrayList;

    if-ne v1, v0, :cond_4

    :cond_0
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    aget-object v2, v0, v4

    instance-of v0, p0, Ljava/lang/Iterable;

    if-eqz v0, :cond_4

    const-class v0, Ljava/util/Set;

    if-eq v1, v0, :cond_1

    const-class v0, Ljava/util/HashSet;

    if-ne v1, v0, :cond_2

    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    :goto_0
    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v2, p2}, Lcom/a/a/d/d;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/a/a/b/m;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const-class v0, Ljava/util/TreeSet;

    if-ne v1, v0, :cond_3

    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_4
    const-class v0, Ljava/util/Map;

    if-eq v1, v0, :cond_5

    const-class v0, Ljava/util/HashMap;

    if-ne v1, v0, :cond_8

    :cond_5
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    aget-object v2, v0, v4

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    aget-object v3, v0, v5

    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_8

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v2, p2}, Lcom/a/a/d/d;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/a/a/b/m;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v3, p2}, Lcom/a/a/d/d;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/a/a/b/m;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_6
    move-object v0, v1

    :cond_7
    :goto_3
    return-object v0

    :cond_8
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_a

    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "null"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_9
    const/4 v0, 0x0

    goto :goto_3

    :cond_a
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    array-length v0, v0

    if-ne v0, v5, :cond_b

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    aget-object v0, v0, v4

    instance-of v0, v0, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_b

    invoke-static {p0, v1, p2}, Lcom/a/a/d/d;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/a/a/b/m;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_3

    :cond_b
    new-instance v0, Lcom/a/a/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not cast to : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/a/a/d;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final a(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/a/a/b/m;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Type;",
            "Lcom/a/a/b/m;",
            ")TT;"
        }
    .end annotation

    const/4 v1, 0x0

    if-nez p0, :cond_1

    move-object p0, v1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/lang/Class;

    invoke-static {p0, p1, p2}, Lcom/a/a/d/d;->a(Ljava/lang/Object;Ljava/lang/Class;Lcom/a/a/b/m;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_2
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_3

    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    invoke-static {p0, p1, p2}, Lcom/a/a/d/d;->a(Ljava/lang/Object;Ljava/lang/reflect/ParameterizedType;Lcom/a/a/b/m;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_3
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_5

    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "null"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    move-object p0, v1

    goto :goto_0

    :cond_5
    instance-of v0, p1, Ljava/lang/reflect/TypeVariable;

    if-nez v0, :cond_0

    new-instance v0, Lcom/a/a/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not cast to : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/a/a/d;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final a(Ljava/util/Map;Ljava/lang/Class;Lcom/a/a/b/m;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/a/a/b/m;",
            ")TT;"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v4, 0x0

    :try_start_0
    const-class v0, Ljava/lang/StackTraceElement;

    if-ne p1, v0, :cond_1

    const-string v0, "className"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "methodName"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "fileName"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "lineNumber"

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    if-nez v3, :cond_0

    :goto_0
    new-instance v3, Ljava/lang/StackTraceElement;

    invoke-direct {v3, v0, v1, v2, v4}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v0, v3

    :goto_1
    return-object v0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    move v4, v3

    goto :goto_0

    :cond_1
    const-string v0, "@type"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_3

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/a/a/d/d;->a(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    if-nez v2, :cond_2

    new-instance v1, Ljava/lang/ClassNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " not found"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/a/a/d;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/a/a/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    :try_start_1
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p0, v2, p2}, Lcom/a/a/d/d;->a(Ljava/util/Map;Ljava/lang/Class;Lcom/a/a/b/m;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_5

    instance-of v0, p0, Lcom/a/a/e;

    if-eqz v0, :cond_4

    check-cast p0, Lcom/a/a/e;

    :goto_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1, p0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :cond_4
    new-instance v0, Lcom/a/a/e;

    invoke-direct {v0, p0}, Lcom/a/a/e;-><init>(Ljava/util/Map;)V

    move-object p0, v0

    goto :goto_2

    :cond_5
    if-nez p2, :cond_6

    sget-object p2, Lcom/a/a/b/m;->a:Lcom/a/a/b/m;

    :cond_6
    invoke-virtual {p2, p1}, Lcom/a/a/b/m;->a(Ljava/lang/reflect/Type;)Lcom/a/a/b/a/f;

    move-result-object v0

    instance-of v2, v0, Lcom/a/a/b/g;

    if-eqz v2, :cond_8

    check-cast v0, Lcom/a/a/b/g;

    :goto_3
    if-nez v0, :cond_7

    new-instance v0, Lcom/a/a/d;

    const-string v1, "can not get javaBeanDeserializer"

    invoke-direct {v0, v1}, Lcom/a/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    invoke-virtual {v0, p0, p2}, Lcom/a/a/b/g;->a(Ljava/util/Map;Lcom/a/a/b/m;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto/16 :goto_1

    :cond_8
    move-object v0, v1

    goto :goto_3
.end method

.method public static final a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    aget-char v1, v0, v2

    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    aput-char v1, v0, v2

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/reflect/Field;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    const/4 v2, 0x1

    invoke-static {p0, p1, p2}, Lcom/a/a/d/d;->b(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/a/a/d/d;->b(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "m_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/a/a/d/d;->b(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "m"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/a/a/d/d;->b(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public static a(Ljava/lang/Class;IZLcom/a/a/a/c;Ljava/util/Map;ZZZLcom/a/a/g;)Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;IZ",
            "Lcom/a/a/a/c;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZZZ",
            "Lcom/a/a/g;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/a/a/d/a;",
            ">;"
        }
    .end annotation

    new-instance v14, Ljava/util/LinkedHashMap;

    invoke-direct {v14}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v15

    if-nez p2, :cond_17

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v16

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    const/4 v2, 0x0

    move v13, v2

    :goto_0
    move/from16 v0, v17

    if-ge v13, v0, :cond_17

    aget-object v4, v16, v13

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v18

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v2

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_0

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    array-length v2, v2

    if-nez v2, :cond_0

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ljava/lang/ClassLoader;

    if-eq v2, v3, :cond_0

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ljava/lang/Object;

    if-eq v2, v3, :cond_0

    const-string v2, "getMetaClass"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "groovy.lang.MetaClass"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v2, v13, 0x1

    move v13, v2

    goto :goto_0

    :cond_1
    if-eqz p6, :cond_4

    const-class v2, Lcom/a/a/a/b;

    invoke-virtual {v4, v2}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lcom/a/a/a/b;

    move-object v10, v2

    :goto_2
    if-nez v10, :cond_2

    if-eqz p6, :cond_2

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/a/a/d/d;->a(Ljava/lang/Class;Ljava/lang/reflect/Method;)Lcom/a/a/a/b;

    move-result-object v10

    :cond_2
    if-eqz v10, :cond_5

    invoke-interface {v10}, Lcom/a/a/a/b;->d()Z

    move-result v2

    if-eqz v2, :cond_0

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

    if-eqz v2, :cond_5

    invoke-interface {v10}, Lcom/a/a/a/b;->b()Ljava/lang/String;

    move-result-object v3

    if-eqz p4, :cond_3

    move-object/from16 v0, p4

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    move-object v3, v2

    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static {v0, v4, v1}, Lcom/a/a/d/d;->a(Ljava/lang/Class;Ljava/lang/reflect/Member;I)Z

    new-instance v2, Lcom/a/a/d/a;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object/from16 v6, p0

    invoke-direct/range {v2 .. v12}, Lcom/a/a/d/a;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IILcom/a/a/a/b;Lcom/a/a/a/b;Z)V

    invoke-interface {v14, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    const/4 v10, 0x0

    goto :goto_2

    :cond_5
    const-string v2, "get"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-lt v2, v3, :cond_0

    const-string v2, "getClass"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-eqz v3, :cond_f

    sget-boolean v2, Lcom/a/a/d/d;->a:Z

    if-eqz v2, :cond_e

    const/4 v2, 0x3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/a/a/d/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-static {v0, v1, v3}, Lcom/a/a/d/d;->a(Ljava/lang/Class;Lcom/a/a/a/c;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    invoke-static {v0, v3, v15}, Lcom/a/a/d/d;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v5

    const/4 v11, 0x0

    if-eqz v5, :cond_6

    if-eqz p6, :cond_12

    const-class v2, Lcom/a/a/a/b;

    invoke-virtual {v5, v2}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lcom/a/a/a/b;

    move-object v11, v2

    :goto_4
    if-eqz v11, :cond_6

    invoke-interface {v11}, Lcom/a/a/a/b;->d()Z

    move-result v2

    if-eqz v2, :cond_0

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

    if-eqz v2, :cond_6

    invoke-interface {v11}, Lcom/a/a/a/b;->b()Ljava/lang/String;

    move-result-object v3

    if-eqz p4, :cond_6

    move-object/from16 v0, p4

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    move-object v3, v2

    :cond_6
    if-eqz p8, :cond_7

    move-object/from16 v0, p8

    invoke-virtual {v0, v3}, Lcom/a/a/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_7
    if-eqz p4, :cond_8

    move-object/from16 v0, p4

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    move-object v3, v2

    :cond_8
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static {v0, v4, v1}, Lcom/a/a/d/d;->a(Ljava/lang/Class;Ljava/lang/reflect/Member;I)Z

    new-instance v2, Lcom/a/a/d/a;

    const/4 v7, 0x0

    move-object/from16 v6, p0

    move/from16 v12, p7

    invoke-direct/range {v2 .. v12}, Lcom/a/a/d/a;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IILcom/a/a/a/b;Lcom/a/a/a/b;Z)V

    invoke-interface {v14, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    const-string v2, "is"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-lt v2, v3, :cond_0

    const/4 v2, 0x2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-eqz v3, :cond_14

    sget-boolean v2, Lcom/a/a/d/d;->a:Z

    if-eqz v2, :cond_13

    const/4 v2, 0x2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/a/a/d/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    :goto_5
    move-object/from16 v0, p0

    invoke-static {v0, v3, v15}, Lcom/a/a/d/d;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v5

    if-nez v5, :cond_a

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1, v15}, Lcom/a/a/d/d;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v5

    :cond_a
    const/4 v11, 0x0

    if-eqz v5, :cond_b

    if-eqz p6, :cond_16

    const-class v2, Lcom/a/a/a/b;

    invoke-virtual {v5, v2}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lcom/a/a/a/b;

    move-object v11, v2

    :goto_6
    if-eqz v11, :cond_b

    invoke-interface {v11}, Lcom/a/a/a/b;->d()Z

    move-result v2

    if-eqz v2, :cond_0

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

    if-eqz v2, :cond_b

    invoke-interface {v11}, Lcom/a/a/a/b;->b()Ljava/lang/String;

    move-result-object v3

    if-eqz p4, :cond_b

    move-object/from16 v0, p4

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    move-object v3, v2

    :cond_b
    if-eqz p8, :cond_c

    move-object/from16 v0, p8

    invoke-virtual {v0, v3}, Lcom/a/a/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_c
    if-eqz p4, :cond_d

    move-object/from16 v0, p4

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    move-object v3, v2

    :cond_d
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static {v0, v5, v1}, Lcom/a/a/d/d;->a(Ljava/lang/Class;Ljava/lang/reflect/Member;I)Z

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static {v0, v4, v1}, Lcom/a/a/d/d;->a(Ljava/lang/Class;Ljava/lang/reflect/Member;I)Z

    new-instance v2, Lcom/a/a/d/a;

    const/4 v7, 0x0

    move-object/from16 v6, p0

    move/from16 v12, p7

    invoke-direct/range {v2 .. v12}, Lcom/a/a/d/a;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IILcom/a/a/a/b;Lcom/a/a/a/b;Z)V

    invoke-interface {v14, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    goto/16 :goto_3

    :cond_f
    const/16 v3, 0x5f

    if-ne v2, v3, :cond_10

    const/4 v2, 0x4

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    goto/16 :goto_3

    :cond_10
    const/16 v3, 0x66

    if-ne v2, v3, :cond_11

    const/4 v2, 0x3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    goto/16 :goto_3

    :cond_11
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x5

    if-lt v2, v3, :cond_0

    const/4 v2, 0x4

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/a/a/d/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    goto/16 :goto_3

    :cond_12
    const/4 v11, 0x0

    goto/16 :goto_4

    :cond_13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x2

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    goto/16 :goto_5

    :cond_14
    const/16 v3, 0x5f

    if-ne v2, v3, :cond_15

    const/4 v2, 0x3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    goto/16 :goto_5

    :cond_15
    const/16 v3, 0x66

    if-ne v2, v3, :cond_0

    const/4 v2, 0x2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    goto/16 :goto_5

    :cond_16
    const/4 v11, 0x0

    goto/16 :goto_6

    :cond_17
    new-instance v4, Ljava/util/ArrayList;

    array-length v2, v15

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    array-length v3, v15

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v3, :cond_1a

    aget-object v5, v15, v2

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v6

    and-int/lit8 v6, v6, 0x8

    if-eqz v6, :cond_19

    :cond_18
    :goto_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_19
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "this$0"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_18

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v6

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_18

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_1a
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    :goto_9
    if-eqz v2, :cond_1e

    const-class v3, Ljava/lang/Object;

    if-eq v2, v3, :cond_1e

    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v5

    array-length v6, v5

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v6, :cond_1d

    aget-object v7, v5, v3

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v8

    and-int/lit8 v8, v8, 0x8

    if-eqz v8, :cond_1c

    :cond_1b
    :goto_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_1c
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v8

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_1b

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_1d
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_9

    :cond_1e
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_1f
    :goto_c
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/reflect/Field;

    if-eqz p6, :cond_23

    const-class v2, Lcom/a/a/a/b;

    invoke-virtual {v5, v2}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lcom/a/a/a/b;

    move-object v11, v2

    :goto_d
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v11, :cond_20

    invoke-interface {v11}, Lcom/a/a/a/b;->d()Z

    move-result v2

    if-eqz v2, :cond_1f

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

    if-eqz v2, :cond_20

    invoke-interface {v11}, Lcom/a/a/a/b;->b()Ljava/lang/String;

    move-result-object v3

    :cond_20
    if-eqz p4, :cond_21

    move-object/from16 v0, p4

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_1f

    move-object v3, v2

    :cond_21
    if-eqz p8, :cond_22

    move-object/from16 v0, p8

    invoke-virtual {v0, v3}, Lcom/a/a/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_22
    invoke-interface {v14, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static {v0, v5, v1}, Lcom/a/a/d/d;->a(Ljava/lang/Class;Ljava/lang/reflect/Member;I)Z

    new-instance v2, Lcom/a/a/d/a;

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    move-object/from16 v6, p0

    move/from16 v12, p7

    invoke-direct/range {v2 .. v12}, Lcom/a/a/d/a;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IILcom/a/a/a/b;Lcom/a/a/a/b;Z)V

    invoke-interface {v14, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    :cond_23
    const/4 v11, 0x0

    goto :goto_d

    :cond_24
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    const/4 v2, 0x0

    if-eqz p3, :cond_2b

    invoke-interface/range {p3 .. p3}, Lcom/a/a/a/c;->a()[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_27

    array-length v2, v3

    invoke-interface {v14}, Ljava/util/Map;->size()I

    move-result v4

    if-ne v2, v4, :cond_27

    const/4 v2, 0x1

    array-length v5, v3

    const/4 v4, 0x0

    :goto_e
    if-ge v4, v5, :cond_25

    aget-object v7, v3, v4

    invoke-interface {v14, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_26

    const/4 v2, 0x0

    :cond_25
    move-object v4, v3

    move v5, v2

    :goto_f
    if-eqz v5, :cond_28

    array-length v5, v4

    const/4 v2, 0x0

    move v3, v2

    :goto_10
    if-ge v3, v5, :cond_2a

    aget-object v2, v4, v3

    invoke-interface {v14, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/a/a/d/a;

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_10

    :cond_26
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    :cond_27
    const/4 v2, 0x0

    move-object v4, v3

    move v5, v2

    goto :goto_f

    :cond_28
    invoke-interface {v14}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/a/a/d/a;

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_29
    if-eqz p5, :cond_2a

    invoke-static {v6}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    :cond_2a
    return-object v6

    :cond_2b
    move-object v4, v2

    move v5, v3

    goto :goto_f
.end method

.method private static a(Ljava/lang/Class;Lcom/a/a/a/c;Ljava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/a/a/a/c;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/a/a/a/c;->b()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/a/a/a/c;->b()[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v0, v2

    :goto_0
    if-ge v0, v4, :cond_1

    aget-object v5, v3, v0

    invoke-virtual {p2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    const-class v0, Ljava/lang/Object;

    if-eq v3, v0, :cond_2

    if-eqz v3, :cond_2

    const-class v0, Lcom/a/a/a/c;

    invoke-virtual {v3, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/c;

    invoke-static {v3, v0, p2}, Lcom/a/a/d/d;->a(Ljava/lang/Class;Lcom/a/a/a/c;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    move v1, v0

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2
.end method

.method public static a(Ljava/lang/Class;Ljava/lang/reflect/Member;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Member;",
            "I)Z"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    sget-boolean v2, Lcom/a/a/d/d;->b:Z

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_2

    const-class v3, Ljava/lang/Object;

    if-ne v2, v3, :cond_3

    :cond_2
    invoke-interface {p1}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3

    and-int/lit8 v2, p2, 0x1

    if-nez v2, :cond_0

    :cond_3
    check-cast p1, Ljava/lang/reflect/AccessibleObject;

    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/security/AccessControlException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    sput-boolean v0, Lcom/a/a/d/d;->b:Z

    goto :goto_0
.end method

.method public static a(Ljava/lang/reflect/Type;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    instance-of v2, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p0, Ljava/lang/Class;

    if-eqz v2, :cond_3

    check-cast p0, Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v2

    const-class v3, Ljava/lang/Object;

    if-eq v2, v3, :cond_2

    invoke-static {v2}, Lcom/a/a/d/d;->a(Ljava/lang/reflect/Type;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public static final b(Ljava/lang/Object;)Ljava/lang/Byte;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    instance-of v1, p0, Ljava/lang/Number;

    if-eqz v1, :cond_2

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->byteValue()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    goto :goto_0

    :cond_2
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_3

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "null"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/a/a/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not cast to byte, value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/a/a/d;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final b(Ljava/lang/Object;Ljava/lang/Class;Lcom/a/a/b/m;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/a/a/b/m;",
            ")TT;"
        }
    .end annotation

    :try_start_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    goto :goto_0

    :cond_1
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_2

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v1

    array-length v2, v1

    if-ge v0, v2, :cond_2

    aget-object v0, v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/a/a/d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can not cast to : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/a/a/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    new-instance v0, Lcom/a/a/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not cast to : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/a/a/d;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static b(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/reflect/Field;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    array-length v2, p2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v0, p2, v1

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_2

    const-class v1, Ljava/lang/Object;

    if-eq v0, v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/a/a/d/d;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static b(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 1

    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/a/a/d/d;->b(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static final c(Ljava/lang/Object;)Ljava/lang/Character;
    .locals 3

    const/4 v1, 0x0

    if-nez p0, :cond_0

    move-object p0, v1

    :goto_0
    return-object p0

    :cond_0
    instance-of v0, p0, Ljava/lang/Character;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/lang/Character;

    goto :goto_0

    :cond_1
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_4

    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    move-object p0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    new-instance v0, Lcom/a/a/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not cast to byte, value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/a/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    goto :goto_0

    :cond_4
    new-instance v0, Lcom/a/a/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not cast to byte, value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/a/a/d;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static c(Ljava/lang/reflect/Type;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    check-cast p0, Ljava/lang/Class;

    :goto_0
    return-object p0

    :cond_0
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/a/a/d/d;->c(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    :cond_1
    instance-of v0, p0, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_2

    check-cast p0, Ljava/lang/reflect/TypeVariable;

    invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Class;

    move-object p0, v0

    goto :goto_0

    :cond_2
    const-class p0, Ljava/lang/Object;

    goto :goto_0
.end method

.method public static final d(Ljava/lang/Object;)Ljava/lang/Short;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    instance-of v1, p0, Ljava/lang/Number;

    if-eqz v1, :cond_2

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->shortValue()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    goto :goto_0

    :cond_2
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_3

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "null"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/a/a/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not cast to short, value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/a/a/d;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final e(Ljava/lang/Object;)Ljava/math/BigDecimal;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    move-object p0, v0

    :goto_0
    return-object p0

    :cond_0
    instance-of v1, p0, Ljava/math/BigDecimal;

    if-eqz v1, :cond_1

    check-cast p0, Ljava/math/BigDecimal;

    goto :goto_0

    :cond_1
    instance-of v1, p0, Ljava/math/BigInteger;

    if-eqz v1, :cond_2

    new-instance v0, Ljava/math/BigDecimal;

    check-cast p0, Ljava/math/BigInteger;

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    move-object p0, v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "null"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    move-object p0, v0

    goto :goto_0

    :cond_4
    new-instance p0, Ljava/math/BigDecimal;

    invoke-direct {p0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static final f(Ljava/lang/Object;)Ljava/math/BigInteger;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    move-object p0, v0

    :goto_0
    return-object p0

    :cond_0
    instance-of v1, p0, Ljava/math/BigInteger;

    if-eqz v1, :cond_1

    check-cast p0, Ljava/math/BigInteger;

    goto :goto_0

    :cond_1
    instance-of v1, p0, Ljava/lang/Float;

    if-nez v1, :cond_2

    instance-of v1, p0, Ljava/lang/Double;

    if-eqz v1, :cond_3

    :cond_2
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "null"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    move-object p0, v0

    goto :goto_0

    :cond_5
    new-instance p0, Ljava/math/BigInteger;

    invoke-direct {p0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static final g(Ljava/lang/Object;)Ljava/lang/Float;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    instance-of v1, p0, Ljava/lang/Number;

    if-eqz v1, :cond_2

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    :cond_2
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "null"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/a/a/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not cast to float, value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/a/a/d;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final h(Ljava/lang/Object;)Ljava/lang/Double;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    instance-of v1, p0, Ljava/lang/Number;

    if-eqz v1, :cond_2

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    :cond_2
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "null"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/a/a/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not cast to double, value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/a/a/d;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final i(Ljava/lang/Object;)Ljava/util/Date;
    .locals 4

    const/4 v2, 0x0

    if-nez p0, :cond_0

    move-object p0, v2

    :goto_0
    return-object p0

    :cond_0
    instance-of v0, p0, Ljava/util/Calendar;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/util/Calendar;

    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    goto :goto_0

    :cond_1
    instance-of v0, p0, Ljava/util/Date;

    if-eqz v0, :cond_2

    check-cast p0, Ljava/util/Date;

    goto :goto_0

    :cond_2
    const-wide/16 v0, -0x1

    instance-of v3, p0, Ljava/lang/Number;

    if-eqz v3, :cond_3

    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    :cond_3
    instance-of v3, p0, Ljava/lang/String;

    if-eqz v3, :cond_a

    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sget-object v2, Lcom/a/a/a;->d:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v1, v2, :cond_4

    sget-object v1, Lcom/a/a/a;->d:Ljava/lang/String;

    :goto_1
    new-instance v2, Ljava/text/SimpleDateFormat;

    sget-object v3, Lcom/a/a/a;->b:Ljava/util/Locale;

    invoke-direct {v2, v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sget-object v1, Lcom/a/a/a;->a:Ljava/util/TimeZone;

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    :try_start_0
    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_5

    const-string v1, "yyyy-MM-dd"

    goto :goto_1

    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v1, v2, :cond_6

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    goto :goto_1

    :cond_6
    const-string v1, "yyyy-MM-dd HH:mm:ss.SSS"

    goto :goto_1

    :catch_0
    move-exception v1

    new-instance v1, Lcom/a/a/d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can not cast to Date, value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/a/a/d;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "null"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_8
    move-object p0, v2

    goto/16 :goto_0

    :cond_9
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    :cond_a
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_b

    new-instance v0, Lcom/a/a/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not cast to Date, value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/a/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    new-instance p0, Ljava/util/Date;

    invoke-direct {p0, v0, v1}, Ljava/util/Date;-><init>(J)V

    goto/16 :goto_0
.end method

.method public static final j(Ljava/lang/Object;)Ljava/lang/Long;
    .locals 4

    const/4 v1, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_2

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_0

    :cond_2
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_3

    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "null"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v2, Lcom/a/a/b/e;

    invoke-direct {v2, v0}, Lcom/a/a/b/e;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/a/a/b/e;->b(Z)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v2}, Lcom/a/a/b/e;->m()Ljava/util/Calendar;

    move-result-object v0

    :goto_1
    invoke-virtual {v2}, Lcom/a/a/b/e;->b()V

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/a/a/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not cast to long, value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/a/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method

.method public static final k(Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    move-object p0, v0

    :goto_0
    return-object p0

    :cond_0
    instance-of v1, p0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    check-cast p0, Ljava/lang/Integer;

    goto :goto_0

    :cond_1
    instance-of v1, p0, Ljava/lang/Number;

    if-eqz v1, :cond_2

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_2
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_5

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "null"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    move-object p0, v0

    goto :goto_0

    :cond_4
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_5
    new-instance v0, Lcom/a/a/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not cast to int, value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/a/a/d;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final l(Ljava/lang/Object;)[B
    .locals 3

    instance-of v0, p0, [B

    if-eqz v0, :cond_0

    check-cast p0, [B

    check-cast p0, [B

    :goto_0
    return-object p0

    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/a/a/b/e;->a(Ljava/lang/String;)[B

    move-result-object p0

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/a/a/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not cast to int, value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/a/a/d;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final m(Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    if-nez p0, :cond_0

    move-object p0, v1

    :goto_0
    return-object p0

    :cond_0
    instance-of v2, p0, Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    check-cast p0, Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    instance-of v2, p0, Ljava/lang/Number;

    if-eqz v2, :cond_3

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_2

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_9

    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "null"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    move-object p0, v1

    goto :goto_0

    :cond_5
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_6
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_7
    const-string v1, "false"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_9
    new-instance v0, Lcom/a/a/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not cast to int, value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/a/a/d;-><init>(Ljava/lang/String;)V

    throw v0
.end method
