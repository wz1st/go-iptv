.class public Lcom/a/a/b/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/b/b$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/a/a/b/o;

.field public b:Lcom/a/a/b/m;

.field public final c:Lcom/a/a/b/e;

.field protected d:Lcom/a/a/b/l;

.field public e:I

.field protected f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/a/a/b/a/c;",
            ">;"
        }
    .end annotation
.end field

.field protected g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/a/a/b/a/b;",
            ">;"
        }
    .end annotation
.end field

.field public h:Lcom/a/a/b/a/e;

.field private i:Ljava/lang/String;

.field private j:Ljava/text/DateFormat;

.field private k:[Lcom/a/a/b/l;

.field private l:I

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/a/a/b/b$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/a/a/b/e;Lcom/a/a/b/m;)V
    .locals 4

    const/16 v0, 0x1a

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Lcom/a/a/a;->d:Ljava/lang/String;

    iput-object v1, p0, Lcom/a/a/b/b;->i:Ljava/lang/String;

    iput v3, p0, Lcom/a/a/b/b;->l:I

    iput v3, p0, Lcom/a/a/b/b;->e:I

    iput-object v2, p0, Lcom/a/a/b/b;->f:Ljava/util/List;

    iput-object v2, p0, Lcom/a/a/b/b;->g:Ljava/util/List;

    iput-object v2, p0, Lcom/a/a/b/b;->h:Lcom/a/a/b/a/e;

    iput-object p1, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    iput-object p2, p0, Lcom/a/a/b/b;->b:Lcom/a/a/b/m;

    iget-object v1, p2, Lcom/a/a/b/m;->b:Lcom/a/a/b/o;

    iput-object v1, p0, Lcom/a/a/b/b;->a:Lcom/a/a/b/o;

    iget-char v1, p1, Lcom/a/a/b/e;->d:C

    const/16 v2, 0x7b

    if-ne v1, v2, :cond_1

    iget v1, p1, Lcom/a/a/b/e;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p1, Lcom/a/a/b/e;->e:I

    iget v2, p1, Lcom/a/a/b/e;->p:I

    if-lt v1, v2, :cond_0

    :goto_0
    iput-char v0, p1, Lcom/a/a/b/e;->d:C

    const/16 v0, 0xc

    iput v0, p1, Lcom/a/a/b/e;->a:I

    :goto_1
    return-void

    :cond_0
    iget-object v0, p1, Lcom/a/a/b/e;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0

    :cond_1
    iget-char v1, p1, Lcom/a/a/b/e;->d:C

    const/16 v2, 0x5b

    if-ne v1, v2, :cond_3

    iget v1, p1, Lcom/a/a/b/e;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p1, Lcom/a/a/b/e;->e:I

    iget v2, p1, Lcom/a/a/b/e;->p:I

    if-lt v1, v2, :cond_2

    :goto_2
    iput-char v0, p1, Lcom/a/a/b/e;->d:C

    const/16 v0, 0xe

    iput v0, p1, Lcom/a/a/b/e;->a:I

    goto :goto_1

    :cond_2
    iget-object v0, p1, Lcom/a/a/b/e;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lcom/a/a/b/e;->f()V

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/a/a/b/m;I)V
    .locals 1

    new-instance v0, Lcom/a/a/b/e;

    invoke-direct {v0, p1, p3}, Lcom/a/a/b/e;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, v0, p2}, Lcom/a/a/b/b;-><init>(Lcom/a/a/b/e;Lcom/a/a/b/m;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/a/a/b/l;Ljava/lang/Object;Ljava/lang/Object;)Lcom/a/a/b/l;
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    iget-boolean v0, v0, Lcom/a/a/b/e;->r:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/a/a/b/l;

    invoke-direct {v0, p1, p2, p3}, Lcom/a/a/b/l;-><init>(Lcom/a/a/b/l;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/a/a/b/b;->d:Lcom/a/a/b/l;

    iget v0, p0, Lcom/a/a/b/b;->l:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/a/a/b/b;->l:I

    iget-object v1, p0, Lcom/a/a/b/b;->k:[Lcom/a/a/b/l;

    if-nez v1, :cond_2

    const/16 v1, 0x8

    new-array v1, v1, [Lcom/a/a/b/l;

    iput-object v1, p0, Lcom/a/a/b/b;->k:[Lcom/a/a/b/l;

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/a/a/b/b;->k:[Lcom/a/a/b/l;

    iget-object v2, p0, Lcom/a/a/b/b;->d:Lcom/a/a/b/l;

    aput-object v2, v1, v0

    iget-object v0, p0, Lcom/a/a/b/b;->d:Lcom/a/a/b/l;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/a/a/b/b;->k:[Lcom/a/a/b/l;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    iget-object v1, p0, Lcom/a/a/b/b;->k:[Lcom/a/a/b/l;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    new-array v1, v1, [Lcom/a/a/b/l;

    iget-object v2, p0, Lcom/a/a/b/b;->k:[Lcom/a/a/b/l;

    iget-object v3, p0, Lcom/a/a/b/b;->k:[Lcom/a/a/b/l;

    array-length v3, v3

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/a/a/b/b;->k:[Lcom/a/a/b/l;

    goto :goto_1
.end method

.method public a(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/a/a/b/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/a/a/b/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    iget v0, v0, Lcom/a/a/b/e;->a:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    invoke-virtual {v0}, Lcom/a/a/b/e;->f()V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    iget v0, v0, Lcom/a/a/b/e;->a:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    const-class v0, [B

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    invoke-virtual {v0}, Lcom/a/a/b/e;->o()[B

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    invoke-virtual {v1}, Lcom/a/a/b/e;->f()V

    goto :goto_0

    :cond_1
    const-class v0, [C

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    invoke-virtual {v0}, Lcom/a/a/b/e;->p()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    invoke-virtual {v1}, Lcom/a/a/b/e;->f()V

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/a/a/b/b;->b:Lcom/a/a/b/m;

    invoke-virtual {v0, p1}, Lcom/a/a/b/m;->a(Ljava/lang/reflect/Type;)Lcom/a/a/b/a/f;

    move-result-object v0

    :try_start_0
    invoke-interface {v0, p0, p1, p2}, Lcom/a/a/b/a/f;->a(Lcom/a/a/b/b;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/a/a/d; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    new-instance v1, Lcom/a/a/d;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/a/a/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final a(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    iget v3, v14, Lcom/a/a/b/e;->a:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_1

    invoke-virtual {v14}, Lcom/a/a/b/e;->f()V

    const/16 p1, 0x0

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    const/16 v4, 0xc

    if-eq v3, v4, :cond_2

    const/16 v4, 0x10

    if-eq v3, v4, :cond_2

    new-instance v3, Lcom/a/a/d;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "syntax error, expect {, actual "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v14}, Lcom/a/a/b/e;->h()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v14}, Lcom/a/a/b/e;->j()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/a/a/d;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    move-object/from16 v0, p1

    instance-of v3, v0, Lcom/a/a/e;

    if-eqz v3, :cond_4

    move-object/from16 v3, p1

    check-cast v3, Lcom/a/a/e;

    invoke-virtual {v3}, Lcom/a/a/e;->b()Ljava/util/Map;

    move-result-object v4

    const/4 v3, 0x1

    :goto_1
    iget v5, v14, Lcom/a/a/b/e;->c:I

    sget-object v6, Lcom/a/a/b/d;->f:Lcom/a/a/b/d;

    iget v6, v6, Lcom/a/a/b/d;->q:I

    and-int/2addr v5, v6

    if-eqz v5, :cond_5

    const/4 v5, 0x1

    :goto_2
    iget-boolean v15, v14, Lcom/a/a/b/e;->r:Z

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/a/a/b/b;->d:Lcom/a/a/b/l;

    const/4 v13, 0x0

    move v9, v13

    :goto_3
    :try_start_0
    iget-char v6, v14, Lcom/a/a/b/e;->d:C

    const/16 v8, 0x22

    if-eq v6, v8, :cond_3

    const/16 v8, 0x7d

    if-eq v6, v8, :cond_3

    invoke-virtual {v14}, Lcom/a/a/b/e;->r()V

    iget-char v6, v14, Lcom/a/a/b/e;->d:C

    :cond_3
    :goto_4
    const/16 v8, 0x2c

    if-ne v6, v8, :cond_6

    iget v8, v14, Lcom/a/a/b/e;->c:I

    sget-object v10, Lcom/a/a/b/d;->g:Lcom/a/a/b/d;

    iget v10, v10, Lcom/a/a/b/d;->q:I

    and-int/2addr v8, v10

    if-eqz v8, :cond_6

    invoke-virtual {v14}, Lcom/a/a/b/e;->c()C

    invoke-virtual {v14}, Lcom/a/a/b/e;->r()V

    iget-char v6, v14, Lcom/a/a/b/e;->d:C

    goto :goto_4

    :cond_4
    const/4 v3, 0x0

    const/4 v4, 0x0

    goto :goto_1

    :cond_5
    const/4 v5, 0x0

    goto :goto_2

    :cond_6
    const/4 v10, 0x0

    const/16 v8, 0x22

    if-ne v6, v8, :cond_8

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/a/a/b/b;->a:Lcom/a/a/b/o;

    const/16 v8, 0x22

    invoke-virtual {v14, v6, v8}, Lcom/a/a/b/e;->a(Lcom/a/a/b/o;C)Ljava/lang/String;

    move-result-object v8

    iget-char v6, v14, Lcom/a/a/b/e;->d:C

    const/16 v11, 0x3a

    if-eq v6, v11, :cond_16

    invoke-virtual {v14}, Lcom/a/a/b/e;->r()V

    iget-char v6, v14, Lcom/a/a/b/e;->d:C

    const/16 v11, 0x3a

    if-eq v6, v11, :cond_16

    new-instance v3, Lcom/a/a/d;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "expect \':\' at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v14, Lcom/a/a/b/e;->b:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", name "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/a/a/d;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v3

    if-nez v15, :cond_7

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/a/a/b/b;->d:Lcom/a/a/b/l;

    :cond_7
    throw v3

    :cond_8
    const/16 v8, 0x7d

    if-ne v6, v8, :cond_a

    :try_start_1
    iget v3, v14, Lcom/a/a/b/e;->e:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v14, Lcom/a/a/b/e;->e:I

    iget v4, v14, Lcom/a/a/b/e;->p:I

    if-lt v3, v4, :cond_9

    const/16 v3, 0x1a

    :goto_5
    iput-char v3, v14, Lcom/a/a/b/e;->d:C

    const/4 v3, 0x0

    iput v3, v14, Lcom/a/a/b/e;->h:I

    const/16 v3, 0x10

    invoke-virtual {v14, v3}, Lcom/a/a/b/e;->b(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v15, :cond_0

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/a/a/b/b;->d:Lcom/a/a/b/l;

    goto/16 :goto_0

    :cond_9
    :try_start_2
    iget-object v4, v14, Lcom/a/a/b/e;->o:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto :goto_5

    :cond_a
    const/16 v8, 0x27

    if-ne v6, v8, :cond_d

    iget v6, v14, Lcom/a/a/b/e;->c:I

    sget-object v8, Lcom/a/a/b/d;->d:Lcom/a/a/b/d;

    iget v8, v8, Lcom/a/a/b/d;->q:I

    and-int/2addr v6, v8

    if-nez v6, :cond_b

    new-instance v3, Lcom/a/a/d;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "syntax error, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v14}, Lcom/a/a/b/e;->j()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/a/a/d;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_b
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/a/a/b/b;->a:Lcom/a/a/b/o;

    const/16 v8, 0x27

    invoke-virtual {v14, v6, v8}, Lcom/a/a/b/e;->a(Lcom/a/a/b/o;C)Ljava/lang/String;

    move-result-object v8

    iget-char v6, v14, Lcom/a/a/b/e;->d:C

    const/16 v11, 0x3a

    if-eq v6, v11, :cond_c

    invoke-virtual {v14}, Lcom/a/a/b/e;->r()V

    :cond_c
    iget-char v6, v14, Lcom/a/a/b/e;->d:C

    const/16 v11, 0x3a

    if-eq v6, v11, :cond_16

    new-instance v3, Lcom/a/a/d;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "expect \':\' at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v14, Lcom/a/a/b/e;->b:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/a/a/d;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_d
    const/16 v8, 0x1a

    if-ne v6, v8, :cond_e

    new-instance v3, Lcom/a/a/d;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "syntax error, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v14}, Lcom/a/a/b/e;->j()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/a/a/d;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_e
    const/16 v8, 0x2c

    if-ne v6, v8, :cond_f

    new-instance v3, Lcom/a/a/d;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "syntax error, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v14}, Lcom/a/a/b/e;->j()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/a/a/d;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_f
    const/16 v8, 0x30

    if-lt v6, v8, :cond_10

    const/16 v8, 0x39

    if-le v6, v8, :cond_11

    :cond_10
    const/16 v8, 0x2d

    if-ne v6, v8, :cond_14

    :cond_11
    const/4 v6, 0x0

    iput v6, v14, Lcom/a/a/b/e;->h:I

    invoke-virtual {v14}, Lcom/a/a/b/e;->s()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget v6, v14, Lcom/a/a/b/e;->a:I

    const/4 v8, 0x2

    if-ne v6, v8, :cond_13

    invoke-virtual {v14}, Lcom/a/a/b/e;->i()Ljava/lang/Number;

    move-result-object v6

    :goto_6
    if-eqz v3, :cond_12

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v6

    :cond_12
    :try_start_4
    iget-char v8, v14, Lcom/a/a/b/e;->d:C

    const/16 v11, 0x3a

    if-eq v8, v11, :cond_64

    new-instance v3, Lcom/a/a/d;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parse number key error, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v14}, Lcom/a/a/b/e;->j()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/a/a/d;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_13
    const/4 v6, 0x1

    :try_start_5
    invoke-virtual {v14, v6}, Lcom/a/a/b/e;->a(Z)Ljava/lang/Number;
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v6

    goto :goto_6

    :catch_0
    move-exception v3

    :try_start_6
    new-instance v3, Lcom/a/a/d;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parse number key error, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v14}, Lcom/a/a/b/e;->j()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/a/a/d;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_14
    const/16 v8, 0x7b

    if-eq v6, v8, :cond_15

    const/16 v8, 0x5b

    if-ne v6, v8, :cond_18

    :cond_15
    invoke-virtual {v14}, Lcom/a/a/b/e;->f()V

    invoke-virtual/range {p0 .. p0}, Lcom/a/a/b/b;->e()Ljava/lang/Object;

    move-result-object v8

    const/4 v6, 0x1

    if-eqz v3, :cond_63

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    move v10, v6

    :cond_16
    :goto_7
    if-nez v10, :cond_1c

    iget v6, v14, Lcom/a/a/b/e;->e:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v14, Lcom/a/a/b/e;->e:I

    iget v10, v14, Lcom/a/a/b/e;->p:I

    if-lt v6, v10, :cond_1b

    const/16 v6, 0x1a

    :goto_8
    iput-char v6, v14, Lcom/a/a/b/e;->d:C

    :goto_9
    const/16 v10, 0x20

    if-gt v6, v10, :cond_62

    const/16 v10, 0x20

    if-eq v6, v10, :cond_17

    const/16 v10, 0xa

    if-eq v6, v10, :cond_17

    const/16 v10, 0xd

    if-eq v6, v10, :cond_17

    const/16 v10, 0x9

    if-eq v6, v10, :cond_17

    const/16 v10, 0xc

    if-eq v6, v10, :cond_17

    const/16 v10, 0x8

    if-ne v6, v10, :cond_62

    :cond_17
    invoke-virtual {v14}, Lcom/a/a/b/e;->c()C

    iget-char v6, v14, Lcom/a/a/b/e;->d:C

    goto :goto_9

    :cond_18
    iget v6, v14, Lcom/a/a/b/e;->c:I

    sget-object v8, Lcom/a/a/b/d;->c:Lcom/a/a/b/d;

    iget v8, v8, Lcom/a/a/b/d;->q:I

    and-int/2addr v6, v8

    if-nez v6, :cond_19

    new-instance v3, Lcom/a/a/d;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "syntax error, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v14}, Lcom/a/a/b/e;->j()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/a/a/d;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_19
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/a/a/b/b;->a:Lcom/a/a/b/o;

    invoke-virtual {v14, v6}, Lcom/a/a/b/e;->b(Lcom/a/a/b/o;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v14}, Lcom/a/a/b/e;->r()V

    iget-char v6, v14, Lcom/a/a/b/e;->d:C

    const/16 v11, 0x3a

    if-eq v6, v11, :cond_1a

    new-instance v3, Lcom/a/a/d;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "expect \':\' at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v14, Lcom/a/a/b/e;->e:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", actual "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/a/a/d;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1a
    if-eqz v3, :cond_16

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_7

    :cond_1b
    iget-object v10, v14, Lcom/a/a/b/e;->o:Ljava/lang/String;

    invoke-virtual {v10, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    goto/16 :goto_8

    :cond_1c
    iget-char v6, v14, Lcom/a/a/b/e;->d:C

    move v10, v6

    :goto_a
    const/4 v6, 0x0

    iput v6, v14, Lcom/a/a/b/e;->h:I

    const-string v6, "@type"

    if-ne v8, v6, :cond_25

    sget-object v6, Lcom/a/a/b/d;->p:Lcom/a/a/b/d;

    invoke-virtual {v14, v6}, Lcom/a/a/b/e;->a(Lcom/a/a/b/d;)Z

    move-result v6

    if-nez v6, :cond_25

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/a/a/b/b;->a:Lcom/a/a/b/o;

    const/16 v8, 0x22

    invoke-virtual {v14, v6, v8}, Lcom/a/a/b/e;->a(Lcom/a/a/b/o;C)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/a/a/b/b;->b:Lcom/a/a/b/m;

    iget-object v8, v8, Lcom/a/a/b/m;->c:Ljava/lang/ClassLoader;

    invoke-static {v6, v8}, Lcom/a/a/d/d;->a(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v8

    if-nez v8, :cond_1d

    const-string v8, "@type"

    move-object/from16 v0, p1

    invoke-interface {v0, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_1d
    const/16 v3, 0x10

    invoke-virtual {v14, v3}, Lcom/a/a/b/e;->b(I)V

    iget v3, v14, Lcom/a/a/b/e;->a:I

    const/16 v4, 0xd

    if-ne v3, v4, :cond_22

    const/16 v3, 0x10

    invoke-virtual {v14, v3}, Lcom/a/a/b/e;->b(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const/4 v4, 0x0

    :try_start_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/a/a/b/b;->b:Lcom/a/a/b/m;

    invoke-virtual {v3, v8}, Lcom/a/a/b/m;->a(Ljava/lang/reflect/Type;)Lcom/a/a/b/a/f;

    move-result-object v3

    instance-of v5, v3, Lcom/a/a/b/g;

    if-eqz v5, :cond_61

    check-cast v3, Lcom/a/a/b/g;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0, v8}, Lcom/a/a/b/g;->a(Lcom/a/a/b/b;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    :goto_b
    if-nez v3, :cond_1e

    const-class v3, Ljava/lang/Cloneable;

    if-ne v8, v3, :cond_20

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_1e
    :goto_c
    if-nez v15, :cond_1f

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/a/a/b/b;->d:Lcom/a/a/b/l;

    :cond_1f
    move-object/from16 p1, v3

    goto/16 :goto_0

    :cond_20
    :try_start_8
    const-string v3, "java.util.Collections$EmptyMap"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    goto :goto_c

    :cond_21
    invoke-virtual {v8}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result-object v3

    goto :goto_c

    :catch_1
    move-exception v3

    :try_start_9
    new-instance v4, Lcom/a/a/d;

    const-string v5, "create instance error"

    invoke-direct {v4, v5, v3}, Lcom/a/a/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :cond_22
    const/4 v3, 0x2

    move-object/from16 v0, p0

    iput v3, v0, Lcom/a/a/b/b;->e:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/a/a/b/b;->d:Lcom/a/a/b/l;

    if-eqz v3, :cond_23

    move-object/from16 v0, p2

    instance-of v3, v0, Ljava/lang/Integer;

    if-nez v3, :cond_23

    invoke-virtual/range {p0 .. p0}, Lcom/a/a/b/b;->d()V

    :cond_23
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_24

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/a/a/b/b;->b:Lcom/a/a/b/m;

    move-object/from16 v0, p1

    invoke-static {v0, v8, v3}, Lcom/a/a/d/d;->a(Ljava/lang/Object;Ljava/lang/Class;Lcom/a/a/b/m;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual/range {p0 .. p1}, Lcom/a/a/b/b;->a(Ljava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-nez v15, :cond_0

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/a/a/b/b;->d:Lcom/a/a/b/l;

    goto/16 :goto_0

    :cond_24
    :try_start_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/a/a/b/b;->b:Lcom/a/a/b/m;

    invoke-virtual {v3, v8}, Lcom/a/a/b/m;->a(Ljava/lang/reflect/Type;)Lcom/a/a/b/a/f;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-interface {v3, v0, v8, v1}, Lcom/a/a/b/a/f;->a(Lcom/a/a/b/b;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result-object p1

    if-nez v15, :cond_0

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/a/a/b/b;->d:Lcom/a/a/b/l;

    goto/16 :goto_0

    :cond_25
    :try_start_b
    const-string v6, "$ref"

    if-ne v8, v6, :cond_32

    sget-object v6, Lcom/a/a/b/d;->p:Lcom/a/a/b/d;

    invoke-virtual {v14, v6}, Lcom/a/a/b/e;->a(Lcom/a/a/b/d;)Z

    move-result v6

    if-nez v6, :cond_32

    const/4 v3, 0x4

    invoke-virtual {v14, v3}, Lcom/a/a/b/e;->b(I)V

    iget v3, v14, Lcom/a/a/b/e;->a:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_31

    invoke-virtual {v14}, Lcom/a/a/b/e;->p()Ljava/lang/String;

    move-result-object v5

    const/16 v3, 0xd

    invoke-virtual {v14, v3}, Lcom/a/a/b/e;->b(I)V

    const/4 v3, 0x0

    const-string v4, "@"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_29

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/a/a/b/b;->d:Lcom/a/a/b/l;

    if-eqz v4, :cond_2f

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/a/a/b/b;->d:Lcom/a/a/b/l;

    iget-object v4, v5, Lcom/a/a/b/l;->a:Ljava/lang/Object;

    instance-of v6, v4, [Ljava/lang/Object;

    if-nez v6, :cond_26

    instance-of v6, v4, Ljava/util/Collection;

    if-eqz v6, :cond_28

    :cond_26
    move-object v3, v4

    :cond_27
    :goto_d
    move-object/from16 p1, v3

    :goto_e
    iget v3, v14, Lcom/a/a/b/e;->a:I

    const/16 v4, 0xd

    if-eq v3, v4, :cond_30

    new-instance v3, Lcom/a/a/d;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "syntax error, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v14}, Lcom/a/a/b/e;->j()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/a/a/d;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_28
    iget-object v4, v5, Lcom/a/a/b/l;->b:Lcom/a/a/b/l;

    if-eqz v4, :cond_27

    iget-object v3, v5, Lcom/a/a/b/l;->b:Lcom/a/a/b/l;

    iget-object v3, v3, Lcom/a/a/b/l;->a:Ljava/lang/Object;

    goto :goto_d

    :cond_29
    const-string v4, ".."

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    iget-object v4, v7, Lcom/a/a/b/l;->a:Ljava/lang/Object;

    if-eqz v4, :cond_2a

    iget-object v3, v7, Lcom/a/a/b/l;->a:Ljava/lang/Object;

    move-object/from16 p1, v3

    goto :goto_e

    :cond_2a
    new-instance v4, Lcom/a/a/b/b$a;

    invoke-direct {v4, v7, v5}, Lcom/a/a/b/b$a;-><init>(Lcom/a/a/b/l;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/a/a/b/b;->a(Lcom/a/a/b/b$a;)V

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/a/a/b/b;->e:I

    move-object/from16 p1, v3

    goto :goto_e

    :cond_2b
    const-string v4, "$"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e

    move-object v4, v7

    :goto_f
    iget-object v6, v4, Lcom/a/a/b/l;->b:Lcom/a/a/b/l;

    if-eqz v6, :cond_2c

    iget-object v4, v4, Lcom/a/a/b/l;->b:Lcom/a/a/b/l;

    goto :goto_f

    :cond_2c
    iget-object v6, v4, Lcom/a/a/b/l;->a:Ljava/lang/Object;

    if-eqz v6, :cond_2d

    iget-object v3, v4, Lcom/a/a/b/l;->a:Ljava/lang/Object;

    :goto_10
    move-object/from16 p1, v3

    goto :goto_e

    :cond_2d
    new-instance v6, Lcom/a/a/b/b$a;

    invoke-direct {v6, v4, v5}, Lcom/a/a/b/b$a;-><init>(Lcom/a/a/b/l;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/a/a/b/b;->a(Lcom/a/a/b/b$a;)V

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/a/a/b/b;->e:I

    goto :goto_10

    :cond_2e
    new-instance v4, Lcom/a/a/b/b$a;

    invoke-direct {v4, v7, v5}, Lcom/a/a/b/b$a;-><init>(Lcom/a/a/b/l;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/a/a/b/b;->a(Lcom/a/a/b/b$a;)V

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/a/a/b/b;->e:I

    :cond_2f
    move-object/from16 p1, v3

    goto/16 :goto_e

    :cond_30
    const/16 v3, 0x10

    invoke-virtual {v14, v3}, Lcom/a/a/b/e;->b(I)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    if-nez v15, :cond_0

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/a/a/b/b;->d:Lcom/a/a/b/l;

    goto/16 :goto_0

    :cond_31
    :try_start_c
    new-instance v3, Lcom/a/a/d;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "illegal ref, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v14, Lcom/a/a/b/e;->a:I

    invoke-static {v5}, Lcom/a/a/b/f;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/a/a/d;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_32
    if-nez v15, :cond_60

    if-nez v9, :cond_60

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/a/a/b/b;->d:Lcom/a/a/b/l;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v6, v1, v2}, Lcom/a/a/b/b;->a(Lcom/a/a/b/l;Ljava/lang/Object;Ljava/lang/Object;)Lcom/a/a/b/l;

    move-result-object v6

    if-nez v7, :cond_5f

    :goto_11
    const/4 v9, 0x1

    move v13, v9

    move-object v7, v6

    :goto_12
    const/16 v6, 0x22

    if-ne v10, v6, :cond_38

    const/16 v6, 0x22

    invoke-virtual {v14, v6}, Lcom/a/a/b/e;->b(C)Ljava/lang/String;

    move-result-object v6

    if-eqz v5, :cond_34

    new-instance v9, Lcom/a/a/b/e;

    invoke-direct {v9, v6}, Lcom/a/a/b/e;-><init>(Ljava/lang/String;)V

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/a/a/b/e;->b(Z)Z

    move-result v10

    if-eqz v10, :cond_33

    iget-object v6, v9, Lcom/a/a/b/e;->m:Ljava/util/Calendar;

    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    :cond_33
    invoke-virtual {v9}, Lcom/a/a/b/e;->b()V

    :cond_34
    if-eqz v4, :cond_37

    invoke-interface {v4, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_35
    :goto_13
    iget-char v6, v14, Lcom/a/a/b/e;->d:C

    const/16 v8, 0x2c

    if-eq v6, v8, :cond_36

    const/16 v8, 0x7d

    if-eq v6, v8, :cond_36

    invoke-virtual {v14}, Lcom/a/a/b/e;->r()V

    iget-char v6, v14, Lcom/a/a/b/e;->d:C

    :cond_36
    const/16 v8, 0x2c

    if-ne v6, v8, :cond_54

    iget v6, v14, Lcom/a/a/b/e;->e:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v14, Lcom/a/a/b/e;->e:I

    iget v8, v14, Lcom/a/a/b/e;->p:I

    if-lt v6, v8, :cond_53

    const/16 v6, 0x1a

    :goto_14
    iput-char v6, v14, Lcom/a/a/b/e;->d:C

    move v9, v13

    goto/16 :goto_3

    :cond_37
    move-object/from16 v0, p1

    invoke-interface {v0, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13

    :cond_38
    const/16 v6, 0x30

    if-lt v10, v6, :cond_39

    const/16 v6, 0x39

    if-le v10, v6, :cond_3a

    :cond_39
    const/16 v6, 0x2d

    if-ne v10, v6, :cond_3b

    :cond_3a
    invoke-virtual {v14}, Lcom/a/a/b/e;->u()Ljava/lang/Number;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-interface {v0, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13

    :cond_3b
    const/16 v6, 0x5b

    if-ne v10, v6, :cond_40

    const/16 v6, 0xe

    iput v6, v14, Lcom/a/a/b/e;->a:I

    iget v6, v14, Lcom/a/a/b/e;->e:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v14, Lcom/a/a/b/e;->e:I

    iget v9, v14, Lcom/a/a/b/e;->p:I

    if-lt v6, v9, :cond_3c

    const/16 v6, 0x1a

    :goto_15
    iput-char v6, v14, Lcom/a/a/b/e;->d:C

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v8}, Lcom/a/a/b/b;->a(Ljava/util/Collection;Ljava/lang/Object;)V

    new-instance v9, Lcom/a/a/b;

    invoke-direct {v9, v6}, Lcom/a/a/b;-><init>(Ljava/util/List;)V

    if-eqz v4, :cond_3d

    invoke-interface {v4, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_16
    iget v6, v14, Lcom/a/a/b/e;->a:I

    const/16 v8, 0xd

    if-ne v6, v8, :cond_3e

    const/16 v3, 0x10

    invoke-virtual {v14, v3}, Lcom/a/a/b/e;->b(I)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    if-nez v15, :cond_0

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/a/a/b/b;->d:Lcom/a/a/b/l;

    goto/16 :goto_0

    :cond_3c
    :try_start_d
    iget-object v9, v14, Lcom/a/a/b/e;->o:Ljava/lang/String;

    invoke-virtual {v9, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    goto :goto_15

    :cond_3d
    move-object/from16 v0, p1

    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_16

    :cond_3e
    const/16 v8, 0x10

    if-ne v6, v8, :cond_3f

    move v9, v13

    goto/16 :goto_3

    :cond_3f
    new-instance v3, Lcom/a/a/d;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "syntax error, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v14}, Lcom/a/a/b/e;->j()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/a/a/d;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_40
    const/16 v6, 0x7b

    if-ne v10, v6, :cond_4d

    iget v6, v14, Lcom/a/a/b/e;->e:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v14, Lcom/a/a/b/e;->e:I

    iget v9, v14, Lcom/a/a/b/e;->p:I

    if-lt v6, v9, :cond_47

    const/16 v6, 0x1a

    :goto_17
    iput-char v6, v14, Lcom/a/a/b/e;->d:C

    const/16 v6, 0xc

    iput v6, v14, Lcom/a/a/b/e;->a:I

    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/lang/Integer;

    move/from16 v16, v0

    iget v6, v14, Lcom/a/a/b/e;->c:I

    sget-object v9, Lcom/a/a/b/d;->o:Lcom/a/a/b/d;

    iget v9, v9, Lcom/a/a/b/d;->q:I

    and-int/2addr v6, v9

    if-eqz v6, :cond_48

    new-instance v6, Lcom/a/a/e;

    new-instance v9, Ljava/util/LinkedHashMap;

    invoke-direct {v9}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {v6, v9}, Lcom/a/a/e;-><init>(Ljava/util/Map;)V

    move-object v12, v6

    :goto_18
    const/4 v6, 0x0

    if-nez v15, :cond_5e

    if-nez v16, :cond_5e

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v12, v8}, Lcom/a/a/b/b;->a(Lcom/a/a/b/l;Ljava/lang/Object;Ljava/lang/Object;)Lcom/a/a/b/l;

    move-result-object v6

    move-object v11, v6

    :goto_19
    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/a/a/b/b;->h:Lcom/a/a/b/a/e;

    if-eqz v10, :cond_41

    if-eqz v8, :cond_49

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    :goto_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/a/a/b/b;->h:Lcom/a/a/b/a/e;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-interface {v0, v1, v10}, Lcom/a/a/b/a/e;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Type;

    move-result-object v10

    if-eqz v10, :cond_41

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/a/a/b/b;->b:Lcom/a/a/b/m;

    invoke-virtual {v6, v10}, Lcom/a/a/b/m;->a(Ljava/lang/reflect/Type;)Lcom/a/a/b/a/f;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-interface {v6, v0, v10, v8}, Lcom/a/a/b/a/f;->a(Lcom/a/a/b/b;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const/4 v9, 0x1

    :cond_41
    if-nez v9, :cond_42

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v8}, Lcom/a/a/b/b;->a(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    :cond_42
    if-eqz v11, :cond_43

    if-eq v12, v6, :cond_43

    move-object/from16 v0, p1

    iput-object v0, v11, Lcom/a/a/b/l;->a:Ljava/lang/Object;

    :cond_43
    move-object/from16 v0, p0

    iget v9, v0, Lcom/a/a/b/b;->e:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_44

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v9}, Lcom/a/a/b/b;->b(Ljava/util/Map;Ljava/lang/Object;)V

    :cond_44
    if-eqz v4, :cond_4a

    invoke-interface {v4, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1b
    if-eqz v16, :cond_45

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v6, v8}, Lcom/a/a/b/b;->a(Lcom/a/a/b/l;Ljava/lang/Object;Ljava/lang/Object;)Lcom/a/a/b/l;

    :cond_45
    iget v6, v14, Lcom/a/a/b/e;->a:I

    const/16 v8, 0xd

    if-ne v6, v8, :cond_4b

    const/16 v3, 0x10

    invoke-virtual {v14, v3}, Lcom/a/a/b/e;->b(I)V

    if-nez v15, :cond_46

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/a/a/b/b;->d:Lcom/a/a/b/l;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :cond_46
    if-nez v15, :cond_0

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/a/a/b/b;->d:Lcom/a/a/b/l;

    goto/16 :goto_0

    :cond_47
    :try_start_e
    iget-object v9, v14, Lcom/a/a/b/e;->o:Ljava/lang/String;

    invoke-virtual {v9, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    goto/16 :goto_17

    :cond_48
    new-instance v6, Lcom/a/a/e;

    invoke-direct {v6}, Lcom/a/a/e;-><init>()V

    move-object v12, v6

    goto/16 :goto_18

    :cond_49
    const/4 v10, 0x0

    goto :goto_1a

    :cond_4a
    move-object/from16 v0, p1

    invoke-interface {v0, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1b

    :cond_4b
    const/16 v8, 0x10

    if-ne v6, v8, :cond_4c

    move v9, v13

    goto/16 :goto_3

    :cond_4c
    new-instance v3, Lcom/a/a/d;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "syntax error, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v14}, Lcom/a/a/b/e;->j()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/a/a/d;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_4d
    const/16 v6, 0x74

    if-ne v10, v6, :cond_4e

    iget-object v6, v14, Lcom/a/a/b/e;->o:Ljava/lang/String;

    const-string v9, "true"

    iget v10, v14, Lcom/a/a/b/e;->e:I

    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_35

    iget v6, v14, Lcom/a/a/b/e;->e:I

    add-int/lit8 v6, v6, 0x3

    iput v6, v14, Lcom/a/a/b/e;->e:I

    invoke-virtual {v14}, Lcom/a/a/b/e;->c()C

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v0, p1

    invoke-interface {v0, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_13

    :cond_4e
    const/16 v6, 0x66

    if-ne v10, v6, :cond_4f

    iget-object v6, v14, Lcom/a/a/b/e;->o:Ljava/lang/String;

    const-string v9, "false"

    iget v10, v14, Lcom/a/a/b/e;->e:I

    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_35

    iget v6, v14, Lcom/a/a/b/e;->e:I

    add-int/lit8 v6, v6, 0x4

    iput v6, v14, Lcom/a/a/b/e;->e:I

    invoke-virtual {v14}, Lcom/a/a/b/e;->c()C

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, p1

    invoke-interface {v0, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_13

    :cond_4f
    invoke-virtual {v14}, Lcom/a/a/b/e;->f()V

    invoke-virtual/range {p0 .. p0}, Lcom/a/a/b/b;->e()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-class v10, Lcom/a/a/e;

    if-ne v6, v10, :cond_50

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_1c
    move-object/from16 v0, p1

    invoke-interface {v0, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v6, v14, Lcom/a/a/b/e;->a:I

    const/16 v8, 0xd

    if-ne v6, v8, :cond_51

    const/16 v3, 0x10

    invoke-virtual {v14, v3}, Lcom/a/a/b/e;->b(I)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    if-nez v15, :cond_0

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/a/a/b/b;->d:Lcom/a/a/b/l;

    goto/16 :goto_0

    :cond_50
    move-object v6, v8

    goto :goto_1c

    :cond_51
    :try_start_f
    iget v6, v14, Lcom/a/a/b/e;->a:I

    const/16 v8, 0x10

    if-ne v6, v8, :cond_52

    move v9, v13

    goto/16 :goto_3

    :cond_52
    new-instance v3, Lcom/a/a/d;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "syntax error, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v14}, Lcom/a/a/b/e;->j()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/a/a/d;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_53
    iget-object v8, v14, Lcom/a/a/b/e;->o:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    goto/16 :goto_14

    :cond_54
    const/16 v3, 0x7d

    if-ne v6, v3, :cond_5d

    iget v3, v14, Lcom/a/a/b/e;->e:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v14, Lcom/a/a/b/e;->e:I

    iget v4, v14, Lcom/a/a/b/e;->p:I

    if-lt v3, v4, :cond_56

    const/16 v3, 0x1a

    :goto_1d
    iput-char v3, v14, Lcom/a/a/b/e;->d:C

    const/4 v4, 0x0

    iput v4, v14, Lcom/a/a/b/e;->h:I

    const/16 v4, 0x2c

    if-ne v3, v4, :cond_58

    iget v3, v14, Lcom/a/a/b/e;->e:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v14, Lcom/a/a/b/e;->e:I

    iget v4, v14, Lcom/a/a/b/e;->p:I

    if-lt v3, v4, :cond_57

    const/16 v3, 0x1a

    :goto_1e
    iput-char v3, v14, Lcom/a/a/b/e;->d:C

    const/16 v3, 0x10

    iput v3, v14, Lcom/a/a/b/e;->a:I

    :goto_1f
    if-nez v15, :cond_55

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/a/a/b/b;->d:Lcom/a/a/b/l;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v3, v1, v2}, Lcom/a/a/b/b;->a(Lcom/a/a/b/l;Ljava/lang/Object;Ljava/lang/Object;)Lcom/a/a/b/l;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    :cond_55
    if-nez v15, :cond_0

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/a/a/b/b;->d:Lcom/a/a/b/l;

    goto/16 :goto_0

    :cond_56
    :try_start_10
    iget-object v4, v14, Lcom/a/a/b/e;->o:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto :goto_1d

    :cond_57
    iget-object v4, v14, Lcom/a/a/b/e;->o:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto :goto_1e

    :cond_58
    const/16 v4, 0x7d

    if-ne v3, v4, :cond_5a

    iget v3, v14, Lcom/a/a/b/e;->e:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v14, Lcom/a/a/b/e;->e:I

    iget v4, v14, Lcom/a/a/b/e;->p:I

    if-lt v3, v4, :cond_59

    const/16 v3, 0x1a

    :goto_20
    iput-char v3, v14, Lcom/a/a/b/e;->d:C

    const/16 v3, 0xd

    iput v3, v14, Lcom/a/a/b/e;->a:I

    goto :goto_1f

    :cond_59
    iget-object v4, v14, Lcom/a/a/b/e;->o:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto :goto_20

    :cond_5a
    const/16 v4, 0x5d

    if-ne v3, v4, :cond_5c

    iget v3, v14, Lcom/a/a/b/e;->e:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v14, Lcom/a/a/b/e;->e:I

    iget v4, v14, Lcom/a/a/b/e;->p:I

    if-lt v3, v4, :cond_5b

    const/16 v3, 0x1a

    :goto_21
    iput-char v3, v14, Lcom/a/a/b/e;->d:C

    const/16 v3, 0xf

    iput v3, v14, Lcom/a/a/b/e;->a:I

    goto :goto_1f

    :cond_5b
    iget-object v4, v14, Lcom/a/a/b/e;->o:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto :goto_21

    :cond_5c
    invoke-virtual {v14}, Lcom/a/a/b/e;->f()V

    goto :goto_1f

    :cond_5d
    new-instance v3, Lcom/a/a/d;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "syntax error, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v14}, Lcom/a/a/b/e;->j()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/a/a/d;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    :cond_5e
    move-object v11, v6

    goto/16 :goto_19

    :cond_5f
    move-object v6, v7

    goto/16 :goto_11

    :cond_60
    move v13, v9

    goto/16 :goto_12

    :cond_61
    move-object v3, v4

    goto/16 :goto_b

    :cond_62
    move v10, v6

    goto/16 :goto_a

    :cond_63
    move v10, v6

    goto/16 :goto_7

    :cond_64
    move-object v8, v6

    goto/16 :goto_7
.end method

.method public a()Ljava/text/DateFormat;
    .locals 3

    iget-object v0, p0, Lcom/a/a/b/b;->j:Ljava/text/DateFormat;

    if-nez v0, :cond_0

    new-instance v0, Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/a/a/b/b;->i:Ljava/lang/String;

    iget-object v2, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    iget-object v2, v2, Lcom/a/a/b/e;->l:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/a/a/b/b;->j:Ljava/text/DateFormat;

    iget-object v0, p0, Lcom/a/a/b/b;->j:Ljava/text/DateFormat;

    iget-object v1, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    iget-object v1, v1, Lcom/a/a/b/e;->k:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    :cond_0
    iget-object v0, p0, Lcom/a/a/b/b;->j:Ljava/text/DateFormat;

    return-object v0
.end method

.method public final a(I)V
    .locals 3

    iget-object v0, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    iget v0, v0, Lcom/a/a/b/e;->a:I

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    invoke-virtual {v0}, Lcom/a/a/b/e;->f()V

    return-void

    :cond_0
    new-instance v0, Lcom/a/a/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syntax error, expect "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/a/a/b/f;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", actual "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    iget v2, v2, Lcom/a/a/b/e;->a:I

    invoke-static {v2}, Lcom/a/a/b/f;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/a/a/d;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected a(Lcom/a/a/b/b$a;)V
    .locals 2

    iget-object v0, p0, Lcom/a/a/b/b;->m:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/a/a/b/b;->m:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/a/a/b/b;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lcom/a/a/b/l;)V
    .locals 1

    iget-object v0, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    iget-boolean v0, v0, Lcom/a/a/b/e;->r:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/a/a/b/b;->d:Lcom/a/a/b/l;

    goto :goto_0
.end method

.method public a(Ljava/lang/Object;)V
    .locals 10

    const/16 v9, 0xd

    const/4 v1, 0x0

    const/16 v8, 0x3a

    const/16 v7, 0x10

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    iget-object v0, p0, Lcom/a/a/b/b;->b:Lcom/a/a/b/m;

    invoke-virtual {v0, v4}, Lcom/a/a/b/m;->a(Ljava/lang/reflect/Type;)Lcom/a/a/b/a/f;

    move-result-object v0

    instance-of v2, v0, Lcom/a/a/b/g;

    if-eqz v2, :cond_9

    check-cast v0, Lcom/a/a/b/g;

    :goto_0
    iget-object v2, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    iget v2, v2, Lcom/a/a/b/e;->a:I

    const/16 v3, 0xc

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    iget v2, v2, Lcom/a/a/b/e;->a:I

    if-eq v2, v7, :cond_1

    new-instance v0, Lcom/a/a/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syntax error, expect {, actual "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    invoke-virtual {v2}, Lcom/a/a/b/e;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/a/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v2, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    iget v2, v2, Lcom/a/a/b/e;->a:I

    if-ne v2, v7, :cond_2

    iget-object v2, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    iget v2, v2, Lcom/a/a/b/e;->c:I

    sget-object v3, Lcom/a/a/b/d;->g:Lcom/a/a/b/d;

    iget v3, v3, Lcom/a/a/b/d;->q:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    iget-object v3, p0, Lcom/a/a/b/b;->a:Lcom/a/a/b/o;

    invoke-virtual {v2, v3}, Lcom/a/a/b/e;->a(Lcom/a/a/b/o;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    iget-object v2, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    iget v2, v2, Lcom/a/a/b/e;->a:I

    if-ne v2, v9, :cond_0

    iget-object v0, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    invoke-virtual {v0, v7}, Lcom/a/a/b/e;->b(I)V

    :goto_1
    return-void

    :cond_2
    if-eqz v0, :cond_8

    invoke-virtual {v0, v5}, Lcom/a/a/b/g;->a(Ljava/lang/String;)Lcom/a/a/b/a/d;

    move-result-object v2

    move-object v3, v2

    :goto_2
    if-nez v3, :cond_4

    iget-object v2, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    iget v2, v2, Lcom/a/a/b/e;->c:I

    sget-object v3, Lcom/a/a/b/d;->i:Lcom/a/a/b/d;

    iget v3, v3, Lcom/a/a/b/d;->q:I

    and-int/2addr v2, v3

    if-nez v2, :cond_3

    new-instance v0, Lcom/a/a/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setter not found, class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", property "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/a/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v2, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    invoke-virtual {v2, v8}, Lcom/a/a/b/e;->a(C)V

    invoke-virtual {p0}, Lcom/a/a/b/b;->e()Ljava/lang/Object;

    iget-object v2, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    iget v2, v2, Lcom/a/a/b/e;->a:I

    if-ne v2, v9, :cond_1

    iget-object v0, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    invoke-virtual {v0}, Lcom/a/a/b/e;->f()V

    goto :goto_1

    :cond_4
    iget-object v2, v3, Lcom/a/a/b/a/d;->b:Lcom/a/a/d/a;

    iget-object v2, v2, Lcom/a/a/d/a;->f:Ljava/lang/Class;

    iget-object v5, v3, Lcom/a/a/b/a/d;->b:Lcom/a/a/d/a;

    iget-object v5, v5, Lcom/a/a/d/a;->g:Ljava/lang/reflect/Type;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v2, v6, :cond_5

    iget-object v2, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    invoke-virtual {v2, v8}, Lcom/a/a/b/e;->a(C)V

    sget-object v2, Lcom/a/a/c/k;->a:Lcom/a/a/c/k;

    invoke-virtual {v2, p0, v5, v1}, Lcom/a/a/c/k;->a(Lcom/a/a/b/b;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :goto_3
    invoke-virtual {v3, p1, v2}, Lcom/a/a/b/a/d;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    iget v2, v2, Lcom/a/a/b/e;->a:I

    if-eq v2, v7, :cond_1

    iget-object v2, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    iget v2, v2, Lcom/a/a/b/e;->a:I

    if-ne v2, v9, :cond_1

    iget-object v0, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    invoke-virtual {v0, v7}, Lcom/a/a/b/e;->b(I)V

    goto :goto_1

    :cond_5
    const-class v6, Ljava/lang/String;

    if-ne v2, v6, :cond_6

    iget-object v2, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    invoke-virtual {v2, v8}, Lcom/a/a/b/e;->a(C)V

    invoke-virtual {p0}, Lcom/a/a/b/b;->f()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_6
    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v2, v6, :cond_7

    iget-object v2, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    invoke-virtual {v2, v8}, Lcom/a/a/b/e;->a(C)V

    sget-object v2, Lcom/a/a/c/k;->a:Lcom/a/a/c/k;

    invoke-virtual {v2, p0, v5, v1}, Lcom/a/a/c/k;->a(Lcom/a/a/b/b;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_3

    :cond_7
    iget-object v6, p0, Lcom/a/a/b/b;->b:Lcom/a/a/b/m;

    invoke-virtual {v6, v2, v5}, Lcom/a/a/b/m;->a(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lcom/a/a/b/a/f;

    move-result-object v2

    iget-object v6, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    invoke-virtual {v6, v8}, Lcom/a/a/b/e;->a(C)V

    invoke-interface {v2, p0, v5, v1}, Lcom/a/a/b/a/f;->a(Lcom/a/a/b/b;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_3

    :cond_8
    move-object v3, v1

    goto/16 :goto_2

    :cond_9
    move-object v0, v1

    goto/16 :goto_0
.end method

.method public a(Ljava/lang/reflect/Type;Ljava/util/Collection;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/a/a/b/b;->a(Ljava/lang/reflect/Type;Ljava/util/Collection;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/reflect/Type;Ljava/util/Collection;Ljava/lang/Object;)V
    .locals 9

    const/4 v8, 0x4

    const/4 v2, 0x0

    const/16 v7, 0x10

    iget-object v0, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    iget v0, v0, Lcom/a/a/b/e;->a:I

    const/16 v1, 0x15

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    iget v0, v0, Lcom/a/a/b/e;->a:I

    const/16 v1, 0x16

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    invoke-virtual {v0}, Lcom/a/a/b/e;->f()V

    :cond_1
    iget-object v0, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    iget v0, v0, Lcom/a/a/b/e;->a:I

    const/16 v1, 0xe

    if-eq v0, v1, :cond_2

    new-instance v0, Lcom/a/a/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exepct \'[\', but "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    iget v2, v2, Lcom/a/a/b/e;->a:I

    invoke-static {v2}, Lcom/a/a/b/f;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    invoke-virtual {v2}, Lcom/a/a/b/e;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/a/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, p1, :cond_4

    sget-object v0, Lcom/a/a/c/k;->a:Lcom/a/a/c/k;

    iget-object v1, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/a/a/b/e;->b(I)V

    :goto_0
    iget-object v4, p0, Lcom/a/a/b/b;->d:Lcom/a/a/b/l;

    iget-object v1, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    iget-boolean v1, v1, Lcom/a/a/b/e;->r:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/a/a/b/b;->d:Lcom/a/a/b/l;

    invoke-virtual {p0, v1, p2, p3}, Lcom/a/a/b/b;->a(Lcom/a/a/b/l;Ljava/lang/Object;Ljava/lang/Object;)Lcom/a/a/b/l;

    :cond_3
    const/4 v1, 0x0

    move v3, v1

    :goto_1
    :try_start_0
    iget-object v1, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    iget v1, v1, Lcom/a/a/b/e;->c:I

    sget-object v5, Lcom/a/a/b/d;->g:Lcom/a/a/b/d;

    iget v5, v5, Lcom/a/a/b/d;->q:I

    and-int/2addr v1, v5

    if-eqz v1, :cond_6

    :goto_2
    iget-object v1, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    iget v1, v1, Lcom/a/a/b/e;->a:I

    if-ne v1, v7, :cond_6

    iget-object v1, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    invoke-virtual {v1}, Lcom/a/a/b/e;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    iput-object v4, p0, Lcom/a/a/b/b;->d:Lcom/a/a/b/l;

    throw v0

    :cond_4
    const-class v0, Ljava/lang/String;

    if-ne v0, p1, :cond_5

    sget-object v0, Lcom/a/a/c/ab;->a:Lcom/a/a/c/ab;

    iget-object v1, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    invoke-virtual {v1, v8}, Lcom/a/a/b/e;->b(I)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/a/a/b/b;->b:Lcom/a/a/b/m;

    invoke-virtual {v0, p1}, Lcom/a/a/b/m;->a(Ljava/lang/reflect/Type;)Lcom/a/a/b/a/f;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    const/16 v3, 0xc

    invoke-virtual {v1, v3}, Lcom/a/a/b/e;->b(I)V

    goto :goto_0

    :cond_6
    :try_start_1
    iget-object v1, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    iget v1, v1, Lcom/a/a/b/e;->a:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v5, 0xf

    if-ne v1, v5, :cond_7

    iput-object v4, p0, Lcom/a/a/b/b;->d:Lcom/a/a/b/l;

    iget-object v0, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    invoke-virtual {v0, v7}, Lcom/a/a/b/e;->b(I)V

    return-void

    :cond_7
    :try_start_2
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v1, p1, :cond_a

    sget-object v1, Lcom/a/a/c/k;->a:Lcom/a/a/c/k;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v1, p0, v5, v6}, Lcom/a/a/c/k;->a(Lcom/a/a/b/b;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_8
    :goto_3
    iget-object v1, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    iget v1, v1, Lcom/a/a/b/e;->a:I

    if-ne v1, v7, :cond_9

    iget-object v1, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    invoke-virtual {v1}, Lcom/a/a/b/e;->f()V

    :cond_9
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    :cond_a
    const-class v1, Ljava/lang/String;

    if-ne v1, p1, :cond_d

    iget-object v1, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    iget v1, v1, Lcom/a/a/b/e;->a:I

    if-ne v1, v8, :cond_b

    iget-object v1, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    invoke-virtual {v1}, Lcom/a/a/b/e;->p()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    const/16 v6, 0x10

    invoke-virtual {v5, v6}, Lcom/a/a/b/e;->b(I)V

    :goto_4
    invoke-interface {p2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_b
    invoke-virtual {p0}, Lcom/a/a/b/b;->e()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_c

    move-object v1, v2

    goto :goto_4

    :cond_c
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_d
    iget-object v1, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    iget v1, v1, Lcom/a/a/b/e;->a:I

    const/16 v5, 0x8

    if-ne v1, v5, :cond_e

    iget-object v1, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    invoke-virtual {v1}, Lcom/a/a/b/e;->f()V

    move-object v1, v2

    :goto_5
    invoke-interface {p2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget v1, p0, Lcom/a/a/b/b;->e:I

    const/4 v5, 0x1

    if-ne v1, v5, :cond_8

    invoke-virtual {p0, p2}, Lcom/a/a/b/b;->a(Ljava/util/Collection;)V

    goto :goto_3

    :cond_e
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p0, p1, v1}, Lcom/a/a/b/a/f;->a(Lcom/a/a/b/b;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    goto :goto_5
.end method

.method protected a(Ljava/util/Collection;)V
    .locals 5

    const/4 v4, 0x0

    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/a/a/b/b;->c()Lcom/a/a/b/b$a;

    move-result-object v1

    new-instance v2, Lcom/a/a/b/n;

    move-object v0, p1

    check-cast v0, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-direct {v2, p0, v0, v3}, Lcom/a/a/b/n;-><init>(Lcom/a/a/b/b;Ljava/util/List;I)V

    iput-object v2, v1, Lcom/a/a/b/b$a;->a:Lcom/a/a/b/a/d;

    iget-object v0, p0, Lcom/a/a/b/b;->d:Lcom/a/a/b/l;

    iput-object v0, v1, Lcom/a/a/b/b$a;->b:Lcom/a/a/b/l;

    iput v4, p0, Lcom/a/a/b/b;->e:I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/a/a/b/b;->c()Lcom/a/a/b/b$a;

    move-result-object v0

    new-instance v1, Lcom/a/a/b/n;

    invoke-direct {v1, p1}, Lcom/a/a/b/n;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/a/a/b/b$a;->a:Lcom/a/a/b/a/d;

    iget-object v1, p0, Lcom/a/a/b/b;->d:Lcom/a/a/b/l;

    iput-object v1, v0, Lcom/a/a/b/b$a;->b:Lcom/a/a/b/l;

    iput v4, p0, Lcom/a/a/b/b;->e:I

    goto :goto_0
.end method

.method public final a(Ljava/util/Collection;Ljava/lang/Object;)V
    .locals 13

    const/16 v4, 0x1a

    const/16 v12, 0x22

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v11, 0x10

    iget-object v0, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    iget v0, v0, Lcom/a/a/b/e;->a:I

    const/16 v3, 0x15

    if-eq v0, v3, :cond_0

    const/16 v3, 0x16

    if-ne v0, v3, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    invoke-virtual {v0}, Lcom/a/a/b/e;->f()V

    iget-object v0, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    iget v0, v0, Lcom/a/a/b/e;->a:I

    :cond_1
    const/16 v3, 0xe

    if-eq v0, v3, :cond_2

    new-instance v1, Lcom/a/a/d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "syntax error, expect [, actual "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/a/a/b/f;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", pos "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    iget v2, v2, Lcom/a/a/b/e;->b:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/a/a/d;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget-object v0, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    iget-boolean v6, v0, Lcom/a/a/b/e;->r:Z

    iget-object v7, p0, Lcom/a/a/b/b;->d:Lcom/a/a/b/l;

    if-nez v6, :cond_3

    iget-object v0, p0, Lcom/a/a/b/b;->d:Lcom/a/a/b/l;

    invoke-virtual {p0, v0, p1, p2}, Lcom/a/a/b/b;->a(Lcom/a/a/b/l;Ljava/lang/Object;Ljava/lang/Object;)Lcom/a/a/b/l;

    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    iget-char v0, v0, Lcom/a/a/b/e;->d:C

    if-eq v0, v12, :cond_b

    const/16 v3, 0x5d

    if-ne v0, v3, :cond_5

    iget-object v0, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    invoke-virtual {v0}, Lcom/a/a/b/e;->c()C

    iget-object v0, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/a/a/b/e;->b(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_4

    iput-object v7, p0, Lcom/a/a/b/b;->d:Lcom/a/a/b/l;

    :cond_4
    :goto_0
    return-void

    :cond_5
    const/16 v3, 0x7b

    if-ne v0, v3, :cond_9

    :try_start_1
    iget-object v0, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    iget v3, v0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lcom/a/a/b/e;->e:I

    iget-object v5, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    iget-object v0, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    iget v0, v0, Lcom/a/a/b/e;->p:I

    if-lt v3, v0, :cond_8

    move v0, v4

    :goto_1
    iput-char v0, v5, Lcom/a/a/b/e;->d:C

    iget-object v0, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    const/16 v3, 0xc

    iput v3, v0, Lcom/a/a/b/e;->a:I

    :goto_2
    move v0, v1

    :goto_3
    move v5, v1

    :goto_4
    if-eqz v0, :cond_f

    iget-object v3, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    iget-char v3, v3, Lcom/a/a/b/e;->d:C

    if-ne v3, v12, :cond_f

    iget-object v3, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    const/16 v8, 0x22

    invoke-virtual {v3, v8}, Lcom/a/a/b/e;->b(C)Ljava/lang/String;

    move-result-object v8

    iget-object v3, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    iget-char v3, v3, Lcom/a/a/b/e;->d:C

    const/16 v9, 0x2c

    if-ne v3, v9, :cond_10

    iget-object v3, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    iget v9, v3, Lcom/a/a/b/e;->e:I

    add-int/lit8 v9, v9, 0x1

    iput v9, v3, Lcom/a/a/b/e;->e:I

    iget-object v10, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    iget-object v3, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    iget v3, v3, Lcom/a/a/b/e;->p:I

    if-lt v9, v3, :cond_d

    move v3, v4

    :goto_5
    iput-char v3, v10, Lcom/a/a/b/e;->d:C

    invoke-interface {p1, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget v8, p0, Lcom/a/a/b/b;->e:I

    if-ne v8, v2, :cond_6

    invoke-virtual {p0, p1}, Lcom/a/a/b/b;->a(Ljava/util/Collection;)V

    :cond_6
    if-ne v3, v12, :cond_e

    :cond_7
    :goto_6
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_4

    :cond_8
    iget-object v0, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    iget-object v0, v0, Lcom/a/a/b/e;->o:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_1

    :cond_9
    iget-object v0, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Lcom/a/a/b/e;->b(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    if-nez v6, :cond_a

    iput-object v7, p0, Lcom/a/a/b/b;->d:Lcom/a/a/b/l;

    :cond_a
    throw v0

    :cond_b
    :try_start_2
    iget-object v0, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    iget v0, v0, Lcom/a/a/b/e;->c:I

    sget-object v3, Lcom/a/a/b/d;->f:Lcom/a/a/b/d;

    iget v3, v3, Lcom/a/a/b/d;->q:I

    and-int/2addr v0, v3

    if-nez v0, :cond_c

    move v0, v2

    goto :goto_3

    :cond_c
    iget-object v0, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lcom/a/a/b/e;->b(I)V

    move v0, v1

    goto :goto_3

    :cond_d
    iget-object v3, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    iget-object v3, v3, Lcom/a/a/b/e;->o:Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto :goto_5

    :cond_e
    iget-object v0, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    invoke-virtual {v0}, Lcom/a/a/b/e;->f()V

    move v0, v1

    :cond_f
    :goto_7
    iget-object v3, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    iget v3, v3, Lcom/a/a/b/e;->a:I

    :goto_8
    if-ne v3, v11, :cond_14

    iget-object v8, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    iget v8, v8, Lcom/a/a/b/e;->c:I

    sget-object v9, Lcom/a/a/b/d;->g:Lcom/a/a/b/d;

    iget v9, v9, Lcom/a/a/b/d;->q:I

    and-int/2addr v8, v9

    if-eqz v8, :cond_14

    iget-object v3, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    invoke-virtual {v3}, Lcom/a/a/b/e;->f()V

    iget-object v3, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    iget v3, v3, Lcom/a/a/b/e;->a:I

    goto :goto_8

    :cond_10
    const/16 v9, 0x5d

    if-ne v3, v9, :cond_13

    iget-object v0, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    iget v1, v0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/a/a/b/e;->e:I

    iget-object v0, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    iget-object v3, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    iget v3, v3, Lcom/a/a/b/e;->p:I

    if-lt v1, v3, :cond_12

    :goto_9
    iput-char v4, v0, Lcom/a/a/b/e;->d:C

    invoke-interface {p1, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/a/a/b/b;->e:I

    if-ne v0, v2, :cond_11

    invoke-virtual {p0, p1}, Lcom/a/a/b/b;->a(Ljava/util/Collection;)V

    :cond_11
    iget-object v0, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/a/a/b/e;->b(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v6, :cond_4

    iput-object v7, p0, Lcom/a/a/b/b;->d:Lcom/a/a/b/l;

    goto/16 :goto_0

    :cond_12
    :try_start_3
    iget-object v3, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    iget-object v3, v3, Lcom/a/a/b/e;->o:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    goto :goto_9

    :cond_13
    iget-object v3, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    invoke-virtual {v3}, Lcom/a/a/b/e;->f()V

    goto :goto_7

    :cond_14
    packed-switch v3, :pswitch_data_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/a/a/b/b;->e()Ljava/lang/Object;

    move-result-object v3

    :cond_15
    :goto_a
    invoke-interface {p1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget v3, p0, Lcom/a/a/b/b;->e:I

    if-ne v3, v2, :cond_16

    invoke-virtual {p0, p1}, Lcom/a/a/b/b;->a(Ljava/util/Collection;)V

    :cond_16
    iget-object v3, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    iget v3, v3, Lcom/a/a/b/e;->a:I

    if-ne v3, v11, :cond_7

    iget-object v3, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    iget-char v3, v3, Lcom/a/a/b/e;->d:C

    if-ne v3, v12, :cond_1a

    iget-object v3, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    iget-object v8, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    iget v8, v8, Lcom/a/a/b/e;->e:I

    iput v8, v3, Lcom/a/a/b/e;->b:I

    iget-object v3, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    invoke-virtual {v3}, Lcom/a/a/b/e;->l()V

    goto/16 :goto_6

    :pswitch_1
    iget-object v3, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    invoke-virtual {v3}, Lcom/a/a/b/e;->i()Ljava/lang/Number;

    move-result-object v3

    iget-object v8, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    const/16 v9, 0x10

    invoke-virtual {v8, v9}, Lcom/a/a/b/e;->b(I)V

    goto :goto_a

    :pswitch_2
    iget-object v3, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    iget v3, v3, Lcom/a/a/b/e;->c:I

    sget-object v8, Lcom/a/a/b/d;->h:Lcom/a/a/b/d;

    iget v8, v8, Lcom/a/a/b/d;->q:I

    and-int/2addr v3, v8

    if-eqz v3, :cond_17

    iget-object v3, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Lcom/a/a/b/e;->a(Z)Ljava/lang/Number;

    move-result-object v3

    :goto_b
    iget-object v8, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    const/16 v9, 0x10

    invoke-virtual {v8, v9}, Lcom/a/a/b/e;->b(I)V

    goto :goto_a

    :cond_17
    iget-object v3, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Lcom/a/a/b/e;->a(Z)Ljava/lang/Number;

    move-result-object v3

    goto :goto_b

    :pswitch_3
    iget-object v3, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    invoke-virtual {v3}, Lcom/a/a/b/e;->p()Ljava/lang/String;

    move-result-object v3

    iget-object v8, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    const/16 v9, 0x10

    invoke-virtual {v8, v9}, Lcom/a/a/b/e;->b(I)V

    iget-object v8, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    iget v8, v8, Lcom/a/a/b/e;->c:I

    sget-object v9, Lcom/a/a/b/d;->f:Lcom/a/a/b/d;

    iget v9, v9, Lcom/a/a/b/d;->q:I

    and-int/2addr v8, v9

    if-eqz v8, :cond_15

    new-instance v8, Lcom/a/a/b/e;

    invoke-direct {v8, v3}, Lcom/a/a/b/e;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/a/a/b/e;->b(Z)Z

    move-result v9

    if-eqz v9, :cond_18

    iget-object v3, v8, Lcom/a/a/b/e;->m:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    :cond_18
    invoke-virtual {v8}, Lcom/a/a/b/e;->b()V

    goto/16 :goto_a

    :pswitch_4
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v8, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    const/16 v9, 0x10

    invoke-virtual {v8, v9}, Lcom/a/a/b/e;->b(I)V

    goto/16 :goto_a

    :pswitch_5
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v8, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    const/16 v9, 0x10

    invoke-virtual {v8, v9}, Lcom/a/a/b/e;->b(I)V

    goto/16 :goto_a

    :pswitch_6
    iget-object v3, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    iget v3, v3, Lcom/a/a/b/e;->c:I

    sget-object v8, Lcom/a/a/b/d;->o:Lcom/a/a/b/d;

    iget v8, v8, Lcom/a/a/b/d;->q:I

    and-int/2addr v3, v8

    if-eqz v3, :cond_19

    new-instance v3, Lcom/a/a/e;

    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {v3, v8}, Lcom/a/a/e;-><init>(Ljava/util/Map;)V

    :goto_c
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p0, v3, v8}, Lcom/a/a/b/b;->a(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_a

    :cond_19
    new-instance v3, Lcom/a/a/e;

    invoke-direct {v3}, Lcom/a/a/e;-><init>()V

    goto :goto_c

    :pswitch_7
    new-instance v3, Lcom/a/a/b;

    invoke-direct {v3}, Lcom/a/a/b;-><init>()V

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p0, v3, v8}, Lcom/a/a/b/b;->a(Ljava/util/Collection;Ljava/lang/Object;)V

    goto/16 :goto_a

    :pswitch_8
    const/4 v3, 0x0

    iget-object v8, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Lcom/a/a/b/e;->b(I)V

    goto/16 :goto_a

    :pswitch_9
    const/4 v3, 0x0

    iget-object v8, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Lcom/a/a/b/e;->b(I)V

    goto/16 :goto_a

    :pswitch_a
    iget-object v0, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/a/a/b/e;->b(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v6, :cond_4

    iput-object v7, p0, Lcom/a/a/b/b;->d:Lcom/a/a/b/l;

    goto/16 :goto_0

    :pswitch_b
    :try_start_4
    new-instance v0, Lcom/a/a/d;

    const-string v1, "unclosed jsonArray"

    invoke-direct {v0, v1}, Lcom/a/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    const/16 v8, 0x30

    if-lt v3, v8, :cond_1b

    const/16 v8, 0x39

    if-gt v3, v8, :cond_1b

    iget-object v3, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    iget-object v8, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    iget v8, v8, Lcom/a/a/b/e;->e:I

    iput v8, v3, Lcom/a/a/b/e;->b:I

    iget-object v3, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    invoke-virtual {v3}, Lcom/a/a/b/e;->s()V

    goto/16 :goto_6

    :cond_1b
    const/16 v8, 0x7b

    if-ne v3, v8, :cond_1d

    iget-object v3, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    const/16 v8, 0xc

    iput v8, v3, Lcom/a/a/b/e;->a:I

    iget-object v3, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    iget v8, v3, Lcom/a/a/b/e;->e:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v3, Lcom/a/a/b/e;->e:I

    iget-object v9, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    iget-object v3, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    iget v3, v3, Lcom/a/a/b/e;->p:I

    if-lt v8, v3, :cond_1c

    move v3, v4

    :goto_d
    iput-char v3, v9, Lcom/a/a/b/e;->d:C

    goto/16 :goto_6

    :cond_1c
    iget-object v3, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    iget-object v3, v3, Lcom/a/a/b/e;->o:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto :goto_d

    :cond_1d
    iget-object v3, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    invoke-virtual {v3}, Lcom/a/a/b/e;->f()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_6

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method

.method public b()Lcom/a/a/e;
    .locals 2

    iget-object v0, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    iget v0, v0, Lcom/a/a/b/e;->c:I

    sget-object v1, Lcom/a/a/b/d;->o:Lcom/a/a/b/d;

    iget v1, v1, Lcom/a/a/b/d;->q:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    new-instance v0, Lcom/a/a/e;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {v0, v1}, Lcom/a/a/e;-><init>(Ljava/util/Map;)V

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/a/a/b/b;->a(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/e;

    return-object v0

    :cond_0
    new-instance v0, Lcom/a/a/e;

    invoke-direct {v0}, Lcom/a/a/e;-><init>()V

    goto :goto_0
.end method

.method public b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    const/4 v1, 0x0

    const/16 v5, 0x12

    const/16 v4, 0xa

    const/4 v0, 0x1

    const/16 v3, 0x10

    iget-object v2, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    iget v2, v2, Lcom/a/a/b/e;->a:I

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    new-instance v0, Lcom/a/a/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syntax error, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    invoke-virtual {v2}, Lcom/a/a/b/e;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/a/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    iget-object v0, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    invoke-virtual {v0}, Lcom/a/a/b/e;->f()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0, v0, p1}, Lcom/a/a/b/b;->a(Ljava/util/Collection;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-object v0

    :pswitch_2
    iget-object v0, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    invoke-virtual {v0}, Lcom/a/a/b/e;->f()V

    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    invoke-virtual {p0, v0, p1}, Lcom/a/a/b/b;->a(Ljava/util/Collection;Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Lcom/a/a/b;

    invoke-direct {v0}, Lcom/a/a/b;-><init>()V

    invoke-virtual {p0, v0, p1}, Lcom/a/a/b/b;->a(Ljava/util/Collection;Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    iget v0, v0, Lcom/a/a/b/e;->c:I

    sget-object v1, Lcom/a/a/b/d;->o:Lcom/a/a/b/d;

    iget v1, v1, Lcom/a/a/b/d;->q:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    new-instance v0, Lcom/a/a/e;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {v0, v1}, Lcom/a/a/e;-><init>(Ljava/util/Map;)V

    :goto_1
    invoke-virtual {p0, v0, p1}, Lcom/a/a/b/b;->a(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/a/a/e;

    invoke-direct {v0}, Lcom/a/a/e;-><init>()V

    goto :goto_1

    :pswitch_5
    iget-object v0, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    invoke-virtual {v0}, Lcom/a/a/b/e;->i()Ljava/lang/Number;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    invoke-virtual {v1}, Lcom/a/a/b/e;->f()V

    goto :goto_0

    :pswitch_6
    iget-object v1, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    iget v1, v1, Lcom/a/a/b/e;->c:I

    sget-object v2, Lcom/a/a/b/d;->h:Lcom/a/a/b/d;

    iget v2, v2, Lcom/a/a/b/d;->q:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_2

    :goto_2
    iget-object v1, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    invoke-virtual {v1, v0}, Lcom/a/a/b/e;->a(Z)Ljava/lang/Number;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    invoke-virtual {v1}, Lcom/a/a/b/e;->f()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :pswitch_7
    iget-object v0, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    invoke-virtual {v0}, Lcom/a/a/b/e;->p()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    invoke-virtual {v1, v3}, Lcom/a/a/b/e;->b(I)V

    iget-object v1, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    iget v1, v1, Lcom/a/a/b/e;->c:I

    sget-object v2, Lcom/a/a/b/d;->f:Lcom/a/a/b/d;

    iget v2, v2, Lcom/a/a/b/d;->q:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    new-instance v1, Lcom/a/a/b/e;

    invoke-direct {v1, v0}, Lcom/a/a/b/e;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {v1, v2}, Lcom/a/a/b/e;->b(Z)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v0, v1, Lcom/a/a/b/e;->m:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    invoke-virtual {v1}, Lcom/a/a/b/e;->b()V

    goto/16 :goto_0

    :cond_3
    invoke-virtual {v1}, Lcom/a/a/b/e;->b()V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/a/a/b/e;->b()V

    throw v0

    :pswitch_8
    iget-object v0, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    invoke-virtual {v0}, Lcom/a/a/b/e;->f()V

    move-object v0, v1

    goto/16 :goto_0

    :pswitch_9
    iget-object v0, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    invoke-virtual {v0, v3}, Lcom/a/a/b/e;->b(I)V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_0

    :pswitch_a
    iget-object v0, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    invoke-virtual {v0, v3}, Lcom/a/a/b/e;->b(I)V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_0

    :pswitch_b
    iget-object v0, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    invoke-virtual {v0, v5}, Lcom/a/a/b/e;->b(I)V

    iget-object v0, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    iget v0, v0, Lcom/a/a/b/e;->a:I

    if-eq v0, v5, :cond_4

    new-instance v0, Lcom/a/a/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syntax error, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    invoke-virtual {v2}, Lcom/a/a/b/e;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/a/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iget-object v0, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    invoke-virtual {v0, v4}, Lcom/a/a/b/e;->b(I)V

    invoke-virtual {p0, v4}, Lcom/a/a/b/b;->a(I)V

    iget-object v0, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    invoke-virtual {v0}, Lcom/a/a/b/e;->i()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/a/a/b/b;->a(I)V

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/a/a/b/b;->a(I)V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    goto/16 :goto_0

    :pswitch_c
    iget-object v0, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    invoke-virtual {v0}, Lcom/a/a/b/e;->q()Z

    move-result v0

    if-eqz v0, :cond_5

    move-object v0, v1

    goto/16 :goto_0

    :cond_5
    new-instance v0, Lcom/a/a/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syntax error, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    invoke-virtual {v2}, Lcom/a/a/b/e;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/a/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_8
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_1
        :pswitch_2
        :pswitch_8
    .end packed-switch
.end method

.method public final b(Ljava/util/Collection;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/a/a/b/b;->a(Ljava/util/Collection;Ljava/lang/Object;)V

    return-void
.end method

.method protected b(Ljava/util/Map;Ljava/lang/Object;)V
    .locals 2

    new-instance v0, Lcom/a/a/b/n;

    invoke-direct {v0, p1, p2}, Lcom/a/a/b/n;-><init>(Ljava/util/Map;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/a/a/b/b;->c()Lcom/a/a/b/b$a;

    move-result-object v1

    iput-object v0, v1, Lcom/a/a/b/b$a;->a:Lcom/a/a/b/a/d;

    iget-object v0, p0, Lcom/a/a/b/b;->d:Lcom/a/a/b/l;

    iput-object v0, v1, Lcom/a/a/b/b$a;->b:Lcom/a/a/b/l;

    const/4 v0, 0x0

    iput v0, p0, Lcom/a/a/b/b;->e:I

    return-void
.end method

.method protected c()Lcom/a/a/b/b$a;
    .locals 2

    iget-object v0, p0, Lcom/a/a/b/b;->m:Ljava/util/List;

    iget-object v1, p0, Lcom/a/a/b/b;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/b/b$a;

    return-object v0
.end method

.method public c(Ljava/lang/Object;)V
    .locals 10

    const/4 v2, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/a/a/b/b;->m:Ljava/util/List;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/a/a/b/b;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    move v5, v4

    :goto_0
    if-ge v5, v6, :cond_0

    iget-object v0, p0, Lcom/a/a/b/b;->m:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/b/b$a;

    iget-object v7, v0, Lcom/a/a/b/b$a;->a:Lcom/a/a/b/a/d;

    if-nez v7, :cond_2

    :goto_1
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_0

    :cond_2
    iget-object v1, v0, Lcom/a/a/b/b$a;->b:Lcom/a/a/b/l;

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/a/a/b/b$a;->b:Lcom/a/a/b/l;

    iget-object v1, v1, Lcom/a/a/b/l;->a:Ljava/lang/Object;

    :goto_2
    invoke-static {v0}, Lcom/a/a/b/b$a;->a(Lcom/a/a/b/b$a;)Ljava/lang/String;

    move-result-object v8

    const-string v3, "$"

    invoke-virtual {v8, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v3, v4

    move-object v0, v2

    :goto_3
    iget v9, p0, Lcom/a/a/b/b;->l:I

    if-ge v3, v9, :cond_5

    iget-object v9, p0, Lcom/a/a/b/b;->k:[Lcom/a/a/b/l;

    aget-object v9, v9, v3

    invoke-virtual {v9}, Lcom/a/a/b/l;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v0, p0, Lcom/a/a/b/b;->k:[Lcom/a/a/b/l;

    aget-object v0, v0, v3

    iget-object v0, v0, Lcom/a/a/b/l;->a:Ljava/lang/Object;

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    invoke-static {v0}, Lcom/a/a/b/b$a;->b(Lcom/a/a/b/b$a;)Lcom/a/a/b/l;

    move-result-object v0

    iget-object v0, v0, Lcom/a/a/b/l;->a:Ljava/lang/Object;

    :cond_5
    invoke-virtual {v7, v1, v0}, Lcom/a/a/b/a/d;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_6
    move-object v1, v2

    goto :goto_2
.end method

.method public close()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    iget v0, v0, Lcom/a/a/b/e;->c:I

    sget-object v1, Lcom/a/a/b/d;->a:Lcom/a/a/b/d;

    iget v1, v1, Lcom/a/a/b/d;->q:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    iget v0, v0, Lcom/a/a/b/e;->a:I

    const/16 v1, 0x14

    if-eq v0, v1, :cond_0

    new-instance v0, Lcom/a/a/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not close json text, token : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    iget v2, v2, Lcom/a/a/b/e;->a:I

    invoke-static {v2}, Lcom/a/a/b/f;->a(I)Ljava/lang/String;

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

    iget-object v1, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    invoke-virtual {v1}, Lcom/a/a/b/e;->b()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    invoke-virtual {v0}, Lcom/a/a/b/e;->b()V

    return-void
.end method

.method protected d()V
    .locals 3

    iget-object v0, p0, Lcom/a/a/b/b;->d:Lcom/a/a/b/l;

    iget-object v0, v0, Lcom/a/a/b/l;->b:Lcom/a/a/b/l;

    iput-object v0, p0, Lcom/a/a/b/b;->d:Lcom/a/a/b/l;

    iget-object v0, p0, Lcom/a/a/b/b;->k:[Lcom/a/a/b/l;

    iget v1, p0, Lcom/a/a/b/b;->l:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    aput-object v2, v0, v1

    iget v0, p0, Lcom/a/a/b/b;->l:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/a/a/b/b;->l:I

    return-void
.end method

.method public e()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/a/a/b/b;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 6

    const/16 v5, 0x10

    const/16 v0, 0x1a

    iget-object v1, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    iget v1, v1, Lcom/a/a/b/e;->a:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_6

    iget-object v1, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    invoke-virtual {v1}, Lcom/a/a/b/e;->p()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    iget-char v2, v2, Lcom/a/a/b/e;->d:C

    const/16 v3, 0x2c

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    iget v3, v2, Lcom/a/a/b/e;->e:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/a/a/b/e;->e:I

    iget-object v2, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    iget-object v4, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    iget v4, v4, Lcom/a/a/b/e;->p:I

    if-lt v3, v4, :cond_0

    :goto_0
    iput-char v0, v2, Lcom/a/a/b/e;->d:C

    iget-object v0, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    iput v5, v0, Lcom/a/a/b/e;->a:I

    :goto_1
    move-object v0, v1

    :goto_2
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    iget-object v0, v0, Lcom/a/a/b/e;->o:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    iget-char v2, v2, Lcom/a/a/b/e;->d:C

    const/16 v3, 0x5d

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    iget v3, v2, Lcom/a/a/b/e;->e:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/a/a/b/e;->e:I

    iget-object v2, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    iget-object v4, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    iget v4, v4, Lcom/a/a/b/e;->p:I

    if-lt v3, v4, :cond_2

    :goto_3
    iput-char v0, v2, Lcom/a/a/b/e;->d:C

    iget-object v0, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    const/16 v2, 0xf

    iput v2, v0, Lcom/a/a/b/e;->a:I

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    iget-object v0, v0, Lcom/a/a/b/e;->o:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_3

    :cond_3
    iget-object v2, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    iget-char v2, v2, Lcom/a/a/b/e;->d:C

    const/16 v3, 0x7d

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    iget v3, v2, Lcom/a/a/b/e;->e:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/a/a/b/e;->e:I

    iget-object v2, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    iget-object v4, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    iget v4, v4, Lcom/a/a/b/e;->p:I

    if-lt v3, v4, :cond_4

    :goto_4
    iput-char v0, v2, Lcom/a/a/b/e;->d:C

    iget-object v0, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    const/16 v2, 0xd

    iput v2, v0, Lcom/a/a/b/e;->a:I

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    iget-object v0, v0, Lcom/a/a/b/e;->o:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    invoke-virtual {v0}, Lcom/a/a/b/e;->f()V

    goto :goto_1

    :cond_6
    const/4 v0, 0x2

    if-ne v1, v0, :cond_7

    iget-object v0, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    invoke-virtual {v0}, Lcom/a/a/b/e;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    invoke-virtual {v1, v5}, Lcom/a/a/b/e;->b(I)V

    goto :goto_2

    :cond_7
    invoke-virtual {p0}, Lcom/a/a/b/b;->e()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    goto :goto_2

    :cond_8
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method
