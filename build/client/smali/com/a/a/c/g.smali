.class public Lcom/a/a/c/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/a/b/a/f;
.implements Lcom/a/a/c/t;


# static fields
.field public static final a:Lcom/a/a/c/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/a/a/c/g;

    invoke-direct {v0}, Lcom/a/a/c/g;-><init>()V

    sput-object v0, Lcom/a/a/c/g;->a:Lcom/a/a/c/g;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/a/a/b/b;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
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

    const/4 v3, 0x0

    const/4 v5, 0x0

    iget-object v1, p1, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    invoke-virtual {v1}, Lcom/a/a/b/e;->a()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    iget-object v1, p1, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lcom/a/a/b/e;->b(I)V

    move-object v2, v3

    :goto_0
    return-object v2

    :cond_0
    const-class v1, Lcom/a/a/b;

    if-ne p2, v1, :cond_1

    new-instance v2, Lcom/a/a/b;

    invoke-direct {v2}, Lcom/a/a/b;-><init>()V

    invoke-virtual {p1, v2}, Lcom/a/a/b/b;->b(Ljava/util/Collection;)V

    goto :goto_0

    :cond_1
    move-object v1, p2

    :goto_1
    instance-of v2, v1, Ljava/lang/Class;

    if-eqz v2, :cond_4

    check-cast v1, Ljava/lang/Class;

    const-class v2, Ljava/util/AbstractCollection;

    if-eq v1, v2, :cond_2

    const-class v2, Ljava/util/Collection;

    if-ne v1, v2, :cond_6

    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v1

    :goto_2
    nop

    instance-of v1, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_d

    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    aget-object v1, v1, v5

    :cond_3
    :goto_3
    invoke-virtual {p1, v1, v2, p3}, Lcom/a/a/b/b;->a(Ljava/lang/reflect/Type;Ljava/util/Collection;Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    instance-of v2, v1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_5

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v1

    goto :goto_1

    :cond_5
    new-instance v1, Lcom/a/a/d;

    const-string v2, "TODO"

    invoke-direct {v1, v2}, Lcom/a/a/d;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    const-class v2, Ljava/util/HashSet;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    move-object v2, v1

    goto :goto_2

    :cond_7
    const-class v2, Ljava/util/LinkedHashSet;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_8

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    move-object v2, v1

    goto :goto_2

    :cond_8
    const-class v2, Ljava/util/TreeSet;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_9

    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    move-object v2, v1

    goto :goto_2

    :cond_9
    const-class v2, Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_a

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v1

    goto :goto_2

    :cond_a
    const-class v2, Ljava/util/EnumSet;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_c

    instance-of v1, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_b

    move-object v1, p2

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    aget-object v1, v1, v5

    :goto_4
    check-cast v1, Ljava/lang/Class;

    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    move-object v2, v1

    goto :goto_2

    :cond_b
    const-class v1, Ljava/lang/Object;

    goto :goto_4

    :cond_c
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/util/Collection;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v1

    goto/16 :goto_2

    :catch_0
    move-exception v2

    new-instance v2, Lcom/a/a/d;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "create instane error, class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/a/a/d;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_d
    instance-of v1, p2, Ljava/lang/Class;

    if-eqz v1, :cond_e

    check-cast p2, Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "java."

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    invoke-virtual {p2}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v1

    instance-of v4, v1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v4, :cond_e

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    aget-object v3, v1, v5

    move-object v1, v3

    :goto_5
    if-nez v1, :cond_3

    const-class v1, Ljava/lang/Object;

    goto/16 :goto_3

    :cond_e
    move-object v1, v3

    goto :goto_5
.end method

.method public a(Lcom/a/a/c/m;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 10

    const/4 v2, 0x0

    iget-object v4, p1, Lcom/a/a/c/m;->b:Lcom/a/a/c/z;

    if-nez p2, :cond_1

    iget v0, v4, Lcom/a/a/c/z;->c:I

    sget-object v1, Lcom/a/a/c/aa;->f:Lcom/a/a/c/aa;

    iget v1, v1, Lcom/a/a/c/aa;->x:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const-string v0, "[]"

    invoke-virtual {v4, v0}, Lcom/a/a/c/z;->write(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v4}, Lcom/a/a/c/z;->a()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iget v1, v4, Lcom/a/a/c/z;->c:I

    sget-object v3, Lcom/a/a/c/aa;->n:Lcom/a/a/c/aa;

    iget v3, v3, Lcom/a/a/c/aa;->x:I

    and-int/2addr v1, v3

    if-eqz v1, :cond_a

    instance-of v1, p4, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_a

    check-cast p4, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p4}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    aget-object v0, v0, v2

    move-object v1, v0

    :goto_1
    move-object v0, p2

    check-cast v0, Ljava/util/Collection;

    iget-object v5, p1, Lcom/a/a/c/m;->j:Lcom/a/a/c/w;

    invoke-virtual {p1, v5, p2, p3, v2}, Lcom/a/a/c/m;->a(Lcom/a/a/c/w;Ljava/lang/Object;Ljava/lang/Object;I)V

    iget v3, v4, Lcom/a/a/c/z;->c:I

    sget-object v6, Lcom/a/a/c/aa;->n:Lcom/a/a/c/aa;

    iget v6, v6, Lcom/a/a/c/aa;->x:I

    and-int/2addr v3, v6

    if-eqz v3, :cond_2

    const-class v3, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    if-ne v3, v6, :cond_4

    const-string v3, "Set"

    invoke-virtual {v4, v3}, Lcom/a/a/c/z;->a(Ljava/lang/CharSequence;)Lcom/a/a/c/z;

    :cond_2
    :goto_2
    const/16 v3, 0x5b

    :try_start_0
    invoke-virtual {v4, v3}, Lcom/a/a/c/z;->write(I)V

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v3, v2, 0x1

    if-eqz v2, :cond_3

    const/16 v2, 0x2c

    invoke-virtual {v4, v2}, Lcom/a/a/c/z;->write(I)V

    :cond_3
    if-nez v0, :cond_5

    invoke-virtual {v4}, Lcom/a/a/c/z;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    goto :goto_3

    :cond_4
    const-class v3, Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    if-ne v3, v6, :cond_2

    const-string v3, "TreeSet"

    invoke-virtual {v4, v3}, Lcom/a/a/c/z;->a(Ljava/lang/CharSequence;)Lcom/a/a/c/z;

    goto :goto_2

    :cond_5
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v7, Ljava/lang/Integer;

    if-ne v2, v7, :cond_6

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/a/a/c/z;->b(I)V

    move v2, v3

    goto :goto_3

    :cond_6
    const-class v7, Ljava/lang/Long;

    if-ne v2, v7, :cond_7

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Lcom/a/a/c/z;->a(J)V

    iget v0, v4, Lcom/a/a/c/z;->c:I

    sget-object v2, Lcom/a/a/c/aa;->n:Lcom/a/a/c/aa;

    iget v2, v2, Lcom/a/a/c/aa;->x:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_9

    const/16 v0, 0x4c

    invoke-virtual {v4, v0}, Lcom/a/a/c/z;->write(I)V

    move v2, v3

    goto :goto_3

    :cond_7
    iget-object v7, p1, Lcom/a/a/c/m;->a:Lcom/a/a/c/x;

    invoke-virtual {v7, v2}, Lcom/a/a/c/x;->a(Ljava/lang/Class;)Lcom/a/a/c/t;

    move-result-object v2

    add-int/lit8 v7, v3, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, p1, v0, v7, v1}, Lcom/a/a/c/t;->a(Lcom/a/a/c/m;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V

    move v2, v3

    goto :goto_3

    :cond_8
    const/16 v0, 0x5d

    invoke-virtual {v4, v0}, Lcom/a/a/c/z;->write(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-object v5, p1, Lcom/a/a/c/m;->j:Lcom/a/a/c/w;

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    iput-object v5, p1, Lcom/a/a/c/m;->j:Lcom/a/a/c/w;

    throw v0

    :cond_9
    move v2, v3

    goto :goto_3

    :cond_a
    move-object v1, v0

    goto/16 :goto_1
.end method
