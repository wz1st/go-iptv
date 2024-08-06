.class public abstract Lcom/a/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/a/c;
.implements Lcom/a/a/f;


# static fields
.field public static a:Ljava/util/TimeZone;

.field public static b:Ljava/util/Locale;

.field public static c:I

.field public static d:Ljava/lang/String;

.field public static e:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/a/a/a;->a:Ljava/util/TimeZone;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Lcom/a/a/a;->b:Ljava/util/Locale;

    sget-object v0, Lcom/a/a/b/d;->a:Lcom/a/a/b/d;

    iget v0, v0, Lcom/a/a/b/d;->q:I

    or-int/2addr v0, v2

    sget-object v1, Lcom/a/a/b/d;->e:Lcom/a/a/b/d;

    iget v1, v1, Lcom/a/a/b/d;->q:I

    or-int/2addr v0, v1

    sget-object v1, Lcom/a/a/b/d;->h:Lcom/a/a/b/d;

    iget v1, v1, Lcom/a/a/b/d;->q:I

    or-int/2addr v0, v1

    sget-object v1, Lcom/a/a/b/d;->c:Lcom/a/a/b/d;

    iget v1, v1, Lcom/a/a/b/d;->q:I

    or-int/2addr v0, v1

    sget-object v1, Lcom/a/a/b/d;->d:Lcom/a/a/b/d;

    iget v1, v1, Lcom/a/a/b/d;->q:I

    or-int/2addr v0, v1

    sget-object v1, Lcom/a/a/b/d;->g:Lcom/a/a/b/d;

    iget v1, v1, Lcom/a/a/b/d;->q:I

    or-int/2addr v0, v1

    sget-object v1, Lcom/a/a/b/d;->j:Lcom/a/a/b/d;

    iget v1, v1, Lcom/a/a/b/d;->q:I

    or-int/2addr v0, v1

    sget-object v1, Lcom/a/a/b/d;->i:Lcom/a/a/b/d;

    iget v1, v1, Lcom/a/a/b/d;->q:I

    or-int/2addr v0, v1

    sput v0, Lcom/a/a/a;->c:I

    const-string v0, "yyyy-MM-dd HH:mm:ss"

    sput-object v0, Lcom/a/a/a;->d:Ljava/lang/String;

    sget-object v0, Lcom/a/a/c/aa;->a:Lcom/a/a/c/aa;

    iget v0, v0, Lcom/a/a/c/aa;->x:I

    or-int/2addr v0, v2

    sget-object v1, Lcom/a/a/c/aa;->j:Lcom/a/a/c/aa;

    iget v1, v1, Lcom/a/a/c/aa;->x:I

    or-int/2addr v0, v1

    sget-object v1, Lcom/a/a/c/aa;->d:Lcom/a/a/c/aa;

    iget v1, v1, Lcom/a/a/c/aa;->x:I

    or-int/2addr v0, v1

    sget-object v1, Lcom/a/a/c/aa;->k:Lcom/a/a/c/aa;

    iget v1, v1, Lcom/a/a/c/aa;->x:I

    or-int/2addr v0, v1

    sput v0, Lcom/a/a/a;->e:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Object;Lcom/a/a/c/x;)Ljava/lang/Object;
    .locals 4

    const/4 v1, 0x0

    if-nez p0, :cond_1

    move-object p0, v1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    instance-of v0, p0, Lcom/a/a/a;

    if-eqz v0, :cond_2

    check-cast p0, Lcom/a/a/a;

    goto :goto_0

    :cond_2
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_4

    check-cast p0, Ljava/util/Map;

    new-instance v1, Lcom/a/a/e;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v1, v0}, Lcom/a/a/e;-><init>(I)V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/a/a/d/d;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/a/a/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lcom/a/a/e;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    move-object p0, v1

    goto :goto_0

    :cond_4
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_6

    check-cast p0, Ljava/util/Collection;

    new-instance v0, Lcom/a/a/b;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/a/a/b;-><init>(I)V

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/a/a/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/a/a/b;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    move-object p0, v0

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v2

    if-eqz v2, :cond_7

    check-cast p0, Ljava/lang/Enum;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_7
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    new-instance v0, Lcom/a/a/b;

    invoke-direct {v0, v2}, Lcom/a/a/b;-><init>(I)V

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v2, :cond_8

    invoke-static {p0, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/a/a/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/a/a/b;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_8
    move-object p0, v0

    goto/16 :goto_0

    :cond_9
    invoke-static {v0}, Lcom/a/a/b/m;->a(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1, v0}, Lcom/a/a/c/x;->a(Ljava/lang/Class;)Lcom/a/a/c/t;

    move-result-object v0

    instance-of v2, v0, Lcom/a/a/c/n;

    if-eqz v2, :cond_b

    check-cast v0, Lcom/a/a/c/n;

    new-instance v2, Lcom/a/a/e;

    invoke-direct {v2}, Lcom/a/a/e;-><init>()V

    :try_start_0
    invoke-virtual {v0, p0}, Lcom/a/a/c/n;->a(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/a/a/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/a/a/e;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    new-instance v1, Lcom/a/a/d;

    const-string v2, "toJSON error"

    invoke-direct {v1, v2, v0}, Lcom/a/a/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_a
    move-object p0, v2

    goto/16 :goto_0

    :cond_b
    move-object p0, v1

    goto/16 :goto_0
.end method

.method public static final a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    sget v0, Lcom/a/a/a;->c:I

    invoke-static {p0, v0}, Lcom/a/a/a;->a(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final a(Ljava/lang/String;I)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/a/a/b/b;

    sget-object v2, Lcom/a/a/b/m;->a:Lcom/a/a/b/m;

    invoke-direct {v1, p0, v2, p1}, Lcom/a/a/b/b;-><init>(Ljava/lang/String;Lcom/a/a/b/m;I)V

    invoke-virtual {v1, v0}, Lcom/a/a/b/b;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/a/a/b/b;->c(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/a/a/b/b;->close()V

    goto :goto_0
.end method

.method public static final a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 6

    const/4 v2, 0x0

    sget-object v1, Lcom/a/a/c/x;->a:Lcom/a/a/c/x;

    sget v4, Lcom/a/a/a;->e:I

    const/4 v0, 0x0

    new-array v5, v0, [Lcom/a/a/c/aa;

    move-object v0, p0

    move-object v3, v2

    invoke-static/range {v0 .. v5}, Lcom/a/a/a;->a(Ljava/lang/Object;Lcom/a/a/c/x;[Lcom/a/a/c/y;Ljava/lang/String;I[Lcom/a/a/c/aa;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs a(Ljava/lang/Object;Lcom/a/a/c/x;[Lcom/a/a/c/y;Ljava/lang/String;I[Lcom/a/a/c/aa;)Ljava/lang/String;
    .locals 8

    const/4 v1, 0x0

    new-instance v4, Lcom/a/a/c/z;

    const/4 v2, 0x0

    invoke-direct {v4, v2, p4, p5}, Lcom/a/a/c/z;-><init>(Ljava/io/Writer;I[Lcom/a/a/c/aa;)V

    :try_start_0
    new-instance v5, Lcom/a/a/c/m;

    invoke-direct {v5, v4, p1}, Lcom/a/a/c/m;-><init>(Lcom/a/a/c/z;Lcom/a/a/c/x;)V

    array-length v3, p5

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v6, p5, v2

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lcom/a/a/c/m;->a(Lcom/a/a/c/aa;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v5, p3}, Lcom/a/a/c/m;->a(Ljava/lang/String;)V

    sget-object v2, Lcom/a/a/c/aa;->r:Lcom/a/a/c/aa;

    const/4 v3, 0x1

    invoke-virtual {v5, v2, v3}, Lcom/a/a/c/m;->a(Lcom/a/a/c/aa;Z)V

    :cond_1
    if-eqz p2, :cond_9

    array-length v6, p2

    move v3, v1

    :goto_1
    if-ge v3, v6, :cond_9

    aget-object v2, p2, v3

    if-nez v2, :cond_3

    :cond_2
    :goto_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    :cond_3
    instance-of v1, v2, Lcom/a/a/c/v;

    if-eqz v1, :cond_4

    invoke-virtual {v5}, Lcom/a/a/c/m;->i()Ljava/util/List;

    move-result-object v7

    move-object v0, v2

    check-cast v0, Lcom/a/a/c/v;

    move-object v1, v0

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    instance-of v1, v2, Lcom/a/a/c/r;

    if-eqz v1, :cond_5

    invoke-virtual {v5}, Lcom/a/a/c/m;->h()Ljava/util/List;

    move-result-object v7

    move-object v0, v2

    check-cast v0, Lcom/a/a/c/r;

    move-object v1, v0

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    instance-of v1, v2, Lcom/a/a/c/ac;

    if-eqz v1, :cond_6

    invoke-virtual {v5}, Lcom/a/a/c/m;->b()Ljava/util/List;

    move-result-object v7

    move-object v0, v2

    check-cast v0, Lcom/a/a/c/ac;

    move-object v1, v0

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    instance-of v1, v2, Lcom/a/a/c/u;

    if-eqz v1, :cond_7

    invoke-virtual {v5}, Lcom/a/a/c/m;->j()Ljava/util/List;

    move-result-object v7

    move-object v0, v2

    check-cast v0, Lcom/a/a/c/u;

    move-object v1, v0

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    instance-of v1, v2, Lcom/a/a/c/d;

    if-eqz v1, :cond_8

    invoke-virtual {v5}, Lcom/a/a/c/m;->f()Ljava/util/List;

    move-result-object v7

    move-object v0, v2

    check-cast v0, Lcom/a/a/c/d;

    move-object v1, v0

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    instance-of v1, v2, Lcom/a/a/c/a;

    if-eqz v1, :cond_2

    invoke-virtual {v5}, Lcom/a/a/c/m;->g()Ljava/util/List;

    move-result-object v1

    check-cast v2, Lcom/a/a/c/a;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v1

    invoke-virtual {v4}, Lcom/a/a/c/z;->close()V

    throw v1

    :cond_9
    :try_start_1
    invoke-virtual {v5, p0}, Lcom/a/a/c/m;->b(Ljava/lang/Object;)V

    invoke-virtual {v4}, Lcom/a/a/c/z;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    invoke-virtual {v4}, Lcom/a/a/c/z;->close()V

    return-object v1
.end method

.method public static final b(Ljava/lang/String;)Lcom/a/a/e;
    .locals 2

    invoke-static {p0}, Lcom/a/a/a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/a/a/e;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/a/a/e;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/a/a/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/e;

    goto :goto_0
.end method

.method public static final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/a/a/c/x;->a:Lcom/a/a/c/x;

    invoke-static {p0, v0}, Lcom/a/a/a;->a(Ljava/lang/Object;Lcom/a/a/c/x;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 4

    new-instance v1, Lcom/a/a/c/z;

    const/4 v0, 0x0

    check-cast v0, Ljava/io/Writer;

    sget v2, Lcom/a/a/a;->e:I

    sget-object v3, Lcom/a/a/c/aa;->y:[Lcom/a/a/c/aa;

    invoke-direct {v1, v0, v2, v3}, Lcom/a/a/c/z;-><init>(Ljava/io/Writer;I[Lcom/a/a/c/aa;)V

    :try_start_0
    new-instance v0, Lcom/a/a/c/m;

    sget-object v2, Lcom/a/a/c/x;->a:Lcom/a/a/c/x;

    invoke-direct {v0, v1, v2}, Lcom/a/a/c/m;-><init>(Lcom/a/a/c/z;Lcom/a/a/c/x;)V

    invoke-virtual {v0, p0}, Lcom/a/a/c/m;->b(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/a/a/c/z;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    invoke-virtual {v1}, Lcom/a/a/c/z;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/a/a/c/z;->close()V

    throw v0
.end method

.method public a(Ljava/lang/Appendable;)V
    .locals 4

    new-instance v1, Lcom/a/a/c/z;

    const/4 v0, 0x0

    check-cast v0, Ljava/io/Writer;

    sget v2, Lcom/a/a/a;->e:I

    sget-object v3, Lcom/a/a/c/aa;->y:[Lcom/a/a/c/aa;

    invoke-direct {v1, v0, v2, v3}, Lcom/a/a/c/z;-><init>(Ljava/io/Writer;I[Lcom/a/a/c/aa;)V

    :try_start_0
    new-instance v0, Lcom/a/a/c/m;

    sget-object v2, Lcom/a/a/c/x;->a:Lcom/a/a/c/x;

    invoke-direct {v0, v1, v2}, Lcom/a/a/c/m;-><init>(Lcom/a/a/c/z;Lcom/a/a/c/x;)V

    invoke-virtual {v0, p0}, Lcom/a/a/c/m;->b(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/a/a/c/z;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Lcom/a/a/c/z;->close()V

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v2, Lcom/a/a/d;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/a/a/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/a/a/c/z;->close()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/a/a/a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
