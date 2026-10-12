.class public final La/a/a/a;
.super Ljava/lang/Object;

# interfaces
.implements La/s;


# static fields
.field private static final b:La/z;


# instance fields
.field final a:La/a/a/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, La/a/a/f;

    invoke-direct {v0}, La/a/a/f;-><init>()V

    sput-object v0, La/a/a/a;->b:La/z;

    return-void
.end method

.method public constructor <init>(La/a/a/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/a/a/a;->a:La/a/a/e;

    return-void
.end method

.method private static a(La/y;La/w;La/a/a/e;)La/a/a/b;
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0, p1}, La/a/a/c;->a(La/y;La/w;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, La/w;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, La/a/d/g;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-interface {p2, p1}, La/a/a/e;->b(La/w;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_2
    invoke-interface {p2, p0}, La/a/a/e;->a(La/y;)La/a/a/b;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(La/y;)La/y;
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, La/y;->a()La/z;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, La/y;->f()La/y$a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, La/y$a;->a(La/z;)La/y$a;

    move-result-object v0

    invoke-virtual {v0}, La/y$a;->a()La/y;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "Connection"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Keep-Alive"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Proxy-Authenticate"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Proxy-Authorization"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Trailers"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Transfer-Encoding"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Upgrade"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(La/s$a;)La/y;
    .locals 12

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, La/a/a/a;->a:La/a/a/e;

    if-eqz v0, :cond_3

    iget-object v0, p0, La/a/a/a;->a:La/a/a/e;

    invoke-interface {p1}, La/s$a;->a()La/w;

    move-result-object v3

    invoke-interface {v0, v3}, La/a/a/e;->a(La/w;)La/y;

    move-result-object v0

    :goto_0
    new-instance v3, La/a/a/c$a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {p1}, La/s$a;->a()La/w;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6, v0}, La/a/a/c$a;-><init>(JLa/w;La/y;)V

    invoke-virtual {v3}, La/a/a/c$a;->a()La/a/a/c;

    move-result-object v3

    iget-object v4, v3, La/a/a/c;->b:La/w;

    iget-object v5, v3, La/a/a/c;->a:La/y;

    iget-object v6, p0, La/a/a/a;->a:La/a/a/e;

    if-eqz v6, :cond_0

    iget-object v6, p0, La/a/a/a;->a:La/a/a/e;

    invoke-interface {v6, v3}, La/a/a/e;->a(La/a/a/c;)V

    :cond_0
    if-eqz v0, :cond_1

    if-nez v5, :cond_1

    invoke-virtual {v0}, La/y;->a()La/z;

    move-result-object v3

    invoke-static {v3}, La/a/c;->a(Ljava/io/Closeable;)V

    :cond_1
    if-nez v4, :cond_4

    if-nez v5, :cond_4

    new-instance v0, La/y$a;

    invoke-direct {v0}, La/y$a;-><init>()V

    invoke-interface {p1}, La/s$a;->a()La/w;

    move-result-object v1

    invoke-virtual {v0, v1}, La/y$a;->a(La/w;)La/y$a;

    move-result-object v0

    sget-object v1, La/v;->b:La/v;

    invoke-virtual {v0, v1}, La/y$a;->a(La/v;)La/y$a;

    move-result-object v0

    const/16 v1, 0x1f8

    invoke-virtual {v0, v1}, La/y$a;->a(I)La/y$a;

    move-result-object v0

    const-string v1, "Unsatisfiable Request (only-if-cached)"

    invoke-virtual {v0, v1}, La/y$a;->a(Ljava/lang/String;)La/y$a;

    move-result-object v0

    sget-object v1, La/a/a/a;->b:La/z;

    invoke-virtual {v0, v1}, La/y$a;->a(La/z;)La/y$a;

    move-result-object v0

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v2, v3}, La/y$a;->b(J)La/y$a;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, La/y$a;->a(J)La/y$a;

    move-result-object v0

    invoke-virtual {v0}, La/y$a;->a()La/y;

    move-result-object v0

    :cond_2
    :goto_1
    return-object v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    if-nez v4, :cond_5

    invoke-virtual {v5}, La/y;->f()La/y$a;

    move-result-object v0

    invoke-static {v5}, La/a/a/a;->a(La/y;)La/y;

    move-result-object v1

    invoke-virtual {v0, v1}, La/y$a;->a(La/y;)La/y$a;

    move-result-object v0

    invoke-virtual {v0}, La/y$a;->a()La/y;

    move-result-object v0

    goto :goto_1

    :cond_5
    :try_start_0
    invoke-interface {p1, v4}, La/s$a;->a(La/w;)La/y;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    if-nez v3, :cond_6

    if-eqz v0, :cond_6

    invoke-virtual {v0}, La/y;->a()La/z;

    move-result-object v0

    invoke-static {v0}, La/a/c;->a(Ljava/io/Closeable;)V

    :cond_6
    if-eqz v5, :cond_11

    invoke-virtual {v3}, La/y;->c()I

    move-result v0

    const/16 v4, 0x130

    if-ne v0, v4, :cond_b

    move v0, v2

    :goto_2
    if-eqz v0, :cond_10

    invoke-virtual {v5}, La/y;->f()La/y$a;

    move-result-object v2

    invoke-virtual {v5}, La/y;->e()La/q;

    move-result-object v4

    invoke-virtual {v3}, La/y;->e()La/q;

    move-result-object v6

    new-instance v7, La/q$a;

    invoke-direct {v7}, La/q$a;-><init>()V

    invoke-virtual {v4}, La/q;->b()I

    move-result v8

    move v0, v1

    :goto_3
    if-ge v0, v8, :cond_d

    invoke-virtual {v4, v0}, La/q;->a(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v0}, La/q;->b(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "Warning"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7

    const-string v11, "1"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_9

    :cond_7
    invoke-static {v9}, La/a/a/a;->a(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-virtual {v6, v9}, La/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_9

    :cond_8
    sget-object v11, La/a/a;->a:La/a/a;

    invoke-virtual {v11, v7, v9, v10}, La/a/a;->a(La/q$a;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_a

    invoke-virtual {v0}, La/y;->a()La/z;

    move-result-object v0

    invoke-static {v0}, La/a/c;->a(Ljava/io/Closeable;)V

    :cond_a
    throw v1

    :cond_b
    invoke-virtual {v5}, La/y;->e()La/q;

    move-result-object v0

    const-string v4, "Last-Modified"

    invoke-virtual {v0, v4}, La/q;->b(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v3}, La/y;->e()La/q;

    move-result-object v4

    const-string v6, "Last-Modified"

    invoke-virtual {v4, v6}, La/q;->b(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    if-eqz v4, :cond_c

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    cmp-long v0, v6, v8

    if-gez v0, :cond_c

    move v0, v2

    goto :goto_2

    :cond_c
    move v0, v1

    goto :goto_2

    :cond_d
    invoke-virtual {v6}, La/q;->b()I

    move-result v4

    move v0, v1

    :goto_4
    if-ge v0, v4, :cond_f

    invoke-virtual {v6, v0}, La/q;->a(I)Ljava/lang/String;

    move-result-object v1

    const-string v8, "Content-Length"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_e

    invoke-static {v1}, La/a/a/a;->a(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_e

    sget-object v8, La/a/a;->a:La/a/a;

    invoke-virtual {v6, v0}, La/q;->b(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v7, v1, v9}, La/a/a;->a(La/q$a;Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_f
    invoke-virtual {v7}, La/q$a;->a()La/q;

    move-result-object v0

    invoke-virtual {v2, v0}, La/y$a;->a(La/q;)La/y$a;

    move-result-object v0

    invoke-static {v5}, La/a/a/a;->a(La/y;)La/y;

    move-result-object v1

    invoke-virtual {v0, v1}, La/y$a;->a(La/y;)La/y$a;

    move-result-object v0

    invoke-static {v3}, La/a/a/a;->a(La/y;)La/y;

    move-result-object v1

    invoke-virtual {v0, v1}, La/y$a;->b(La/y;)La/y$a;

    move-result-object v0

    invoke-virtual {v0}, La/y$a;->a()La/y;

    move-result-object v0

    invoke-virtual {v3}, La/y;->a()La/z;

    move-result-object v1

    invoke-virtual {v1}, La/z;->close()V

    iget-object v1, p0, La/a/a/a;->a:La/a/a/e;

    invoke-interface {v1}, La/a/a/e;->a()V

    iget-object v1, p0, La/a/a/a;->a:La/a/a/e;

    invoke-interface {v1, v5, v0}, La/a/a/e;->a(La/y;La/y;)V

    goto/16 :goto_1

    :cond_10
    invoke-virtual {v5}, La/y;->a()La/z;

    move-result-object v0

    invoke-static {v0}, La/a/c;->a(Ljava/io/Closeable;)V

    :cond_11
    invoke-virtual {v3}, La/y;->f()La/y$a;

    move-result-object v0

    invoke-static {v5}, La/a/a/a;->a(La/y;)La/y;

    move-result-object v1

    invoke-virtual {v0, v1}, La/y$a;->a(La/y;)La/y$a;

    move-result-object v0

    invoke-static {v3}, La/a/a/a;->a(La/y;)La/y;

    move-result-object v1

    invoke-virtual {v0, v1}, La/y$a;->b(La/y;)La/y$a;

    move-result-object v0

    invoke-virtual {v0}, La/y$a;->a()La/y;

    move-result-object v0

    invoke-static {v0}, La/a/d/f;->b(La/y;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v3}, La/y;->h()La/w;

    move-result-object v1

    iget-object v2, p0, La/a/a/a;->a:La/a/a/e;

    invoke-static {v0, v1, v2}, La/a/a/a;->a(La/y;La/w;La/a/a/e;)La/a/a/b;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, La/a/a/b;->b()Lb/l;

    move-result-object v2

    if-eqz v2, :cond_2

    new-instance v3, La/a/a/g;

    invoke-virtual {v0}, La/y;->a()La/z;

    move-result-object v4

    invoke-virtual {v4}, La/z;->d()Lb/d;

    move-result-object v4

    invoke-static {v2}, Lb/k;->a(Lb/l;)Lb/c;

    move-result-object v2

    invoke-direct {v3, p0, v4, v1, v2}, La/a/a/g;-><init>(La/a/a/a;Lb/d;La/a/a/b;Lb/c;)V

    invoke-virtual {v0}, La/y;->f()La/y$a;

    move-result-object v1

    new-instance v2, La/a/d/j;

    invoke-virtual {v0}, La/y;->e()La/q;

    move-result-object v0

    invoke-static {v3}, Lb/k;->a(Lb/m;)Lb/d;

    move-result-object v3

    invoke-direct {v2, v0, v3}, La/a/d/j;-><init>(La/q;Lb/d;)V

    invoke-virtual {v1, v2}, La/y$a;->a(La/z;)La/y$a;

    move-result-object v0

    invoke-virtual {v0}, La/y$a;->a()La/y;

    move-result-object v0

    goto/16 :goto_1
.end method
