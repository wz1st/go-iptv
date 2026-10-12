.class public La/u;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/u$a;
    }
.end annotation


# static fields
.field private static final A:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "La/v;",
            ">;"
        }
    .end annotation
.end field

.field private static final z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "La/k;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:La/n;

.field final b:Ljava/net/Proxy;

.field final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "La/v;",
            ">;"
        }
    .end annotation
.end field

.field final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "La/k;",
            ">;"
        }
    .end annotation
.end field

.field final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "La/s;",
            ">;"
        }
    .end annotation
.end field

.field final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "La/s;",
            ">;"
        }
    .end annotation
.end field

.field final g:Ljava/net/ProxySelector;

.field final h:La/m;

.field final i:La/c;

.field final j:La/a/a/e;

.field final k:Ljavax/net/SocketFactory;

.field final l:Ljavax/net/ssl/SSLSocketFactory;

.field final m:La/a/g/b;

.field final n:Ljavax/net/ssl/HostnameVerifier;

.field final o:La/g;

.field final p:La/b;

.field final q:La/b;

.field final r:La/j;

.field final s:La/o;

.field final t:Z

.field final u:Z

.field final v:Z

.field final w:I

.field final x:I

.field final y:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v5, [La/v;

    sget-object v1, La/v;->c:La/v;

    aput-object v1, v0, v2

    sget-object v1, La/v;->d:La/v;

    aput-object v1, v0, v3

    sget-object v1, La/v;->b:La/v;

    aput-object v1, v0, v4

    invoke-static {v0}, La/a/c;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, La/u;->A:Ljava/util/List;

    new-array v0, v5, [La/k;

    sget-object v1, La/k;->c:La/k;

    aput-object v1, v0, v2

    sget-object v1, La/k;->b:La/k;

    aput-object v1, v0, v3

    sget-object v1, La/k;->a:La/k;

    aput-object v1, v0, v4

    invoke-static {v0}, La/a/c;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, La/u;->z:Ljava/util/List;

    new-instance v0, La/ag;

    invoke-direct {v0}, La/ag;-><init>()V

    sput-object v0, La/a/a;->a:La/a/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    new-instance v0, La/u$a;

    invoke-direct {v0}, La/u$a;-><init>()V

    invoke-direct {p0, v0}, La/u;-><init>(La/u$a;)V

    return-void
.end method

.method private constructor <init>(La/u$a;)V
    .locals 4

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, La/u$a;->a:La/n;

    iput-object v0, p0, La/u;->a:La/n;

    iget-object v0, p1, La/u$a;->b:Ljava/net/Proxy;

    iput-object v0, p0, La/u;->b:Ljava/net/Proxy;

    iget-object v0, p1, La/u$a;->c:Ljava/util/List;

    iput-object v0, p0, La/u;->c:Ljava/util/List;

    iget-object v0, p1, La/u$a;->d:Ljava/util/List;

    iput-object v0, p0, La/u;->d:Ljava/util/List;

    iget-object v0, p1, La/u$a;->e:Ljava/util/List;

    invoke-static {v0}, La/a/c;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, La/u;->e:Ljava/util/List;

    iget-object v0, p1, La/u$a;->f:Ljava/util/List;

    invoke-static {v0}, La/a/c;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, La/u;->f:Ljava/util/List;

    iget-object v0, p1, La/u$a;->g:Ljava/net/ProxySelector;

    iput-object v0, p0, La/u;->g:Ljava/net/ProxySelector;

    iget-object v0, p1, La/u$a;->h:La/m;

    iput-object v0, p0, La/u;->h:La/m;

    iget-object v0, p1, La/u$a;->i:La/c;

    iput-object v0, p0, La/u;->i:La/c;

    iget-object v0, p1, La/u$a;->j:La/a/a/e;

    iput-object v0, p0, La/u;->j:La/a/a/e;

    iget-object v0, p1, La/u$a;->k:Ljavax/net/SocketFactory;

    iput-object v0, p0, La/u;->k:Ljavax/net/SocketFactory;

    iget-object v0, p0, La/u;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/k;

    if-nez v1, :cond_0

    invoke-virtual {v0}, La/k;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    iget-object v0, p1, La/u$a;->l:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_3

    if-nez v1, :cond_4

    :cond_3
    iget-object v0, p1, La/u$a;->l:Ljavax/net/ssl/SSLSocketFactory;

    iput-object v0, p0, La/u;->l:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v0, p1, La/u$a;->m:La/a/g/b;

    iput-object v0, p0, La/u;->m:La/a/g/b;

    :goto_2
    iget-object v0, p1, La/u$a;->n:Ljavax/net/ssl/HostnameVerifier;

    iput-object v0, p0, La/u;->n:Ljavax/net/ssl/HostnameVerifier;

    iget-object v0, p1, La/u$a;->o:La/g;

    iget-object v1, p0, La/u;->m:La/a/g/b;

    invoke-virtual {v0, v1}, La/g;->a(La/a/g/b;)La/g;

    move-result-object v0

    iput-object v0, p0, La/u;->o:La/g;

    iget-object v0, p1, La/u$a;->p:La/b;

    iput-object v0, p0, La/u;->p:La/b;

    iget-object v0, p1, La/u$a;->q:La/b;

    iput-object v0, p0, La/u;->q:La/b;

    iget-object v0, p1, La/u$a;->r:La/j;

    iput-object v0, p0, La/u;->r:La/j;

    iget-object v0, p1, La/u$a;->s:La/o;

    iput-object v0, p0, La/u;->s:La/o;

    iget-boolean v0, p1, La/u$a;->t:Z

    iput-boolean v0, p0, La/u;->t:Z

    iget-boolean v0, p1, La/u$a;->u:Z

    iput-boolean v0, p0, La/u;->u:Z

    iget-boolean v0, p1, La/u$a;->v:Z

    iput-boolean v0, p0, La/u;->v:Z

    iget v0, p1, La/u$a;->w:I

    iput v0, p0, La/u;->w:I

    iget v0, p1, La/u$a;->x:I

    iput v0, p0, La/u;->x:I

    iget v0, p1, La/u$a;->y:I

    iput v0, p0, La/u;->y:I

    return-void

    :cond_4
    invoke-static {}, La/u;->z()Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    invoke-static {v0}, La/u;->a(Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    iput-object v1, p0, La/u;->l:Ljavax/net/ssl/SSLSocketFactory;

    invoke-static {v0}, La/a/g/b;->a(Ljavax/net/ssl/X509TrustManager;)La/a/g/b;

    move-result-object v0

    iput-object v0, p0, La/u;->m:La/a/g/b;

    goto :goto_2
.end method

.method synthetic constructor <init>(La/u$a;B)V
    .locals 0

    invoke-direct {p0, p1}, La/u;-><init>(La/u$a;)V

    return-void
.end method

.method static synthetic a()Ljava/util/List;
    .locals 1

    sget-object v0, La/u;->A:Ljava/util/List;

    return-object v0
.end method

.method private static a(Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 4

    :try_start_0
    const-string v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljavax/net/ssl/TrustManager;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method static synthetic b()Ljava/util/List;
    .locals 1

    sget-object v0, La/u;->z:Ljava/util/List;

    return-object v0
.end method

.method private static z()Ljavax/net/ssl/X509TrustManager;
    .locals 4

    :try_start_0
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    instance-of v1, v1, Ljavax/net/ssl/X509TrustManager;

    if-nez v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected default trust managers:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    const/4 v1, 0x0

    :try_start_1
    aget-object v0, v0, v1

    check-cast v0, Ljavax/net/ssl/X509TrustManager;
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0
.end method


# virtual methods
.method public a(La/w;)La/e;
    .locals 1

    new-instance v0, La/ah;

    invoke-direct {v0, p0, p1}, La/ah;-><init>(La/u;La/w;)V

    return-object v0
.end method

.method public c()La/b;
    .locals 1

    iget-object v0, p0, La/u;->q:La/b;

    return-object v0
.end method

.method public d()La/g;
    .locals 1

    iget-object v0, p0, La/u;->o:La/g;

    return-object v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, La/u;->w:I

    return v0
.end method

.method public f()La/j;
    .locals 1

    iget-object v0, p0, La/u;->r:La/j;

    return-object v0
.end method

.method public g()Ljava/util/List;
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

    iget-object v0, p0, La/u;->d:Ljava/util/List;

    return-object v0
.end method

.method public h()La/m;
    .locals 1

    iget-object v0, p0, La/u;->h:La/m;

    return-object v0
.end method

.method public i()La/n;
    .locals 1

    iget-object v0, p0, La/u;->a:La/n;

    return-object v0
.end method

.method public j()La/o;
    .locals 1

    iget-object v0, p0, La/u;->s:La/o;

    return-object v0
.end method

.method public k()Z
    .locals 1

    iget-boolean v0, p0, La/u;->u:Z

    return v0
.end method

.method public l()Z
    .locals 1

    iget-boolean v0, p0, La/u;->t:Z

    return v0
.end method

.method public m()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    iget-object v0, p0, La/u;->n:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public n()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "La/s;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, La/u;->e:Ljava/util/List;

    return-object v0
.end method

.method public o()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "La/s;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, La/u;->f:Ljava/util/List;

    return-object v0
.end method

.method public p()La/u$a;
    .locals 1

    new-instance v0, La/u$a;

    invoke-direct {v0, p0}, La/u$a;-><init>(La/u;)V

    return-object v0
.end method

.method public q()Ljava/util/List;
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

    iget-object v0, p0, La/u;->c:Ljava/util/List;

    return-object v0
.end method

.method public r()Ljava/net/Proxy;
    .locals 1

    iget-object v0, p0, La/u;->b:Ljava/net/Proxy;

    return-object v0
.end method

.method public s()La/b;
    .locals 1

    iget-object v0, p0, La/u;->p:La/b;

    return-object v0
.end method

.method public t()Ljava/net/ProxySelector;
    .locals 1

    iget-object v0, p0, La/u;->g:Ljava/net/ProxySelector;

    return-object v0
.end method

.method public u()I
    .locals 1

    iget v0, p0, La/u;->x:I

    return v0
.end method

.method public v()Z
    .locals 1

    iget-boolean v0, p0, La/u;->v:Z

    return v0
.end method

.method public w()Ljavax/net/SocketFactory;
    .locals 1

    iget-object v0, p0, La/u;->k:Ljavax/net/SocketFactory;

    return-object v0
.end method

.method public x()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    iget-object v0, p0, La/u;->l:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public y()I
    .locals 1

    iget v0, p0, La/u;->y:I

    return v0
.end method
