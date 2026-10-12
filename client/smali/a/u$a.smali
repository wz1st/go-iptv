.class public final La/u$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field a:La/n;

.field b:Ljava/net/Proxy;

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "La/v;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljava/util/List;
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

.field g:Ljava/net/ProxySelector;

.field h:La/m;

.field i:La/c;

.field j:La/a/a/e;

.field k:Ljavax/net/SocketFactory;

.field l:Ljavax/net/ssl/SSLSocketFactory;

.field m:La/a/g/b;

.field n:Ljavax/net/ssl/HostnameVerifier;

.field o:La/g;

.field p:La/b;

.field q:La/b;

.field r:La/j;

.field s:La/o;

.field t:Z

.field u:Z

.field v:Z

.field w:I

.field x:I

.field y:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/16 v2, 0x2710

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, La/u$a;->e:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, La/u$a;->f:Ljava/util/List;

    new-instance v0, La/n;

    invoke-direct {v0}, La/n;-><init>()V

    iput-object v0, p0, La/u$a;->a:La/n;

    invoke-static {}, La/u;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, La/u$a;->c:Ljava/util/List;

    invoke-static {}, La/u;->b()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, La/u$a;->d:Ljava/util/List;

    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v0

    iput-object v0, p0, La/u$a;->g:Ljava/net/ProxySelector;

    sget-object v0, La/m;->a:La/m;

    iput-object v0, p0, La/u$a;->h:La/m;

    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    iput-object v0, p0, La/u$a;->k:Ljavax/net/SocketFactory;

    sget-object v0, La/a/g/c;->a:La/a/g/c;

    iput-object v0, p0, La/u$a;->n:Ljavax/net/ssl/HostnameVerifier;

    sget-object v0, La/g;->a:La/g;

    iput-object v0, p0, La/u$a;->o:La/g;

    sget-object v0, La/b;->a:La/b;

    iput-object v0, p0, La/u$a;->p:La/b;

    sget-object v0, La/b;->a:La/b;

    iput-object v0, p0, La/u$a;->q:La/b;

    new-instance v0, La/j;

    invoke-direct {v0}, La/j;-><init>()V

    iput-object v0, p0, La/u$a;->r:La/j;

    sget-object v0, La/o;->a:La/o;

    iput-object v0, p0, La/u$a;->s:La/o;

    iput-boolean v1, p0, La/u$a;->t:Z

    iput-boolean v1, p0, La/u$a;->u:Z

    iput-boolean v1, p0, La/u$a;->v:Z

    iput v2, p0, La/u$a;->w:I

    iput v2, p0, La/u$a;->x:I

    iput v2, p0, La/u$a;->y:I

    return-void
.end method

.method constructor <init>(La/u;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, La/u$a;->e:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, La/u$a;->f:Ljava/util/List;

    iget-object v0, p1, La/u;->a:La/n;

    iput-object v0, p0, La/u$a;->a:La/n;

    iget-object v0, p1, La/u;->b:Ljava/net/Proxy;

    iput-object v0, p0, La/u$a;->b:Ljava/net/Proxy;

    iget-object v0, p1, La/u;->c:Ljava/util/List;

    iput-object v0, p0, La/u$a;->c:Ljava/util/List;

    iget-object v0, p1, La/u;->d:Ljava/util/List;

    iput-object v0, p0, La/u$a;->d:Ljava/util/List;

    iget-object v0, p0, La/u$a;->e:Ljava/util/List;

    iget-object v1, p1, La/u;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, La/u$a;->f:Ljava/util/List;

    iget-object v1, p1, La/u;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p1, La/u;->g:Ljava/net/ProxySelector;

    iput-object v0, p0, La/u$a;->g:Ljava/net/ProxySelector;

    iget-object v0, p1, La/u;->h:La/m;

    iput-object v0, p0, La/u$a;->h:La/m;

    iget-object v0, p1, La/u;->j:La/a/a/e;

    iput-object v0, p0, La/u$a;->j:La/a/a/e;

    iget-object v0, p1, La/u;->i:La/c;

    iput-object v0, p0, La/u$a;->i:La/c;

    iget-object v0, p1, La/u;->k:Ljavax/net/SocketFactory;

    iput-object v0, p0, La/u$a;->k:Ljavax/net/SocketFactory;

    iget-object v0, p1, La/u;->l:Ljavax/net/ssl/SSLSocketFactory;

    iput-object v0, p0, La/u$a;->l:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v0, p1, La/u;->m:La/a/g/b;

    iput-object v0, p0, La/u$a;->m:La/a/g/b;

    iget-object v0, p1, La/u;->n:Ljavax/net/ssl/HostnameVerifier;

    iput-object v0, p0, La/u$a;->n:Ljavax/net/ssl/HostnameVerifier;

    iget-object v0, p1, La/u;->o:La/g;

    iput-object v0, p0, La/u$a;->o:La/g;

    iget-object v0, p1, La/u;->p:La/b;

    iput-object v0, p0, La/u$a;->p:La/b;

    iget-object v0, p1, La/u;->q:La/b;

    iput-object v0, p0, La/u$a;->q:La/b;

    iget-object v0, p1, La/u;->r:La/j;

    iput-object v0, p0, La/u$a;->r:La/j;

    iget-object v0, p1, La/u;->s:La/o;

    iput-object v0, p0, La/u$a;->s:La/o;

    iget-boolean v0, p1, La/u;->t:Z

    iput-boolean v0, p0, La/u$a;->t:Z

    iget-boolean v0, p1, La/u;->u:Z

    iput-boolean v0, p0, La/u$a;->u:Z

    iget-boolean v0, p1, La/u;->v:Z

    iput-boolean v0, p0, La/u$a;->v:Z

    iget v0, p1, La/u;->w:I

    iput v0, p0, La/u$a;->w:I

    iget v0, p1, La/u;->x:I

    iput v0, p0, La/u$a;->x:I

    iget v0, p1, La/u;->y:I

    iput v0, p0, La/u$a;->y:I

    return-void
.end method


# virtual methods
.method public final a(JLjava/util/concurrent/TimeUnit;)La/u$a;
    .locals 7

    const-wide/16 v4, 0x0

    cmp-long v0, p1, v4

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeout < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "unit == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Timeout too large."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    cmp-long v2, v0, v4

    if-nez v2, :cond_3

    cmp-long v2, p1, v4

    if-lez v2, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Timeout too small."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    long-to-int v0, v0

    iput v0, p0, La/u$a;->x:I

    return-object p0
.end method

.method public final a()La/u;
    .locals 2

    new-instance v0, La/u;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, La/u;-><init>(La/u$a;B)V

    return-object v0
.end method
