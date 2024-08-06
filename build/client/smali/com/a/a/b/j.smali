.class Lcom/a/a/b/j;
.super Lcom/a/a/b/a/d;


# instance fields
.field private final a:Ljava/lang/reflect/Type;

.field private d:Lcom/a/a/b/a/f;

.field private final e:Z


# direct methods
.method public constructor <init>(Lcom/a/a/b/m;Ljava/lang/Class;Lcom/a/a/d/a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/b/m;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/a/a/d/a;",
            ")V"
        }
    .end annotation

    const/4 v3, 0x0

    const/16 v0, 0xe

    invoke-direct {p0, p2, p3, v0}, Lcom/a/a/b/a/d;-><init>(Ljava/lang/Class;Lcom/a/a/d/a;I)V

    iget-object v0, p3, Lcom/a/a/d/a;->g:Ljava/lang/reflect/Type;

    iget-object v1, p3, Lcom/a/a/d/a;->f:Ljava/lang/Class;

    instance-of v2, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    aget-object v0, v0, v3

    iput-object v0, p0, Lcom/a/a/b/j;->a:Ljava/lang/reflect/Type;

    iput-boolean v3, p0, Lcom/a/a/b/j;->e:Z

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/b/j;->a:Ljava/lang/reflect/Type;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/a/b/j;->e:Z

    goto :goto_0

    :cond_1
    const-class v0, Ljava/lang/Object;

    iput-object v0, p0, Lcom/a/a/b/j;->a:Ljava/lang/reflect/Type;

    iput-boolean v3, p0, Lcom/a/a/b/j;->e:Z

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/a/a/b/b;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/b/b;",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p1, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    iget v0, v0, Lcom/a/a/b/e;->a:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p2, v2}, Lcom/a/a/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p1, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    invoke-virtual {v0}, Lcom/a/a/b/e;->f()V

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/a/a/b/j;->e:Z

    if-eqz v0, :cond_2

    new-instance v0, Lcom/a/a/b;

    invoke-direct {v0}, Lcom/a/a/b;-><init>()V

    iget-object v1, p0, Lcom/a/a/b/j;->a:Ljava/lang/reflect/Type;

    invoke-virtual {v0, v1}, Lcom/a/a/b;->a(Ljava/lang/reflect/Type;)V

    move-object v1, v0

    move-object v2, v0

    :goto_1
    iget-object v0, p1, Lcom/a/a/b/b;->d:Lcom/a/a/b/l;

    iget-object v3, p0, Lcom/a/a/b/j;->b:Lcom/a/a/d/a;

    iget-object v3, v3, Lcom/a/a/d/a;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, p2, v3}, Lcom/a/a/b/b;->a(Lcom/a/a/b/l;Ljava/lang/Object;Ljava/lang/Object;)Lcom/a/a/b/l;

    invoke-virtual {p0, p1, p3, v1}, Lcom/a/a/b/j;->a(Lcom/a/a/b/b;Ljava/lang/reflect/Type;Ljava/util/Collection;)V

    invoke-virtual {p1, v0}, Lcom/a/a/b/b;->a(Lcom/a/a/b/l;)V

    iget-boolean v0, p0, Lcom/a/a/b/j;->e:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/a/a/b/j;->a:Ljava/lang/reflect/Type;

    check-cast v0, Ljava/lang/Class;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/a/a/b;->c(Ljava/lang/Object;)V

    :cond_1
    if-nez p2, :cond_3

    iget-object v0, p0, Lcom/a/a/b/j;->b:Lcom/a/a/d/a;

    iget-object v0, v0, Lcom/a/a/d/a;->a:Ljava/lang/String;

    invoke-interface {p4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v0

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p2, v1}, Lcom/a/a/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method final a(Lcom/a/a/b/b;Ljava/lang/reflect/Type;Ljava/util/Collection;)V
    .locals 12

    iget-object v1, p0, Lcom/a/a/b/j;->a:Ljava/lang/reflect/Type;

    iget-object v5, p0, Lcom/a/a/b/j;->d:Lcom/a/a/b/a/f;

    instance-of v0, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_0

    instance-of v0, v1, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_3

    move-object v0, v1

    check-cast v0, Ljava/lang/reflect/TypeVariable;

    move-object v2, p2

    check-cast v2, Ljava/lang/reflect/ParameterizedType;

    const/4 v3, 0x0

    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/Class;

    if-eqz v4, :cond_1d

    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    move-object v6, v3

    :goto_0
    const/4 v4, -0x1

    if-eqz v6, :cond_1c

    const/4 v3, 0x0

    invoke-virtual {v6}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v7

    array-length v7, v7

    :goto_1
    if-ge v3, v7, :cond_1c

    invoke-virtual {v6}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v8

    aget-object v8, v8, v3

    invoke-interface {v8}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    move v0, v3

    :goto_2
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1b

    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    aget-object v1, v1, v0

    iget-object v0, p0, Lcom/a/a/b/j;->a:Ljava/lang/reflect/Type;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p1, Lcom/a/a/b/b;->b:Lcom/a/a/b/m;

    invoke-virtual {v0, v1}, Lcom/a/a/b/m;->a(Ljava/lang/reflect/Type;)Lcom/a/a/b/a/f;

    move-result-object v0

    :goto_3
    move-object v5, v0

    :cond_0
    :goto_4
    iget-object v3, p1, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    iget v0, v3, Lcom/a/a/b/e;->a:I

    const/16 v2, 0xe

    if-eq v0, v2, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "exepct \'[\', but "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v3, Lcom/a/a/b/e;->a:I

    invoke-static {v1}, Lcom/a/a/b/f;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    new-instance v1, Lcom/a/a/d;

    invoke-direct {v1, v0}, Lcom/a/a/d;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    instance-of v0, v1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v8

    array-length v2, v8

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    aget-object v2, v8, v2

    instance-of v2, v2, Ljava/lang/reflect/TypeVariable;

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    aget-object v2, v8, v2

    check-cast v2, Ljava/lang/reflect/TypeVariable;

    move-object v3, p2

    check-cast v3, Ljava/lang/reflect/ParameterizedType;

    const/4 v4, 0x0

    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v6

    instance-of v6, v6, Ljava/lang/Class;

    if-eqz v6, :cond_1a

    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    move-object v7, v4

    :goto_5
    const/4 v6, -0x1

    if-eqz v7, :cond_19

    const/4 v4, 0x0

    invoke-virtual {v7}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v9

    array-length v9, v9

    :goto_6
    if-ge v4, v9, :cond_19

    invoke-virtual {v7}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v10

    aget-object v10, v10, v4

    invoke-interface {v10}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    move v2, v4

    :goto_7
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    const/4 v1, 0x0

    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    aget-object v2, v3, v2

    aput-object v2, v8, v1

    new-instance v1, Lcom/a/a/d/c;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-direct {v1, v8, v2, v0}, Lcom/a/a/d/c;-><init>([Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    goto/16 :goto_4

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_5
    if-nez v5, :cond_6

    iget-object v0, p1, Lcom/a/a/b/b;->b:Lcom/a/a/b/m;

    invoke-virtual {v0, v1}, Lcom/a/a/b/m;->a(Ljava/lang/reflect/Type;)Lcom/a/a/b/a/f;

    move-result-object v5

    iput-object v5, p0, Lcom/a/a/b/j;->d:Lcom/a/a/b/a/f;

    :cond_6
    iget-char v0, v3, Lcom/a/a/b/e;->d:C

    const/16 v2, 0x5b

    if-ne v0, v2, :cond_8

    iget v0, v3, Lcom/a/a/b/e;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v3, Lcom/a/a/b/e;->e:I

    iget v2, v3, Lcom/a/a/b/e;->p:I

    if-lt v0, v2, :cond_7

    const/16 v0, 0x1a

    :goto_8
    iput-char v0, v3, Lcom/a/a/b/e;->d:C

    const/16 v0, 0xe

    iput v0, v3, Lcom/a/a/b/e;->a:I

    :goto_9
    const/4 v0, 0x0

    :goto_a
    iget v2, v3, Lcom/a/a/b/e;->a:I

    const/16 v4, 0x10

    if-ne v2, v4, :cond_e

    iget v2, v3, Lcom/a/a/b/e;->c:I

    sget-object v4, Lcom/a/a/b/d;->g:Lcom/a/a/b/d;

    iget v4, v4, Lcom/a/a/b/d;->q:I

    and-int/2addr v2, v4

    if-eqz v2, :cond_e

    invoke-virtual {v3}, Lcom/a/a/b/e;->f()V

    goto :goto_a

    :cond_7
    iget-object v2, v3, Lcom/a/a/b/e;->o:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_8

    :cond_8
    const/16 v2, 0x7b

    if-ne v0, v2, :cond_a

    iget v0, v3, Lcom/a/a/b/e;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v3, Lcom/a/a/b/e;->e:I

    iget v2, v3, Lcom/a/a/b/e;->p:I

    if-lt v0, v2, :cond_9

    const/16 v0, 0x1a

    :goto_b
    iput-char v0, v3, Lcom/a/a/b/e;->d:C

    const/16 v0, 0xc

    iput v0, v3, Lcom/a/a/b/e;->a:I

    goto :goto_9

    :cond_9
    iget-object v2, v3, Lcom/a/a/b/e;->o:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_b

    :cond_a
    const/16 v2, 0x22

    if-ne v0, v2, :cond_b

    invoke-virtual {v3}, Lcom/a/a/b/e;->l()V

    goto :goto_9

    :cond_b
    const/16 v2, 0x5d

    if-ne v0, v2, :cond_d

    iget v0, v3, Lcom/a/a/b/e;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v3, Lcom/a/a/b/e;->e:I

    iget v2, v3, Lcom/a/a/b/e;->p:I

    if-lt v0, v2, :cond_c

    const/16 v0, 0x1a

    :goto_c
    iput-char v0, v3, Lcom/a/a/b/e;->d:C

    const/16 v0, 0xf

    iput v0, v3, Lcom/a/a/b/e;->a:I

    goto :goto_9

    :cond_c
    iget-object v2, v3, Lcom/a/a/b/e;->o:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_c

    :cond_d
    invoke-virtual {v3}, Lcom/a/a/b/e;->f()V

    goto :goto_9

    :cond_e
    iget v2, v3, Lcom/a/a/b/e;->a:I

    const/16 v4, 0xf

    if-ne v2, v4, :cond_f

    iget-char v0, v3, Lcom/a/a/b/e;->d:C

    const/16 v1, 0x2c

    if-ne v0, v1, :cond_18

    iget v0, v3, Lcom/a/a/b/e;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v3, Lcom/a/a/b/e;->e:I

    iget v1, v3, Lcom/a/a/b/e;->p:I

    if-lt v0, v1, :cond_17

    const/16 v0, 0x1a

    :goto_d
    iput-char v0, v3, Lcom/a/a/b/e;->d:C

    const/16 v0, 0x10

    iput v0, v3, Lcom/a/a/b/e;->a:I

    :goto_e
    return-void

    :cond_f
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v5, p1, v1, v2}, Lcom/a/a/b/a/f;->a(Lcom/a/a/b/b;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget v2, p1, Lcom/a/a/b/b;->e:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_10

    invoke-virtual {p1, p3}, Lcom/a/a/b/b;->a(Ljava/util/Collection;)V

    :cond_10
    iget v2, v3, Lcom/a/a/b/e;->a:I

    const/16 v4, 0x10

    if-ne v2, v4, :cond_11

    iget-char v2, v3, Lcom/a/a/b/e;->d:C

    const/16 v4, 0x5b

    if-ne v2, v4, :cond_13

    iget v2, v3, Lcom/a/a/b/e;->e:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v3, Lcom/a/a/b/e;->e:I

    iget v4, v3, Lcom/a/a/b/e;->p:I

    if-lt v2, v4, :cond_12

    const/16 v2, 0x1a

    :goto_f
    iput-char v2, v3, Lcom/a/a/b/e;->d:C

    const/16 v2, 0xe

    iput v2, v3, Lcom/a/a/b/e;->a:I

    :cond_11
    :goto_10
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_a

    :cond_12
    iget-object v4, v3, Lcom/a/a/b/e;->o:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    goto :goto_f

    :cond_13
    const/16 v4, 0x7b

    if-ne v2, v4, :cond_15

    iget v2, v3, Lcom/a/a/b/e;->e:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v3, Lcom/a/a/b/e;->e:I

    iget v4, v3, Lcom/a/a/b/e;->p:I

    if-lt v2, v4, :cond_14

    const/16 v2, 0x1a

    :goto_11
    iput-char v2, v3, Lcom/a/a/b/e;->d:C

    const/16 v2, 0xc

    iput v2, v3, Lcom/a/a/b/e;->a:I

    goto :goto_10

    :cond_14
    iget-object v4, v3, Lcom/a/a/b/e;->o:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    goto :goto_11

    :cond_15
    const/16 v4, 0x22

    if-ne v2, v4, :cond_16

    invoke-virtual {v3}, Lcom/a/a/b/e;->l()V

    goto :goto_10

    :cond_16
    invoke-virtual {v3}, Lcom/a/a/b/e;->f()V

    goto :goto_10

    :cond_17
    iget-object v1, v3, Lcom/a/a/b/e;->o:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_d

    :cond_18
    invoke-virtual {v3}, Lcom/a/a/b/e;->f()V

    goto :goto_e

    :cond_19
    move v2, v6

    goto/16 :goto_7

    :cond_1a
    move-object v7, v4

    goto/16 :goto_5

    :cond_1b
    move-object v0, v5

    goto/16 :goto_3

    :cond_1c
    move v0, v4

    goto/16 :goto_2

    :cond_1d
    move-object v6, v3

    goto/16 :goto_0
.end method
