.class final Lcom/a/a/c/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/a/c/t;


# instance fields
.field private final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final b:Lcom/a/a/c/t;


# direct methods
.method constructor <init>(Ljava/lang/Class;Lcom/a/a/c/t;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/a/a/c/t;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/a/a/c/c;->a:Ljava/lang/Class;

    iput-object p2, p0, Lcom/a/a/c/c;->b:Lcom/a/a/c/t;

    return-void
.end method


# virtual methods
.method public final a(Lcom/a/a/c/m;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 9

    const/4 v4, -0x1

    const/16 v7, 0x5d

    const/16 v3, 0x5b

    const/16 v6, 0x2c

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/a/a/c/m;->b:Lcom/a/a/c/z;

    if-nez p2, :cond_1

    iget v0, v2, Lcom/a/a/c/z;->c:I

    sget-object v1, Lcom/a/a/c/aa;->f:Lcom/a/a/c/aa;

    iget v1, v1, Lcom/a/a/c/aa;->x:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const-string v0, "[]"

    invoke-virtual {v2, v0}, Lcom/a/a/c/z;->write(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v2}, Lcom/a/a/c/z;->a()V

    goto :goto_0

    :cond_1
    instance-of v0, p2, [Z

    if-eqz v0, :cond_4

    check-cast p2, [Z

    check-cast p2, [Z

    invoke-virtual {v2, v3}, Lcom/a/a/c/z;->write(I)V

    move v0, v1

    :goto_1
    array-length v1, p2

    if-ge v0, v1, :cond_3

    if-eqz v0, :cond_2

    invoke-virtual {v2, v6}, Lcom/a/a/c/z;->write(I)V

    :cond_2
    aget-boolean v1, p2, v0

    invoke-virtual {v2, v1}, Lcom/a/a/c/z;->a(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v2, v7}, Lcom/a/a/c/z;->write(I)V

    goto :goto_0

    :cond_4
    instance-of v0, p2, [B

    if-eqz v0, :cond_5

    check-cast p2, [B

    check-cast p2, [B

    invoke-virtual {v2, p2}, Lcom/a/a/c/z;->a([B)V

    goto :goto_0

    :cond_5
    instance-of v0, p2, [C

    if-eqz v0, :cond_6

    check-cast p2, [C

    check-cast p2, [C

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v2, v0}, Lcom/a/a/c/z;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    instance-of v0, p2, [D

    if-eqz v0, :cond_b

    check-cast p2, [D

    check-cast p2, [D

    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    if-ne v0, v4, :cond_7

    const-string v0, "[]"

    invoke-virtual {v2, v0}, Lcom/a/a/c/z;->a(Ljava/lang/CharSequence;)Lcom/a/a/c/z;

    goto :goto_0

    :cond_7
    invoke-virtual {v2, v3}, Lcom/a/a/c/z;->write(I)V

    :goto_2
    if-ge v1, v0, :cond_9

    aget-wide v4, p2, v1

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v2}, Lcom/a/a/c/z;->a()V

    :goto_3
    invoke-virtual {v2, v6}, Lcom/a/a/c/z;->write(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_8
    invoke-static {v4, v5}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/a/a/c/z;->a(Ljava/lang/CharSequence;)Lcom/a/a/c/z;

    goto :goto_3

    :cond_9
    aget-wide v0, p2, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {v2}, Lcom/a/a/c/z;->a()V

    :goto_4
    invoke-virtual {v2, v7}, Lcom/a/a/c/z;->write(I)V

    goto/16 :goto_0

    :cond_a
    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/a/a/c/z;->a(Ljava/lang/CharSequence;)Lcom/a/a/c/z;

    goto :goto_4

    :cond_b
    instance-of v0, p2, [F

    if-eqz v0, :cond_10

    check-cast p2, [F

    check-cast p2, [F

    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    if-ne v0, v4, :cond_c

    const-string v0, "[]"

    invoke-virtual {v2, v0}, Lcom/a/a/c/z;->a(Ljava/lang/CharSequence;)Lcom/a/a/c/z;

    goto/16 :goto_0

    :cond_c
    invoke-virtual {v2, v3}, Lcom/a/a/c/z;->write(I)V

    :goto_5
    if-ge v1, v0, :cond_e

    aget v3, p2, v1

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-virtual {v2}, Lcom/a/a/c/z;->a()V

    :goto_6
    invoke-virtual {v2, v6}, Lcom/a/a/c/z;->write(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_d
    invoke-static {v3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/a/a/c/z;->a(Ljava/lang/CharSequence;)Lcom/a/a/c/z;

    goto :goto_6

    :cond_e
    aget v0, p2, v0

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {v2}, Lcom/a/a/c/z;->a()V

    :goto_7
    invoke-virtual {v2, v7}, Lcom/a/a/c/z;->write(I)V

    goto/16 :goto_0

    :cond_f
    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/a/a/c/z;->a(Ljava/lang/CharSequence;)Lcom/a/a/c/z;

    goto :goto_7

    :cond_10
    instance-of v0, p2, [I

    if-eqz v0, :cond_13

    check-cast p2, [I

    check-cast p2, [I

    invoke-virtual {v2, v3}, Lcom/a/a/c/z;->write(I)V

    :goto_8
    array-length v0, p2

    if-ge v1, v0, :cond_12

    if-eqz v1, :cond_11

    invoke-virtual {v2, v6}, Lcom/a/a/c/z;->write(I)V

    :cond_11
    aget v0, p2, v1

    invoke-virtual {v2, v0}, Lcom/a/a/c/z;->b(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_12
    invoke-virtual {v2, v7}, Lcom/a/a/c/z;->write(I)V

    goto/16 :goto_0

    :cond_13
    instance-of v0, p2, [J

    if-eqz v0, :cond_16

    check-cast p2, [J

    check-cast p2, [J

    invoke-virtual {v2, v3}, Lcom/a/a/c/z;->write(I)V

    :goto_9
    array-length v0, p2

    if-ge v1, v0, :cond_15

    if-eqz v1, :cond_14

    invoke-virtual {v2, v6}, Lcom/a/a/c/z;->write(I)V

    :cond_14
    aget-wide v4, p2, v1

    invoke-virtual {v2, v4, v5}, Lcom/a/a/c/z;->a(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_15
    invoke-virtual {v2, v7}, Lcom/a/a/c/z;->write(I)V

    goto/16 :goto_0

    :cond_16
    instance-of v0, p2, [S

    if-eqz v0, :cond_19

    check-cast p2, [S

    check-cast p2, [S

    invoke-virtual {v2, v3}, Lcom/a/a/c/z;->write(I)V

    :goto_a
    array-length v0, p2

    if-ge v1, v0, :cond_18

    if-eqz v1, :cond_17

    invoke-virtual {v2, v6}, Lcom/a/a/c/z;->write(I)V

    :cond_17
    aget-short v0, p2, v1

    invoke-virtual {v2, v0}, Lcom/a/a/c/z;->b(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_18
    invoke-virtual {v2, v7}, Lcom/a/a/c/z;->write(I)V

    goto/16 :goto_0

    :cond_19
    move-object v0, p2

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    array-length v3, v0

    iget-object v4, p1, Lcom/a/a/c/m;->j:Lcom/a/a/c/w;

    invoke-virtual {p1, v4, p2, p3, v1}, Lcom/a/a/c/m;->a(Lcom/a/a/c/w;Ljava/lang/Object;Ljava/lang/Object;I)V

    const/16 v5, 0x5b

    :try_start_0
    invoke-virtual {v2, v5}, Lcom/a/a/c/z;->write(I)V

    :goto_b
    if-ge v1, v3, :cond_1d

    if-eqz v1, :cond_1a

    const/16 v5, 0x2c

    invoke-virtual {v2, v5}, Lcom/a/a/c/z;->write(I)V

    :cond_1a
    aget-object v5, v0, v1

    if-nez v5, :cond_1b

    const-string v5, "null"

    invoke-virtual {v2, v5}, Lcom/a/a/c/z;->a(Ljava/lang/CharSequence;)Lcom/a/a/c/z;

    :goto_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_1b
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    iget-object v7, p0, Lcom/a/a/c/c;->a:Ljava/lang/Class;

    if-ne v6, v7, :cond_1c

    iget-object v6, p0, Lcom/a/a/c/c;->b:Lcom/a/a/c/t;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v6, p1, v5, v7, v8}, Lcom/a/a/c/t;->a(Lcom/a/a/c/m;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_c

    :catchall_0
    move-exception v0

    iput-object v4, p1, Lcom/a/a/c/m;->j:Lcom/a/a/c/w;

    throw v0

    :cond_1c
    :try_start_1
    iget-object v6, p1, Lcom/a/a/c/m;->a:Lcom/a/a/c/x;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/a/a/c/x;->a(Ljava/lang/Class;)Lcom/a/a/c/t;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v6, p1, v5, v7, v8}, Lcom/a/a/c/t;->a(Lcom/a/a/c/m;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V

    goto :goto_c

    :cond_1d
    const/16 v0, 0x5d

    invoke-virtual {v2, v0}, Lcom/a/a/c/z;->write(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-object v4, p1, Lcom/a/a/c/m;->j:Lcom/a/a/c/w;

    goto/16 :goto_0
.end method
