.class public final Lcom/a/a/c/q;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/a/b/a/f;
.implements Lcom/a/a/c/t;


# static fields
.field public static final a:Lcom/a/a/c/q;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/a/a/c/q;

    invoke-direct {v0}, Lcom/a/a/c/q;-><init>()V

    sput-object v0, Lcom/a/a/c/q;->a:Lcom/a/a/c/q;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/a/a/b/b;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/a/a/b/b;",
            ")TT;"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v12, 0x4

    const/4 v3, 0x0

    const/16 v11, 0x10

    const/16 v10, 0x8

    iget-object v6, p1, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    invoke-virtual {v6}, Lcom/a/a/b/e;->a()I

    move-result v0

    if-ne v0, v10, :cond_0

    invoke-virtual {v6}, Lcom/a/a/b/e;->f()V

    :goto_0
    return-object v3

    :cond_0
    invoke-virtual {v6}, Lcom/a/a/b/e;->a()I

    move-result v0

    const/16 v2, 0xc

    if-eq v0, v2, :cond_1

    invoke-virtual {v6}, Lcom/a/a/b/e;->a()I

    move-result v0

    if-eq v0, v11, :cond_1

    new-instance v0, Lcom/a/a/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syntax error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Lcom/a/a/b/e;->a()I

    move-result v2

    invoke-static {v2}, Lcom/a/a/b/f;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/a/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v0, v1

    move-object v2, v3

    move-object v4, v3

    move-object v5, v3

    :cond_2
    iget-object v7, p1, Lcom/a/a/b/b;->a:Lcom/a/a/b/o;

    invoke-virtual {v6, v7}, Lcom/a/a/b/e;->a(Lcom/a/a/b/o;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_4

    invoke-virtual {v6}, Lcom/a/a/b/e;->a()I

    move-result v8

    const/16 v9, 0xd

    if-ne v8, v9, :cond_3

    invoke-virtual {v6, v11}, Lcom/a/a/b/e;->b(I)V

    :goto_1
    new-instance v3, Ljava/lang/StackTraceElement;

    invoke-direct {v3, v5, v4, v2, v0}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    invoke-virtual {v6}, Lcom/a/a/b/e;->a()I

    move-result v8

    if-ne v8, v11, :cond_4

    iget v8, v6, Lcom/a/a/b/e;->c:I

    sget-object v9, Lcom/a/a/b/d;->g:Lcom/a/a/b/d;

    iget v9, v9, Lcom/a/a/b/d;->q:I

    and-int/2addr v8, v9

    if-nez v8, :cond_2

    :cond_4
    const/16 v8, 0x3a

    invoke-virtual {v6, v8}, Lcom/a/a/b/e;->a(C)V

    const-string v8, "className"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-virtual {v6}, Lcom/a/a/b/e;->a()I

    move-result v5

    if-ne v5, v10, :cond_6

    move-object v5, v3

    :cond_5
    :goto_2
    invoke-virtual {v6}, Lcom/a/a/b/e;->a()I

    move-result v7

    const/16 v8, 0xd

    if-ne v7, v8, :cond_2

    invoke-virtual {v6, v11}, Lcom/a/a/b/e;->b(I)V

    goto :goto_1

    :cond_6
    invoke-virtual {v6}, Lcom/a/a/b/e;->a()I

    move-result v5

    if-ne v5, v12, :cond_7

    invoke-virtual {v6}, Lcom/a/a/b/e;->p()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_7
    new-instance v0, Lcom/a/a/d;

    const-string v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/a/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    const-string v8, "methodName"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-virtual {v6}, Lcom/a/a/b/e;->a()I

    move-result v4

    if-ne v4, v10, :cond_9

    move-object v4, v3

    goto :goto_2

    :cond_9
    invoke-virtual {v6}, Lcom/a/a/b/e;->a()I

    move-result v4

    if-ne v4, v12, :cond_a

    invoke-virtual {v6}, Lcom/a/a/b/e;->p()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_a
    new-instance v0, Lcom/a/a/d;

    const-string v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/a/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    const-string v8, "fileName"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-virtual {v6}, Lcom/a/a/b/e;->a()I

    move-result v2

    if-ne v2, v10, :cond_c

    move-object v2, v3

    goto :goto_2

    :cond_c
    invoke-virtual {v6}, Lcom/a/a/b/e;->a()I

    move-result v2

    if-ne v2, v12, :cond_d

    invoke-virtual {v6}, Lcom/a/a/b/e;->p()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_d
    new-instance v0, Lcom/a/a/d;

    const-string v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/a/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    const-string v8, "lineNumber"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    invoke-virtual {v6}, Lcom/a/a/b/e;->a()I

    move-result v0

    if-ne v0, v10, :cond_f

    move v0, v1

    goto :goto_2

    :cond_f
    invoke-virtual {v6}, Lcom/a/a/b/e;->a()I

    move-result v0

    const/4 v7, 0x2

    if-ne v0, v7, :cond_10

    invoke-virtual {v6}, Lcom/a/a/b/e;->n()I

    move-result v0

    goto :goto_2

    :cond_10
    new-instance v0, Lcom/a/a/d;

    const-string v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/a/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    const-string v8, "nativeMethod"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_15

    invoke-virtual {v6}, Lcom/a/a/b/e;->a()I

    move-result v7

    if-ne v7, v10, :cond_12

    invoke-virtual {v6, v11}, Lcom/a/a/b/e;->b(I)V

    goto/16 :goto_2

    :cond_12
    invoke-virtual {v6}, Lcom/a/a/b/e;->a()I

    move-result v7

    const/4 v8, 0x6

    if-ne v7, v8, :cond_13

    invoke-virtual {v6, v11}, Lcom/a/a/b/e;->b(I)V

    goto/16 :goto_2

    :cond_13
    invoke-virtual {v6}, Lcom/a/a/b/e;->a()I

    move-result v7

    const/4 v8, 0x7

    if-ne v7, v8, :cond_14

    invoke-virtual {v6, v11}, Lcom/a/a/b/e;->b(I)V

    goto/16 :goto_2

    :cond_14
    new-instance v0, Lcom/a/a/d;

    const-string v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/a/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    const-string v8, "@type"

    if-ne v7, v8, :cond_17

    invoke-virtual {v6}, Lcom/a/a/b/e;->a()I

    move-result v7

    if-ne v7, v12, :cond_16

    invoke-virtual {v6}, Lcom/a/a/b/e;->p()Ljava/lang/String;

    move-result-object v7

    const-string v8, "java.lang.StackTraceElement"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    new-instance v0, Lcom/a/a/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syntax error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/a/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    invoke-virtual {v6}, Lcom/a/a/b/e;->a()I

    move-result v7

    if-eq v7, v10, :cond_5

    new-instance v0, Lcom/a/a/d;

    const-string v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/a/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    new-instance v0, Lcom/a/a/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syntax error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/a/a/d;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/a/a/b/b;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
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

    const/4 v1, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-class v0, Ljava/lang/StackTraceElement;

    if-ne p2, v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/a/a/c/q;->a(Lcom/a/a/b/b;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p1, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    iget v2, p1, Lcom/a/a/b/b;->e:I

    if-ne v2, v6, :cond_3

    iput v4, p1, Lcom/a/a/b/b;->e:I

    const/16 v2, 0x10

    invoke-virtual {p1, v2}, Lcom/a/a/b/b;->a(I)V

    invoke-virtual {v0}, Lcom/a/a/b/e;->a()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    const-string v2, "val"

    invoke-virtual {v0}, Lcom/a/a/b/e;->p()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v0, Lcom/a/a/d;

    const-string v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/a/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {v0}, Lcom/a/a/b/e;->f()V

    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Lcom/a/a/b/b;->a(I)V

    invoke-virtual {p1}, Lcom/a/a/b/b;->e()Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0xd

    invoke-virtual {p1, v2}, Lcom/a/a/b/b;->a(I)V

    :goto_1
    if-nez v0, :cond_4

    move-object v0, v1

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/a/a/d;

    const-string v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/a/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-virtual {p1}, Lcom/a/a/b/b;->e()Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :cond_4
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_5

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_6

    move-object v0, v1

    goto :goto_0

    :cond_5
    new-instance v0, Lcom/a/a/d;

    const-string v1, "except string value"

    invoke-direct {v0, v1}, Lcom/a/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    const-class v1, Ljava/util/UUID;

    if-ne p2, v1, :cond_7

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    goto :goto_0

    :cond_7
    const-class v1, Ljava/lang/Class;

    if-ne p2, v1, :cond_8

    iget-object v1, p1, Lcom/a/a/b/b;->b:Lcom/a/a/b/m;

    iget-object v1, v1, Lcom/a/a/b/m;->c:Ljava/lang/ClassLoader;

    invoke-static {v0, v1}, Lcom/a/a/d/d;->a(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_8
    const-class v1, Ljava/util/Locale;

    if-ne p2, v1, :cond_b

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v0, v1

    if-ne v0, v5, :cond_9

    new-instance v0, Ljava/util/Locale;

    aget-object v1, v1, v4

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    array-length v0, v1

    if-ne v0, v6, :cond_a

    new-instance v0, Ljava/util/Locale;

    aget-object v2, v1, v4

    aget-object v1, v1, v5

    invoke-direct {v0, v2, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    new-instance v0, Ljava/util/Locale;

    aget-object v2, v1, v4

    aget-object v3, v1, v5

    aget-object v1, v1, v6

    invoke-direct {v0, v2, v3, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    const-class v1, Ljava/net/URI;

    if-ne p2, v1, :cond_c

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    goto/16 :goto_0

    :cond_c
    const-class v1, Ljava/net/URL;

    if-ne p2, v1, :cond_d

    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/a/a/d;

    const-string v2, "create url error"

    invoke-direct {v1, v2, v0}, Lcom/a/a/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_d
    const-class v1, Ljava/util/regex/Pattern;

    if-ne p2, v1, :cond_e

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    goto/16 :goto_0

    :cond_e
    const-class v1, Ljava/nio/charset/Charset;

    if-ne p2, v1, :cond_f

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    goto/16 :goto_0

    :cond_f
    const-class v1, Ljava/util/Currency;

    if-ne p2, v1, :cond_10

    invoke-static {v0}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v0

    goto/16 :goto_0

    :cond_10
    const-class v1, Ljava/text/SimpleDateFormat;

    if-ne p2, v1, :cond_11

    new-instance v1, Ljava/text/SimpleDateFormat;

    iget-object v2, p1, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    iget-object v2, v2, Lcom/a/a/b/e;->l:Ljava/util/Locale;

    invoke-direct {v1, v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iget-object v0, p1, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    iget-object v0, v0, Lcom/a/a/b/e;->k:Ljava/util/TimeZone;

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_11
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-eq p2, v1, :cond_12

    const-class v1, Ljava/lang/Character;

    if-ne p2, v1, :cond_13

    :cond_12
    invoke-static {v0}, Lcom/a/a/d/d;->c(Ljava/lang/Object;)Ljava/lang/Character;

    move-result-object v0

    goto/16 :goto_0

    :cond_13
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public a(Lcom/a/a/c/m;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 8

    const/16 v5, 0x2c

    const/4 v2, 0x0

    iget-object v4, p1, Lcom/a/a/c/m;->b:Lcom/a/a/c/z;

    if-nez p2, :cond_3

    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-eq p4, v0, :cond_0

    const-class v0, Ljava/lang/Character;

    if-ne p4, v0, :cond_1

    :cond_0
    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/a/a/c/m;->b(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget v0, v4, Lcom/a/a/c/z;->c:I

    sget-object v1, Lcom/a/a/c/aa;->f:Lcom/a/a/c/aa;

    iget v1, v1, Lcom/a/a/c/aa;->x:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    invoke-static {p4}, Lcom/a/a/d/d;->c(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/util/Enumeration;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "[]"

    invoke-virtual {v4, v0}, Lcom/a/a/c/z;->write(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Lcom/a/a/c/z;->a()V

    goto :goto_0

    :cond_3
    instance-of v0, p2, Ljava/util/regex/Pattern;

    if-eqz v0, :cond_4

    check-cast p2, Ljava/util/regex/Pattern;

    invoke-virtual {p2}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/a/a/c/m;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    instance-of v0, p2, Ljava/util/TimeZone;

    if-eqz v0, :cond_5

    check-cast p2, Ljava/util/TimeZone;

    invoke-virtual {p2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/a/a/c/m;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    instance-of v0, p2, Ljava/util/Currency;

    if-eqz v0, :cond_6

    check-cast p2, Ljava/util/Currency;

    invoke-virtual {p2}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/a/a/c/m;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    instance-of v0, p2, Ljava/lang/Class;

    if-eqz v0, :cond_7

    check-cast p2, Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/a/a/c/m;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    instance-of v0, p2, Ljava/lang/Character;

    if-eqz v0, :cond_9

    check-cast p2, Ljava/lang/Character;

    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "\u0000"

    invoke-virtual {p1, v0}, Lcom/a/a/c/m;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    invoke-virtual {p2}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/a/a/c/m;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_9
    instance-of v0, p2, Ljava/text/SimpleDateFormat;

    if-eqz v0, :cond_b

    move-object v0, p2

    check-cast v0, Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v0

    iget v1, v4, Lcom/a/a/c/z;->c:I

    sget-object v3, Lcom/a/a/c/aa;->n:Lcom/a/a/c/aa;

    iget v3, v3, Lcom/a/a/c/aa;->x:I

    and-int/2addr v1, v3

    if-eqz v1, :cond_a

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v1, p4, :cond_a

    const/16 v1, 0x7b

    invoke-virtual {v4, v1}, Lcom/a/a/c/z;->write(I)V

    const-string v1, "@type"

    invoke-virtual {v4, v1, v2}, Lcom/a/a/c/z;->a(Ljava/lang/String;Z)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/a/a/c/m;->b(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/a/a/c/z;->write(I)V

    const-string v1, "val"

    invoke-virtual {v4, v1, v2}, Lcom/a/a/c/z;->a(Ljava/lang/String;Z)V

    invoke-virtual {v4, v0}, Lcom/a/a/c/z;->a(Ljava/lang/String;)V

    const/16 v0, 0x7d

    invoke-virtual {v4, v0}, Lcom/a/a/c/z;->write(I)V

    goto/16 :goto_0

    :cond_a
    invoke-virtual {v4, v0}, Lcom/a/a/c/z;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    instance-of v0, p2, Lcom/a/a/f;

    if-eqz v0, :cond_c

    check-cast p2, Lcom/a/a/f;

    iget-object v0, p1, Lcom/a/a/c/m;->b:Lcom/a/a/c/z;

    invoke-interface {p2, v0}, Lcom/a/a/f;->a(Ljava/lang/Appendable;)V

    goto/16 :goto_0

    :cond_c
    instance-of v0, p2, Lcom/a/a/c;

    if-eqz v0, :cond_d

    check-cast p2, Lcom/a/a/c;

    invoke-interface {p2}, Lcom/a/a/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/a/a/c/z;->write(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    instance-of v0, p2, Lcom/a/a/c/l;

    if-eqz v0, :cond_e

    check-cast p2, Lcom/a/a/c/l;

    invoke-interface {p2, p1, p3, p4}, Lcom/a/a/c/l;->a(Lcom/a/a/c/m;Ljava/lang/Object;Ljava/lang/reflect/Type;)V

    goto/16 :goto_0

    :cond_e
    instance-of v0, p2, Ljava/util/Enumeration;

    if-eqz v0, :cond_12

    const/4 v0, 0x0

    iget v1, v4, Lcom/a/a/c/z;->c:I

    sget-object v3, Lcom/a/a/c/aa;->n:Lcom/a/a/c/aa;

    iget v3, v3, Lcom/a/a/c/aa;->x:I

    and-int/2addr v1, v3

    if-eqz v1, :cond_13

    instance-of v1, p4, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_13

    check-cast p4, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p4}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    aget-object v0, v0, v2

    move-object v1, v0

    :goto_1
    move-object v0, p2

    check-cast v0, Ljava/util/Enumeration;

    iget-object v5, p1, Lcom/a/a/c/m;->j:Lcom/a/a/c/w;

    invoke-virtual {p1, v5, p2, p3, v2}, Lcom/a/a/c/m;->a(Lcom/a/a/c/w;Ljava/lang/Object;Ljava/lang/Object;I)V

    const/16 v3, 0x5b

    :try_start_0
    invoke-virtual {v4, v3}, Lcom/a/a/c/z;->write(I)V

    :goto_2
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v3, v2, 0x1

    if-eqz v2, :cond_f

    const/16 v2, 0x2c

    invoke-virtual {v4, v2}, Lcom/a/a/c/z;->write(I)V

    :cond_f
    if-nez v6, :cond_10

    invoke-virtual {v4}, Lcom/a/a/c/z;->a()V

    move v2, v3

    goto :goto_2

    :cond_10
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    iget-object v7, p1, Lcom/a/a/c/m;->a:Lcom/a/a/c/x;

    invoke-virtual {v7, v2}, Lcom/a/a/c/x;->a(Ljava/lang/Class;)Lcom/a/a/c/t;

    move-result-object v2

    add-int/lit8 v7, v3, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, p1, v6, v7, v1}, Lcom/a/a/c/t;->a(Lcom/a/a/c/m;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V

    move v2, v3

    goto :goto_2

    :cond_11
    const/16 v0, 0x5d

    invoke-virtual {v4, v0}, Lcom/a/a/c/z;->write(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v5, p1, Lcom/a/a/c/m;->j:Lcom/a/a/c/w;

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    iput-object v5, p1, Lcom/a/a/c/m;->j:Lcom/a/a/c/w;

    throw v0

    :cond_12
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/a/a/c/m;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_13
    move-object v1, v0

    goto :goto_1
.end method
