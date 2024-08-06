.class public Lcom/a/a/c/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/a/b/a/f;
.implements Lcom/a/a/c/t;


# static fields
.field public static final a:Lcom/a/a/c/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/a/a/c/e;

    invoke-direct {v0}, Lcom/a/a/c/e;-><init>()V

    sput-object v0, Lcom/a/a/c/e;->a:Lcom/a/a/c/e;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/a/a/b/b;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
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

    const/16 v3, 0x10

    iget-object v1, p1, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    invoke-virtual {v1}, Lcom/a/a/b/e;->a()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    invoke-virtual {v1}, Lcom/a/a/b/e;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3}, Lcom/a/a/b/e;->b(I)V

    const-class v0, Ljava/math/BigInteger;

    if-ne p2, v0, :cond_1

    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    invoke-virtual {v1}, Lcom/a/a/b/e;->x()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v1, v3}, Lcom/a/a/b/e;->b(I)V

    const-class v1, Ljava/math/BigInteger;

    if-ne p2, v1, :cond_0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/a/a/b/b;->e()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    const-class v1, Ljava/math/BigInteger;

    if-ne p2, v1, :cond_5

    invoke-static {v0}, Lcom/a/a/d/d;->f(Ljava/lang/Object;)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_0

    :cond_5
    invoke-static {v0}, Lcom/a/a/d/d;->e(Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/a/a/c/m;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 3

    iget-object v0, p1, Lcom/a/a/c/m;->b:Lcom/a/a/c/z;

    if-nez p2, :cond_2

    iget v1, v0, Lcom/a/a/c/z;->c:I

    sget-object v2, Lcom/a/a/c/aa;->h:Lcom/a/a/c/aa;

    iget v2, v2, Lcom/a/a/c/aa;->x:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Lcom/a/a/c/z;->write(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/a/a/c/z;->a()V

    goto :goto_0

    :cond_2
    instance-of v1, p2, Ljava/math/BigInteger;

    if-eqz v1, :cond_3

    check-cast p2, Ljava/math/BigInteger;

    invoke-virtual {p2}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/c/z;->write(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    check-cast p2, Ljava/math/BigDecimal;

    invoke-virtual {p2}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/c/z;->write(Ljava/lang/String;)V

    iget v1, v0, Lcom/a/a/c/z;->c:I

    sget-object v2, Lcom/a/a/c/aa;->n:Lcom/a/a/c/aa;

    iget v2, v2, Lcom/a/a/c/aa;->x:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const-class v1, Ljava/math/BigDecimal;

    if-eq p4, v1, :cond_0

    invoke-virtual {p2}, Ljava/math/BigDecimal;->scale()I

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Lcom/a/a/c/z;->write(I)V

    goto :goto_0
.end method
