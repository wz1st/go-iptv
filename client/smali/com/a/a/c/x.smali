.class public Lcom/a/a/c/x;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/a/a/c/x;


# instance fields
.field protected b:Ljava/lang/String;

.field public c:Lcom/a/a/g;

.field private final d:Lcom/a/a/d/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/d/b",
            "<",
            "Lcom/a/a/c/t;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/a/a/c/x;

    invoke-direct {v0}, Lcom/a/a/c/x;-><init>()V

    sput-object v0, Lcom/a/a/c/x;->a:Lcom/a/a/c/x;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "@type"

    iput-object v0, p0, Lcom/a/a/c/x;->b:Ljava/lang/String;

    new-instance v0, Lcom/a/a/d/b;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Lcom/a/a/d/b;-><init>(I)V

    iput-object v0, p0, Lcom/a/a/c/x;->d:Lcom/a/a/d/b;

    iget-object v0, p0, Lcom/a/a/c/x;->d:Lcom/a/a/d/b;

    const-class v1, Ljava/lang/Boolean;

    sget-object v2, Lcom/a/a/c/f;->a:Lcom/a/a/c/f;

    invoke-virtual {v0, v1, v2}, Lcom/a/a/d/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/a/a/c/x;->d:Lcom/a/a/d/b;

    const-class v1, Ljava/lang/Character;

    sget-object v2, Lcom/a/a/c/q;->a:Lcom/a/a/c/q;

    invoke-virtual {v0, v1, v2}, Lcom/a/a/d/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/a/a/c/x;->d:Lcom/a/a/d/b;

    const-class v1, Ljava/lang/Byte;

    sget-object v2, Lcom/a/a/c/k;->a:Lcom/a/a/c/k;

    invoke-virtual {v0, v1, v2}, Lcom/a/a/d/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/a/a/c/x;->d:Lcom/a/a/d/b;

    const-class v1, Ljava/lang/Short;

    sget-object v2, Lcom/a/a/c/k;->a:Lcom/a/a/c/k;

    invoke-virtual {v0, v1, v2}, Lcom/a/a/d/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/a/a/c/x;->d:Lcom/a/a/d/b;

    const-class v1, Ljava/lang/Integer;

    sget-object v2, Lcom/a/a/c/k;->a:Lcom/a/a/c/k;

    invoke-virtual {v0, v1, v2}, Lcom/a/a/d/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/a/a/c/x;->d:Lcom/a/a/d/b;

    const-class v1, Ljava/lang/Long;

    sget-object v2, Lcom/a/a/c/k;->a:Lcom/a/a/c/k;

    invoke-virtual {v0, v1, v2}, Lcom/a/a/d/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/a/a/c/x;->d:Lcom/a/a/d/b;

    const-class v1, Ljava/lang/Float;

    sget-object v2, Lcom/a/a/c/s;->a:Lcom/a/a/c/s;

    invoke-virtual {v0, v1, v2}, Lcom/a/a/d/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/a/a/c/x;->d:Lcom/a/a/d/b;

    const-class v1, Ljava/lang/Double;

    sget-object v2, Lcom/a/a/c/s;->a:Lcom/a/a/c/s;

    invoke-virtual {v0, v1, v2}, Lcom/a/a/d/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/a/a/c/x;->d:Lcom/a/a/d/b;

    const-class v1, Ljava/lang/Number;

    sget-object v2, Lcom/a/a/c/s;->a:Lcom/a/a/c/s;

    invoke-virtual {v0, v1, v2}, Lcom/a/a/d/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/a/a/c/x;->d:Lcom/a/a/d/b;

    const-class v1, Ljava/math/BigDecimal;

    sget-object v2, Lcom/a/a/c/e;->a:Lcom/a/a/c/e;

    invoke-virtual {v0, v1, v2}, Lcom/a/a/d/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/a/a/c/x;->d:Lcom/a/a/d/b;

    const-class v1, Ljava/math/BigInteger;

    sget-object v2, Lcom/a/a/c/e;->a:Lcom/a/a/c/e;

    invoke-virtual {v0, v1, v2}, Lcom/a/a/d/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/a/a/c/x;->d:Lcom/a/a/d/b;

    const-class v1, Ljava/lang/String;

    sget-object v2, Lcom/a/a/c/ab;->a:Lcom/a/a/c/ab;

    invoke-virtual {v0, v1, v2}, Lcom/a/a/d/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/a/a/c/x;->d:Lcom/a/a/d/b;

    const-class v1, [Ljava/lang/Object;

    sget-object v2, Lcom/a/a/c/b;->a:Lcom/a/a/c/b;

    invoke-virtual {v0, v1, v2}, Lcom/a/a/d/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/a/a/c/x;->d:Lcom/a/a/d/b;

    const-class v1, Ljava/lang/Class;

    sget-object v2, Lcom/a/a/c/q;->a:Lcom/a/a/c/q;

    invoke-virtual {v0, v1, v2}, Lcom/a/a/d/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/a/a/c/x;->d:Lcom/a/a/d/b;

    const-class v1, Ljava/text/SimpleDateFormat;

    sget-object v2, Lcom/a/a/c/q;->a:Lcom/a/a/c/q;

    invoke-virtual {v0, v1, v2}, Lcom/a/a/d/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/a/a/c/x;->d:Lcom/a/a/d/b;

    const-class v1, Ljava/util/Locale;

    sget-object v2, Lcom/a/a/c/q;->a:Lcom/a/a/c/q;

    invoke-virtual {v0, v1, v2}, Lcom/a/a/d/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/a/a/c/x;->d:Lcom/a/a/d/b;

    const-class v1, Ljava/util/Currency;

    sget-object v2, Lcom/a/a/c/q;->a:Lcom/a/a/c/q;

    invoke-virtual {v0, v1, v2}, Lcom/a/a/d/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/a/a/c/x;->d:Lcom/a/a/d/b;

    const-class v1, Ljava/util/TimeZone;

    sget-object v2, Lcom/a/a/c/q;->a:Lcom/a/a/c/q;

    invoke-virtual {v0, v1, v2}, Lcom/a/a/d/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/a/a/c/x;->d:Lcom/a/a/d/b;

    const-class v1, Ljava/util/UUID;

    sget-object v2, Lcom/a/a/c/q;->a:Lcom/a/a/c/q;

    invoke-virtual {v0, v1, v2}, Lcom/a/a/d/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/a/a/c/x;->d:Lcom/a/a/d/b;

    const-class v1, Ljava/net/URI;

    sget-object v2, Lcom/a/a/c/q;->a:Lcom/a/a/c/q;

    invoke-virtual {v0, v1, v2}, Lcom/a/a/d/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/a/a/c/x;->d:Lcom/a/a/d/b;

    const-class v1, Ljava/net/URL;

    sget-object v2, Lcom/a/a/c/q;->a:Lcom/a/a/c/q;

    invoke-virtual {v0, v1, v2}, Lcom/a/a/d/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/a/a/c/x;->d:Lcom/a/a/d/b;

    const-class v1, Ljava/util/regex/Pattern;

    sget-object v2, Lcom/a/a/c/q;->a:Lcom/a/a/c/q;

    invoke-virtual {v0, v1, v2}, Lcom/a/a/d/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/a/a/c/x;->d:Lcom/a/a/d/b;

    const-class v1, Ljava/nio/charset/Charset;

    sget-object v2, Lcom/a/a/c/q;->a:Lcom/a/a/c/q;

    invoke-virtual {v0, v1, v2}, Lcom/a/a/d/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Lcom/a/a/c/t;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/a/a/c/t;"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/a/a/c/x;->d:Lcom/a/a/d/b;

    invoke-virtual {v0, p1}, Lcom/a/a/d/b;->a(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/c/t;

    if-nez v0, :cond_0

    const-class v0, Ljava/util/Map;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/a/a/c/x;->d:Lcom/a/a/d/b;

    new-instance v1, Lcom/a/a/c/p;

    invoke-direct {v1}, Lcom/a/a/c/p;-><init>()V

    invoke-virtual {v0, p1, v1}, Lcom/a/a/d/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    :goto_0
    iget-object v0, p0, Lcom/a/a/c/x;->d:Lcom/a/a/d/b;

    invoke-virtual {v0, p1}, Lcom/a/a/d/b;->a(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/c/t;

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    const-class v0, Ljava/util/List;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/a/a/c/x;->d:Lcom/a/a/d/b;

    new-instance v1, Lcom/a/a/c/o;

    invoke-direct {v1}, Lcom/a/a/c/o;-><init>()V

    invoke-virtual {v0, p1, v1}, Lcom/a/a/d/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-class v0, Ljava/util/Collection;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/a/a/c/x;->d:Lcom/a/a/d/b;

    sget-object v1, Lcom/a/a/c/g;->a:Lcom/a/a/c/g;

    invoke-virtual {v0, p1, v1}, Lcom/a/a/d/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const-class v0, Ljava/util/Date;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/a/a/c/x;->d:Lcom/a/a/d/b;

    sget-object v1, Lcom/a/a/c/h;->a:Lcom/a/a/c/h;

    invoke-virtual {v0, p1, v1}, Lcom/a/a/d/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    const-class v0, Lcom/a/a/c;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/a/a/c/x;->d:Lcom/a/a/d/b;

    sget-object v1, Lcom/a/a/c/q;->a:Lcom/a/a/c/q;

    invoke-virtual {v0, p1, v1}, Lcom/a/a/d/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    const-class v0, Lcom/a/a/c/l;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/a/a/c/x;->d:Lcom/a/a/d/b;

    sget-object v1, Lcom/a/a/c/q;->a:Lcom/a/a/c/q;

    invoke-virtual {v0, p1, v1}, Lcom/a/a/d/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    const-class v0, Lcom/a/a/f;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/a/a/c/x;->d:Lcom/a/a/d/b;

    sget-object v1, Lcom/a/a/c/q;->a:Lcom/a/a/c/q;

    invoke-virtual {v0, p1, v1}, Lcom/a/a/d/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_9

    const-class v3, Ljava/lang/Object;

    if-eq v0, v3, :cond_9

    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    iget-object v0, p0, Lcom/a/a/c/x;->d:Lcom/a/a/d/b;

    new-instance v1, Lcom/a/a/c/i;

    invoke-direct {v1}, Lcom/a/a/c/i;-><init>()V

    invoke-virtual {v0, p1, v1}, Lcom/a/a/d/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/a/a/c/x;->a(Ljava/lang/Class;)Lcom/a/a/c/t;

    move-result-object v1

    iget-object v2, p0, Lcom/a/a/c/x;->d:Lcom/a/a/d/b;

    new-instance v3, Lcom/a/a/c/c;

    invoke-direct {v3, v0, v1}, Lcom/a/a/c/c;-><init>(Ljava/lang/Class;Lcom/a/a/c/t;)V

    invoke-virtual {v2, p1, v3}, Lcom/a/a/d/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_a
    const-class v0, Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_b

    new-instance v0, Lcom/a/a/c/n;

    iget-object v1, p0, Lcom/a/a/c/x;->c:Lcom/a/a/g;

    invoke-direct {v0, p1, v1}, Lcom/a/a/c/n;-><init>(Ljava/lang/Class;Lcom/a/a/g;)V

    iget v1, v0, Lcom/a/a/c/n;->a:I

    sget-object v2, Lcom/a/a/c/aa;->n:Lcom/a/a/c/aa;

    iget v2, v2, Lcom/a/a/c/aa;->x:I

    or-int/2addr v1, v2

    iput v1, v0, Lcom/a/a/c/n;->a:I

    iget-object v1, p0, Lcom/a/a/c/x;->d:Lcom/a/a/d/b;

    invoke-virtual {v1, p1, v0}, Lcom/a/a/d/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_b
    const-class v0, Ljava/util/TimeZone;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/a/a/c/x;->d:Lcom/a/a/d/b;

    sget-object v1, Lcom/a/a/c/q;->a:Lcom/a/a/c/q;

    invoke-virtual {v0, p1, v1}, Lcom/a/a/d/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_c
    const-class v0, Ljava/nio/charset/Charset;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/a/a/c/x;->d:Lcom/a/a/d/b;

    sget-object v1, Lcom/a/a/c/q;->a:Lcom/a/a/c/q;

    invoke-virtual {v0, p1, v1}, Lcom/a/a/d/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_d
    const-class v0, Ljava/util/Enumeration;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/a/a/c/x;->d:Lcom/a/a/d/b;

    sget-object v1, Lcom/a/a/c/q;->a:Lcom/a/a/c/q;

    invoke-virtual {v0, p1, v1}, Lcom/a/a/d/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_e
    const-class v0, Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/a/a/c/x;->d:Lcom/a/a/d/b;

    sget-object v1, Lcom/a/a/c/h;->a:Lcom/a/a/c/h;

    invoke-virtual {v0, p1, v1}, Lcom/a/a/d/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_f
    invoke-virtual {p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v3

    array-length v4, v3

    move v0, v2

    :goto_2
    if-ge v0, v4, :cond_15

    aget-object v5, v3, v0

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "net.sf.cglib.proxy.Factory"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_10

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "org.springframework.cglib.proxy.Factory"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    :cond_10
    move v0, v2

    move v3, v1

    :goto_3
    if-nez v3, :cond_11

    if-eqz v0, :cond_14

    :cond_11
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/a/a/c/x;->a(Ljava/lang/Class;)Lcom/a/a/c/t;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/c/x;->d:Lcom/a/a/d/b;

    invoke-virtual {v1, p1, v0}, Lcom/a/a/d/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_12
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "javassist.util.proxy.ProxyObject"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    move v0, v1

    move v3, v2

    goto :goto_3

    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_14
    iget-object v0, p0, Lcom/a/a/c/x;->d:Lcom/a/a/d/b;

    new-instance v1, Lcom/a/a/c/n;

    iget-object v2, p0, Lcom/a/a/c/x;->c:Lcom/a/a/g;

    invoke-direct {v1, p1, v2}, Lcom/a/a/c/n;-><init>(Ljava/lang/Class;Lcom/a/a/g;)V

    invoke-virtual {v0, p1, v1}, Lcom/a/a/d/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_15
    move v0, v2

    move v3, v2

    goto :goto_3
.end method
