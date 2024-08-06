.class public final Lcom/a/a/c/p;
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
.method public a(Lcom/a/a/c/m;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 12

    iget-object v8, p1, Lcom/a/a/c/m;->b:Lcom/a/a/c/z;

    if-nez p2, :cond_0

    invoke-virtual {v8}, Lcom/a/a/c/z;->a()V

    :goto_0
    return-void

    :cond_0
    move-object v1, p2

    check-cast v1, Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/a/a/e;

    if-eq v2, v3, :cond_1

    const-class v3, Ljava/util/HashMap;

    if-eq v2, v3, :cond_1

    const-class v3, Ljava/util/LinkedHashMap;

    if-ne v2, v3, :cond_2

    :cond_1
    const-string v2, "@type"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    iget v3, v8, Lcom/a/a/c/z;->c:I

    sget-object v4, Lcom/a/a/c/aa;->k:Lcom/a/a/c/aa;

    iget v4, v4, Lcom/a/a/c/aa;->x:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_11

    instance-of v3, v1, Ljava/util/SortedMap;

    if-nez v3, :cond_11

    instance-of v3, v1, Ljava/util/LinkedHashMap;

    if-nez v3, :cond_11

    :try_start_0
    new-instance v3, Ljava/util/TreeMap;

    invoke-direct {v3, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    iget-object v1, p1, Lcom/a/a/c/m;->i:Ljava/util/IdentityHashMap;

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/a/a/c/m;->i:Ljava/util/IdentityHashMap;

    invoke-virtual {v1, p2}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1, p2}, Lcom/a/a/c/m;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :catch_0
    move-exception v3

    move-object v3, v1

    goto :goto_2

    :cond_3
    iget-object v9, p1, Lcom/a/a/c/m;->j:Lcom/a/a/c/w;

    const/4 v1, 0x0

    invoke-virtual {p1, v9, p2, p3, v1}, Lcom/a/a/c/m;->a(Lcom/a/a/c/w;Ljava/lang/Object;Ljava/lang/Object;I)V

    const/16 v1, 0x7b

    :try_start_1
    invoke-virtual {v8, v1}, Lcom/a/a/c/z;->write(I)V

    invoke-virtual {p1}, Lcom/a/a/c/m;->c()V

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x1

    iget v6, v8, Lcom/a/a/c/z;->c:I

    sget-object v7, Lcom/a/a/c/aa;->n:Lcom/a/a/c/aa;

    iget v7, v7, Lcom/a/a/c/aa;->x:I

    and-int/2addr v6, v7

    if-eqz v6, :cond_4

    if-nez v2, :cond_4

    iget-object v1, p1, Lcom/a/a/c/m;->a:Lcom/a/a/c/x;

    iget-object v1, v1, Lcom/a/a/c/x;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v8, v1, v2}, Lcom/a/a/c/z;->a(Ljava/lang/String;Z)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/a/a/c/z;->a(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_4
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v6, v1

    :cond_5
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Lcom/a/a/c/m;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p1, p2, v1, v7}, Lcom/a/a/c/m;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p1, p2, v1, v7}, Lcom/a/a/c/m;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, p2, v2, v7}, Lcom/a/a/c/m;->a(Lcom/a/a/c/m;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    if-nez v11, :cond_6

    iget v1, v8, Lcom/a/a/c/z;->c:I

    sget-object v7, Lcom/a/a/c/aa;->c:Lcom/a/a/c/aa;

    iget v7, v7, Lcom/a/a/c/aa;->x:I

    and-int/2addr v1, v7

    if-eqz v1, :cond_5

    :cond_6
    instance-of v1, v2, Ljava/lang/String;

    if-eqz v1, :cond_9

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    if-nez v6, :cond_7

    const/16 v6, 0x2c

    invoke-virtual {v8, v6}, Lcom/a/a/c/z;->write(I)V

    :cond_7
    iget v6, v8, Lcom/a/a/c/z;->c:I

    sget-object v7, Lcom/a/a/c/aa;->m:Lcom/a/a/c/aa;

    iget v7, v7, Lcom/a/a/c/aa;->x:I

    and-int/2addr v6, v7

    if-eqz v6, :cond_8

    invoke-virtual {p1}, Lcom/a/a/c/m;->e()V

    :cond_8
    const/4 v6, 0x1

    invoke-virtual {v8, v1, v6}, Lcom/a/a/c/z;->a(Ljava/lang/String;Z)V

    :goto_4
    const/4 v7, 0x0

    if-nez v11, :cond_d

    invoke-virtual {v8}, Lcom/a/a/c/z;->a()V

    move v6, v7

    goto :goto_3

    :cond_9
    if-nez v6, :cond_a

    const/16 v1, 0x2c

    invoke-virtual {v8, v1}, Lcom/a/a/c/z;->write(I)V

    :cond_a
    iget v1, v8, Lcom/a/a/c/z;->c:I

    sget-object v6, Lcom/a/a/c/aa;->q:Lcom/a/a/c/aa;

    iget v6, v6, Lcom/a/a/c/aa;->x:I

    and-int/2addr v1, v6

    if-nez v1, :cond_b

    iget v1, v8, Lcom/a/a/c/z;->c:I

    sget-object v6, Lcom/a/a/c/aa;->v:Lcom/a/a/c/aa;

    iget v6, v6, Lcom/a/a/c/aa;->x:I

    and-int/2addr v1, v6

    if-eqz v1, :cond_c

    :cond_b
    invoke-static {v2}, Lcom/a/a/a;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/a/a/c/m;->b(Ljava/lang/String;)V

    :goto_5
    const/16 v1, 0x3a

    invoke-virtual {v8, v1}, Lcom/a/a/c/z;->write(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v1

    iput-object v9, p1, Lcom/a/a/c/m;->j:Lcom/a/a/c/w;

    throw v1

    :cond_c
    :try_start_2
    invoke-virtual {p1, v2}, Lcom/a/a/c/m;->b(Ljava/lang/Object;)V

    goto :goto_5

    :cond_d
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    if-ne v6, v5, :cond_e

    const/4 v1, 0x0

    invoke-interface {v4, p1, v11, v2, v1}, Lcom/a/a/c/t;->a(Lcom/a/a/c/m;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V

    move-object v1, v4

    move-object v2, v5

    :goto_6
    move v6, v7

    move-object v4, v1

    move-object v5, v2

    goto/16 :goto_3

    :cond_e
    iget-object v1, p1, Lcom/a/a/c/m;->a:Lcom/a/a/c/x;

    invoke-virtual {v1, v6}, Lcom/a/a/c/x;->a(Ljava/lang/Class;)Lcom/a/a/c/t;

    move-result-object v1

    const/4 v4, 0x0

    invoke-interface {v1, p1, v11, v2, v4}, Lcom/a/a/c/t;->a(Lcom/a/a/c/m;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v2, v6

    goto :goto_6

    :cond_f
    iput-object v9, p1, Lcom/a/a/c/m;->j:Lcom/a/a/c/w;

    invoke-virtual {p1}, Lcom/a/a/c/m;->d()V

    iget v1, v8, Lcom/a/a/c/z;->c:I

    sget-object v2, Lcom/a/a/c/aa;->m:Lcom/a/a/c/aa;

    iget v2, v2, Lcom/a/a/c/aa;->x:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_10

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_10

    invoke-virtual {p1}, Lcom/a/a/c/m;->e()V

    :cond_10
    const/16 v1, 0x7d

    invoke-virtual {v8, v1}, Lcom/a/a/c/z;->write(I)V

    goto/16 :goto_0

    :cond_11
    move-object v3, v1

    goto/16 :goto_2
.end method
