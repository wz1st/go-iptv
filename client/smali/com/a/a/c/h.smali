.class public final Lcom/a/a/c/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/a/b/a/f;
.implements Lcom/a/a/c/t;


# static fields
.field public static final a:Lcom/a/a/c/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/a/a/c/h;

    invoke-direct {v0}, Lcom/a/a/c/h;-><init>()V

    sput-object v0, Lcom/a/a/c/h;->a:Lcom/a/a/c/h;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
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

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/a/a/c/h;->a(Lcom/a/a/b/b;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/a/a/b/b;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/a/a/b/b;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p4, :cond_1

    move-object p4, v0

    :cond_0
    :goto_0
    return-object p4

    :cond_1
    instance-of v1, p4, Ljava/util/Date;

    if-nez v1, :cond_0

    instance-of v1, p4, Ljava/lang/Number;

    if-eqz v1, :cond_2

    new-instance v0, Ljava/util/Date;

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    move-object p4, v0

    goto :goto_0

    :cond_2
    instance-of v1, p4, Ljava/lang/String;

    if-eqz v1, :cond_7

    check-cast p4, Ljava/lang/String;

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    move-object p4, v0

    goto :goto_0

    :cond_3
    new-instance v1, Lcom/a/a/b/e;

    invoke-direct {v1, p4}, Lcom/a/a/b/e;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v1, v0}, Lcom/a/a/b/e;->b(Z)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v1}, Lcom/a/a/b/e;->m()Ljava/util/Calendar;

    move-result-object p4

    const-class v0, Ljava/util/Calendar;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p2, v0, :cond_4

    invoke-virtual {v1}, Lcom/a/a/b/e;->b()V

    goto :goto_0

    :cond_4
    :try_start_1
    invoke-virtual {p4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object p4

    invoke-virtual {v1}, Lcom/a/a/b/e;->b()V

    goto :goto_0

    :cond_5
    invoke-virtual {v1}, Lcom/a/a/b/e;->b()V

    if-eqz p5, :cond_6

    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    :goto_1
    :try_start_2
    invoke-virtual {v0, p4}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object p4

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/a/a/b/e;->b()V

    throw v0

    :cond_6
    invoke-virtual {p1}, Lcom/a/a/b/b;->a()Ljava/text/DateFormat;

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {p4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    new-instance p4, Ljava/util/Date;

    invoke-direct {p4, v0, v1}, Ljava/util/Date;-><init>(J)V

    goto :goto_0

    :cond_7
    new-instance v0, Lcom/a/a/d;

    const-string v1, "parse error"

    invoke-direct {v0, v1}, Lcom/a/a/d;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/a/a/b/b;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/a/a/b/b;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const/16 v7, 0x11

    const/16 v5, 0xd

    const/4 v4, 0x2

    const/16 v3, 0x10

    const/4 v2, 0x4

    iget-object v6, p1, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    invoke-virtual {v6}, Lcom/a/a/b/e;->a()I

    move-result v0

    if-ne v0, v4, :cond_1

    invoke-virtual {v6}, Lcom/a/a/b/e;->w()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v6, v3}, Lcom/a/a/b/e;->b(I)V

    move-object v2, p2

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/a/a/c/h;->a(Lcom/a/a/b/b;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-class v1, Ljava/util/Calendar;

    if-ne v2, v1, :cond_0

    instance-of v1, v0, Ljava/util/Calendar;

    if-eqz v1, :cond_f

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    if-ne v0, v2, :cond_5

    invoke-virtual {v6}, Lcom/a/a/b/e;->p()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v3}, Lcom/a/a/b/e;->b(I)V

    iget v1, v6, Lcom/a/a/b/e;->c:I

    sget-object v2, Lcom/a/a/b/d;->f:Lcom/a/a/b/d;

    iget v2, v2, Lcom/a/a/b/d;->q:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_4

    new-instance v1, Lcom/a/a/b/e;

    invoke-direct {v1, v0}, Lcom/a/a/b/e;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/a/a/b/e;->b(Z)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/a/a/b/e;->m()Ljava/util/Calendar;

    move-result-object v0

    const-class v2, Ljava/util/Calendar;

    if-ne p2, v2, :cond_2

    invoke-virtual {v1}, Lcom/a/a/b/e;->b()V

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    :cond_3
    invoke-virtual {v1}, Lcom/a/a/b/e;->b()V

    :cond_4
    move-object v4, v0

    move-object v2, p2

    goto :goto_0

    :cond_5
    const/16 v1, 0x8

    if-ne v0, v1, :cond_6

    invoke-virtual {v6}, Lcom/a/a/b/e;->f()V

    const/4 v4, 0x0

    move-object v2, p2

    goto :goto_0

    :cond_6
    const/16 v1, 0xc

    if-ne v0, v1, :cond_b

    invoke-virtual {v6}, Lcom/a/a/b/e;->f()V

    invoke-virtual {v6}, Lcom/a/a/b/e;->a()I

    move-result v0

    if-ne v0, v2, :cond_9

    invoke-virtual {v6}, Lcom/a/a/b/e;->p()Ljava/lang/String;

    move-result-object v0

    const-string v1, "@type"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v6}, Lcom/a/a/b/e;->f()V

    invoke-virtual {p1, v7}, Lcom/a/a/b/b;->a(I)V

    invoke-virtual {v6}, Lcom/a/a/b/e;->p()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/a/a/b/b;->b:Lcom/a/a/b/m;

    iget-object v1, v1, Lcom/a/a/b/m;->c:Ljava/lang/ClassLoader;

    invoke-static {v0, v1}, Lcom/a/a/d/d;->a(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_7

    move-object p2, v0

    :cond_7
    invoke-virtual {p1, v2}, Lcom/a/a/b/b;->a(I)V

    invoke-virtual {p1, v3}, Lcom/a/a/b/b;->a(I)V

    :cond_8
    const/16 v0, 0x3a

    invoke-virtual {v6, v0}, Lcom/a/a/b/e;->a(C)V

    invoke-virtual {v6}, Lcom/a/a/b/e;->a()I

    move-result v0

    if-ne v0, v4, :cond_a

    invoke-virtual {v6}, Lcom/a/a/b/e;->w()J

    move-result-wide v0

    invoke-virtual {v6}, Lcom/a/a/b/e;->f()V

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p1, v5}, Lcom/a/a/b/b;->a(I)V

    move-object v2, p2

    goto/16 :goto_0

    :cond_9
    new-instance v0, Lcom/a/a/d;

    const-string v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/a/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    new-instance v0, Lcom/a/a/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syntax error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Lcom/a/a/b/e;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/a/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    iget v0, p1, Lcom/a/a/b/b;->e:I

    if-ne v0, v4, :cond_e

    const/4 v0, 0x0

    iput v0, p1, Lcom/a/a/b/b;->e:I

    invoke-virtual {p1, v3}, Lcom/a/a/b/b;->a(I)V

    invoke-virtual {v6}, Lcom/a/a/b/e;->a()I

    move-result v0

    if-ne v0, v2, :cond_d

    const-string v0, "val"

    invoke-virtual {v6}, Lcom/a/a/b/e;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    new-instance v0, Lcom/a/a/d;

    const-string v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/a/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    invoke-virtual {v6}, Lcom/a/a/b/e;->f()V

    invoke-virtual {p1, v7}, Lcom/a/a/b/b;->a(I)V

    invoke-virtual {p1}, Lcom/a/a/b/b;->e()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v5}, Lcom/a/a/b/b;->a(I)V

    move-object v2, p2

    goto/16 :goto_0

    :cond_d
    new-instance v0, Lcom/a/a/d;

    const-string v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/a/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    invoke-virtual {p1}, Lcom/a/a/b/b;->e()Ljava/lang/Object;

    move-result-object v4

    move-object v2, p2

    goto/16 :goto_0

    :cond_f
    check-cast v0, Ljava/util/Date;

    if-nez v0, :cond_10

    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_10
    iget-object v1, v6, Lcom/a/a/b/e;->k:Ljava/util/TimeZone;

    iget-object v2, v6, Lcom/a/a/b/e;->l:Ljava/util/Locale;

    invoke-static {v1, v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    move-object v0, v1

    goto/16 :goto_1
.end method

.method public a(Lcom/a/a/c/m;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 11

    iget-object v1, p1, Lcom/a/a/c/m;->b:Lcom/a/a/c/z;

    if-nez p2, :cond_0

    invoke-virtual {v1}, Lcom/a/a/c/z;->a()V

    :goto_0
    return-void

    :cond_0
    iget v0, v1, Lcom/a/a/c/z;->c:I

    sget-object v2, Lcom/a/a/c/aa;->n:Lcom/a/a/c/aa;

    iget v2, v2, Lcom/a/a/c/aa;->x:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eq v0, p4, :cond_2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v2, Ljava/util/Date;

    if-ne v0, v2, :cond_1

    const-string v0, "new Date("

    invoke-virtual {v1, v0}, Lcom/a/a/c/z;->write(Ljava/lang/String;)V

    check-cast p2, Ljava/util/Date;

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/a/a/c/z;->a(J)V

    const/16 v0, 0x29

    invoke-virtual {v1, v0}, Lcom/a/a/c/z;->write(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x7b

    invoke-virtual {v1, v0}, Lcom/a/a/c/z;->write(I)V

    const-string v0, "@type"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/a/a/c/z;->a(Ljava/lang/String;Z)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/a/a/c/m;->b(Ljava/lang/String;)V

    const/16 v0, 0x2c

    invoke-virtual {v1, v0}, Lcom/a/a/c/z;->write(I)V

    const-string v0, "val"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/a/a/c/z;->a(Ljava/lang/String;Z)V

    check-cast p2, Ljava/util/Date;

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/a/a/c/z;->a(J)V

    const/16 v0, 0x7d

    invoke-virtual {v1, v0}, Lcom/a/a/c/z;->write(I)V

    goto :goto_0

    :cond_2
    instance-of v0, p2, Ljava/util/Calendar;

    if-eqz v0, :cond_4

    check-cast p2, Ljava/util/Calendar;

    invoke-virtual {p2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p2

    :goto_1
    iget v0, v1, Lcom/a/a/c/z;->c:I

    sget-object v2, Lcom/a/a/c/aa;->r:Lcom/a/a/c/aa;

    iget v2, v2, Lcom/a/a/c/aa;->x:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/a/a/c/m;->a()Ljava/text/DateFormat;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v2, Lcom/a/a/a;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/a/a/c/m;->l:Ljava/util/Locale;

    invoke-direct {v0, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iget-object v2, p1, Lcom/a/a/c/m;->k:Ljava/util/TimeZone;

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    :cond_3
    invoke-virtual {v0, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/a/a/c/z;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    check-cast p2, Ljava/util/Date;

    goto :goto_1

    :cond_5
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget v0, v1, Lcom/a/a/c/z;->c:I

    sget-object v4, Lcom/a/a/c/aa;->e:Lcom/a/a/c/aa;

    iget v4, v4, Lcom/a/a/c/aa;->x:I

    and-int/2addr v0, v4

    if-eqz v0, :cond_a

    iget v0, v1, Lcom/a/a/c/z;->c:I

    sget-object v4, Lcom/a/a/c/aa;->b:Lcom/a/a/c/aa;

    iget v4, v4, Lcom/a/a/c/aa;->x:I

    and-int/2addr v0, v4

    if-eqz v0, :cond_6

    const/16 v0, 0x27

    invoke-virtual {v1, v0}, Lcom/a/a/c/z;->write(I)V

    :goto_2
    iget-object v0, p1, Lcom/a/a/c/m;->k:Ljava/util/TimeZone;

    iget-object v4, p1, Lcom/a/a/c/m;->l:Ljava/util/Locale;

    invoke-static {v0, v4}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/16 v5, 0xb

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/16 v6, 0xc

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/16 v7, 0xd

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const/16 v8, 0xe

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    if-eqz v8, :cond_7

    const-string v0, "0000-00-00T00:00:00.000"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    int-to-long v8, v8

    const/16 v10, 0x17

    invoke-static {v8, v9, v10, v0}, Lcom/a/a/c/z;->a(JI[C)V

    int-to-long v8, v7

    const/16 v7, 0x13

    invoke-static {v8, v9, v7, v0}, Lcom/a/a/c/z;->a(JI[C)V

    int-to-long v6, v6

    const/16 v8, 0x10

    invoke-static {v6, v7, v8, v0}, Lcom/a/a/c/z;->a(JI[C)V

    int-to-long v6, v5

    const/16 v5, 0xd

    invoke-static {v6, v7, v5, v0}, Lcom/a/a/c/z;->a(JI[C)V

    int-to-long v4, v4

    const/16 v6, 0xa

    invoke-static {v4, v5, v6, v0}, Lcom/a/a/c/z;->a(JI[C)V

    int-to-long v4, v3

    const/4 v3, 0x7

    invoke-static {v4, v5, v3, v0}, Lcom/a/a/c/z;->a(JI[C)V

    int-to-long v2, v2

    const/4 v4, 0x4

    invoke-static {v2, v3, v4, v0}, Lcom/a/a/c/z;->a(JI[C)V

    :goto_3
    invoke-virtual {v1, v0}, Lcom/a/a/c/z;->write([C)V

    iget v0, v1, Lcom/a/a/c/z;->c:I

    sget-object v2, Lcom/a/a/c/aa;->b:Lcom/a/a/c/aa;

    iget v2, v2, Lcom/a/a/c/aa;->x:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_9

    const/16 v0, 0x27

    invoke-virtual {v1, v0}, Lcom/a/a/c/z;->write(I)V

    goto/16 :goto_0

    :cond_6
    const/16 v0, 0x22

    invoke-virtual {v1, v0}, Lcom/a/a/c/z;->write(I)V

    goto :goto_2

    :cond_7
    if-nez v7, :cond_8

    if-nez v6, :cond_8

    if-nez v5, :cond_8

    const-string v0, "0000-00-00"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    int-to-long v4, v4

    const/16 v6, 0xa

    invoke-static {v4, v5, v6, v0}, Lcom/a/a/c/z;->a(JI[C)V

    int-to-long v4, v3

    const/4 v3, 0x7

    invoke-static {v4, v5, v3, v0}, Lcom/a/a/c/z;->a(JI[C)V

    int-to-long v2, v2

    const/4 v4, 0x4

    invoke-static {v2, v3, v4, v0}, Lcom/a/a/c/z;->a(JI[C)V

    goto :goto_3

    :cond_8
    const-string v0, "0000-00-00T00:00:00"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    int-to-long v8, v7

    const/16 v7, 0x13

    invoke-static {v8, v9, v7, v0}, Lcom/a/a/c/z;->a(JI[C)V

    int-to-long v6, v6

    const/16 v8, 0x10

    invoke-static {v6, v7, v8, v0}, Lcom/a/a/c/z;->a(JI[C)V

    int-to-long v6, v5

    const/16 v5, 0xd

    invoke-static {v6, v7, v5, v0}, Lcom/a/a/c/z;->a(JI[C)V

    int-to-long v4, v4

    const/16 v6, 0xa

    invoke-static {v4, v5, v6, v0}, Lcom/a/a/c/z;->a(JI[C)V

    int-to-long v4, v3

    const/4 v3, 0x7

    invoke-static {v4, v5, v3, v0}, Lcom/a/a/c/z;->a(JI[C)V

    int-to-long v2, v2

    const/4 v4, 0x4

    invoke-static {v2, v3, v4, v0}, Lcom/a/a/c/z;->a(JI[C)V

    goto :goto_3

    :cond_9
    const/16 v0, 0x22

    invoke-virtual {v1, v0}, Lcom/a/a/c/z;->write(I)V

    goto/16 :goto_0

    :cond_a
    invoke-virtual {v1, v2, v3}, Lcom/a/a/c/z;->a(J)V

    goto/16 :goto_0
.end method
