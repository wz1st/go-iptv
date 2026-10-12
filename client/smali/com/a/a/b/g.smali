.class public Lcom/a/a/b/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/a/b/a/f;


# instance fields
.field public final a:Lcom/a/a/b/h;

.field private final b:[Lcom/a/a/b/a/d;

.field private final c:[Lcom/a/a/b/a/d;

.field private final d:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/a/a/b/m;Ljava/lang/Class;Ljava/lang/reflect/Type;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/b/m;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ")V"
        }
    .end annotation

    const/4 v4, 0x1

    invoke-virtual {p2}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    const/4 v3, 0x0

    iget-object v7, p1, Lcom/a/a/b/m;->d:Lcom/a/a/g;

    move-object v0, p2

    move-object v2, p3

    move v5, v4

    move v6, v4

    invoke-static/range {v0 .. v7}, Lcom/a/a/b/h;->a(Ljava/lang/Class;ILjava/lang/reflect/Type;ZZZZLcom/a/a/g;)Lcom/a/a/b/h;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/a/a/b/g;-><init>(Lcom/a/a/b/m;Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/a/a/b/h;)V

    return-void
.end method

.method public constructor <init>(Lcom/a/a/b/m;Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/a/a/b/h;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/b/m;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            "Lcom/a/a/b/h;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/a/a/b/g;->d:Ljava/lang/Class;

    iput-object p4, p0, Lcom/a/a/b/g;->a:Lcom/a/a/b/h;

    iget-object v1, p4, Lcom/a/a/b/h;->f:[Lcom/a/a/d/a;

    array-length v1, v1

    new-array v1, v1, [Lcom/a/a/b/a/d;

    iput-object v1, p0, Lcom/a/a/b/g;->c:[Lcom/a/a/b/a/d;

    iget-object v1, p4, Lcom/a/a/b/h;->f:[Lcom/a/a/d/a;

    array-length v2, v1

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v3, p4, Lcom/a/a/b/h;->f:[Lcom/a/a/d/a;

    aget-object v3, v3, v1

    invoke-virtual {p1, p1, p2, v3}, Lcom/a/a/b/m;->a(Lcom/a/a/b/m;Ljava/lang/Class;Lcom/a/a/d/a;)Lcom/a/a/b/a/d;

    move-result-object v3

    iget-object v4, p0, Lcom/a/a/b/g;->c:[Lcom/a/a/b/a/d;

    aput-object v3, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p4, Lcom/a/a/b/h;->e:[Lcom/a/a/d/a;

    array-length v1, v1

    new-array v1, v1, [Lcom/a/a/b/a/d;

    iput-object v1, p0, Lcom/a/a/b/g;->b:[Lcom/a/a/b/a/d;

    iget-object v1, p4, Lcom/a/a/b/h;->e:[Lcom/a/a/d/a;

    array-length v1, v1

    :goto_1
    if-ge v0, v1, :cond_1

    iget-object v2, p4, Lcom/a/a/b/h;->e:[Lcom/a/a/d/a;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/a/a/d/a;->a:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/a/a/b/g;->a(Ljava/lang/String;)Lcom/a/a/b/a/d;

    move-result-object v2

    iget-object v3, p0, Lcom/a/a/b/g;->b:[Lcom/a/a/b/a/d;

    aput-object v2, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private a(Lcom/a/a/b/b;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/a/a/b/b;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    iget-object v6, p1, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    invoke-virtual {p0, p1, p2}, Lcom/a/a/b/g;->a(Lcom/a/a/b/b;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v7

    iget-object v2, p0, Lcom/a/a/b/g;->c:[Lcom/a/a/b/a/d;

    array-length v8, v2

    const/4 v2, 0x0

    move v5, v2

    :goto_0
    if-ge v5, v8, :cond_2f

    add-int/lit8 v2, v8, -0x1

    if-ne v5, v2, :cond_1

    const/16 v2, 0x5d

    :goto_1
    iget-object v3, p0, Lcom/a/a/b/g;->c:[Lcom/a/a/b/a/d;

    aget-object v3, v3, v5

    iget-object v9, v3, Lcom/a/a/b/a/d;->b:Lcom/a/a/d/a;

    iget-object v4, v9, Lcom/a/a/d/a;->f:Ljava/lang/Class;

    :try_start_0
    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v4, v10, :cond_7

    invoke-virtual {v6}, Lcom/a/a/b/e;->v()J

    move-result-wide v10

    long-to-int v2, v10

    iget-boolean v4, v9, Lcom/a/a/d/a;->d:Z

    if-eqz v4, :cond_2

    iget-object v3, v9, Lcom/a/a/d/a;->c:Ljava/lang/reflect/Field;

    invoke-virtual {v3, v7, v2}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    :goto_2
    iget-char v2, v6, Lcom/a/a/b/e;->d:C

    const/16 v3, 0x2c

    if-ne v2, v3, :cond_4

    iget v2, v6, Lcom/a/a/b/e;->e:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v6, Lcom/a/a/b/e;->e:I

    iget v3, v6, Lcom/a/a/b/e;->p:I

    if-lt v2, v3, :cond_3

    const/16 v2, 0x1a

    :goto_3
    iput-char v2, v6, Lcom/a/a/b/e;->d:C

    const/16 v2, 0x10

    iput v2, v6, Lcom/a/a/b/e;->a:I

    :cond_0
    :goto_4
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_0

    :cond_1
    const/16 v2, 0x2c

    goto :goto_1

    :cond_2
    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v7, v4}, Lcom/a/a/b/a/d;->a(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    new-instance v3, Lcom/a/a/d;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v9, Lcom/a/a/d/a;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "error"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/a/a/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :cond_3
    :try_start_1
    iget-object v3, v6, Lcom/a/a/b/e;->o:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    goto :goto_3

    :cond_4
    iget-char v2, v6, Lcom/a/a/b/e;->d:C

    const/16 v3, 0x5d

    if-ne v2, v3, :cond_6

    iget v2, v6, Lcom/a/a/b/e;->e:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v6, Lcom/a/a/b/e;->e:I

    iget v3, v6, Lcom/a/a/b/e;->p:I

    if-lt v2, v3, :cond_5

    const/16 v2, 0x1a

    :goto_5
    iput-char v2, v6, Lcom/a/a/b/e;->d:C

    const/16 v2, 0xf

    iput v2, v6, Lcom/a/a/b/e;->a:I

    goto :goto_4

    :cond_5
    iget-object v3, v6, Lcom/a/a/b/e;->o:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    goto :goto_5

    :cond_6
    invoke-virtual {v6}, Lcom/a/a/b/e;->f()V

    goto :goto_4

    :cond_7
    const-class v10, Ljava/lang/String;

    if-ne v4, v10, :cond_10

    iget-char v2, v6, Lcom/a/a/b/e;->d:C

    const/16 v4, 0x22

    if-ne v2, v4, :cond_8

    const/16 v2, 0x22

    invoke-virtual {v6, v2}, Lcom/a/a/b/e;->b(C)Ljava/lang/String;

    move-result-object v2

    :goto_6
    iget-boolean v4, v9, Lcom/a/a/d/a;->d:Z

    if-eqz v4, :cond_b

    iget-object v3, v9, Lcom/a/a/d/a;->c:Ljava/lang/reflect/Field;

    invoke-virtual {v3, v7, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_7
    iget-char v2, v6, Lcom/a/a/b/e;->d:C

    const/16 v3, 0x2c

    if-ne v2, v3, :cond_d

    iget v2, v6, Lcom/a/a/b/e;->e:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v6, Lcom/a/a/b/e;->e:I

    iget v3, v6, Lcom/a/a/b/e;->p:I

    if-lt v2, v3, :cond_c

    const/16 v2, 0x1a

    :goto_8
    iput-char v2, v6, Lcom/a/a/b/e;->d:C

    const/16 v2, 0x10

    iput v2, v6, Lcom/a/a/b/e;->a:I

    goto/16 :goto_4

    :cond_8
    iget-char v2, v6, Lcom/a/a/b/e;->d:C

    const/16 v4, 0x6e

    if-ne v2, v4, :cond_a

    iget-object v2, v6, Lcom/a/a/b/e;->o:Ljava/lang/String;

    const-string v4, "null"

    iget v10, v6, Lcom/a/a/b/e;->e:I

    invoke-virtual {v2, v4, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_a

    iget v2, v6, Lcom/a/a/b/e;->e:I

    add-int/lit8 v2, v2, 0x4

    iput v2, v6, Lcom/a/a/b/e;->e:I

    iget v2, v6, Lcom/a/a/b/e;->e:I

    iget v4, v6, Lcom/a/a/b/e;->e:I

    iget v10, v6, Lcom/a/a/b/e;->p:I

    if-lt v4, v10, :cond_9

    const/16 v2, 0x1a

    :goto_9
    iput-char v2, v6, Lcom/a/a/b/e;->d:C

    const/4 v2, 0x0

    goto :goto_6

    :cond_9
    iget-object v4, v6, Lcom/a/a/b/e;->o:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    goto :goto_9

    :cond_a
    new-instance v2, Lcom/a/a/d;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "not match string. feild : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/a/a/d;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_b
    invoke-virtual {v3, v7, v2}, Lcom/a/a/b/a/d;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_7

    :cond_c
    iget-object v3, v6, Lcom/a/a/b/e;->o:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    goto :goto_8

    :cond_d
    iget-char v2, v6, Lcom/a/a/b/e;->d:C

    const/16 v3, 0x5d

    if-ne v2, v3, :cond_f

    iget v2, v6, Lcom/a/a/b/e;->e:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v6, Lcom/a/a/b/e;->e:I

    iget v3, v6, Lcom/a/a/b/e;->p:I

    if-lt v2, v3, :cond_e

    const/16 v2, 0x1a

    :goto_a
    iput-char v2, v6, Lcom/a/a/b/e;->d:C

    const/16 v2, 0xf

    iput v2, v6, Lcom/a/a/b/e;->a:I

    goto/16 :goto_4

    :cond_e
    iget-object v3, v6, Lcom/a/a/b/e;->o:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    goto :goto_a

    :cond_f
    invoke-virtual {v6}, Lcom/a/a/b/e;->f()V

    goto/16 :goto_4

    :cond_10
    sget-object v10, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v4, v10, :cond_16

    invoke-virtual {v6}, Lcom/a/a/b/e;->v()J

    move-result-wide v10

    iget-boolean v2, v9, Lcom/a/a/d/a;->d:Z

    if-eqz v2, :cond_11

    iget-object v2, v9, Lcom/a/a/d/a;->c:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v7, v10, v11}, Ljava/lang/reflect/Field;->setLong(Ljava/lang/Object;J)V

    :goto_b
    iget-char v2, v6, Lcom/a/a/b/e;->d:C

    const/16 v3, 0x2c

    if-ne v2, v3, :cond_13

    iget v2, v6, Lcom/a/a/b/e;->e:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v6, Lcom/a/a/b/e;->e:I

    iget v3, v6, Lcom/a/a/b/e;->p:I

    if-lt v2, v3, :cond_12

    const/16 v2, 0x1a

    :goto_c
    iput-char v2, v6, Lcom/a/a/b/e;->d:C

    const/16 v2, 0x10

    iput v2, v6, Lcom/a/a/b/e;->a:I

    goto/16 :goto_4

    :cond_11
    new-instance v2, Ljava/lang/Long;

    invoke-direct {v2, v10, v11}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v3, v7, v2}, Lcom/a/a/b/a/d;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_b

    :cond_12
    iget-object v3, v6, Lcom/a/a/b/e;->o:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    goto :goto_c

    :cond_13
    iget-char v2, v6, Lcom/a/a/b/e;->d:C

    const/16 v3, 0x5d

    if-ne v2, v3, :cond_15

    iget v2, v6, Lcom/a/a/b/e;->e:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v6, Lcom/a/a/b/e;->e:I

    iget v3, v6, Lcom/a/a/b/e;->p:I

    if-lt v2, v3, :cond_14

    const/16 v2, 0x1a

    :goto_d
    iput-char v2, v6, Lcom/a/a/b/e;->d:C

    const/16 v2, 0xf

    iput v2, v6, Lcom/a/a/b/e;->a:I

    goto/16 :goto_4

    :cond_14
    iget-object v3, v6, Lcom/a/a/b/e;->o:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    goto :goto_d

    :cond_15
    invoke-virtual {v6}, Lcom/a/a/b/e;->f()V

    goto/16 :goto_4

    :cond_16
    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v4, v10, :cond_1c

    invoke-virtual {v6}, Lcom/a/a/b/e;->t()Z

    move-result v2

    iget-boolean v4, v9, Lcom/a/a/d/a;->d:Z

    if-eqz v4, :cond_17

    iget-object v3, v9, Lcom/a/a/d/a;->c:Ljava/lang/reflect/Field;

    invoke-virtual {v3, v7, v2}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    :goto_e
    iget-char v2, v6, Lcom/a/a/b/e;->d:C

    const/16 v3, 0x2c

    if-ne v2, v3, :cond_19

    iget v2, v6, Lcom/a/a/b/e;->e:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v6, Lcom/a/a/b/e;->e:I

    iget v3, v6, Lcom/a/a/b/e;->p:I

    if-lt v2, v3, :cond_18

    const/16 v2, 0x1a

    :goto_f
    iput-char v2, v6, Lcom/a/a/b/e;->d:C

    const/16 v2, 0x10

    iput v2, v6, Lcom/a/a/b/e;->a:I

    goto/16 :goto_4

    :cond_17
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v7, v2}, Lcom/a/a/b/a/d;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_e

    :cond_18
    iget-object v3, v6, Lcom/a/a/b/e;->o:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    goto :goto_f

    :cond_19
    iget-char v2, v6, Lcom/a/a/b/e;->d:C

    const/16 v3, 0x5d

    if-ne v2, v3, :cond_1b

    iget v2, v6, Lcom/a/a/b/e;->e:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v6, Lcom/a/a/b/e;->e:I

    iget v3, v6, Lcom/a/a/b/e;->p:I

    if-lt v2, v3, :cond_1a

    const/16 v2, 0x1a

    :goto_10
    iput-char v2, v6, Lcom/a/a/b/e;->d:C

    const/16 v2, 0xf

    iput v2, v6, Lcom/a/a/b/e;->a:I

    goto/16 :goto_4

    :cond_1a
    iget-object v3, v6, Lcom/a/a/b/e;->o:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    goto :goto_10

    :cond_1b
    invoke-virtual {v6}, Lcom/a/a/b/e;->f()V

    goto/16 :goto_4

    :cond_1c
    invoke-virtual {v4}, Ljava/lang/Class;->isEnum()Z

    move-result v10

    if-eqz v10, :cond_24

    iget-char v2, v6, Lcom/a/a/b/e;->d:C

    const/16 v10, 0x22

    if-ne v2, v10, :cond_1e

    iget-object v2, p1, Lcom/a/a/b/b;->a:Lcom/a/a/b/o;

    invoke-virtual {v6, v2}, Lcom/a/a/b/e;->a(Lcom/a/a/b/o;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1d

    const/4 v2, 0x0

    :goto_11
    invoke-virtual {v3, v7, v2}, Lcom/a/a/b/a/d;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-char v2, v6, Lcom/a/a/b/e;->d:C

    const/16 v3, 0x2c

    if-ne v2, v3, :cond_21

    iget v2, v6, Lcom/a/a/b/e;->e:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v6, Lcom/a/a/b/e;->e:I

    iget v3, v6, Lcom/a/a/b/e;->p:I

    if-lt v2, v3, :cond_20

    const/16 v2, 0x1a

    :goto_12
    iput-char v2, v6, Lcom/a/a/b/e;->d:C

    const/16 v2, 0x10

    iput v2, v6, Lcom/a/a/b/e;->a:I

    goto/16 :goto_4

    :cond_1d
    invoke-static {v4, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v2

    goto :goto_11

    :cond_1e
    const/16 v4, 0x30

    if-lt v2, v4, :cond_1f

    const/16 v4, 0x39

    if-gt v2, v4, :cond_1f

    invoke-virtual {v6}, Lcom/a/a/b/e;->v()J

    move-result-wide v10

    long-to-int v4, v10

    move-object v0, v3

    check-cast v0, Lcom/a/a/b/a;

    move-object v2, v0

    iget-object v10, p1, Lcom/a/a/b/b;->b:Lcom/a/a/b/m;

    invoke-virtual {v2, v10}, Lcom/a/a/b/a;->a(Lcom/a/a/b/m;)Lcom/a/a/b/a/f;

    move-result-object v2

    check-cast v2, Lcom/a/a/b/c;

    iget-object v2, v2, Lcom/a/a/b/c;->a:[Ljava/lang/Enum;

    aget-object v2, v2, v4

    goto :goto_11

    :cond_1f
    new-instance v2, Lcom/a/a/d;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "illegal enum."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v6}, Lcom/a/a/b/e;->j()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/a/a/d;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_20
    iget-object v3, v6, Lcom/a/a/b/e;->o:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    goto :goto_12

    :cond_21
    iget-char v2, v6, Lcom/a/a/b/e;->d:C

    const/16 v3, 0x5d

    if-ne v2, v3, :cond_23

    iget v2, v6, Lcom/a/a/b/e;->e:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v6, Lcom/a/a/b/e;->e:I

    iget v3, v6, Lcom/a/a/b/e;->p:I

    if-lt v2, v3, :cond_22

    const/16 v2, 0x1a

    :goto_13
    iput-char v2, v6, Lcom/a/a/b/e;->d:C

    const/16 v2, 0xf

    iput v2, v6, Lcom/a/a/b/e;->a:I

    goto/16 :goto_4

    :cond_22
    iget-object v3, v6, Lcom/a/a/b/e;->o:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    goto :goto_13

    :cond_23
    invoke-virtual {v6}, Lcom/a/a/b/e;->f()V

    goto/16 :goto_4

    :cond_24
    const-class v10, Ljava/util/Date;

    if-ne v4, v10, :cond_29

    iget-char v4, v6, Lcom/a/a/b/e;->d:C

    const/16 v10, 0x31

    if-ne v4, v10, :cond_29

    invoke-virtual {v6}, Lcom/a/a/b/e;->v()J

    move-result-wide v10

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v7, v2}, Lcom/a/a/b/a/d;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-char v2, v6, Lcom/a/a/b/e;->d:C

    const/16 v3, 0x2c

    if-ne v2, v3, :cond_26

    iget v2, v6, Lcom/a/a/b/e;->e:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v6, Lcom/a/a/b/e;->e:I

    iget v3, v6, Lcom/a/a/b/e;->p:I

    if-lt v2, v3, :cond_25

    const/16 v2, 0x1a

    :goto_14
    iput-char v2, v6, Lcom/a/a/b/e;->d:C

    const/16 v2, 0x10

    iput v2, v6, Lcom/a/a/b/e;->a:I

    goto/16 :goto_4

    :cond_25
    iget-object v3, v6, Lcom/a/a/b/e;->o:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    goto :goto_14

    :cond_26
    iget-char v2, v6, Lcom/a/a/b/e;->d:C

    const/16 v3, 0x5d

    if-ne v2, v3, :cond_28

    iget v2, v6, Lcom/a/a/b/e;->e:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v6, Lcom/a/a/b/e;->e:I

    iget v3, v6, Lcom/a/a/b/e;->p:I

    if-lt v2, v3, :cond_27

    const/16 v2, 0x1a

    :goto_15
    iput-char v2, v6, Lcom/a/a/b/e;->d:C

    const/16 v2, 0xf

    iput v2, v6, Lcom/a/a/b/e;->a:I

    goto/16 :goto_4

    :cond_27
    iget-object v3, v6, Lcom/a/a/b/e;->o:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    goto :goto_15

    :cond_28
    invoke-virtual {v6}, Lcom/a/a/b/e;->f()V

    goto/16 :goto_4

    :cond_29
    iget-char v4, v6, Lcom/a/a/b/e;->d:C

    const/16 v10, 0x5b

    if-ne v4, v10, :cond_2b

    iget v4, v6, Lcom/a/a/b/e;->e:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v6, Lcom/a/a/b/e;->e:I

    iget v10, v6, Lcom/a/a/b/e;->p:I

    if-lt v4, v10, :cond_2a

    const/16 v4, 0x1a

    :goto_16
    iput-char v4, v6, Lcom/a/a/b/e;->d:C

    const/16 v4, 0xe

    iput v4, v6, Lcom/a/a/b/e;->a:I

    :goto_17
    iget-object v4, v9, Lcom/a/a/d/a;->g:Ljava/lang/reflect/Type;

    const/4 v10, 0x0

    invoke-virtual {v3, p1, v7, v4, v10}, Lcom/a/a/b/a/d;->a(Lcom/a/a/b/b;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V

    const/16 v3, 0x5d

    if-ne v2, v3, :cond_2e

    iget v2, v6, Lcom/a/a/b/e;->a:I

    const/16 v3, 0xf

    if-eq v2, v3, :cond_0

    new-instance v2, Lcom/a/a/d;

    const-string v3, "syntax error"

    invoke-direct {v2, v3}, Lcom/a/a/d;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2a
    iget-object v10, v6, Lcom/a/a/b/e;->o:Ljava/lang/String;

    invoke-virtual {v10, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    goto :goto_16

    :cond_2b
    iget-char v4, v6, Lcom/a/a/b/e;->d:C

    const/16 v10, 0x7b

    if-ne v4, v10, :cond_2d

    iget v4, v6, Lcom/a/a/b/e;->e:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v6, Lcom/a/a/b/e;->e:I

    iget v10, v6, Lcom/a/a/b/e;->p:I

    if-lt v4, v10, :cond_2c

    const/16 v4, 0x1a

    :goto_18
    iput-char v4, v6, Lcom/a/a/b/e;->d:C

    const/16 v4, 0xc

    iput v4, v6, Lcom/a/a/b/e;->a:I

    goto :goto_17

    :cond_2c
    iget-object v10, v6, Lcom/a/a/b/e;->o:Ljava/lang/String;

    invoke-virtual {v10, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    goto :goto_18

    :cond_2d
    invoke-virtual {v6}, Lcom/a/a/b/e;->f()V

    goto :goto_17

    :cond_2e
    const/16 v3, 0x2c

    if-ne v2, v3, :cond_0

    iget v2, v6, Lcom/a/a/b/e;->a:I

    const/16 v3, 0x10

    if-eq v2, v3, :cond_0

    new-instance v2, Lcom/a/a/d;

    const-string v3, "syntax error"

    invoke-direct {v2, v3}, Lcom/a/a/d;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2f
    iget-char v2, v6, Lcom/a/a/b/e;->d:C

    const/16 v3, 0x2c

    if-ne v2, v3, :cond_31

    iget v2, v6, Lcom/a/a/b/e;->e:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v6, Lcom/a/a/b/e;->e:I

    iget v3, v6, Lcom/a/a/b/e;->p:I

    if-lt v2, v3, :cond_30

    const/16 v2, 0x1a

    :goto_19
    iput-char v2, v6, Lcom/a/a/b/e;->d:C

    const/16 v2, 0x10

    iput v2, v6, Lcom/a/a/b/e;->a:I

    :goto_1a
    return-object v7

    :cond_30
    iget-object v3, v6, Lcom/a/a/b/e;->o:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    goto :goto_19

    :cond_31
    invoke-virtual {v6}, Lcom/a/a/b/e;->f()V

    goto :goto_1a
.end method

.method private a(Lcom/a/a/b/b;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/b/b;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    iget-object v3, p1, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    invoke-virtual {p0, p2}, Lcom/a/a/b/g;->a(Ljava/lang/String;)Lcom/a/a/b/a/d;

    move-result-object v1

    if-nez v1, :cond_5

    const-string v0, "is"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    iget-object v5, p0, Lcom/a/a/b/g;->c:[Lcom/a/a/b/a/d;

    array-length v6, v5

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v6, :cond_5

    aget-object v0, v5, v2

    iget-object v7, v0, Lcom/a/a/b/a/d;->b:Lcom/a/a/d/a;

    iget-object v8, v7, Lcom/a/a/d/a;->f:Ljava/lang/Class;

    iget-object v7, v7, Lcom/a/a/d/a;->a:Ljava/lang/String;

    invoke-virtual {v7, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    :cond_0
    :goto_1
    if-nez v0, :cond_4

    invoke-virtual {p0, p1, p3, p2}, Lcom/a/a/b/g;->a(Lcom/a/a/b/b;Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_2
    return v0

    :cond_1
    if-eqz v4, :cond_3

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v8, v9, :cond_2

    const-class v9, Ljava/lang/Boolean;

    if-ne v8, v9, :cond_3

    :cond_2
    const/4 v8, 0x2

    invoke-virtual {p2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_4
    const/16 v1, 0x3a

    invoke-virtual {v3, v1}, Lcom/a/a/b/e;->a(C)V

    invoke-virtual {v0, p1, p3, p4, p5}, Lcom/a/a/b/a/d;->a(Lcom/a/a/b/b;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V

    const/4 v0, 0x1

    goto :goto_2

    :cond_5
    move-object v0, v1

    goto :goto_1
.end method

.method private b(Lcom/a/a/b/b;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/a/a/b/b;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    const-class v4, Lcom/a/a/a;

    move-object/from16 v0, p2

    if-eq v0, v4, :cond_0

    const-class v4, Lcom/a/a/e;

    move-object/from16 v0, p2

    if-ne v0, v4, :cond_1

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/a/a/b/b;->e()Ljava/lang/Object;

    move-result-object p4

    :goto_0
    return-object p4

    :cond_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v6, v0, Lcom/a/a/b/e;->a:I

    const/16 v4, 0x8

    if-ne v6, v4, :cond_2

    const/16 v4, 0x10

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lcom/a/a/b/e;->b(I)V

    const/16 p4, 0x0

    goto :goto_0

    :cond_2
    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/a/a/b/e;->r:Z

    move/from16 v24, v0

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/a/a/b/b;->d:Lcom/a/a/b/l;

    if-eqz p4, :cond_64

    if-eqz v4, :cond_64

    iget-object v4, v4, Lcom/a/a/b/l;->b:Lcom/a/a/b/l;

    move-object v10, v4

    :goto_1
    const/4 v5, 0x0

    const/4 v9, 0x0

    const/16 v4, 0xd

    if-ne v6, v4, :cond_5

    const/16 v4, 0x10

    :try_start_0
    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lcom/a/a/b/e;->b(I)V

    if-nez p4, :cond_3

    invoke-virtual/range {p0 .. p2}, Lcom/a/a/b/g;->a(Lcom/a/a/b/b;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p4

    :cond_3
    if-eqz v5, :cond_4

    move-object/from16 v0, p4

    iput-object v0, v5, Lcom/a/a/b/l;->a:Ljava/lang/Object;

    :cond_4
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lcom/a/a/b/b;->a(Lcom/a/a/b/l;)V

    goto :goto_0

    :cond_5
    const/16 v4, 0xe

    if-ne v6, v4, :cond_9

    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/a/a/b/g;->a:Lcom/a/a/b/h;

    iget-boolean v4, v4, Lcom/a/a/b/h;->i:Z

    if-nez v4, :cond_6

    move-object/from16 v0, v23

    iget v4, v0, Lcom/a/a/b/e;->c:I

    sget-object v7, Lcom/a/a/b/d;->n:Lcom/a/a/b/d;

    iget v7, v7, Lcom/a/a/b/d;->q:I

    and-int/2addr v4, v7

    if-eqz v4, :cond_8

    :cond_6
    const/4 v4, 0x1

    :goto_2
    if-eqz v4, :cond_9

    invoke-direct/range {p0 .. p4}, Lcom/a/a/b/g;->a(Lcom/a/a/b/b;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    if-eqz v5, :cond_7

    move-object/from16 v0, p4

    iput-object v0, v5, Lcom/a/a/b/l;->a:Ljava/lang/Object;

    :cond_7
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lcom/a/a/b/b;->a(Lcom/a/a/b/l;)V

    move-object/from16 p4, v7

    goto :goto_0

    :cond_8
    const/4 v4, 0x0

    goto :goto_2

    :cond_9
    const/16 v4, 0xc

    if-eq v6, v4, :cond_10

    const/16 v4, 0x10

    if-eq v6, v4, :cond_10

    :try_start_2
    invoke-virtual/range {v23 .. v23}, Lcom/a/a/b/e;->q()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v4

    if-eqz v4, :cond_b

    const/4 v7, 0x0

    if-eqz v5, :cond_a

    move-object/from16 v0, p4

    iput-object v0, v5, Lcom/a/a/b/l;->a:Ljava/lang/Object;

    :cond_a
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lcom/a/a/b/b;->a(Lcom/a/a/b/l;)V

    move-object/from16 p4, v7

    goto/16 :goto_0

    :cond_b
    const/4 v4, 0x4

    if-ne v6, v4, :cond_d

    :try_start_3
    invoke-virtual/range {v23 .. v23}, Lcom/a/a/b/e;->p()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_d

    invoke-virtual/range {v23 .. v23}, Lcom/a/a/b/e;->f()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v7, 0x0

    if-eqz v5, :cond_c

    move-object/from16 v0, p4

    iput-object v0, v5, Lcom/a/a/b/l;->a:Ljava/lang/Object;

    :cond_c
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lcom/a/a/b/b;->a(Lcom/a/a/b/l;)V

    move-object/from16 p4, v7

    goto/16 :goto_0

    :cond_d
    :try_start_4
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "syntax error, expect {, actual "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual/range {v23 .. v23}, Lcom/a/a/b/e;->j()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    move-object/from16 v0, p3

    instance-of v6, v0, Ljava/lang/String;

    if-eqz v6, :cond_e

    const-string v6, ", fieldName "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    :cond_e
    new-instance v6, Lcom/a/a/d;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Lcom/a/a/d;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v4

    move-object v8, v4

    move-object v11, v5

    move-object/from16 v7, p4

    :goto_3
    if-eqz v11, :cond_f

    iput-object v7, v11, Lcom/a/a/b/l;->a:Ljava/lang/Object;

    :cond_f
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lcom/a/a/b/b;->a(Lcom/a/a/b/l;)V

    throw v8

    :cond_10
    :try_start_5
    move-object/from16 v0, p1

    iget v4, v0, Lcom/a/a/b/b;->e:I

    const/4 v6, 0x2

    if-ne v4, v6, :cond_11

    const/4 v4, 0x0

    move-object/from16 v0, p1

    iput v4, v0, Lcom/a/a/b/b;->e:I

    :cond_11
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/a/a/b/g;->c:[Lcom/a/a/b/a/d;

    array-length v0, v6

    move/from16 v25, v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move/from16 v22, v4

    move-object/from16 v7, p4

    :goto_4
    const/4 v11, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    move/from16 v0, v22

    move/from16 v1, v25

    if-ge v0, v1, :cond_62

    :try_start_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/a/a/b/g;->c:[Lcom/a/a/b/a/d;

    aget-object v8, v4, v22

    iget-object v6, v8, Lcom/a/a/b/a/d;->b:Lcom/a/a/d/a;

    iget-object v4, v6, Lcom/a/a/d/a;->f:Ljava/lang/Class;

    move-object/from16 v19, v4

    move-object/from16 v20, v6

    move-object/from16 v21, v8

    :goto_5
    const/4 v8, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const/4 v14, 0x0

    const-wide/16 v12, 0x0

    if-eqz v21, :cond_61

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/a/a/d/a;->j:[C

    move-object/from16 v18, v0

    sget-object v26, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    if-eq v0, v1, :cond_12

    const-class v26, Ljava/lang/Integer;

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_16

    :cond_12
    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/a/a/b/e;->b([C)I

    move-result v15

    move-object/from16 v0, v23

    iget v0, v0, Lcom/a/a/b/e;->n:I

    move/from16 v18, v0

    if-lez v18, :cond_15

    const/4 v8, 0x1

    const/4 v6, 0x1

    move/from16 v18, v6

    :goto_6
    if-nez v8, :cond_3a

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/a/a/b/b;->a:Lcom/a/a/b/o;

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Lcom/a/a/b/e;->a(Lcom/a/a/b/o;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_29

    move-object/from16 v0, v23

    iget v11, v0, Lcom/a/a/b/e;->a:I

    const/16 v26, 0xd

    move/from16 v0, v26

    if-ne v11, v0, :cond_28

    const/16 v4, 0x10

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lcom/a/a/b/e;->b(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object v4, v5

    move-object v6, v7

    :goto_7
    if-nez v6, :cond_5e

    if-nez v9, :cond_5a

    :try_start_7
    invoke-virtual/range {p0 .. p2}, Lcom/a/a/b/g;->a(Lcom/a/a/b/b;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    move-result-object p4

    if-nez v4, :cond_13

    :try_start_8
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p3

    invoke-virtual {v0, v10, v1, v2}, Lcom/a/a/b/b;->a(Lcom/a/a/b/l;Ljava/lang/Object;Ljava/lang/Object;)Lcom/a/a/b/l;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    move-result-object v4

    :cond_13
    if-eqz v4, :cond_14

    move-object/from16 v0, p4

    iput-object v0, v4, Lcom/a/a/b/l;->a:Ljava/lang/Object;

    :cond_14
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lcom/a/a/b/b;->a(Lcom/a/a/b/l;)V

    goto/16 :goto_0

    :cond_15
    :try_start_9
    move-object/from16 v0, v23

    iget v0, v0, Lcom/a/a/b/e;->n:I

    move/from16 v18, v0

    const/16 v26, -0x2

    move/from16 v0, v18

    move/from16 v1, v26

    if-ne v0, v1, :cond_61

    move-object v4, v5

    :goto_8
    add-int/lit8 v6, v22, 0x1

    move/from16 v22, v6

    move-object v5, v4

    goto/16 :goto_4

    :cond_16
    sget-object v26, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    if-eq v0, v1, :cond_17

    const-class v26, Ljava/lang/Long;

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_19

    :cond_17
    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/a/a/b/e;->c([C)J

    move-result-wide v16

    move-object/from16 v0, v23

    iget v0, v0, Lcom/a/a/b/e;->n:I

    move/from16 v18, v0

    if-lez v18, :cond_18

    const/4 v8, 0x1

    const/4 v6, 0x1

    move/from16 v18, v6

    goto :goto_6

    :cond_18
    move-object/from16 v0, v23

    iget v0, v0, Lcom/a/a/b/e;->n:I

    move/from16 v18, v0

    const/16 v26, -0x2

    move/from16 v0, v18

    move/from16 v1, v26

    if-ne v0, v1, :cond_61

    move-object v4, v5

    goto :goto_8

    :cond_19
    const-class v26, Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_1b

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/a/a/b/e;->d([C)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    iget v0, v0, Lcom/a/a/b/e;->n:I

    move/from16 v18, v0

    if-lez v18, :cond_1a

    const/4 v8, 0x1

    const/4 v6, 0x1

    move/from16 v18, v6

    goto/16 :goto_6

    :cond_1a
    move-object/from16 v0, v23

    iget v0, v0, Lcom/a/a/b/e;->n:I

    move/from16 v18, v0

    const/16 v26, -0x2

    move/from16 v0, v18

    move/from16 v1, v26

    if-ne v0, v1, :cond_61

    move-object v4, v5

    goto :goto_8

    :cond_1b
    sget-object v26, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    if-eq v0, v1, :cond_1c

    const-class v26, Ljava/lang/Boolean;

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_1e

    :cond_1c
    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/a/a/b/e;->e([C)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object/from16 v0, v23

    iget v0, v0, Lcom/a/a/b/e;->n:I

    move/from16 v18, v0

    if-lez v18, :cond_1d

    const/4 v8, 0x1

    const/4 v6, 0x1

    move/from16 v18, v6

    goto/16 :goto_6

    :cond_1d
    move-object/from16 v0, v23

    iget v0, v0, Lcom/a/a/b/e;->n:I

    move/from16 v18, v0

    const/16 v26, -0x2

    move/from16 v0, v18

    move/from16 v1, v26

    if-ne v0, v1, :cond_61

    move-object v4, v5

    goto/16 :goto_8

    :cond_1e
    sget-object v26, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    if-eq v0, v1, :cond_1f

    const-class v26, Ljava/lang/Float;

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_21

    :cond_1f
    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/a/a/b/e;->f([C)F

    move-result v14

    move-object/from16 v0, v23

    iget v0, v0, Lcom/a/a/b/e;->n:I

    move/from16 v18, v0

    if-lez v18, :cond_20

    const/4 v8, 0x1

    const/4 v6, 0x1

    move/from16 v18, v6

    goto/16 :goto_6

    :cond_20
    move-object/from16 v0, v23

    iget v0, v0, Lcom/a/a/b/e;->n:I

    move/from16 v18, v0

    const/16 v26, -0x2

    move/from16 v0, v18

    move/from16 v1, v26

    if-ne v0, v1, :cond_61

    move-object v4, v5

    goto/16 :goto_8

    :cond_21
    sget-object v26, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    if-eq v0, v1, :cond_22

    const-class v26, Ljava/lang/Double;

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_24

    :cond_22
    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/a/a/b/e;->g([C)D

    move-result-wide v12

    move-object/from16 v0, v23

    iget v0, v0, Lcom/a/a/b/e;->n:I

    move/from16 v18, v0

    if-lez v18, :cond_23

    const/4 v8, 0x1

    const/4 v6, 0x1

    move/from16 v18, v6

    goto/16 :goto_6

    :cond_23
    move-object/from16 v0, v23

    iget v0, v0, Lcom/a/a/b/e;->n:I

    move/from16 v18, v0

    const/16 v26, -0x2

    move/from16 v0, v18

    move/from16 v1, v26

    if-ne v0, v1, :cond_61

    move-object v4, v5

    goto/16 :goto_8

    :cond_24
    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/a/a/d/a;->k:Z

    move/from16 v26, v0

    if-eqz v26, :cond_27

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/a/a/b/b;->b:Lcom/a/a/b/m;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/a/a/b/m;->a(Ljava/lang/reflect/Type;)Lcom/a/a/b/a/f;

    move-result-object v26

    move-object/from16 v0, v26

    instance-of v0, v0, Lcom/a/a/b/c;

    move/from16 v26, v0

    if-eqz v26, :cond_27

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/a/a/b/b;->a:Lcom/a/a/b/o;

    move-object/from16 v26, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/a/a/b/e;->a([CLcom/a/a/b/o;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v23

    iget v0, v0, Lcom/a/a/b/e;->n:I

    move/from16 v26, v0

    if-lez v26, :cond_26

    const/4 v8, 0x1

    const/4 v6, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v4

    :cond_25
    move/from16 v18, v6

    goto/16 :goto_6

    :cond_26
    move-object/from16 v0, v23

    iget v0, v0, Lcom/a/a/b/e;->n:I

    move/from16 v18, v0

    const/16 v26, -0x2

    move/from16 v0, v18

    move/from16 v1, v26

    if-ne v0, v1, :cond_25

    move-object v4, v5

    goto/16 :goto_8

    :cond_27
    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/a/a/b/e;->a([C)Z

    move-result v8

    if-eqz v8, :cond_60

    const/4 v8, 0x1

    move/from16 v18, v6

    goto/16 :goto_6

    :cond_28
    const/16 v26, 0x10

    move/from16 v0, v26

    if-ne v11, v0, :cond_29

    move-object/from16 v0, v23

    iget v11, v0, Lcom/a/a/b/e;->c:I

    sget-object v26, Lcom/a/a/b/d;->g:Lcom/a/a/b/d;

    move-object/from16 v0, v26

    iget v0, v0, Lcom/a/a/b/d;->q:I

    move/from16 v26, v0

    and-int v11, v11, v26

    if-eqz v11, :cond_29

    move-object v4, v5

    goto/16 :goto_8

    :cond_29
    const-string v11, "$ref"

    if-ne v11, v6, :cond_33

    const/16 v4, 0x3a

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lcom/a/a/b/e;->a(C)V

    move-object/from16 v0, v23

    iget v4, v0, Lcom/a/a/b/e;->a:I

    const/4 v6, 0x4

    if-ne v4, v6, :cond_30

    invoke-virtual/range {v23 .. v23}, Lcom/a/a/b/e;->p()Ljava/lang/String;

    move-result-object v6

    const-string v4, "@"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    iget-object v7, v10, Lcom/a/a/b/l;->a:Ljava/lang/Object;

    :goto_9
    const/16 v4, 0xd

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lcom/a/a/b/e;->b(I)V

    move-object/from16 v0, v23

    iget v4, v0, Lcom/a/a/b/e;->a:I

    const/16 v6, 0xd

    if-eq v4, v6, :cond_31

    new-instance v4, Lcom/a/a/d;

    const-string v6, "illegal ref"

    invoke-direct {v4, v6}, Lcom/a/a/d;-><init>(Ljava/lang/String;)V

    throw v4

    :catchall_1
    move-exception v4

    move-object v8, v4

    move-object v11, v5

    goto/16 :goto_3

    :cond_2a
    const-string v4, ".."

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    iget-object v4, v10, Lcom/a/a/b/l;->b:Lcom/a/a/b/l;

    iget-object v8, v4, Lcom/a/a/b/l;->a:Ljava/lang/Object;

    if-eqz v8, :cond_2b

    iget-object v7, v4, Lcom/a/a/b/l;->a:Ljava/lang/Object;

    goto :goto_9

    :cond_2b
    new-instance v8, Lcom/a/a/b/b$a;

    invoke-direct {v8, v4, v6}, Lcom/a/a/b/b$a;-><init>(Lcom/a/a/b/l;Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lcom/a/a/b/b;->a(Lcom/a/a/b/b$a;)V

    const/4 v4, 0x1

    move-object/from16 v0, p1

    iput v4, v0, Lcom/a/a/b/b;->e:I

    goto :goto_9

    :cond_2c
    const-string v4, "$"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    move-object v4, v10

    :goto_a
    iget-object v8, v4, Lcom/a/a/b/l;->b:Lcom/a/a/b/l;

    if-eqz v8, :cond_2d

    iget-object v4, v4, Lcom/a/a/b/l;->b:Lcom/a/a/b/l;

    goto :goto_a

    :cond_2d
    iget-object v8, v4, Lcom/a/a/b/l;->a:Ljava/lang/Object;

    if-eqz v8, :cond_2e

    iget-object v7, v4, Lcom/a/a/b/l;->a:Ljava/lang/Object;

    goto :goto_9

    :cond_2e
    new-instance v8, Lcom/a/a/b/b$a;

    invoke-direct {v8, v4, v6}, Lcom/a/a/b/b$a;-><init>(Lcom/a/a/b/l;Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lcom/a/a/b/b;->a(Lcom/a/a/b/b$a;)V

    const/4 v4, 0x1

    move-object/from16 v0, p1

    iput v4, v0, Lcom/a/a/b/b;->e:I

    goto :goto_9

    :cond_2f
    new-instance v4, Lcom/a/a/b/b$a;

    invoke-direct {v4, v10, v6}, Lcom/a/a/b/b$a;-><init>(Lcom/a/a/b/l;Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/a/a/b/b;->a(Lcom/a/a/b/b$a;)V

    const/4 v4, 0x1

    move-object/from16 v0, p1

    iput v4, v0, Lcom/a/a/b/b;->e:I

    goto :goto_9

    :cond_30
    new-instance v6, Lcom/a/a/d;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "illegal ref, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v4}, Lcom/a/a/b/f;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Lcom/a/a/d;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_31
    const/16 v4, 0x10

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lcom/a/a/b/e;->b(I)V

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v10, v7, v1}, Lcom/a/a/b/b;->a(Lcom/a/a/b/l;Ljava/lang/Object;Ljava/lang/Object;)Lcom/a/a/b/l;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-eqz v5, :cond_32

    iput-object v7, v5, Lcom/a/a/b/l;->a:Ljava/lang/Object;

    :cond_32
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lcom/a/a/b/b;->a(Lcom/a/a/b/l;)V

    move-object/from16 p4, v7

    goto/16 :goto_0

    :cond_33
    :try_start_a
    const-string v11, "@type"

    if-ne v11, v6, :cond_3b

    const/16 v4, 0x3a

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lcom/a/a/b/e;->a(C)V

    move-object/from16 v0, v23

    iget v4, v0, Lcom/a/a/b/e;->a:I

    const/4 v6, 0x4

    if-ne v4, v6, :cond_39

    invoke-virtual/range {v23 .. v23}, Lcom/a/a/b/e;->p()Ljava/lang/String;

    move-result-object v8

    const/16 v4, 0x10

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lcom/a/a/b/e;->b(I)V

    move-object/from16 v0, p2

    instance-of v4, v0, Ljava/lang/Class;

    if-eqz v4, :cond_34

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Class;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_34

    move-object/from16 v0, v23

    iget v4, v0, Lcom/a/a/b/e;->a:I

    const/16 v6, 0xd

    if-ne v4, v6, :cond_60

    invoke-virtual/range {v23 .. v23}, Lcom/a/a/b/e;->f()V

    move-object v4, v5

    move-object v6, v7

    goto/16 :goto_7

    :cond_34
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/a/a/b/b;->b:Lcom/a/a/b/m;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/a/a/b/g;->a:Lcom/a/a/b/h;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6, v8}, Lcom/a/a/b/g;->a(Lcom/a/a/b/m;Lcom/a/a/b/h;Ljava/lang/String;)Lcom/a/a/b/g;

    move-result-object v6

    const/4 v4, 0x0

    if-nez v6, :cond_36

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/a/a/b/b;->b:Lcom/a/a/b/m;

    iget-object v4, v4, Lcom/a/a/b/m;->c:Ljava/lang/ClassLoader;

    invoke-static {v8, v4}, Lcom/a/a/d/d;->a(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4

    invoke-static/range {p2 .. p2}, Lcom/a/a/d/d;->c(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v6

    if-eqz v6, :cond_35

    if-eqz v4, :cond_38

    invoke-virtual {v6, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_38

    :cond_35
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/a/a/b/b;->b:Lcom/a/a/b/m;

    invoke-virtual {v6, v4}, Lcom/a/a/b/m;->a(Ljava/lang/reflect/Type;)Lcom/a/a/b/a/f;

    move-result-object v6

    :cond_36
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-interface {v6, v0, v4, v1}, Lcom/a/a/b/a/f;->a(Lcom/a/a/b/b;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move-result-object p4

    if-eqz v5, :cond_37

    iput-object v7, v5, Lcom/a/a/b/l;->a:Ljava/lang/Object;

    :cond_37
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lcom/a/a/b/b;->a(Lcom/a/a/b/l;)V

    goto/16 :goto_0

    :cond_38
    :try_start_b
    new-instance v4, Lcom/a/a/d;

    const-string v6, "type not match"

    invoke-direct {v4, v6}, Lcom/a/a/d;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_39
    new-instance v4, Lcom/a/a/d;

    const-string v6, "syntax error"

    invoke-direct {v4, v6}, Lcom/a/a/d;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_3a
    move-object v6, v11

    :cond_3b
    if-nez v7, :cond_5f

    if-nez v9, :cond_5f

    invoke-virtual/range {p0 .. p2}, Lcom/a/a/b/g;->a(Lcom/a/a/b/b;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_3c

    new-instance v9, Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/a/a/b/g;->b:[Lcom/a/a/b/a/d;

    array-length v11, v11

    invoke-direct {v9, v11}, Ljava/util/HashMap;-><init>(I)V

    :cond_3c
    if-nez v24, :cond_5f

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v10, v7, v1}, Lcom/a/a/b/b;->a(Lcom/a/a/b/l;Ljava/lang/Object;Ljava/lang/Object;)Lcom/a/a/b/l;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    move-result-object v5

    move-object v11, v5

    :goto_b
    if-eqz v8, :cond_55

    if-nez v18, :cond_3e

    :try_start_c
    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v7, v2, v9}, Lcom/a/a/b/a/d;->a(Lcom/a/a/b/b;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V

    :cond_3d
    move-object/from16 v0, v23

    iget v4, v0, Lcom/a/a/b/e;->a:I

    const/16 v5, 0x10

    if-ne v4, v5, :cond_57

    move-object v4, v11

    goto/16 :goto_8

    :cond_3e
    if-nez v7, :cond_47

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v19

    if-eq v0, v5, :cond_3f

    const-class v5, Ljava/lang/Integer;

    move-object/from16 v0, v19

    if-ne v0, v5, :cond_41

    :cond_3f
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :cond_40
    :goto_c
    move-object/from16 v0, v20

    iget-object v5, v0, Lcom/a/a/d/a;->a:Ljava/lang/String;

    invoke-interface {v9, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_d
    move-object/from16 v0, v23

    iget v4, v0, Lcom/a/a/b/e;->n:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_3d

    move-object v4, v11

    move-object v6, v7

    goto/16 :goto_7

    :cond_41
    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v19

    if-eq v0, v5, :cond_42

    const-class v5, Ljava/lang/Long;

    move-object/from16 v0, v19

    if-ne v0, v5, :cond_43

    :cond_42
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    goto :goto_c

    :cond_43
    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v19

    if-eq v0, v5, :cond_44

    const-class v5, Ljava/lang/Float;

    move-object/from16 v0, v19

    if-ne v0, v5, :cond_45

    :cond_44
    new-instance v4, Ljava/lang/Float;

    invoke-direct {v4, v14}, Ljava/lang/Float;-><init>(F)V

    goto :goto_c

    :catchall_2
    move-exception v4

    move-object v8, v4

    goto/16 :goto_3

    :cond_45
    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v19

    if-eq v0, v5, :cond_46

    const-class v5, Ljava/lang/Double;

    move-object/from16 v0, v19

    if-ne v0, v5, :cond_40

    :cond_46
    new-instance v4, Ljava/lang/Double;

    invoke-direct {v4, v12, v13}, Ljava/lang/Double;-><init>(D)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    goto :goto_c

    :cond_47
    if-nez v4, :cond_54

    :try_start_d
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v19

    if-eq v0, v5, :cond_48

    const-class v5, Ljava/lang/Integer;

    move-object/from16 v0, v19

    if-ne v0, v5, :cond_4a

    :cond_48
    move-object/from16 v0, v20

    iget-boolean v4, v0, Lcom/a/a/d/a;->d:Z

    if-eqz v4, :cond_49

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v19

    if-ne v0, v4, :cond_49

    move-object/from16 v0, v21

    invoke-virtual {v0, v7, v15}, Lcom/a/a/b/a/d;->a(Ljava/lang/Object;I)V
    :try_end_d
    .catch Ljava/lang/IllegalAccessException; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    goto :goto_d

    :catch_0
    move-exception v4

    :try_start_e
    new-instance v5, Lcom/a/a/d;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "set property error, "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v20

    iget-object v8, v0, Lcom/a/a/d/a;->a:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Lcom/a/a/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    :cond_49
    :try_start_f
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v7, v4}, Lcom/a/a/b/a/d;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_d

    :cond_4a
    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v19

    if-eq v0, v5, :cond_4b

    const-class v5, Ljava/lang/Long;

    move-object/from16 v0, v19

    if-ne v0, v5, :cond_4d

    :cond_4b
    move-object/from16 v0, v20

    iget-boolean v4, v0, Lcom/a/a/d/a;->d:Z

    if-eqz v4, :cond_4c

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v19

    if-ne v0, v4, :cond_4c

    move-object/from16 v0, v21

    move-wide/from16 v1, v16

    invoke-virtual {v0, v7, v1, v2}, Lcom/a/a/b/a/d;->a(Ljava/lang/Object;J)V

    goto/16 :goto_d

    :cond_4c
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v7, v4}, Lcom/a/a/b/a/d;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_d

    :cond_4d
    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v19

    if-eq v0, v5, :cond_4e

    const-class v5, Ljava/lang/Float;

    move-object/from16 v0, v19

    if-ne v0, v5, :cond_50

    :cond_4e
    move-object/from16 v0, v20

    iget-boolean v4, v0, Lcom/a/a/d/a;->d:Z

    if-eqz v4, :cond_4f

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v19

    if-ne v0, v4, :cond_4f

    move-object/from16 v0, v21

    invoke-virtual {v0, v7, v14}, Lcom/a/a/b/a/d;->a(Ljava/lang/Object;F)V

    goto/16 :goto_d

    :cond_4f
    new-instance v4, Ljava/lang/Float;

    invoke-direct {v4, v14}, Ljava/lang/Float;-><init>(F)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v7, v4}, Lcom/a/a/b/a/d;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_d

    :cond_50
    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v19

    if-eq v0, v5, :cond_51

    const-class v5, Ljava/lang/Double;

    move-object/from16 v0, v19

    if-ne v0, v5, :cond_53

    :cond_51
    move-object/from16 v0, v20

    iget-boolean v4, v0, Lcom/a/a/d/a;->d:Z

    if-eqz v4, :cond_52

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v19

    if-ne v0, v4, :cond_52

    move-object/from16 v0, v21

    invoke-virtual {v0, v7, v12, v13}, Lcom/a/a/b/a/d;->a(Ljava/lang/Object;D)V

    goto/16 :goto_d

    :cond_52
    new-instance v4, Ljava/lang/Double;

    invoke-direct {v4, v12, v13}, Ljava/lang/Double;-><init>(D)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v7, v4}, Lcom/a/a/b/a/d;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_d

    :cond_53
    move-object/from16 v0, v21

    invoke-virtual {v0, v7, v4}, Lcom/a/a/b/a/d;->a(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_f
    .catch Ljava/lang/IllegalAccessException; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    goto/16 :goto_d

    :cond_54
    :try_start_10
    move-object/from16 v0, v21

    invoke-virtual {v0, v7, v4}, Lcom/a/a/b/a/d;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_d

    :cond_55
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v8, p2

    invoke-direct/range {v4 .. v9}, Lcom/a/a/b/g;->a(Lcom/a/a/b/b;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)Z

    move-result v4

    if-nez v4, :cond_56

    move-object/from16 v0, v23

    iget v4, v0, Lcom/a/a/b/e;->a:I

    const/16 v5, 0xd

    if-ne v4, v5, :cond_63

    invoke-virtual/range {v23 .. v23}, Lcom/a/a/b/e;->f()V

    move-object v4, v11

    move-object v6, v7

    goto/16 :goto_7

    :cond_56
    move-object/from16 v0, v23

    iget v4, v0, Lcom/a/a/b/e;->a:I

    const/16 v5, 0x11

    if-ne v4, v5, :cond_3d

    new-instance v4, Lcom/a/a/d;

    const-string v5, "syntax error, unexpect token \':\'"

    invoke-direct {v4, v5}, Lcom/a/a/d;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_57
    move-object/from16 v0, v23

    iget v4, v0, Lcom/a/a/b/e;->a:I

    const/16 v5, 0xd

    if-ne v4, v5, :cond_58

    const/16 v4, 0x10

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lcom/a/a/b/e;->b(I)V

    move-object v4, v11

    move-object v6, v7

    goto/16 :goto_7

    :cond_58
    move-object/from16 v0, v23

    iget v4, v0, Lcom/a/a/b/e;->a:I

    const/16 v5, 0x12

    if-eq v4, v5, :cond_59

    move-object/from16 v0, v23

    iget v4, v0, Lcom/a/a/b/e;->a:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_63

    :cond_59
    new-instance v4, Lcom/a/a/d;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "syntax error, unexpect token "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v23

    iget v6, v0, Lcom/a/a/b/e;->a:I

    invoke-static {v6}, Lcom/a/a/b/f;->a(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/a/a/d;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    :cond_5a
    :try_start_11
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/a/a/b/g;->b:[Lcom/a/a/b/a/d;

    array-length v7, v5

    new-array v8, v7, [Ljava/lang/Object;

    const/4 v5, 0x0

    :goto_e
    if-ge v5, v7, :cond_5b

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/a/a/b/g;->b:[Lcom/a/a/b/a/d;

    aget-object v11, v11, v5

    iget-object v11, v11, Lcom/a/a/b/a/d;->b:Lcom/a/a/d/a;

    iget-object v11, v11, Lcom/a/a/d/a;->a:Ljava/lang/String;

    invoke-interface {v9, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    aput-object v11, v8, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    :cond_5b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/a/a/b/g;->a:Lcom/a/a/b/h;

    iget-object v5, v5, Lcom/a/a/b/h;->c:Ljava/lang/reflect/Constructor;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    if-eqz v5, :cond_5d

    :try_start_12
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/a/a/b/g;->a:Lcom/a/a/b/h;

    iget-object v5, v5, Lcom/a/a/b/h;->c:Ljava/lang/reflect/Constructor;

    invoke-virtual {v5, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_1
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    move-result-object v5

    :goto_f
    if-eqz v4, :cond_5c

    iput-object v5, v4, Lcom/a/a/b/l;->a:Ljava/lang/Object;

    :cond_5c
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lcom/a/a/b/b;->a(Lcom/a/a/b/l;)V

    move-object/from16 p4, v5

    goto/16 :goto_0

    :catch_1
    move-exception v5

    :try_start_13
    new-instance v7, Lcom/a/a/d;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "create instance error, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/a/a/b/g;->a:Lcom/a/a/b/h;

    iget-object v9, v9, Lcom/a/a/b/h;->c:Ljava/lang/reflect/Constructor;

    invoke-virtual {v9}, Ljava/lang/reflect/Constructor;->toGenericString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v5}, Lcom/a/a/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    :catchall_3
    move-exception v5

    move-object v8, v5

    move-object v11, v4

    move-object v7, v6

    goto/16 :goto_3

    :cond_5d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/a/a/b/g;->a:Lcom/a/a/b/h;

    iget-object v5, v5, Lcom/a/a/b/h;->d:Ljava/lang/reflect/Method;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    if-eqz v5, :cond_5e

    :try_start_14
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/a/a/b/g;->a:Lcom/a/a/b/h;

    iget-object v5, v5, Lcom/a/a/b/h;->d:Ljava/lang/reflect/Method;

    const/4 v7, 0x0

    invoke-virtual {v5, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_2
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    move-result-object v5

    goto :goto_f

    :catch_2
    move-exception v5

    :try_start_15
    new-instance v7, Lcom/a/a/d;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "create factory method error, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/a/a/b/g;->a:Lcom/a/a/b/h;

    iget-object v9, v9, Lcom/a/a/b/h;->d:Ljava/lang/reflect/Method;

    invoke-virtual {v9}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v5}, Lcom/a/a/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    :catchall_4
    move-exception v5

    move-object v8, v5

    move-object v11, v4

    move-object/from16 v7, p4

    goto/16 :goto_3

    :cond_5e
    move-object v5, v6

    goto :goto_f

    :cond_5f
    move-object v11, v5

    goto/16 :goto_b

    :cond_60
    move-object v4, v5

    goto/16 :goto_8

    :cond_61
    move/from16 v18, v6

    goto/16 :goto_6

    :cond_62
    move-object/from16 v19, v4

    move-object/from16 v20, v6

    move-object/from16 v21, v8

    goto/16 :goto_5

    :cond_63
    move-object v4, v11

    goto/16 :goto_8

    :cond_64
    move-object v10, v4

    goto/16 :goto_1
.end method


# virtual methods
.method protected a(Ljava/lang/String;)Lcom/a/a/b/a/d;
    .locals 5

    const/4 v0, 0x0

    const/4 v3, 0x0

    if-nez p1, :cond_0

    move-object v0, v3

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/a/a/b/g;->a:Lcom/a/a/b/h;

    iget-boolean v1, v1, Lcom/a/a/b/h;->h:Z

    if-eqz v1, :cond_3

    :goto_1
    iget-object v1, p0, Lcom/a/a/b/g;->c:[Lcom/a/a/b/a/d;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/a/a/b/g;->c:[Lcom/a/a/b/a/d;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/a/a/b/a/d;->b:Lcom/a/a/d/a;

    iget-object v1, v1, Lcom/a/a/d/a;->a:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/a/a/b/g;->c:[Lcom/a/a/b/a/d;

    aget-object v0, v1, v0

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v3

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/a/a/b/g;->c:[Lcom/a/a/b/a/d;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    move v2, v0

    :goto_2
    if-gt v2, v1, :cond_6

    add-int v0, v2, v1

    ushr-int/lit8 v0, v0, 0x1

    iget-object v4, p0, Lcom/a/a/b/g;->c:[Lcom/a/a/b/a/d;

    aget-object v4, v4, v0

    iget-object v4, v4, Lcom/a/a/b/a/d;->b:Lcom/a/a/d/a;

    iget-object v4, v4, Lcom/a/a/d/a;->a:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_4

    add-int/lit8 v2, v0, 0x1

    move v0, v1

    :goto_3
    move v1, v0

    goto :goto_2

    :cond_4
    if-lez v4, :cond_5

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_5
    iget-object v1, p0, Lcom/a/a/b/g;->c:[Lcom/a/a/b/a/d;

    aget-object v0, v1, v0

    goto :goto_0

    :cond_6
    move-object v0, v3

    goto :goto_0
.end method

.method protected a(Lcom/a/a/b/m;Lcom/a/a/b/h;Ljava/lang/String;)Lcom/a/a/b/g;
    .locals 7

    const/4 v1, 0x0

    iget-object v0, p2, Lcom/a/a/b/h;->g:Lcom/a/a/a/c;

    if-nez v0, :cond_1

    move-object v0, v1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p2, Lcom/a/a/b/h;->g:Lcom/a/a/a/c;

    invoke-interface {v0}, Lcom/a/a/a/c;->g()[Ljava/lang/Class;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v4, :cond_3

    aget-object v0, v3, v2

    invoke-virtual {p1, v0}, Lcom/a/a/b/m;->a(Ljava/lang/reflect/Type;)Lcom/a/a/b/a/f;

    move-result-object v0

    instance-of v5, v0, Lcom/a/a/b/g;

    if-eqz v5, :cond_2

    check-cast v0, Lcom/a/a/b/g;

    iget-object v5, v0, Lcom/a/a/b/g;->a:Lcom/a/a/b/h;

    iget-object v6, v5, Lcom/a/a/b/h;->j:Ljava/lang/String;

    invoke-virtual {v6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {p0, p1, v5, p3}, Lcom/a/a/b/g;->a(Lcom/a/a/b/m;Lcom/a/a/b/h;Ljava/lang/String;)Lcom/a/a/b/g;

    move-result-object v0

    if-nez v0, :cond_0

    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method protected a(Lcom/a/a/b/b;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    instance-of v0, p2, Ljava/lang/Class;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/a/a/b/g;->d:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_2

    check-cast p2, Ljava/lang/Class;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    iget-object v0, p1, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    iget v0, v0, Lcom/a/a/b/e;->c:I

    sget-object v4, Lcom/a/a/b/d;->o:Lcom/a/a/b/d;

    iget v4, v4, Lcom/a/a/b/d;->q:I

    and-int/2addr v0, v4

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    new-instance v4, Lcom/a/a/e;

    invoke-direct {v4, v0}, Lcom/a/a/e;-><init>(Z)V

    new-array v0, v1, [Ljava/lang/Class;

    aput-object p2, v0, v2

    invoke-static {v3, v0, v4}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/a/a/b/g;->a:Lcom/a/a/b/h;

    iget-object v0, v0, Lcom/a/a/b/h;->a:Ljava/lang/reflect/Constructor;

    if-nez v0, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/a/a/b/g;->a:Lcom/a/a/b/h;

    iget-object v0, v0, Lcom/a/a/b/h;->a:Ljava/lang/reflect/Constructor;

    iget-object v1, p0, Lcom/a/a/b/g;->a:Lcom/a/a/b/h;

    iget v1, v1, Lcom/a/a/b/h;->b:I

    if-nez v1, :cond_5

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_2
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    iget v1, v1, Lcom/a/a/b/e;->c:I

    sget-object v3, Lcom/a/a/b/d;->m:Lcom/a/a/b/d;

    iget v3, v3, Lcom/a/a/b/d;->q:I

    and-int/2addr v1, v3

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/a/a/b/g;->a:Lcom/a/a/b/h;

    iget-object v1, v1, Lcom/a/a/b/h;->e:[Lcom/a/a/d/a;

    array-length v3, v1

    :goto_3
    if-ge v2, v3, :cond_0

    aget-object v4, v1, v2

    iget-object v5, v4, Lcom/a/a/d/a;->f:Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    if-ne v5, v6, :cond_4

    const-string v5, ""

    invoke-virtual {v4, v0, v5}, Lcom/a/a/d/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/a/a/b/b;->d:Lcom/a/a/b/l;

    iget-object v4, v4, Lcom/a/a/b/l;->a:Ljava/lang/Object;

    aput-object v4, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_2

    :catch_0
    move-exception v0

    new-instance v1, Lcom/a/a/d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create instance error, class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/a/a/b/g;->d:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/a/a/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public a(Lcom/a/a/b/b;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/a/a/b/g;->b(Lcom/a/a/b/b;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/util/Map;Lcom/a/a/b/m;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/a/a/b/m;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/a/a/b/g;->a:Lcom/a/a/b/h;

    iget-object v1, v1, Lcom/a/a/b/h;->c:Ljava/lang/reflect/Constructor;

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/a/a/b/g;->d:Ljava/lang/Class;

    invoke-virtual {p0, v0, v1}, Lcom/a/a/b/g;->a(Lcom/a/a/b/b;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/a/a/b/g;->a(Ljava/lang/String;)Lcom/a/a/b/a/d;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    iget-object v5, v1, Lcom/a/a/b/a/d;->b:Lcom/a/a/d/a;

    iget-object v5, v5, Lcom/a/a/d/a;->b:Ljava/lang/reflect/Method;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v1

    aget-object v1, v1, v3

    invoke-static {v0, v1, p2}, Lcom/a/a/d/d;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/a/a/b/m;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v3

    invoke-virtual {v5, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v5, v1, Lcom/a/a/b/a/d;->b:Lcom/a/a/d/a;

    iget-object v5, v5, Lcom/a/a/d/a;->c:Ljava/lang/reflect/Field;

    iget-object v1, v1, Lcom/a/a/b/a/d;->b:Lcom/a/a/d/a;

    iget-object v1, v1, Lcom/a/a/d/a;->g:Ljava/lang/reflect/Type;

    invoke-static {v0, v1, p2}, Lcom/a/a/d/d;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/a/a/b/m;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v5, v2, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    move-object v0, v2

    :cond_3
    :goto_1
    return-object v0

    :cond_4
    iget-object v1, p0, Lcom/a/a/b/g;->a:Lcom/a/a/b/h;

    iget-object v2, v1, Lcom/a/a/b/h;->e:[Lcom/a/a/d/a;

    array-length v4, v2

    new-array v5, v4, [Ljava/lang/Object;

    move v1, v3

    :goto_2
    if-ge v1, v4, :cond_5

    aget-object v3, v2, v1

    iget-object v3, v3, Lcom/a/a/d/a;->a:Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lcom/a/a/b/g;->a:Lcom/a/a/b/h;

    iget-object v1, v1, Lcom/a/a/b/h;->c:Ljava/lang/reflect/Constructor;

    if-eqz v1, :cond_3

    :try_start_0
    iget-object v0, p0, Lcom/a/a/b/g;->a:Lcom/a/a/b/h;

    iget-object v0, v0, Lcom/a/a/b/h;->c:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/a/a/d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create instance error, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/a/a/b/g;->a:Lcom/a/a/b/h;

    iget-object v3, v3, Lcom/a/a/b/h;->c:Ljava/lang/reflect/Constructor;

    invoke-virtual {v3}, Ljava/lang/reflect/Constructor;->toGenericString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/a/a/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method a(Lcom/a/a/b/b;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p1, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    iget-object v1, p1, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    iget v1, v1, Lcom/a/a/b/e;->c:I

    sget-object v2, Lcom/a/a/b/d;->i:Lcom/a/a/b/d;

    iget v2, v2, Lcom/a/a/b/d;->q:I

    and-int/2addr v1, v2

    if-nez v1, :cond_0

    new-instance v0, Lcom/a/a/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setter not found, class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/a/a/b/g;->d:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", property "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/a/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Lcom/a/a/b/e;->a(C)V

    const/4 v0, 0x0

    iget-object v1, p1, Lcom/a/a/b/b;->f:Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/b/a/c;

    invoke-interface {v0, p2, p3}, Lcom/a/a/b/a/c;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Type;

    move-result-object v0

    goto :goto_0

    :cond_1
    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/a/a/b/b;->e()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    :goto_1
    nop

    instance-of v0, p2, Lcom/a/a/b/a/a;

    if-eqz v0, :cond_4

    check-cast p2, Lcom/a/a/b/a/a;

    invoke-interface {p2, p3, v1}, Lcom/a/a/b/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p1, v0}, Lcom/a/a/b/b;->a(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :cond_4
    iget-object v0, p1, Lcom/a/a/b/b;->g:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/b/a/b;

    invoke-interface {v0, p2, p3, v1}, Lcom/a/a/b/a/b;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2
.end method
