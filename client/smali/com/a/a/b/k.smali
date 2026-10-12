.class Lcom/a/a/b/k;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/a/b/a/f;


# static fields
.field public static a:Lcom/a/a/b/k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/a/a/b/k;

    invoke-direct {v0}, Lcom/a/a/b/k;-><init>()V

    sput-object v0, Lcom/a/a/b/k;->a:Lcom/a/a/b/k;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/a/a/b/b;Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/b/b;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v10, 0x1

    const/4 v9, 0x4

    const/16 v8, 0xd

    const/16 v7, 0x10

    iget-object v2, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    iget v0, v2, Lcom/a/a/b/e;->a:I

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    if-eq v0, v7, :cond_0

    new-instance v1, Lcom/a/a/d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "syntax error, expect {, actual "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/a/a/b/f;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/a/a/d;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v0, p0, Lcom/a/a/b/b;->b:Lcom/a/a/b/m;

    invoke-virtual {v0, p2}, Lcom/a/a/b/m;->a(Ljava/lang/reflect/Type;)Lcom/a/a/b/a/f;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/b/b;->b:Lcom/a/a/b/m;

    invoke-virtual {v1, p3}, Lcom/a/a/b/m;->a(Ljava/lang/reflect/Type;)Lcom/a/a/b/a/f;

    move-result-object v3

    invoke-virtual {v2}, Lcom/a/a/b/e;->f()V

    iget-object v1, p0, Lcom/a/a/b/b;->d:Lcom/a/a/b/l;

    :cond_1
    :goto_0
    :try_start_0
    iget v4, v2, Lcom/a/a/b/e;->a:I

    if-ne v4, v8, :cond_2

    const/16 v0, 0x10

    invoke-virtual {v2, v0}, Lcom/a/a/b/e;->b(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v1}, Lcom/a/a/b/b;->a(Lcom/a/a/b/l;)V

    :goto_1
    return-object p1

    :cond_2
    if-ne v4, v9, :cond_8

    :try_start_1
    invoke-virtual {v2}, Lcom/a/a/b/e;->d()Z

    move-result v5

    if-eqz v5, :cond_8

    sget-object v5, Lcom/a/a/b/d;->p:Lcom/a/a/b/d;

    invoke-virtual {v2, v5}, Lcom/a/a/b/e;->a(Lcom/a/a/b/d;)Z

    move-result v5

    if-nez v5, :cond_8

    const/4 v0, 0x0

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Lcom/a/a/b/e;->a(C)V

    iget v3, v2, Lcom/a/a/b/e;->a:I

    if-ne v3, v9, :cond_6

    invoke-virtual {v2}, Lcom/a/a/b/e;->p()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".."

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v0, v1, Lcom/a/a/b/l;->b:Lcom/a/a/b/l;

    iget-object v0, v0, Lcom/a/a/b/l;->a:Ljava/lang/Object;

    :goto_2
    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Lcom/a/a/b/e;->b(I)V

    iget v3, v2, Lcom/a/a/b/e;->a:I

    if-eq v3, v8, :cond_7

    new-instance v0, Lcom/a/a/d;

    const-string v2, "illegal ref"

    invoke-direct {v0, v2}, Lcom/a/a/d;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0, v1}, Lcom/a/a/b/b;->a(Lcom/a/a/b/l;)V

    throw v0

    :cond_3
    :try_start_2
    const-string v4, "$"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    move-object v0, v1

    :goto_3
    iget-object v3, v0, Lcom/a/a/b/l;->b:Lcom/a/a/b/l;

    if-eqz v3, :cond_4

    iget-object v0, v0, Lcom/a/a/b/l;->b:Lcom/a/a/b/l;

    goto :goto_3

    :cond_4
    iget-object v0, v0, Lcom/a/a/b/l;->a:Ljava/lang/Object;

    goto :goto_2

    :cond_5
    new-instance v4, Lcom/a/a/b/b$a;

    invoke-direct {v4, v1, v3}, Lcom/a/a/b/b$a;-><init>(Lcom/a/a/b/l;Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/a/a/b/b;->a(Lcom/a/a/b/b$a;)V

    const/4 v3, 0x1

    iput v3, p0, Lcom/a/a/b/b;->e:I

    goto :goto_2

    :cond_6
    new-instance v0, Lcom/a/a/d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "illegal ref, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v4}, Lcom/a/a/b/f;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/a/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Lcom/a/a/b/e;->b(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p0, v1}, Lcom/a/a/b/b;->a(Lcom/a/a/b/l;)V

    move-object p1, v0

    goto/16 :goto_1

    :cond_8
    :try_start_3
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v5

    if-nez v5, :cond_a

    if-ne v4, v9, :cond_a

    const-string v4, "@type"

    invoke-virtual {v2}, Lcom/a/a/b/e;->p()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    sget-object v4, Lcom/a/a/b/d;->p:Lcom/a/a/b/d;

    invoke-virtual {v2, v4}, Lcom/a/a/b/e;->a(Lcom/a/a/b/d;)Z

    move-result v4

    if-nez v4, :cond_a

    const/16 v4, 0x3a

    invoke-virtual {v2, v4}, Lcom/a/a/b/e;->a(C)V

    const/16 v4, 0x10

    invoke-virtual {v2, v4}, Lcom/a/a/b/e;->b(I)V

    iget v4, v2, Lcom/a/a/b/e;->a:I

    if-ne v4, v8, :cond_9

    invoke-virtual {v2}, Lcom/a/a/b/e;->f()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {p0, v1}, Lcom/a/a/b/b;->a(Lcom/a/a/b/l;)V

    goto/16 :goto_1

    :cond_9
    :try_start_4
    invoke-virtual {v2}, Lcom/a/a/b/e;->f()V

    :cond_a
    const/4 v4, 0x0

    invoke-interface {v0, p0, p2, v4}, Lcom/a/a/b/a/f;->a(Lcom/a/a/b/b;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iget v5, v2, Lcom/a/a/b/e;->a:I

    const/16 v6, 0x11

    if-eq v5, v6, :cond_b

    new-instance v0, Lcom/a/a/d;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "syntax error, expect :, actual "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v2, v2, Lcom/a/a/b/e;->a:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/a/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    invoke-virtual {v2}, Lcom/a/a/b/e;->f()V

    invoke-interface {v3, p0, p3, v4}, Lcom/a/a/b/a/f;->a(Lcom/a/a/b/b;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iget v6, p0, Lcom/a/a/b/b;->e:I

    if-ne v6, v10, :cond_c

    invoke-virtual {p0, p1, v4}, Lcom/a/a/b/b;->b(Ljava/util/Map;Ljava/lang/Object;)V

    :cond_c
    invoke-interface {p1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v4, v2, Lcom/a/a/b/e;->a:I

    if-ne v4, v7, :cond_1

    invoke-virtual {v2}, Lcom/a/a/b/e;->f()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0
.end method

.method public static a(Lcom/a/a/b/b;Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/b/b;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map;"
        }
    .end annotation

    const/16 v8, 0xd

    const/16 v7, 0x3a

    const/16 v6, 0x22

    iget-object v2, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    iget v0, v2, Lcom/a/a/b/e;->a:I

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    new-instance v0, Lcom/a/a/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "syntax error, expect {, actual "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v2, Lcom/a/a/b/e;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/a/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v3, p0, Lcom/a/a/b/b;->d:Lcom/a/a/b/l;

    :cond_1
    :try_start_0
    invoke-virtual {v2}, Lcom/a/a/b/e;->r()V

    iget-char v0, v2, Lcom/a/a/b/e;->d:C

    iget v1, v2, Lcom/a/a/b/e;->c:I

    sget-object v4, Lcom/a/a/b/d;->g:Lcom/a/a/b/d;

    iget v4, v4, Lcom/a/a/b/d;->q:I

    and-int/2addr v1, v4

    if-eqz v1, :cond_2

    :goto_0
    const/16 v1, 0x2c

    if-ne v0, v1, :cond_2

    invoke-virtual {v2}, Lcom/a/a/b/e;->c()C

    invoke-virtual {v2}, Lcom/a/a/b/e;->r()V

    iget-char v0, v2, Lcom/a/a/b/e;->d:C

    goto :goto_0

    :cond_2
    if-ne v0, v6, :cond_3

    iget-object v0, p0, Lcom/a/a/b/b;->a:Lcom/a/a/b/o;

    const/16 v1, 0x22

    invoke-virtual {v2, v0, v1}, Lcom/a/a/b/e;->a(Lcom/a/a/b/o;C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Lcom/a/a/b/e;->r()V

    iget-char v1, v2, Lcom/a/a/b/e;->d:C

    if-eq v1, v7, :cond_8

    new-instance v0, Lcom/a/a/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "syntax error, "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lcom/a/a/b/e;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/a/a/d;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0, v3}, Lcom/a/a/b/b;->a(Lcom/a/a/b/l;)V

    throw v0

    :cond_3
    const/16 v1, 0x7d

    if-ne v0, v1, :cond_4

    :try_start_1
    invoke-virtual {v2}, Lcom/a/a/b/e;->c()C

    const/4 v0, 0x0

    iput v0, v2, Lcom/a/a/b/e;->h:I

    const/16 v0, 0x10

    invoke-virtual {v2, v0}, Lcom/a/a/b/e;->b(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0, v3}, Lcom/a/a/b/b;->a(Lcom/a/a/b/l;)V

    :goto_1
    return-object p1

    :cond_4
    const/16 v1, 0x27

    if-ne v0, v1, :cond_6

    :try_start_2
    iget v0, v2, Lcom/a/a/b/e;->c:I

    sget-object v1, Lcom/a/a/b/d;->d:Lcom/a/a/b/d;

    iget v1, v1, Lcom/a/a/b/d;->q:I

    and-int/2addr v0, v1

    if-nez v0, :cond_5

    new-instance v0, Lcom/a/a/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "syntax error, "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lcom/a/a/b/e;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/a/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    iget-object v0, p0, Lcom/a/a/b/b;->a:Lcom/a/a/b/o;

    const/16 v1, 0x27

    invoke-virtual {v2, v0, v1}, Lcom/a/a/b/e;->a(Lcom/a/a/b/o;C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Lcom/a/a/b/e;->r()V

    iget-char v1, v2, Lcom/a/a/b/e;->d:C

    if-eq v1, v7, :cond_8

    new-instance v0, Lcom/a/a/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "syntax error, "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lcom/a/a/b/e;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/a/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    iget v0, v2, Lcom/a/a/b/e;->c:I

    sget-object v1, Lcom/a/a/b/d;->c:Lcom/a/a/b/d;

    iget v1, v1, Lcom/a/a/b/d;->q:I

    and-int/2addr v0, v1

    if-nez v0, :cond_7

    new-instance v0, Lcom/a/a/d;

    const-string v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/a/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    iget-object v0, p0, Lcom/a/a/b/b;->a:Lcom/a/a/b/o;

    invoke-virtual {v2, v0}, Lcom/a/a/b/e;->b(Lcom/a/a/b/o;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Lcom/a/a/b/e;->r()V

    iget-char v1, v2, Lcom/a/a/b/e;->d:C

    if-eq v1, v7, :cond_8

    new-instance v0, Lcom/a/a/d;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "expect \':\' at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v2, v2, Lcom/a/a/b/e;->b:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", actual "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/a/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    move-object v1, v0

    invoke-virtual {v2}, Lcom/a/a/b/e;->c()C

    invoke-virtual {v2}, Lcom/a/a/b/e;->r()V

    iget-char v0, v2, Lcom/a/a/b/e;->d:C

    const/4 v0, 0x0

    iput v0, v2, Lcom/a/a/b/e;->h:I

    const-string v0, "@type"

    if-ne v1, v0, :cond_b

    sget-object v0, Lcom/a/a/b/d;->p:Lcom/a/a/b/d;

    invoke-virtual {v2, v0}, Lcom/a/a/b/e;->a(Lcom/a/a/b/d;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/a/a/b/b;->a:Lcom/a/a/b/o;

    const/16 v1, 0x22

    invoke-virtual {v2, v0, v1}, Lcom/a/a/b/e;->a(Lcom/a/a/b/o;C)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/b/b;->b:Lcom/a/a/b/m;

    iget-object v1, v1, Lcom/a/a/b/m;->c:Ljava/lang/ClassLoader;

    invoke-static {v0, v1}, Lcom/a/a/d/d;->a(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_9

    const/16 v0, 0x10

    invoke-virtual {v2, v0}, Lcom/a/a/b/e;->b(I)V

    iget v0, v2, Lcom/a/a/b/e;->a:I

    if-ne v0, v8, :cond_1

    const/16 v0, 0x10

    invoke-virtual {v2, v0}, Lcom/a/a/b/e;->b(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p0, v3}, Lcom/a/a/b/b;->a(Lcom/a/a/b/l;)V

    goto/16 :goto_1

    :cond_9
    :try_start_3
    iget-object v1, p0, Lcom/a/a/b/b;->b:Lcom/a/a/b/m;

    invoke-virtual {v1, v0}, Lcom/a/a/b/m;->a(Ljava/lang/reflect/Type;)Lcom/a/a/b/a/f;

    move-result-object v1

    const/16 v4, 0x10

    invoke-virtual {v2, v4}, Lcom/a/a/b/e;->b(I)V

    const/4 v2, 0x2

    iput v2, p0, Lcom/a/a/b/b;->e:I

    if-eqz v3, :cond_a

    instance-of v2, p3, Ljava/lang/Integer;

    if-nez v2, :cond_a

    invoke-virtual {p0}, Lcom/a/a/b/b;->d()V

    :cond_a
    invoke-interface {v1, p0, v0, p3}, Lcom/a/a/b/a/f;->a(Lcom/a/a/b/b;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {p0, v3}, Lcom/a/a/b/b;->a(Lcom/a/a/b/l;)V

    move-object p1, v0

    goto/16 :goto_1

    :cond_b
    :try_start_4
    invoke-virtual {v2}, Lcom/a/a/b/e;->f()V

    invoke-virtual {p0, v3}, Lcom/a/a/b/b;->a(Lcom/a/a/b/l;)V

    iget v0, v2, Lcom/a/a/b/e;->a:I

    const/16 v4, 0x8

    if-ne v0, v4, :cond_e

    const/4 v0, 0x0

    invoke-virtual {v2}, Lcom/a/a/b/e;->f()V

    :goto_2
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v4, p0, Lcom/a/a/b/b;->e:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_c

    invoke-virtual {p0, p1, v1}, Lcom/a/a/b/b;->b(Ljava/util/Map;Ljava/lang/Object;)V

    :cond_c
    invoke-virtual {p0, v3, v0, v1}, Lcom/a/a/b/b;->a(Lcom/a/a/b/l;Ljava/lang/Object;Ljava/lang/Object;)Lcom/a/a/b/l;

    iget v0, v2, Lcom/a/a/b/e;->a:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/16 v1, 0x14

    if-eq v0, v1, :cond_d

    const/16 v1, 0xf

    if-ne v0, v1, :cond_f

    :cond_d
    invoke-virtual {p0, v3}, Lcom/a/a/b/b;->a(Lcom/a/a/b/l;)V

    goto/16 :goto_1

    :cond_e
    :try_start_5
    invoke-virtual {p0, p2, v1}, Lcom/a/a/b/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_2

    :cond_f
    if-ne v0, v8, :cond_1

    invoke-virtual {v2}, Lcom/a/a/b/e;->f()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-virtual {p0, v3}, Lcom/a/a/b/b;->a(Lcom/a/a/b/l;)V

    goto/16 :goto_1
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

    const-class v0, Lcom/a/a/e;

    if-ne p2, v0, :cond_0

    iget-object v0, p1, Lcom/a/a/b/b;->h:Lcom/a/a/b/a/e;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/a/a/b/b;->b()Lcom/a/a/e;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p1, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    iget v1, v0, Lcom/a/a/b/e;->a:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/a/a/b/e;->b(I)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p2}, Lcom/a/a/b/k;->a(Ljava/lang/reflect/Type;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p1, Lcom/a/a/b/b;->d:Lcom/a/a/b/l;

    :try_start_0
    invoke-virtual {p1, v1, v0, p3}, Lcom/a/a/b/b;->a(Lcom/a/a/b/l;Ljava/lang/Object;Ljava/lang/Object;)Lcom/a/a/b/l;

    instance-of v2, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_3

    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const-class v4, Ljava/lang/String;

    if-ne v4, v2, :cond_2

    invoke-static {p1, v0, v3, p3}, Lcom/a/a/b/k;->a(Lcom/a/a/b/b;Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    invoke-virtual {p1, v1}, Lcom/a/a/b/b;->a(Lcom/a/a/b/l;)V

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-static {p1, v0, v2, v3, p3}, Lcom/a/a/b/k;->a(Lcom/a/a/b/b;Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    invoke-virtual {p1, v1}, Lcom/a/a/b/b;->a(Lcom/a/a/b/l;)V

    goto :goto_0

    :cond_3
    :try_start_2
    invoke-virtual {p1, v0, p3}, Lcom/a/a/b/b;->a(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    invoke-virtual {p1, v1}, Lcom/a/a/b/b;->a(Lcom/a/a/b/l;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p1, v1}, Lcom/a/a/b/b;->a(Lcom/a/a/b/l;)V

    throw v0
.end method

.method protected a(Ljava/lang/reflect/Type;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/util/Map",
            "<**>;"
        }
    .end annotation

    const-class v0, Ljava/util/Properties;

    if-ne p1, v0, :cond_0

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    const-class v0, Ljava/util/Hashtable;

    if-ne p1, v0, :cond_1

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    goto :goto_0

    :cond_1
    const-class v0, Ljava/util/IdentityHashMap;

    if-ne p1, v0, :cond_2

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    goto :goto_0

    :cond_2
    const-class v0, Ljava/util/SortedMap;

    if-eq p1, v0, :cond_3

    const-class v0, Ljava/util/TreeMap;

    if-ne p1, v0, :cond_4

    :cond_3
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    goto :goto_0

    :cond_4
    const-class v0, Ljava/util/concurrent/ConcurrentMap;

    if-eq p1, v0, :cond_5

    const-class v0, Ljava/util/concurrent/ConcurrentHashMap;

    if-ne p1, v0, :cond_6

    :cond_5
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    goto :goto_0

    :cond_6
    const-class v0, Ljava/util/Map;

    if-eq p1, v0, :cond_7

    const-class v0, Ljava/util/HashMap;

    if-ne p1, v0, :cond_8

    :cond_7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    :cond_8
    const-class v0, Ljava/util/LinkedHashMap;

    if-ne p1, v0, :cond_9

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    goto :goto_0

    :cond_9
    const-class v0, Lcom/a/a/e;

    if-ne p1, v0, :cond_a

    new-instance v0, Lcom/a/a/e;

    invoke-direct {v0}, Lcom/a/a/e;-><init>()V

    goto :goto_0

    :cond_a
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_b

    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/a/a/b/k;->a(Ljava/lang/reflect/Type;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :cond_b
    move-object v0, p1

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_c

    new-instance v0, Lcom/a/a/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupport type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/a/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/a/a/d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unsupport type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/a/a/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
