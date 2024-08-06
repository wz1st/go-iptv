.class public final Lcom/a/a/c/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/a/b/a/f;
.implements Lcom/a/a/c/t;


# static fields
.field public static final a:Lcom/a/a/c/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/a/a/c/b;

    invoke-direct {v0}, Lcom/a/a/c/b;-><init>()V

    sput-object v0, Lcom/a/a/c/b;->a:Lcom/a/a/c/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/a/a/b/b;Ljava/lang/Class;Lcom/a/a/b;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/a/a/b/b;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/a/a/b;",
            ")TT;"
        }
    .end annotation

    if-nez p3, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p3}, Lcom/a/a/b;->size()I

    move-result v3

    invoke-static {p2, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v3, :cond_4

    invoke-virtual {p3, v2}, Lcom/a/a/b;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p3, :cond_1

    invoke-static {v1, v2, v1}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_3
    invoke-static {v1, v2, v0}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_2

    :cond_2
    check-cast v0, Lcom/a/a/b;

    invoke-direct {p0, p1, p2, v0}, Lcom/a/a/c/b;->a(Lcom/a/a/b/b;Ljava/lang/Class;Lcom/a/a/b;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_3

    :cond_3
    iget-object v4, p1, Lcom/a/a/b/b;->b:Lcom/a/a/b/m;

    invoke-static {v0, p2, v4}, Lcom/a/a/d/d;->a(Ljava/lang/Object;Ljava/lang/Class;Lcom/a/a/b/m;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_3

    :cond_4
    invoke-virtual {p3, v1}, Lcom/a/a/b;->c(Ljava/lang/Object;)V

    invoke-virtual {p3, p2}, Lcom/a/a/b;->a(Ljava/lang/reflect/Type;)V

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/a/a/b/b;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
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

    const/4 v4, 0x4

    const/16 v3, 0x10

    iget-object v1, p1, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    invoke-virtual {v1}, Lcom/a/a/b/e;->a()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    invoke-virtual {v1, v3}, Lcom/a/a/b/e;->b(I)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-class v2, [C

    if-ne p2, v2, :cond_3

    if-ne v0, v4, :cond_1

    invoke-virtual {v1}, Lcom/a/a/b/e;->p()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3}, Lcom/a/a/b/e;->b(I)V

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    invoke-virtual {v1}, Lcom/a/a/b/e;->i()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v1, v3}, Lcom/a/a/b/e;->b(I)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/a/a/b/b;->e()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/a/a/a;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    goto :goto_0

    :cond_3
    if-ne v0, v4, :cond_4

    invoke-virtual {v1}, Lcom/a/a/b/e;->o()[B

    move-result-object v0

    invoke-virtual {v1, v3}, Lcom/a/a/b/e;->b(I)V

    goto :goto_0

    :cond_4
    check-cast p2, Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Lcom/a/a/b;

    invoke-direct {v1}, Lcom/a/a/b;-><init>()V

    invoke-virtual {p1, v0, v1, p3}, Lcom/a/a/b/b;->a(Ljava/lang/reflect/Type;Ljava/util/Collection;Ljava/lang/Object;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/a/a/c/b;->a(Lcom/a/a/b/b;Ljava/lang/Class;Lcom/a/a/b;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Lcom/a/a/c/m;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 10

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p1, Lcom/a/a/c/m;->b:Lcom/a/a/c/z;

    move-object v0, p2

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    if-nez p2, :cond_1

    iget v0, v5, Lcom/a/a/c/z;->c:I

    sget-object v1, Lcom/a/a/c/aa;->f:Lcom/a/a/c/aa;

    iget v1, v1, Lcom/a/a/c/aa;->x:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const-string v0, "[]"

    invoke-virtual {v5, v0}, Lcom/a/a/c/z;->write(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v5}, Lcom/a/a/c/z;->a()V

    goto :goto_0

    :cond_1
    array-length v1, v0

    add-int/lit8 v6, v1, -0x1

    const/4 v2, -0x1

    if-ne v6, v2, :cond_2

    const-string v0, "[]"

    invoke-virtual {v5, v0}, Lcom/a/a/c/z;->a(Ljava/lang/CharSequence;)Lcom/a/a/c/z;

    goto :goto_0

    :cond_2
    iget-object v7, p1, Lcom/a/a/c/m;->j:Lcom/a/a/c/w;

    invoke-virtual {p1, v7, p2, p3, v3}, Lcom/a/a/c/m;->a(Lcom/a/a/c/w;Ljava/lang/Object;Ljava/lang/Object;I)V

    const/16 v2, 0x5b

    :try_start_0
    invoke-virtual {v5, v2}, Lcom/a/a/c/z;->write(I)V

    iget v2, v5, Lcom/a/a/c/z;->c:I

    sget-object v8, Lcom/a/a/c/aa;->m:Lcom/a/a/c/aa;

    iget v8, v8, Lcom/a/a/c/aa;->x:I

    and-int/2addr v2, v8

    if-eqz v2, :cond_5

    invoke-virtual {p1}, Lcom/a/a/c/m;->c()V

    invoke-virtual {p1}, Lcom/a/a/c/m;->e()V

    :goto_1
    if-ge v3, v1, :cond_4

    if-eqz v3, :cond_3

    const/16 v2, 0x2c

    invoke-virtual {v5, v2}, Lcom/a/a/c/z;->write(I)V

    invoke-virtual {p1}, Lcom/a/a/c/m;->e()V

    :cond_3
    aget-object v2, v0, v3

    invoke-virtual {p1, v2}, Lcom/a/a/c/m;->b(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lcom/a/a/c/m;->d()V

    invoke-virtual {p1}, Lcom/a/a/c/m;->e()V

    const/16 v0, 0x5d

    invoke-virtual {v5, v0}, Lcom/a/a/c/z;->write(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v7, p1, Lcom/a/a/c/m;->j:Lcom/a/a/c/w;

    goto :goto_0

    :cond_5
    move-object v1, v4

    move-object v2, v4

    :goto_2
    if-ge v3, v6, :cond_9

    :try_start_1
    aget-object v8, v0, v3

    if-nez v8, :cond_6

    const-string v4, "null,"

    invoke-virtual {v5, v4}, Lcom/a/a/c/z;->a(Ljava/lang/CharSequence;)Lcom/a/a/c/z;

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    iget-object v4, p1, Lcom/a/a/c/m;->i:Ljava/util/IdentityHashMap;

    if-eqz v4, :cond_7

    iget-object v4, p1, Lcom/a/a/c/m;->i:Ljava/util/IdentityHashMap;

    invoke-virtual {v4, v8}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {p1, v8}, Lcom/a/a/c/m;->a(Ljava/lang/Object;)V

    :goto_4
    const/16 v4, 0x2c

    invoke-virtual {v5, v4}, Lcom/a/a/c/z;->write(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    iput-object v7, p1, Lcom/a/a/c/m;->j:Lcom/a/a/c/w;

    throw v0

    :cond_7
    :try_start_2
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-ne v4, v2, :cond_8

    const/4 v4, 0x0

    const/4 v9, 0x0

    invoke-interface {v1, p1, v8, v4, v9}, Lcom/a/a/c/t;->a(Lcom/a/a/c/m;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V

    goto :goto_4

    :cond_8
    iget-object v1, p1, Lcom/a/a/c/m;->a:Lcom/a/a/c/x;

    invoke-virtual {v1, v4}, Lcom/a/a/c/x;->a(Ljava/lang/Class;)Lcom/a/a/c/t;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v9, 0x0

    invoke-interface {v1, p1, v8, v2, v9}, Lcom/a/a/c/t;->a(Lcom/a/a/c/m;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V

    move-object v2, v4

    goto :goto_4

    :cond_9
    aget-object v0, v0, v6

    if-nez v0, :cond_a

    const-string v0, "null]"

    invoke-virtual {v5, v0}, Lcom/a/a/c/z;->a(Ljava/lang/CharSequence;)Lcom/a/a/c/z;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_5
    iput-object v7, p1, Lcom/a/a/c/m;->j:Lcom/a/a/c/w;

    goto/16 :goto_0

    :cond_a
    :try_start_3
    iget-object v1, p1, Lcom/a/a/c/m;->i:Ljava/util/IdentityHashMap;

    if-eqz v1, :cond_b

    iget-object v1, p1, Lcom/a/a/c/m;->i:Ljava/util/IdentityHashMap;

    invoke-virtual {v1, v0}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {p1, v0}, Lcom/a/a/c/m;->a(Ljava/lang/Object;)V

    :goto_6
    const/16 v0, 0x5d

    invoke-virtual {v5, v0}, Lcom/a/a/c/z;->write(I)V

    goto :goto_5

    :cond_b
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/a/a/c/m;->a(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_6
.end method
