.class final La/a/f/b;
.super La/a/f/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/a/f/b$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final b:La/a/f/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/a/f/e",
            "<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private final c:La/a/f/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/a/f/e",
            "<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private final d:La/a/f/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/a/f/e",
            "<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private final e:La/a/f/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/a/f/e",
            "<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;La/a/f/e;La/a/f/e;La/a/f/e;La/a/f/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "La/a/f/e",
            "<",
            "Ljava/net/Socket;",
            ">;",
            "La/a/f/e",
            "<",
            "Ljava/net/Socket;",
            ">;",
            "La/a/f/e",
            "<",
            "Ljava/net/Socket;",
            ">;",
            "La/a/f/e",
            "<",
            "Ljava/net/Socket;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, La/a/f/a;-><init>()V

    iput-object p1, p0, La/a/f/b;->a:Ljava/lang/Class;

    iput-object p2, p0, La/a/f/b;->b:La/a/f/e;

    iput-object p3, p0, La/a/f/b;->c:La/a/f/e;

    iput-object p4, p0, La/a/f/b;->d:La/a/f/e;

    iput-object p5, p0, La/a/f/b;->e:La/a/f/e;

    return-void
.end method

.method public static b()La/a/f/a;
    .locals 11

    const/4 v6, 0x0

    :try_start_0
    const-string v0, "com.android.org.conscrypt.SSLParametersImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    :try_start_1
    new-instance v2, La/a/f/e;

    const/4 v0, 0x0

    const-string v3, "setUseSessionTickets"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v4, v5

    invoke-direct {v2, v0, v3, v4}, La/a/f/e;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    new-instance v3, La/a/f/e;

    const/4 v0, 0x0

    const-string v4, "setHostname"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v5, v7

    invoke-direct {v3, v0, v4, v5}, La/a/f/e;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_3

    :try_start_2
    const-string v0, "android.net.Network"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    new-instance v0, La/a/f/e;

    const-class v4, [B

    const-string v5, "getAlpnSelectedProtocol"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-direct {v0, v4, v5, v7}, La/a/f/e;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    new-instance v5, La/a/f/e;

    const/4 v4, 0x0

    const-string v7, "setAlpnProtocols"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, [B

    aput-object v10, v8, v9

    invoke-direct {v5, v4, v7, v8}, La/a/f/e;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    move-object v4, v0

    :goto_1
    :try_start_4
    new-instance v0, La/a/f/b;

    invoke-direct/range {v0 .. v5}, La/a/f/b;-><init>(Ljava/lang/Class;La/a/f/e;La/a/f/e;La/a/f/e;La/a/f/e;)V

    move-object v6, v0

    :goto_2
    return-object v6

    :catch_0
    move-exception v0

    const-string v0, "org.apache.harmony.xnet.provider.jsse.SSLParametersImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_3

    move-result-object v1

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v0, v6

    :goto_3
    move-object v5, v6

    move-object v4, v0

    goto :goto_1

    :catch_2
    move-exception v4

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_2
.end method


# virtual methods
.method public final a(Ljavax/net/ssl/X509TrustManager;)La/a/g/b;
    .locals 7

    :try_start_0
    const-string v0, "android.net.http.X509TrustManagerExtensions"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    new-instance v0, La/a/f/b$a;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljavax/net/ssl/X509TrustManager;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "checkServerTrusted"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, [Ljava/security/cert/X509Certificate;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-direct {v0, v2, v1}, La/a/f/b$a;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Method;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-super {p0, p1}, La/a/f/a;->a(Ljavax/net/ssl/X509TrustManager;)La/a/g/b;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 7

    const/16 v6, 0xa

    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    move v4, v0

    :goto_0
    if-eqz p3, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    :goto_1
    if-ge v2, v1, :cond_4

    invoke-virtual {p2, v6, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_2

    :goto_2
    add-int/lit16 v3, v2, 0xfa0

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    const-string v5, "OkHttp"

    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v5, v2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    if-lt v3, v0, :cond_3

    add-int/lit8 v2, v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x3

    move v4, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_2

    :cond_3
    move v2, v3

    goto :goto_2

    :cond_4
    return-void
.end method

.method public final a(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    .locals 3

    :try_start_0
    invoke-virtual {p1, p2, p3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, La/a/c;->a(Ljava/lang/AssertionError;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    throw v0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Exception in connect"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1
.end method

.method public final a(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLSocket;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "La/v;",
            ">;)V"
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    iget-object v0, p0, La/a/f/b;->b:La/a/f/e;

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, v1}, La/a/f/e;->c(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, La/a/f/b;->c:La/a/f/e;

    new-array v1, v6, [Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, La/a/f/e;->c(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, La/a/f/b;->e:La/a/f/e;

    if-eqz v0, :cond_3

    iget-object v0, p0, La/a/f/b;->e:La/a/f/e;

    invoke-virtual {v0, p1}, La/a/f/e;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v3, Lb/b;

    invoke-direct {v3}, Lb/b;-><init>()V

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v4

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_2

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/v;

    sget-object v5, La/v;->a:La/v;

    if-eq v0, v5, :cond_1

    invoke-virtual {v0}, La/v;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v5}, Lb/b;->c(I)Lb/b;

    invoke-virtual {v0}, La/v;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lb/b;->a(Ljava/lang/String;)Lb/b;

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Lb/b;->j()[B

    move-result-object v0

    iget-object v1, p0, La/a/f/b;->e:La/a/f/e;

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v2

    invoke-virtual {v1, p1, v3}, La/a/f/e;->d(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 6

    :try_start_0
    const-string v0, "android.security.NetworkSecurityPolicy"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getInstance"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "isCleartextTrafficPermitted"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :goto_1
    invoke-super {p0, p1}, La/a/f/a;->a(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v0

    goto :goto_1
.end method

.method public final b(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, La/a/f/b;->d:La/a/f/e;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, La/a/f/b;->d:La/a/f/e;

    invoke-virtual {v0, p1}, La/a/f/e;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, La/a/f/b;->d:La/a/f/e;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v2}, La/a/f/e;->d(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_2

    new-instance v1, Ljava/lang/String;

    sget-object v2, La/a/c;->d:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object v0, v1

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method
