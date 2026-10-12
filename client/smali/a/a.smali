.class public final La/a;
.super Ljava/lang/Object;


# instance fields
.field final a:La/r;

.field final b:La/o;

.field final c:Ljavax/net/SocketFactory;

.field final d:La/b;

.field final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "La/v;",
            ">;"
        }
    .end annotation
.end field

.field final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "La/k;",
            ">;"
        }
    .end annotation
.end field

.field final g:Ljava/net/ProxySelector;

.field final h:Ljava/net/Proxy;

.field final i:Ljavax/net/ssl/SSLSocketFactory;

.field final j:Ljavax/net/ssl/HostnameVerifier;

.field final k:La/g;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILa/o;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;La/g;La/b;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "La/o;",
            "Ljavax/net/SocketFactory;",
            "Ljavax/net/ssl/SSLSocketFactory;",
            "Ljavax/net/ssl/HostnameVerifier;",
            "La/g;",
            "La/b;",
            "Ljava/net/Proxy;",
            "Ljava/util/List",
            "<",
            "La/v;",
            ">;",
            "Ljava/util/List",
            "<",
            "La/k;",
            ">;",
            "Ljava/net/ProxySelector;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, La/r$a;

    invoke-direct {v1}, La/r$a;-><init>()V

    if-eqz p5, :cond_0

    const-string v0, "https"

    :goto_0
    invoke-virtual {v1, v0}, La/r$a;->c(Ljava/lang/String;)La/r$a;

    move-result-object v0

    invoke-virtual {v0, p1}, La/r$a;->b(Ljava/lang/String;)La/r$a;

    move-result-object v0

    invoke-virtual {v0, p2}, La/r$a;->a(I)La/r$a;

    move-result-object v0

    invoke-virtual {v0}, La/r$a;->b()La/r;

    move-result-object v0

    iput-object v0, p0, La/a;->a:La/r;

    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "dns == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v0, "http"

    goto :goto_0

    :cond_1
    iput-object p3, p0, La/a;->b:La/o;

    if-nez p4, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "socketFactory == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput-object p4, p0, La/a;->c:Ljavax/net/SocketFactory;

    if-nez p8, :cond_3

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "proxyAuthenticator == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iput-object p8, p0, La/a;->d:La/b;

    if-nez p10, :cond_4

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "protocols == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-static {p10}, La/a/c;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, La/a;->e:Ljava/util/List;

    if-nez p11, :cond_5

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "connectionSpecs == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    invoke-static {p11}, La/a/c;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, La/a;->f:Ljava/util/List;

    if-nez p12, :cond_6

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "proxySelector == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    iput-object p12, p0, La/a;->g:Ljava/net/ProxySelector;

    iput-object p9, p0, La/a;->h:Ljava/net/Proxy;

    iput-object p5, p0, La/a;->i:Ljavax/net/ssl/SSLSocketFactory;

    iput-object p6, p0, La/a;->j:Ljavax/net/ssl/HostnameVerifier;

    iput-object p7, p0, La/a;->k:La/g;

    return-void
.end method


# virtual methods
.method public final a()La/g;
    .locals 1

    iget-object v0, p0, La/a;->k:La/g;

    return-object v0
.end method

.method public final b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "La/k;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, La/a;->f:Ljava/util/List;

    return-object v0
.end method

.method public final c()La/o;
    .locals 1

    iget-object v0, p0, La/a;->b:La/o;

    return-object v0
.end method

.method public final d()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    iget-object v0, p0, La/a;->j:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public final e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "La/v;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, La/a;->e:Ljava/util/List;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, La/a;

    if-eqz v1, :cond_0

    check-cast p1, La/a;

    iget-object v1, p0, La/a;->a:La/r;

    iget-object v2, p1, La/a;->a:La/r;

    invoke-virtual {v1, v2}, La/r;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, La/a;->b:La/o;

    iget-object v2, p1, La/a;->b:La/o;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, La/a;->d:La/b;

    iget-object v2, p1, La/a;->d:La/b;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, La/a;->e:Ljava/util/List;

    iget-object v2, p1, La/a;->e:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, La/a;->f:Ljava/util/List;

    iget-object v2, p1, La/a;->f:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, La/a;->g:Ljava/net/ProxySelector;

    iget-object v2, p1, La/a;->g:Ljava/net/ProxySelector;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, La/a;->h:Ljava/net/Proxy;

    iget-object v2, p1, La/a;->h:Ljava/net/Proxy;

    invoke-static {v1, v2}, La/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, La/a;->i:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v2, p1, La/a;->i:Ljavax/net/ssl/SSLSocketFactory;

    invoke-static {v1, v2}, La/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, La/a;->j:Ljavax/net/ssl/HostnameVerifier;

    iget-object v2, p1, La/a;->j:Ljavax/net/ssl/HostnameVerifier;

    invoke-static {v1, v2}, La/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, La/a;->k:La/g;

    iget-object v2, p1, La/a;->k:La/g;

    invoke-static {v1, v2}, La/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final f()Ljava/net/Proxy;
    .locals 1

    iget-object v0, p0, La/a;->h:Ljava/net/Proxy;

    return-object v0
.end method

.method public final g()La/b;
    .locals 1

    iget-object v0, p0, La/a;->d:La/b;

    return-object v0
.end method

.method public final h()Ljava/net/ProxySelector;
    .locals 1

    iget-object v0, p0, La/a;->g:Ljava/net/ProxySelector;

    return-object v0
.end method

.method public final hashCode()I
    .locals 11

    const/4 v1, 0x0

    iget-object v0, p0, La/a;->a:La/r;

    invoke-virtual {v0}, La/r;->hashCode()I

    move-result v4

    iget-object v0, p0, La/a;->b:La/o;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    iget-object v0, p0, La/a;->d:La/b;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v6

    iget-object v0, p0, La/a;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v7

    iget-object v0, p0, La/a;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v8

    iget-object v0, p0, La/a;->g:Ljava/net/ProxySelector;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v9

    iget-object v0, p0, La/a;->h:Ljava/net/Proxy;

    if-eqz v0, :cond_1

    iget-object v0, p0, La/a;->h:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->hashCode()I

    move-result v0

    :goto_0
    iget-object v2, p0, La/a;->i:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v2, :cond_2

    iget-object v2, p0, La/a;->i:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    iget-object v3, p0, La/a;->j:Ljavax/net/ssl/HostnameVerifier;

    if-eqz v3, :cond_3

    iget-object v3, p0, La/a;->j:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_2
    iget-object v10, p0, La/a;->k:La/g;

    if-eqz v10, :cond_0

    iget-object v1, p0, La/a;->k:La/g;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_0
    add-int/lit16 v4, v4, 0x20f

    mul-int/lit8 v4, v4, 0x1f

    add-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x1f

    add-int/2addr v4, v6

    mul-int/lit8 v4, v4, 0x1f

    add-int/2addr v4, v7

    mul-int/lit8 v4, v4, 0x1f

    add-int/2addr v4, v8

    mul-int/lit8 v4, v4, 0x1f

    add-int/2addr v4, v9

    mul-int/lit8 v4, v4, 0x1f

    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_1

    :cond_3
    move v3, v1

    goto :goto_2
.end method

.method public final i()Ljavax/net/SocketFactory;
    .locals 1

    iget-object v0, p0, La/a;->c:Ljavax/net/SocketFactory;

    return-object v0
.end method

.method public final j()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    iget-object v0, p0, La/a;->i:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public final k()La/r;
    .locals 1

    iget-object v0, p0, La/a;->a:La/r;

    return-object v0
.end method
