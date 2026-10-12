.class public final La/a/d/l;
.super Ljava/lang/Object;

# interfaces
.implements La/s;


# instance fields
.field private final a:La/u;

.field private b:La/a/b/g;

.field private c:Z

.field private volatile d:Z


# direct methods
.method public constructor <init>(La/u;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/a/d/l;->a:La/u;

    return-void
.end method

.method private a(La/r;)La/a;
    .locals 13

    const/4 v0, 0x0

    invoke-virtual {p1}, La/r;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, La/a/d/l;->a:La/u;

    invoke-virtual {v0}, La/u;->x()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v5

    iget-object v0, p0, La/a/d/l;->a:La/u;

    invoke-virtual {v0}, La/u;->m()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v6

    iget-object v0, p0, La/a/d/l;->a:La/u;

    invoke-virtual {v0}, La/u;->d()La/g;

    move-result-object v7

    :goto_0
    new-instance v0, La/a;

    invoke-virtual {p1}, La/r;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, La/r;->j()I

    move-result v2

    iget-object v3, p0, La/a/d/l;->a:La/u;

    invoke-virtual {v3}, La/u;->j()La/o;

    move-result-object v3

    iget-object v4, p0, La/a/d/l;->a:La/u;

    invoke-virtual {v4}, La/u;->w()Ljavax/net/SocketFactory;

    move-result-object v4

    iget-object v8, p0, La/a/d/l;->a:La/u;

    invoke-virtual {v8}, La/u;->s()La/b;

    move-result-object v8

    iget-object v9, p0, La/a/d/l;->a:La/u;

    invoke-virtual {v9}, La/u;->r()Ljava/net/Proxy;

    move-result-object v9

    iget-object v10, p0, La/a/d/l;->a:La/u;

    invoke-virtual {v10}, La/u;->q()Ljava/util/List;

    move-result-object v10

    iget-object v11, p0, La/a/d/l;->a:La/u;

    invoke-virtual {v11}, La/u;->g()Ljava/util/List;

    move-result-object v11

    iget-object v12, p0, La/a/d/l;->a:La/u;

    invoke-virtual {v12}, La/u;->t()Ljava/net/ProxySelector;

    move-result-object v12

    invoke-direct/range {v0 .. v12}, La/a;-><init>(Ljava/lang/String;ILa/o;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;La/g;La/b;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V

    return-object v0

    :cond_0
    move-object v7, v0

    move-object v6, v0

    move-object v5, v0

    goto :goto_0
.end method

.method private static a(La/y;La/r;)Z
    .locals 3

    invoke-virtual {p0}, La/y;->h()La/w;

    move-result-object v0

    invoke-virtual {v0}, La/w;->g()La/r;

    move-result-object v0

    invoke-virtual {v0}, La/r;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, La/r;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, La/r;->j()I

    move-result v1

    invoke-virtual {p1}, La/r;->j()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, La/r;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, La/r;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Ljava/io/IOException;ZLa/w;)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, La/a/d/l;->b:La/a/b/g;

    invoke-virtual {v2, p1}, La/a/b/g;->a(Ljava/io/IOException;)V

    iget-object v2, p0, La/a/d/l;->a:La/u;

    invoke-virtual {v2}, La/u;->v()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p2, :cond_2

    invoke-virtual {p3}, La/w;->a()La/x;

    move-result-object v2

    instance-of v2, v2, La/a/d/n;

    if-nez v2, :cond_0

    :cond_2
    instance-of v2, p1, Ljava/net/ProtocolException;

    if-eqz v2, :cond_3

    move v2, v0

    :goto_1
    if-eqz v2, :cond_0

    iget-object v2, p0, La/a/d/l;->b:La/a/b/g;

    invoke-virtual {v2}, La/a/b/g;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    instance-of v2, p1, Ljava/io/InterruptedIOException;

    if-eqz v2, :cond_5

    instance-of v2, p1, Ljava/net/SocketTimeoutException;

    if-eqz v2, :cond_4

    if-nez p2, :cond_7

    :cond_4
    move v2, v0

    goto :goto_1

    :cond_5
    instance-of v2, p1, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/security/cert/CertificateException;

    if-eqz v2, :cond_6

    move v2, v0

    goto :goto_1

    :cond_6
    instance-of v2, p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-eqz v2, :cond_7

    move v2, v0

    goto :goto_1

    :cond_7
    move v2, v1

    goto :goto_1
.end method


# virtual methods
.method public final a(La/s$a;)La/y;
    .locals 9

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-interface {p1}, La/s$a;->a()La/w;

    move-result-object v1

    new-instance v3, La/a/b/g;

    iget-object v4, p0, La/a/d/l;->a:La/u;

    invoke-virtual {v4}, La/u;->f()La/j;

    move-result-object v4

    invoke-virtual {v1}, La/w;->g()La/r;

    move-result-object v6

    invoke-direct {p0, v6}, La/a/d/l;->a(La/r;)La/a;

    move-result-object v6

    invoke-direct {v3, v4, v6}, La/a/b/g;-><init>(La/j;La/a;)V

    iput-object v3, p0, La/a/d/l;->b:La/a/b/g;

    move-object v3, v1

    move-object v4, v2

    :cond_0
    :goto_0
    iget-boolean v1, p0, La/a/d/l;->d:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, La/a/d/l;->b:La/a/b/g;

    invoke-virtual {v1}, La/a/b/g;->d()V

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Canceled"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :try_start_0
    move-object v0, p1

    check-cast v0, La/a/d/i;

    move-object v1, v0

    iget-object v6, p0, La/a/d/l;->b:La/a/b/g;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v1, v3, v6, v7, v8}, La/a/d/i;->a(La/w;La/a/b/g;La/a/d/h;La/i;)La/y;
    :try_end_0
    .catch La/a/b/e; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v4, :cond_12

    invoke-virtual {v1}, La/y;->f()La/y$a;

    move-result-object v1

    invoke-virtual {v4}, La/y;->f()La/y$a;

    move-result-object v3

    invoke-virtual {v3, v2}, La/y$a;->a(La/z;)La/y$a;

    move-result-object v3

    invoke-virtual {v3}, La/y$a;->a()La/y;

    move-result-object v3

    invoke-virtual {v1, v3}, La/y$a;->c(La/y;)La/y$a;

    move-result-object v1

    invoke-virtual {v1}, La/y$a;->a()La/y;

    move-result-object v4

    :goto_1
    if-nez v4, :cond_2

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v1}, La/a/b/e;->a()Ljava/io/IOException;

    move-result-object v6

    const/4 v7, 0x1

    invoke-direct {p0, v6, v7, v3}, La/a/d/l;->a(Ljava/io/IOException;ZLa/w;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v1}, La/a/b/e;->a()Ljava/io/IOException;

    move-result-object v1

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    iget-object v3, p0, La/a/d/l;->b:La/a/b/g;

    invoke-virtual {v3, v2}, La/a/b/g;->a(Ljava/io/IOException;)V

    iget-object v2, p0, La/a/d/l;->b:La/a/b/g;

    invoke-virtual {v2}, La/a/b/g;->d()V

    throw v1

    :catch_1
    move-exception v1

    const/4 v6, 0x0

    :try_start_2
    invoke-direct {p0, v1, v6, v3}, La/a/d/l;->a(Ljava/io/IOException;ZLa/w;)Z

    move-result v6

    if-nez v6, :cond_0

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    iget-object v1, p0, La/a/d/l;->b:La/a/b/g;

    invoke-virtual {v1}, La/a/b/g;->a()La/a/b/c;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {v1}, La/i;->a()La/aa;

    move-result-object v1

    :goto_2
    invoke-virtual {v4}, La/y;->c()I

    move-result v3

    invoke-virtual {v4}, La/y;->h()La/w;

    move-result-object v6

    invoke-virtual {v6}, La/w;->e()Ljava/lang/String;

    move-result-object v6

    sparse-switch v3, :sswitch_data_0

    :cond_3
    move-object v1, v2

    :goto_3
    if-nez v1, :cond_d

    iget-boolean v1, p0, La/a/d/l;->c:Z

    if-nez v1, :cond_4

    iget-object v1, p0, La/a/d/l;->b:La/a/b/g;

    invoke-virtual {v1}, La/a/b/g;->d()V

    :cond_4
    return-object v4

    :cond_5
    move-object v1, v2

    goto :goto_2

    :sswitch_0
    if-eqz v1, :cond_6

    invoke-virtual {v1}, La/aa;->b()Ljava/net/Proxy;

    move-result-object v3

    :goto_4
    invoke-virtual {v3}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v3

    sget-object v6, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-eq v3, v6, :cond_7

    new-instance v1, Ljava/net/ProtocolException;

    const-string v2, "Received HTTP_PROXY_AUTH (407) code while not using proxy"

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    iget-object v3, p0, La/a/d/l;->a:La/u;

    invoke-virtual {v3}, La/u;->r()Ljava/net/Proxy;

    move-result-object v3

    goto :goto_4

    :cond_7
    iget-object v3, p0, La/a/d/l;->a:La/u;

    invoke-virtual {v3}, La/u;->s()La/b;

    move-result-object v3

    invoke-interface {v3, v1, v4}, La/b;->a(La/aa;La/y;)La/w;

    move-result-object v1

    goto :goto_3

    :sswitch_1
    iget-object v3, p0, La/a/d/l;->a:La/u;

    invoke-virtual {v3}, La/u;->c()La/b;

    move-result-object v3

    invoke-interface {v3, v1, v4}, La/b;->a(La/aa;La/y;)La/w;

    move-result-object v1

    goto :goto_3

    :sswitch_2
    const-string v1, "GET"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "HEAD"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_8
    :sswitch_3
    iget-object v1, p0, La/a/d/l;->a:La/u;

    invoke-virtual {v1}, La/u;->k()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "Location"

    invoke-virtual {v4, v1}, La/y;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v4}, La/y;->h()La/w;

    move-result-object v3

    invoke-virtual {v3}, La/w;->g()La/r;

    move-result-object v3

    invoke-virtual {v3, v1}, La/r;->e(Ljava/lang/String;)La/r;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, La/r;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, La/y;->h()La/w;

    move-result-object v7

    invoke-virtual {v7}, La/w;->g()La/r;

    move-result-object v7

    invoke-virtual {v7}, La/r;->l()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    iget-object v3, p0, La/a/d/l;->a:La/u;

    invoke-virtual {v3}, La/u;->l()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_9
    invoke-virtual {v4}, La/y;->h()La/w;

    move-result-object v3

    invoke-virtual {v3}, La/w;->f()La/w$a;

    move-result-object v3

    invoke-static {v6}, La/a/d/g;->b(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-static {v6}, La/a/d/g;->c(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    const-string v6, "GET"

    invoke-virtual {v3, v6, v2}, La/w$a;->a(Ljava/lang/String;La/x;)La/w$a;

    :goto_5
    const-string v6, "Transfer-Encoding"

    invoke-virtual {v3, v6}, La/w$a;->a(Ljava/lang/String;)La/w$a;

    const-string v6, "Content-Length"

    invoke-virtual {v3, v6}, La/w$a;->a(Ljava/lang/String;)La/w$a;

    const-string v6, "Content-Type"

    invoke-virtual {v3, v6}, La/w$a;->a(Ljava/lang/String;)La/w$a;

    :cond_a
    invoke-static {v4, v1}, La/a/d/l;->a(La/y;La/r;)Z

    move-result v6

    if-nez v6, :cond_b

    const-string v6, "Authorization"

    invoke-virtual {v3, v6}, La/w$a;->a(Ljava/lang/String;)La/w$a;

    :cond_b
    invoke-virtual {v3, v1}, La/w$a;->a(La/r;)La/w$a;

    move-result-object v1

    invoke-virtual {v1}, La/w$a;->a()La/w;

    move-result-object v1

    goto/16 :goto_3

    :cond_c
    invoke-virtual {v3, v6, v2}, La/w$a;->a(Ljava/lang/String;La/x;)La/w$a;

    goto :goto_5

    :sswitch_4
    invoke-virtual {v4}, La/y;->h()La/w;

    move-result-object v1

    invoke-virtual {v1}, La/w;->a()La/x;

    move-result-object v1

    instance-of v1, v1, La/a/d/n;

    if-nez v1, :cond_3

    invoke-virtual {v4}, La/y;->h()La/w;

    move-result-object v1

    goto/16 :goto_3

    :cond_d
    invoke-virtual {v4}, La/y;->a()La/z;

    move-result-object v3

    invoke-static {v3}, La/a/c;->a(Ljava/io/Closeable;)V

    add-int/lit8 v5, v5, 0x1

    const/16 v3, 0x14

    if-le v5, v3, :cond_e

    iget-object v1, p0, La/a/d/l;->b:La/a/b/g;

    invoke-virtual {v1}, La/a/b/g;->d()V

    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Too many follow-up requests: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_e
    invoke-virtual {v1}, La/w;->a()La/x;

    move-result-object v3

    instance-of v3, v3, La/a/d/n;

    if-eqz v3, :cond_f

    new-instance v1, Ljava/net/HttpRetryException;

    const-string v2, "Cannot retry streamed HTTP body"

    invoke-virtual {v4}, La/y;->c()I

    move-result v3

    invoke-direct {v1, v2, v3}, Ljava/net/HttpRetryException;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_f
    invoke-virtual {v1}, La/w;->g()La/r;

    move-result-object v3

    invoke-static {v4, v3}, La/a/d/l;->a(La/y;La/r;)Z

    move-result v3

    if-nez v3, :cond_11

    iget-object v3, p0, La/a/d/l;->b:La/a/b/g;

    invoke-virtual {v3}, La/a/b/g;->d()V

    new-instance v3, La/a/b/g;

    iget-object v6, p0, La/a/d/l;->a:La/u;

    invoke-virtual {v6}, La/u;->f()La/j;

    move-result-object v6

    invoke-virtual {v1}, La/w;->g()La/r;

    move-result-object v7

    invoke-direct {p0, v7}, La/a/d/l;->a(La/r;)La/a;

    move-result-object v7

    invoke-direct {v3, v6, v7}, La/a/b/g;-><init>(La/j;La/a;)V

    iput-object v3, p0, La/a/d/l;->b:La/a/b/g;

    :cond_10
    move-object v3, v1

    goto/16 :goto_0

    :cond_11
    iget-object v3, p0, La/a/d/l;->b:La/a/b/g;

    invoke-virtual {v3}, La/a/b/g;->e()La/a/d/h;

    move-result-object v3

    if-eqz v3, :cond_10

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Closing the body of "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " didn\'t close its backing stream. Bad interceptor?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_12
    move-object v4, v1

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        0x12c -> :sswitch_3
        0x12d -> :sswitch_3
        0x12e -> :sswitch_3
        0x12f -> :sswitch_3
        0x133 -> :sswitch_2
        0x134 -> :sswitch_2
        0x191 -> :sswitch_1
        0x197 -> :sswitch_0
        0x198 -> :sswitch_4
    .end sparse-switch
.end method

.method public final a()Z
    .locals 1

    iget-boolean v0, p0, La/a/d/l;->d:Z

    return v0
.end method

.method public final b()Z
    .locals 1

    iget-boolean v0, p0, La/a/d/l;->c:Z

    return v0
.end method
