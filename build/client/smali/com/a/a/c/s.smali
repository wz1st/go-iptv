.class public Lcom/a/a/c/s;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/a/b/a/f;
.implements Lcom/a/a/c/t;


# static fields
.field public static final a:Lcom/a/a/c/s;


# instance fields
.field private b:Ljava/text/DecimalFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/a/a/c/s;

    invoke-direct {v0}, Lcom/a/a/c/s;-><init>()V

    sput-object v0, Lcom/a/a/c/s;->a:Lcom/a/a/c/s;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/a/c/s;->b:Ljava/text/DecimalFormat;

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

    const/4 v2, 0x2

    if-ne v0, v2, :cond_a

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p2, v0, :cond_0

    const-class v0, Ljava/lang/Double;

    if-ne p2, v0, :cond_2

    :cond_0
    invoke-virtual {v1}, Lcom/a/a/b/e;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v4}, Lcom/a/a/b/e;->b(I)V

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p2, v0, :cond_3

    const-class v0, Ljava/lang/Float;

    if-ne p2, v0, :cond_4

    :cond_3
    invoke-virtual {v1}, Lcom/a/a/b/e;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v4}, Lcom/a/a/b/e;->b(I)V

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Lcom/a/a/b/e;->w()J

    move-result-wide v2

    invoke-virtual {v1, v4}, Lcom/a/a/b/e;->b(I)V

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq p2, v0, :cond_5

    const-class v0, Ljava/lang/Short;

    if-ne p2, v0, :cond_6

    :cond_5
    long-to-int v0, v2

    int-to-short v0, v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    goto :goto_0

    :cond_6
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq p2, v0, :cond_7

    const-class v0, Ljava/lang/Byte;

    if-ne p2, v0, :cond_8

    :cond_7
    long-to-int v0, v2

    int-to-byte v0, v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    goto :goto_0

    :cond_8
    const-wide/32 v0, -0x80000000

    cmp-long v0, v2, v0

    if-ltz v0, :cond_9

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, v2, v0

    if-gtz v0, :cond_9

    long-to-int v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_9
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :cond_a
    const/4 v2, 0x3

    if-ne v0, v2, :cond_12

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p2, v0, :cond_b

    const-class v0, Ljava/lang/Double;

    if-ne p2, v0, :cond_c

    :cond_b
    invoke-virtual {v1}, Lcom/a/a/b/e;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v4}, Lcom/a/a/b/e;->b(I)V

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    :cond_c
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p2, v0, :cond_d

    const-class v0, Ljava/lang/Float;

    if-ne p2, v0, :cond_e

    :cond_d
    invoke-virtual {v1}, Lcom/a/a/b/e;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v4}, Lcom/a/a/b/e;->b(I)V

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto/16 :goto_0

    :cond_e
    invoke-virtual {v1}, Lcom/a/a/b/e;->x()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v1, v4}, Lcom/a/a/b/e;->b(I)V

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq p2, v1, :cond_f

    const-class v1, Ljava/lang/Short;

    if-ne p2, v1, :cond_10

    :cond_f
    invoke-virtual {v0}, Ljava/math/BigDecimal;->shortValue()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    goto/16 :goto_0

    :cond_10
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq p2, v1, :cond_11

    const-class v1, Ljava/lang/Byte;

    if-ne p2, v1, :cond_1

    :cond_11
    invoke-virtual {v0}, Ljava/math/BigDecimal;->byteValue()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    goto/16 :goto_0

    :cond_12
    invoke-virtual {p1}, Lcom/a/a/b/b;->e()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_13

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_13
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p2, v1, :cond_14

    const-class v1, Ljava/lang/Double;

    if-ne p2, v1, :cond_15

    :cond_14
    invoke-static {v0}, Lcom/a/a/d/d;->h(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v0

    goto/16 :goto_0

    :cond_15
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p2, v1, :cond_16

    const-class v1, Ljava/lang/Float;

    if-ne p2, v1, :cond_17

    :cond_16
    invoke-static {v0}, Lcom/a/a/d/d;->g(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v0

    goto/16 :goto_0

    :cond_17
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq p2, v1, :cond_18

    const-class v1, Ljava/lang/Short;

    if-ne p2, v1, :cond_19

    :cond_18
    invoke-static {v0}, Lcom/a/a/d/d;->d(Ljava/lang/Object;)Ljava/lang/Short;

    move-result-object v0

    goto/16 :goto_0

    :cond_19
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq p2, v1, :cond_1a

    const-class v1, Ljava/lang/Byte;

    if-ne p2, v1, :cond_1b

    :cond_1a
    invoke-static {v0}, Lcom/a/a/d/d;->b(Ljava/lang/Object;)Ljava/lang/Byte;

    move-result-object v0

    goto/16 :goto_0

    :cond_1b
    invoke-static {v0}, Lcom/a/a/d/d;->e(Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public a(Lcom/a/a/c/m;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p1, Lcom/a/a/c/m;->b:Lcom/a/a/c/z;

    if-nez p2, :cond_2

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
    instance-of v0, p2, Ljava/lang/Float;

    if-eqz v0, :cond_6

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/a/a/c/z;->a()V

    goto :goto_0

    :cond_3
    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Lcom/a/a/c/z;->a()V

    goto :goto_0

    :cond_4
    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    const-string v2, ".0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_5
    invoke-virtual {v1, v0}, Lcom/a/a/c/z;->write(Ljava/lang/String;)V

    iget v0, v1, Lcom/a/a/c/z;->c:I

    sget-object v2, Lcom/a/a/c/aa;->n:Lcom/a/a/c/aa;

    iget v2, v2, Lcom/a/a/c/aa;->x:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_0

    const/16 v0, 0x46

    invoke-virtual {v1, v0}, Lcom/a/a/c/z;->write(I)V

    goto :goto_0

    :cond_6
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v1}, Lcom/a/a/c/z;->a()V

    goto :goto_0

    :cond_7
    invoke-static {v2, v3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v1}, Lcom/a/a/c/z;->a()V

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lcom/a/a/c/s;->b:Ljava/text/DecimalFormat;

    if-nez v0, :cond_a

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    const-string v2, ".0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_9
    :goto_1
    invoke-virtual {v1, v0}, Lcom/a/a/c/z;->a(Ljava/lang/CharSequence;)Lcom/a/a/c/z;

    iget v0, v1, Lcom/a/a/c/z;->c:I

    sget-object v2, Lcom/a/a/c/aa;->n:Lcom/a/a/c/aa;

    iget v2, v2, Lcom/a/a/c/aa;->x:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_0

    const/16 v0, 0x44

    invoke-virtual {v1, v0}, Lcom/a/a/c/z;->write(I)V

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/a/a/c/s;->b:Ljava/text/DecimalFormat;

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
