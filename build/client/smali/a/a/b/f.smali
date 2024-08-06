.class public final La/a/b/f;
.super Ljava/lang/Object;


# instance fields
.field private final a:La/a;

.field private final b:La/a/b/d;

.field private c:Ljava/net/Proxy;

.field private d:Ljava/net/InetSocketAddress;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/net/Proxy;",
            ">;"
        }
    .end annotation
.end field

.field private f:I

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation
.end field

.field private h:I

.field private final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "La/aa;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(La/a;La/a/b/d;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, La/a/b/f;->e:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, La/a/b/f;->g:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, La/a/b/f;->i:Ljava/util/List;

    iput-object p1, p0, La/a/b/f;->a:La/a;

    iput-object p2, p0, La/a/b/f;->b:La/a/b/d;

    invoke-virtual {p1}, La/a;->k()La/r;

    move-result-object v0

    invoke-virtual {p1}, La/a;->f()Ljava/net/Proxy;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, La/a/b/f;->e:Ljava/util/List;

    :goto_0
    const/4 v0, 0x0

    iput v0, p0, La/a/b/f;->f:I

    return-void

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, La/a/b/f;->e:Ljava/util/List;

    iget-object v1, p0, La/a/b/f;->a:La/a;

    invoke-virtual {v1}, La/a;->h()Ljava/net/ProxySelector;

    move-result-object v1

    invoke-virtual {v0}, La/r;->m()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, La/a/b/f;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    iget-object v0, p0, La/a/b/f;->e:Ljava/util/List;

    sget-object v1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    iget-object v0, p0, La/a/b/f;->e:Ljava/util/List;

    sget-object v1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private a(Ljava/net/Proxy;)V
    .locals 8

    const/4 v2, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, La/a/b/f;->g:Ljava/util/List;

    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    if-ne v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, La/a/b/f;->a:La/a;

    invoke-virtual {v0}, La/a;->k()La/r;

    move-result-object v0

    invoke-virtual {v0}, La/r;->g()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, La/a/b/f;->a:La/a;

    invoke-virtual {v0}, La/a;->k()La/r;

    move-result-object v0

    invoke-virtual {v0}, La/r;->j()I

    move-result v0

    move v3, v0

    :goto_0
    if-lez v3, :cond_1

    const v0, 0xffff

    if-le v3, v0, :cond_5

    :cond_1
    new-instance v0, Ljava/net/SocketException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "No route to "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; port is out of range"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    instance-of v1, v0, Ljava/net/InetSocketAddress;

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Proxy.address() is not an InetSocketAddress: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    check-cast v0, Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    move v3, v0

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v4, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    if-ne v0, v4, :cond_7

    iget-object v0, p0, La/a/b/f;->g:Ljava/util/List;

    invoke-static {v1, v3}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    iput v2, p0, La/a/b/f;->h:I

    return-void

    :cond_7
    iget-object v0, p0, La/a/b/f;->a:La/a;

    invoke-virtual {v0}, La/a;->c()La/o;

    move-result-object v0

    invoke-interface {v0, v1}, La/o;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    move v1, v2

    :goto_2
    if-ge v1, v5, :cond_6

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    iget-object v6, p0, La/a/b/f;->g:Ljava/util/List;

    new-instance v7, Ljava/net/InetSocketAddress;

    invoke-direct {v7, v0, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2
.end method

.method private c()Z
    .locals 2

    iget v0, p0, La/a/b/f;->f:I

    iget-object v1, p0, La/a/b/f;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()Z
    .locals 2

    iget v0, p0, La/a/b/f;->h:I

    iget-object v1, p0, La/a/b/f;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e()Z
    .locals 1

    iget-object v0, p0, La/a/b/f;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

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
.method public final a(La/aa;Ljava/io/IOException;)V
    .locals 3

    invoke-virtual {p1}, La/aa;->b()Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, La/a/b/f;->a:La/a;

    invoke-virtual {v0}, La/a;->h()Ljava/net/ProxySelector;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, La/a/b/f;->a:La/a;

    invoke-virtual {v0}, La/a;->h()Ljava/net/ProxySelector;

    move-result-object v0

    iget-object v1, p0, La/a/b/f;->a:La/a;

    invoke-virtual {v1}, La/a;->k()La/r;

    move-result-object v1

    invoke-virtual {v1}, La/r;->m()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {p1}, La/aa;->b()Ljava/net/Proxy;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p2}, Ljava/net/ProxySelector;->connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V

    :cond_0
    iget-object v0, p0, La/a/b/f;->b:La/a/b/d;

    invoke-virtual {v0, p1}, La/a/b/d;->b(La/aa;)V

    return-void
.end method

.method public final a()Z
    .locals 1

    invoke-direct {p0}, La/a/b/f;->d()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, La/a/b/f;->c()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, La/a/b/f;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()La/aa;
    .locals 4

    :goto_0
    invoke-direct {p0}, La/a/b/f;->d()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, La/a/b/f;->c()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, La/a/b/f;->e()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, La/a/b/f;->i:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/aa;

    :cond_1
    return-object v0

    :cond_2
    invoke-direct {p0}, La/a/b/f;->c()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/net/SocketException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No route to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, La/a/b/f;->a:La/a;

    invoke-virtual {v2}, La/a;->k()La/r;

    move-result-object v2

    invoke-virtual {v2}, La/r;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; exhausted proxy configurations: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, La/a/b/f;->e:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v0, p0, La/a/b/f;->e:Ljava/util/List;

    iget v1, p0, La/a/b/f;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, La/a/b/f;->f:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Proxy;

    invoke-direct {p0, v0}, La/a/b/f;->a(Ljava/net/Proxy;)V

    iput-object v0, p0, La/a/b/f;->c:Ljava/net/Proxy;

    :cond_4
    invoke-direct {p0}, La/a/b/f;->d()Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Ljava/net/SocketException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No route to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, La/a/b/f;->a:La/a;

    invoke-virtual {v2}, La/a;->k()La/r;

    move-result-object v2

    invoke-virtual {v2}, La/r;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; exhausted inet socket addresses: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, La/a/b/f;->g:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    iget-object v0, p0, La/a/b/f;->g:Ljava/util/List;

    iget v1, p0, La/a/b/f;->h:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, La/a/b/f;->h:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    iput-object v0, p0, La/a/b/f;->d:Ljava/net/InetSocketAddress;

    new-instance v0, La/aa;

    iget-object v1, p0, La/a/b/f;->a:La/a;

    iget-object v2, p0, La/a/b/f;->c:Ljava/net/Proxy;

    iget-object v3, p0, La/a/b/f;->d:Ljava/net/InetSocketAddress;

    invoke-direct {v0, v1, v2, v3}, La/aa;-><init>(La/a;Ljava/net/Proxy;Ljava/net/InetSocketAddress;)V

    iget-object v1, p0, La/a/b/f;->b:La/a/b/d;

    invoke-virtual {v1, v0}, La/a/b/d;->c(La/aa;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, La/a/b/f;->i:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method
