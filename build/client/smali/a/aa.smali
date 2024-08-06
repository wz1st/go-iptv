.class public final La/aa;
.super Ljava/lang/Object;


# instance fields
.field final a:La/a;

.field final b:Ljava/net/Proxy;

.field final c:Ljava/net/InetSocketAddress;


# direct methods
.method public constructor <init>(La/a;Ljava/net/Proxy;Ljava/net/InetSocketAddress;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "address == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "proxy == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "inetSocketAddress == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput-object p1, p0, La/aa;->a:La/a;

    iput-object p2, p0, La/aa;->b:Ljava/net/Proxy;

    iput-object p3, p0, La/aa;->c:Ljava/net/InetSocketAddress;

    return-void
.end method


# virtual methods
.method public final a()La/a;
    .locals 1

    iget-object v0, p0, La/aa;->a:La/a;

    return-object v0
.end method

.method public final b()Ljava/net/Proxy;
    .locals 1

    iget-object v0, p0, La/aa;->b:Ljava/net/Proxy;

    return-object v0
.end method

.method public final c()Z
    .locals 2

    iget-object v0, p0, La/aa;->a:La/a;

    iget-object v0, v0, La/a;->i:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_0

    iget-object v0, p0, La/aa;->b:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()Ljava/net/InetSocketAddress;
    .locals 1

    iget-object v0, p0, La/aa;->c:Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, La/aa;

    if-eqz v1, :cond_0

    check-cast p1, La/aa;

    iget-object v1, p0, La/aa;->a:La/a;

    iget-object v2, p1, La/aa;->a:La/a;

    invoke-virtual {v1, v2}, La/a;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, La/aa;->b:Ljava/net/Proxy;

    iget-object v2, p1, La/aa;->b:Ljava/net/Proxy;

    invoke-virtual {v1, v2}, Ljava/net/Proxy;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, La/aa;->c:Ljava/net/InetSocketAddress;

    iget-object v2, p1, La/aa;->c:Ljava/net/InetSocketAddress;

    invoke-virtual {v1, v2}, Ljava/net/InetSocketAddress;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, La/aa;->a:La/a;

    invoke-virtual {v0}, La/a;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, La/aa;->b:Ljava/net/Proxy;

    invoke-virtual {v1}, Ljava/net/Proxy;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, La/aa;->c:Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
