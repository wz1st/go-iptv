.class public final Lcom/a/a/c/k;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/a/b/a/f;
.implements Lcom/a/a/c/t;


# static fields
.field public static a:Lcom/a/a/c/k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/a/a/c/k;

    invoke-direct {v0}, Lcom/a/a/c/k;-><init>()V

    sput-object v0, Lcom/a/a/c/k;->a:Lcom/a/a/c/k;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
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

    const/16 v4, 0x10

    iget-object v1, p1, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    invoke-virtual {v1}, Lcom/a/a/b/e;->a()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    invoke-virtual {v1, v4}, Lcom/a/a/b/e;->b(I)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p2, v0, :cond_1

    const-class v0, Ljava/lang/Long;

    if-ne p2, v0, :cond_2

    :cond_1
    invoke-virtual {v1}, Lcom/a/a/b/e;->w()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v4}, Lcom/a/a/b/e;->b(I)V

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-virtual {v1}, Lcom/a/a/b/e;->n()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/a/a/d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "int value overflow, field : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/a/a/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_3
    const/4 v2, 0x3

    if-ne v0, v2, :cond_6

    invoke-virtual {v1}, Lcom/a/a/b/e;->x()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v1, v4}, Lcom/a/a/b/e;->b(I)V

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p2, v1, :cond_4

    const-class v1, Ljava/lang/Long;

    if-ne p2, v1, :cond_5

    :cond_4
    invoke-virtual {v0}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Ljava/math/BigDecimal;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Lcom/a/a/b/b;->e()Ljava/lang/Object;

    move-result-object v1

    :try_start_1
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p2, v0, :cond_7

    const-class v0, Ljava/lang/Long;

    if-ne p2, v0, :cond_8

    :cond_7
    invoke-static {v1}, Lcom/a/a/d/d;->j(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :cond_8
    invoke-static {v1}, Lcom/a/a/d/d;->k(Ljava/lang/Object;)Ljava/lang/Integer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v2, Lcom/a/a/d;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cast error, field : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lcom/a/a/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public a(Lcom/a/a/c/m;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 6

    iget-object v1, p1, Lcom/a/a/c/m;->b:Lcom/a/a/c/z;

    move-object v0, p2

    check-cast v0, Ljava/lang/Number;

    if-nez v0, :cond_2

    iget v0, v1, Lcom/a/a/c/z;->c:I

    sget-object v2, Lcom/a/a/c/aa;->h:Lcom/a/a/c/aa;

    iget v2, v2, Lcom/a/a/c/aa;->x:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_1

    const/16 v0, 0x30

    invoke-virtual {v1, v0}, Lcom/a/a/c/z;->write(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v1}, Lcom/a/a/c/z;->a()V

    goto :goto_0

    :cond_2
    instance-of v2, p2, Ljava/lang/Long;

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/a/a/c/z;->a(J)V

    :goto_1
    iget v2, v1, Lcom/a/a/c/z;->c:I

    sget-object v3, Lcom/a/a/c/aa;->n:Lcom/a/a/c/aa;

    iget v3, v3, Lcom/a/a/c/aa;->x:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ljava/lang/Byte;

    if-ne v2, v3, :cond_4

    const/16 v0, 0x42

    invoke-virtual {v1, v0}, Lcom/a/a/c/z;->write(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/a/a/c/z;->b(I)V

    goto :goto_1

    :cond_4
    const-class v3, Ljava/lang/Short;

    if-ne v2, v3, :cond_5

    const/16 v0, 0x53

    invoke-virtual {v1, v0}, Lcom/a/a/c/z;->write(I)V

    goto :goto_0

    :cond_5
    const-class v3, Ljava/lang/Long;

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    const-wide/32 v4, 0x7fffffff

    cmp-long v0, v2, v4

    if-gtz v0, :cond_0

    const-wide/32 v4, -0x80000000

    cmp-long v0, v2, v4

    if-ltz v0, :cond_0

    const-class v0, Ljava/lang/Long;

    if-eq p4, v0, :cond_0

    const/16 v0, 0x4c

    invoke-virtual {v1, v0}, Lcom/a/a/c/z;->write(I)V

    goto :goto_0
.end method
