.class public final La/a/b/c;
.super La/a/c/d$b;

# interfaces
.implements La/i;


# instance fields
.field public a:I

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/Reference",
            "<",
            "La/a/b/g;",
            ">;>;"
        }
    .end annotation
.end field

.field public volatile c:La/a/c/d;

.field public d:J

.field public e:Z

.field public f:Lb/c;

.field public g:Ljava/net/Socket;

.field public h:Lb/d;

.field public i:I

.field private final k:La/aa;

.field private l:Ljava/net/Socket;

.field private m:La/p;

.field private n:La/v;


# direct methods
.method public constructor <init>(La/aa;)V
    .locals 2

    invoke-direct {p0}, La/a/c/d$b;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, La/a/b/c;->b:Ljava/util/List;

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, La/a/b/c;->d:J

    iput-object p1, p0, La/a/b/c;->k:La/aa;

    return-void
.end method

.method private a(IILa/w;La/r;)La/w;
    .locals 8

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CONNECT "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {p4, v1}, La/a/c;->a(La/r;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " HTTP/1.1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_0
    new-instance v4, La/a/d/c;

    iget-object v0, p0, La/a/b/c;->h:Lb/d;

    iget-object v1, p0, La/a/b/c;->f:Lb/c;

    invoke-direct {v4, v2, v2, v0, v1}, La/a/d/c;-><init>(La/u;La/a/b/g;Lb/d;Lb/c;)V

    iget-object v0, p0, La/a/b/c;->h:Lb/d;

    invoke-interface {v0}, Lb/d;->a()Lb/n;

    move-result-object v0

    int-to-long v6, p1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v6, v7, v1}, Lb/n;->a(JLjava/util/concurrent/TimeUnit;)Lb/n;

    iget-object v0, p0, La/a/b/c;->f:Lb/c;

    invoke-interface {v0}, Lb/c;->a()Lb/n;

    move-result-object v0

    int-to-long v6, p2

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v6, v7, v1}, Lb/n;->a(JLjava/util/concurrent/TimeUnit;)Lb/n;

    invoke-virtual {p3}, La/w;->c()La/q;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, La/a/d/c;->a(La/q;Ljava/lang/String;)V

    invoke-virtual {v4}, La/a/d/c;->a()V

    invoke-virtual {v4}, La/a/d/c;->e()La/y$a;

    move-result-object v0

    invoke-virtual {v0, p3}, La/y$a;->a(La/w;)La/y$a;

    move-result-object v0

    invoke-virtual {v0}, La/y$a;->a()La/y;

    move-result-object v5

    invoke-static {v5}, La/a/d/f;->a(La/y;)J

    move-result-wide v0

    const-wide/16 v6, -0x1

    cmp-long v6, v0, v6

    if-nez v6, :cond_1

    const-wide/16 v0, 0x0

    :cond_1
    invoke-virtual {v4, v0, v1}, La/a/d/c;->b(J)Lb/m;

    move-result-object v0

    const v1, 0x7fffffff

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v4}, La/a/c;->b(Lb/m;ILjava/util/concurrent/TimeUnit;)Z

    invoke-interface {v0}, Lb/m;->close()V

    invoke-virtual {v5}, La/y;->c()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected response code for CONNECT: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, La/y;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    iget-object v0, p0, La/a/b/c;->h:Lb/d;

    invoke-interface {v0}, Lb/d;->b()Lb/b;

    move-result-object v0

    invoke-virtual {v0}, Lb/b;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, La/a/b/c;->f:Lb/c;

    invoke-interface {v0}, Lb/c;->b()Lb/b;

    move-result-object v0

    invoke-virtual {v0}, Lb/b;->h()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "TLS tunnel buffered too many bytes!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move-object p3, v2

    :goto_0
    return-object p3

    :sswitch_1
    iget-object v0, p0, La/a/b/c;->k:La/aa;

    invoke-virtual {v0}, La/aa;->a()La/a;

    move-result-object v0

    invoke-virtual {v0}, La/a;->g()La/b;

    move-result-object v0

    iget-object v1, p0, La/a/b/c;->k:La/aa;

    invoke-interface {v0, v1, v5}, La/b;->a(La/aa;La/y;)La/w;

    move-result-object p3

    if-nez p3, :cond_4

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed to authenticate with proxy"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const-string v0, "close"

    const-string v1, "Connection"

    invoke-virtual {v5, v1}, La/y;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x197 -> :sswitch_1
    .end sparse-switch
.end method

.method private a(II)V
    .locals 4

    iget-object v0, p0, La/a/b/c;->k:La/aa;

    invoke-virtual {v0}, La/aa;->b()Ljava/net/Proxy;

    move-result-object v1

    iget-object v0, p0, La/a/b/c;->k:La/aa;

    invoke-virtual {v0}, La/aa;->a()La/a;

    move-result-object v0

    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v2

    sget-object v3, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v2, v3, :cond_0

    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v2

    sget-object v3, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v2, v3, :cond_1

    :cond_0
    invoke-virtual {v0}, La/a;->i()Ljavax/net/SocketFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    :goto_0
    iput-object v0, p0, La/a/b/c;->l:Ljava/net/Socket;

    iget-object v0, p0, La/a/b/c;->l:Ljava/net/Socket;

    invoke-virtual {v0, p2}, Ljava/net/Socket;->setSoTimeout(I)V

    :try_start_0
    invoke-static {}, La/a/f/a;->a()La/a/f/a;

    move-result-object v0

    iget-object v1, p0, La/a/b/c;->l:Ljava/net/Socket;

    iget-object v2, p0, La/a/b/c;->k:La/aa;

    invoke-virtual {v2}, La/aa;->d()Ljava/net/InetSocketAddress;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, La/a/f/a;->a(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, La/a/b/c;->l:Ljava/net/Socket;

    invoke-static {v0}, Lb/k;->b(Ljava/net/Socket;)Lb/m;

    move-result-object v0

    invoke-static {v0}, Lb/k;->a(Lb/m;)Lb/d;

    move-result-object v0

    iput-object v0, p0, La/a/b/c;->h:Lb/d;

    iget-object v0, p0, La/a/b/c;->l:Ljava/net/Socket;

    invoke-static {v0}, Lb/k;->a(Ljava/net/Socket;)Lb/l;

    move-result-object v0

    invoke-static {v0}, Lb/k;->a(Lb/l;)Lb/c;

    move-result-object v0

    iput-object v0, p0, La/a/b/c;->f:Lb/c;

    return-void

    :cond_1
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0, v1}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/net/ConnectException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to connect to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, La/a/b/c;->k:La/aa;

    invoke-virtual {v2}, La/aa;->d()Ljava/net/InetSocketAddress;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(IIILa/a/b/b;)V
    .locals 5

    const/4 v4, 0x0

    new-instance v0, La/w$a;

    invoke-direct {v0}, La/w$a;-><init>()V

    iget-object v1, p0, La/a/b/c;->k:La/aa;

    invoke-virtual {v1}, La/aa;->a()La/a;

    move-result-object v1

    invoke-virtual {v1}, La/a;->k()La/r;

    move-result-object v1

    invoke-virtual {v0, v1}, La/w$a;->a(La/r;)La/w$a;

    move-result-object v0

    const-string v1, "Host"

    iget-object v2, p0, La/a/b/c;->k:La/aa;

    invoke-virtual {v2}, La/aa;->a()La/a;

    move-result-object v2

    invoke-virtual {v2}, La/a;->k()La/r;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, La/a/c;->a(La/r;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, La/w$a;->a(Ljava/lang/String;Ljava/lang/String;)La/w$a;

    move-result-object v0

    const-string v1, "Proxy-Connection"

    const-string v2, "Keep-Alive"

    invoke-virtual {v0, v1, v2}, La/w$a;->a(Ljava/lang/String;Ljava/lang/String;)La/w$a;

    move-result-object v0

    const-string v1, "User-Agent"

    invoke-static {}, La/a/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, La/w$a;->a(Ljava/lang/String;Ljava/lang/String;)La/w$a;

    move-result-object v0

    invoke-virtual {v0}, La/w$a;->a()La/w;

    move-result-object v0

    invoke-virtual {v0}, La/w;->g()La/r;

    move-result-object v2

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v1, v1, 0x1

    const/16 v3, 0x15

    if-le v1, v3, :cond_0

    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Too many tunnel connections attempted: 21"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0, p1, p2}, La/a/b/c;->a(II)V

    invoke-direct {p0, p2, p3, v0, v2}, La/a/b/c;->a(IILa/w;La/r;)La/w;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v3, p0, La/a/b/c;->l:Ljava/net/Socket;

    invoke-static {v3}, La/a/c;->a(Ljava/net/Socket;)V

    iput-object v4, p0, La/a/b/c;->l:Ljava/net/Socket;

    iput-object v4, p0, La/a/b/c;->f:Lb/c;

    iput-object v4, p0, La/a/b/c;->h:Lb/d;

    goto :goto_0

    :cond_1
    invoke-direct {p0, p4}, La/a/b/c;->a(La/a/b/b;)V

    return-void
.end method

.method private a(La/a/b/b;)V
    .locals 10

    const/4 v9, 0x0

    const/4 v2, 0x0

    const/4 v8, 0x1

    iget-object v0, p0, La/a/b/c;->k:La/aa;

    invoke-virtual {v0}, La/aa;->a()La/a;

    move-result-object v0

    invoke-virtual {v0}, La/a;->j()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, La/a/b/c;->k:La/aa;

    invoke-virtual {v0}, La/aa;->a()La/a;

    move-result-object v3

    invoke-virtual {v3}, La/a;->j()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, La/a/b/c;->l:Ljava/net/Socket;

    invoke-virtual {v3}, La/a;->k()La/r;

    move-result-object v4

    invoke-virtual {v4}, La/r;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, La/a;->k()La/r;

    move-result-object v5

    invoke-virtual {v5}, La/r;->j()I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v0, v1, v4, v5, v6}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p1, v0}, La/a/b/b;->a(Ljavax/net/ssl/SSLSocket;)La/k;

    move-result-object v1

    invoke-virtual {v1}, La/k;->c()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, La/a/f/a;->a()La/a/f/a;

    move-result-object v4

    invoke-virtual {v3}, La/a;->k()La/r;

    move-result-object v5

    invoke-virtual {v5}, La/r;->g()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, La/a;->e()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v4, v0, v5, v6}, La/a/f/a;->a(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V

    :cond_0
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v4

    invoke-static {v4}, La/p;->a(Ljavax/net/ssl/SSLSession;)La/p;

    move-result-object v4

    invoke-virtual {v3}, La/a;->d()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v5

    invoke-virtual {v3}, La/a;->k()La/r;

    move-result-object v6

    invoke-virtual {v6}, La/r;->g()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v4}, La/p;->b()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    new-instance v2, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Hostname "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, La/a;->k()La/r;

    move-result-object v3

    invoke-virtual {v3}, La/r;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not verified:\n    certificate: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, La/g;->a(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n    DN: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v4

    invoke-interface {v4}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n    subjectAltNames: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, La/a/g/c;->a(Ljava/security/cert/X509Certificate;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Ljava/lang/AssertionError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catch_0
    move-exception v1

    move-object v2, v0

    :goto_0
    :try_start_2
    invoke-static {v1}, La/a/c;->a(Ljava/lang/AssertionError;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    move-object v1, v0

    :goto_1
    if-eqz v2, :cond_1

    invoke-static {}, La/a/f/a;->a()La/a/f/a;

    move-result-object v0

    invoke-virtual {v0, v2}, La/a/f/a;->a(Ljavax/net/ssl/SSLSocket;)V

    :cond_1
    invoke-static {v2}, La/a/c;->a(Ljava/net/Socket;)V

    throw v1

    :cond_2
    :try_start_3
    invoke-virtual {v3}, La/a;->a()La/g;

    move-result-object v5

    invoke-virtual {v3}, La/a;->k()La/r;

    move-result-object v3

    invoke-virtual {v3}, La/r;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, La/p;->b()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, La/g;->a(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v1}, La/k;->c()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, La/a/f/a;->a()La/a/f/a;

    move-result-object v1

    invoke-virtual {v1, v0}, La/a/f/a;->b(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object v2

    :cond_3
    iput-object v0, p0, La/a/b/c;->g:Ljava/net/Socket;

    iget-object v1, p0, La/a/b/c;->g:Ljava/net/Socket;

    invoke-static {v1}, Lb/k;->b(Ljava/net/Socket;)Lb/m;

    move-result-object v1

    invoke-static {v1}, Lb/k;->a(Lb/m;)Lb/d;

    move-result-object v1

    iput-object v1, p0, La/a/b/c;->h:Lb/d;

    iget-object v1, p0, La/a/b/c;->g:Ljava/net/Socket;

    invoke-static {v1}, Lb/k;->a(Ljava/net/Socket;)Lb/l;

    move-result-object v1

    invoke-static {v1}, Lb/k;->a(Lb/l;)Lb/c;

    move-result-object v1

    iput-object v1, p0, La/a/b/c;->f:Lb/c;

    iput-object v4, p0, La/a/b/c;->m:La/p;

    if-eqz v2, :cond_6

    invoke-static {v2}, La/v;->a(Ljava/lang/String;)La/v;

    move-result-object v1

    :goto_2
    iput-object v1, p0, La/a/b/c;->n:La/v;
    :try_end_3
    .catch Ljava/lang/AssertionError; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_4

    invoke-static {}, La/a/f/a;->a()La/a/f/a;

    move-result-object v1

    invoke-virtual {v1, v0}, La/a/f/a;->a(Ljavax/net/ssl/SSLSocket;)V

    :cond_4
    :goto_3
    iget-object v0, p0, La/a/b/c;->n:La/v;

    sget-object v1, La/v;->d:La/v;

    if-eq v0, v1, :cond_5

    iget-object v0, p0, La/a/b/c;->n:La/v;

    sget-object v1, La/v;->c:La/v;

    if-ne v0, v1, :cond_9

    :cond_5
    iget-object v0, p0, La/a/b/c;->g:Ljava/net/Socket;

    invoke-virtual {v0, v9}, Ljava/net/Socket;->setSoTimeout(I)V

    new-instance v0, La/a/c/d$a;

    invoke-direct {v0, v8}, La/a/c/d$a;-><init>(Z)V

    iget-object v1, p0, La/a/b/c;->g:Ljava/net/Socket;

    iget-object v2, p0, La/a/b/c;->k:La/aa;

    invoke-virtual {v2}, La/aa;->a()La/a;

    move-result-object v2

    invoke-virtual {v2}, La/a;->k()La/r;

    move-result-object v2

    invoke-virtual {v2}, La/r;->g()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, La/a/b/c;->h:Lb/d;

    iget-object v4, p0, La/a/b/c;->f:Lb/c;

    invoke-virtual {v0, v1, v2, v3, v4}, La/a/c/d$a;->a(Ljava/net/Socket;Ljava/lang/String;Lb/d;Lb/c;)La/a/c/d$a;

    move-result-object v0

    iget-object v1, p0, La/a/b/c;->n:La/v;

    invoke-virtual {v0, v1}, La/a/c/d$a;->a(La/v;)La/a/c/d$a;

    move-result-object v0

    invoke-virtual {v0, p0}, La/a/c/d$a;->a(La/a/c/d$b;)La/a/c/d$a;

    move-result-object v0

    invoke-virtual {v0}, La/a/c/d$a;->a()La/a/c/d;

    move-result-object v0

    invoke-virtual {v0}, La/a/c/d;->f()V

    invoke-virtual {v0}, La/a/c/d;->e()I

    move-result v1

    iput v1, p0, La/a/b/c;->a:I

    iput-object v0, p0, La/a/b/c;->c:La/a/c/d;

    :goto_4
    return-void

    :cond_6
    :try_start_4
    sget-object v1, La/v;->b:La/v;
    :try_end_4
    .catch Ljava/lang/AssertionError; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :cond_7
    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_8
    sget-object v0, La/v;->b:La/v;

    iput-object v0, p0, La/a/b/c;->n:La/v;

    iget-object v0, p0, La/a/b/c;->l:Ljava/net/Socket;

    iput-object v0, p0, La/a/b/c;->g:Ljava/net/Socket;

    goto :goto_3

    :cond_9
    iput v8, p0, La/a/b/c;->a:I

    goto :goto_4

    :catchall_1
    move-exception v1

    move-object v2, v0

    goto/16 :goto_1

    :catch_1
    move-exception v0

    move-object v1, v0

    goto/16 :goto_0
.end method


# virtual methods
.method public final a()La/aa;
    .locals 1

    iget-object v0, p0, La/a/b/c;->k:La/aa;

    return-object v0
.end method

.method public final a(IIILjava/util/List;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/List",
            "<",
            "La/k;",
            ">;Z)V"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, La/a/b/c;->n:La/v;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v3, La/a/b/b;

    invoke-direct {v3, p4}, La/a/b/b;-><init>(Ljava/util/List;)V

    iget-object v0, p0, La/a/b/c;->k:La/aa;

    invoke-virtual {v0}, La/aa;->a()La/a;

    move-result-object v0

    invoke-virtual {v0}, La/a;->j()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    if-nez v0, :cond_6

    sget-object v0, La/k;->a:La/k;

    invoke-interface {p4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, La/a/b/e;

    new-instance v1, Ljava/net/UnknownServiceException;

    const-string v2, "CLEARTEXT communication not enabled for client"

    invoke-direct {v1, v2}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, La/a/b/e;-><init>(Ljava/io/IOException;)V

    throw v0

    :cond_1
    iget-object v0, p0, La/a/b/c;->k:La/aa;

    invoke-virtual {v0}, La/aa;->a()La/a;

    move-result-object v0

    invoke-virtual {v0}, La/a;->k()La/r;

    move-result-object v0

    invoke-virtual {v0}, La/r;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, La/a/f/a;->a()La/a/f/a;

    move-result-object v2

    invoke-virtual {v2, v0}, La/a/f/a;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    new-instance v1, La/a/b/e;

    new-instance v2, Ljava/net/UnknownServiceException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "CLEARTEXT communication to "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " not permitted by network security policy"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, La/a/b/e;-><init>(Ljava/io/IOException;)V

    throw v1

    :cond_2
    :goto_0
    iget-object v2, p0, La/a/b/c;->n:La/v;

    if-nez v2, :cond_7

    :try_start_0
    iget-object v2, p0, La/a/b/c;->k:La/aa;

    invoke-virtual {v2}, La/aa;->c()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0, p1, p2, p3, v3}, La/a/b/c;->a(IIILa/a/b/b;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    iget-object v4, p0, La/a/b/c;->g:Ljava/net/Socket;

    invoke-static {v4}, La/a/c;->a(Ljava/net/Socket;)V

    iget-object v4, p0, La/a/b/c;->l:Ljava/net/Socket;

    invoke-static {v4}, La/a/c;->a(Ljava/net/Socket;)V

    iput-object v1, p0, La/a/b/c;->g:Ljava/net/Socket;

    iput-object v1, p0, La/a/b/c;->l:Ljava/net/Socket;

    iput-object v1, p0, La/a/b/c;->h:Lb/d;

    iput-object v1, p0, La/a/b/c;->f:Lb/c;

    iput-object v1, p0, La/a/b/c;->m:La/p;

    iput-object v1, p0, La/a/b/c;->n:La/v;

    if-nez v0, :cond_5

    new-instance v0, La/a/b/e;

    invoke-direct {v0, v2}, La/a/b/e;-><init>(Ljava/io/IOException;)V

    :goto_1
    if-eqz p5, :cond_3

    invoke-virtual {v3, v2}, La/a/b/b;->a(Ljava/io/IOException;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_3
    throw v0

    :cond_4
    :try_start_1
    invoke-direct {p0, p1, p2}, La/a/b/c;->a(II)V

    invoke-direct {p0, v3}, La/a/b/c;->a(La/a/b/b;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_5
    invoke-virtual {v0, v2}, La/a/b/e;->a(Ljava/io/IOException;)V

    goto :goto_1

    :cond_6
    move-object v0, v1

    goto :goto_0

    :cond_7
    return-void
.end method

.method public final a(La/a/c/d;)V
    .locals 1

    invoke-virtual {p1}, La/a/c/d;->e()I

    move-result v0

    iput v0, p0, La/a/b/c;->a:I

    return-void
.end method

.method public final a(La/a/c/e;)V
    .locals 1

    sget-object v0, La/a/c/a;->n:La/a/c/a;

    invoke-virtual {p1, v0}, La/a/c/e;->b(La/a/c/a;)V

    return-void
.end method

.method public final a(Z)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, La/a/b/c;->g:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, La/a/b/c;->g:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, La/a/b/c;->g:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    move v1, v0

    :goto_0
    return v1

    :cond_2
    iget-object v2, p0, La/a/b/c;->c:La/a/c/d;

    if-eqz v2, :cond_3

    iget-object v2, p0, La/a/b/c;->c:La/a/c/d;

    invoke-virtual {v2}, La/a/c/d;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_1

    :try_start_0
    iget-object v2, p0, La/a/b/c;->g:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getSoTimeout()I
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    :try_start_1
    iget-object v2, p0, La/a/b/c;->g:Ljava/net/Socket;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/net/Socket;->setSoTimeout(I)V

    iget-object v2, p0, La/a/b/c;->h:Lb/d;

    invoke-interface {v2}, Lb/d;->h()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eqz v2, :cond_4

    :try_start_2
    iget-object v2, p0, La/a/b/c;->g:Ljava/net/Socket;

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    goto :goto_0

    :catch_0
    move-exception v1

    move v1, v0

    goto :goto_0

    :cond_4
    iget-object v2, p0, La/a/b/c;->g:Ljava/net/Socket;

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    move v1, v0

    goto :goto_0

    :catchall_0
    move-exception v2

    iget-object v4, p0, La/a/b/c;->g:Ljava/net/Socket;

    invoke-virtual {v4, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    throw v2
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public final b()La/p;
    .locals 1

    iget-object v0, p0, La/a/b/c;->m:La/p;

    return-object v0
.end method

.method public final c()Z
    .locals 1

    iget-object v0, p0, La/a/b/c;->c:La/a/c/d;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()Ljava/net/Socket;
    .locals 1

    iget-object v0, p0, La/a/b/c;->g:Ljava/net/Socket;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Connection{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, La/a/b/c;->k:La/aa;

    invoke-virtual {v1}, La/aa;->a()La/a;

    move-result-object v1

    invoke-virtual {v1}, La/a;->k()La/r;

    move-result-object v1

    invoke-virtual {v1}, La/r;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, La/a/b/c;->k:La/aa;

    invoke-virtual {v1}, La/aa;->a()La/a;

    move-result-object v1

    invoke-virtual {v1}, La/a;->k()La/r;

    move-result-object v1

    invoke-virtual {v1}, La/r;->j()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", proxy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, La/a/b/c;->k:La/aa;

    invoke-virtual {v1}, La/aa;->b()Ljava/net/Proxy;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " hostAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, La/a/b/c;->k:La/aa;

    invoke-virtual {v1}, La/aa;->d()Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cipherSuite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, La/a/b/c;->m:La/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, La/a/b/c;->m:La/p;

    invoke-virtual {v0}, La/p;->a()La/h;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, La/a/b/c;->n:La/v;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "none"

    goto :goto_0
.end method
