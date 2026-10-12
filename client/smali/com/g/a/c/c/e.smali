.class public Lcom/g/a/c/c/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/g/a/c/c/d;


# static fields
.field static final synthetic a:Z


# instance fields
.field b:Lcom/g/a/f;

.field c:Lcom/g/a/c/c/c;

.field d:Z

.field e:Lcom/g/a/k;

.field f:Lcom/g/a/a/e;

.field g:Z

.field h:Z

.field i:I

.field j:Lcom/g/a/a/a;

.field private k:Lcom/g/a/c/c;

.field private l:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/g/a/c/c/e;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/g/a/c/c/e;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/g/a/f;Lcom/g/a/c/c/c;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/g/a/c/c;

    invoke-direct {v0}, Lcom/g/a/c/c;-><init>()V

    iput-object v0, p0, Lcom/g/a/c/c/e;->k:Lcom/g/a/c/c;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/g/a/c/c/e;->l:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/g/a/c/c/e;->d:Z

    const/16 v0, 0xc8

    iput v0, p0, Lcom/g/a/c/c/e;->i:I

    iput-object p1, p0, Lcom/g/a/c/c/e;->b:Lcom/g/a/f;

    iput-object p2, p0, Lcom/g/a/c/c/e;->c:Lcom/g/a/c/c/c;

    sget-object v0, Lcom/g/a/c/g;->b:Lcom/g/a/c/g;

    invoke-virtual {p2}, Lcom/g/a/c/c/c;->i()Lcom/g/a/c/c;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/g/a/c/d;->a(Lcom/g/a/c/g;Lcom/g/a/c/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/g/a/c/c/e;->k:Lcom/g/a/c/c;

    const-string v1, "Connection"

    const-string v2, "Keep-Alive"

    invoke-virtual {v0, v1, v2}, Lcom/g/a/c/c;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/g/a/c/c;

    :cond_0
    return-void
.end method

.method private d()V
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/g/a/c/c/e;->d:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v1, p0, Lcom/g/a/c/c/e;->d:Z

    iget-object v0, p0, Lcom/g/a/c/c/e;->k:Lcom/g/a/c/c;

    const-string v3, "Transfer-Encoding"

    invoke-virtual {v0, v3}, Lcom/g/a/c/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/g/a/c/c/e;->k:Lcom/g/a/c/c;

    const-string v4, "Transfer-Encoding"

    invoke-virtual {v3, v4}, Lcom/g/a/c/c;->d(Ljava/lang/String;)Ljava/util/List;

    :cond_1
    const-string v3, "Chunked"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    if-nez v0, :cond_4

    :cond_2
    const-string v0, "close"

    iget-object v3, p0, Lcom/g/a/c/c/e;->k:Lcom/g/a/c/c;

    const-string v4, "Connection"

    invoke-virtual {v3, v4}, Lcom/g/a/c/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_1
    iget-wide v4, p0, Lcom/g/a/c/c/e;->l:J

    cmp-long v3, v4, v6

    if-gez v3, :cond_3

    iget-object v3, p0, Lcom/g/a/c/c/e;->k:Lcom/g/a/c/c;

    const-string v4, "Content-Length"

    invoke-virtual {v3, v4}, Lcom/g/a/c/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/g/a/c/c/e;->l:J

    :cond_3
    iget-wide v4, p0, Lcom/g/a/c/c/e;->l:J

    cmp-long v3, v4, v6

    if-gez v3, :cond_5

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/g/a/c/c/e;->k:Lcom/g/a/c/c;

    const-string v3, "Transfer-Encoding"

    const-string v4, "Chunked"

    invoke-virtual {v0, v3, v4}, Lcom/g/a/c/c;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/g/a/c/c;

    move v0, v1

    :goto_2
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v4, "HTTP/1.1 %s %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, p0, Lcom/g/a/c/c/e;->i:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    iget v2, p0, Lcom/g/a/c/c/e;->i:I

    invoke-static {v2}, Lcom/g/a/c/c/a;->a(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/g/a/c/c/e;->k:Lcom/g/a/c/c;

    invoke-virtual {v2, v1}, Lcom/g/a/c/c;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/g/a/c/c/e;->b:Lcom/g/a/f;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    new-instance v3, Lcom/g/a/c/c/q;

    invoke-direct {v3, p0, v0}, Lcom/g/a/c/c/q;-><init>(Lcom/g/a/c/c/e;Z)V

    invoke-static {v2, v1, v3}, Lcom/g/a/t;->a(Lcom/g/a/k;[BLcom/g/a/a/a;)V

    goto/16 :goto_0

    :cond_4
    move v0, v2

    goto :goto_1

    :cond_5
    move v0, v2

    goto :goto_2
.end method


# virtual methods
.method public a(I)Lcom/g/a/c/c/d;
    .locals 0

    iput p1, p0, Lcom/g/a/c/c/e;->i:I

    return-object p0
.end method

.method protected a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/g/a/c/c/e;->h:Z

    return-void
.end method

.method public a(Lcom/g/a/a/a;)V
    .locals 1

    iget-object v0, p0, Lcom/g/a/c/c/e;->e:Lcom/g/a/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/g/a/c/c/e;->e:Lcom/g/a/k;

    invoke-interface {v0, p1}, Lcom/g/a/k;->a(Lcom/g/a/a/a;)V

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/g/a/c/c/e;->j:Lcom/g/a/a/a;

    goto :goto_0
.end method

.method public a(Lcom/g/a/a/e;)V
    .locals 1

    iget-object v0, p0, Lcom/g/a/c/c/e;->e:Lcom/g/a/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/g/a/c/c/e;->e:Lcom/g/a/k;

    invoke-interface {v0, p1}, Lcom/g/a/k;->a(Lcom/g/a/a/e;)V

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/g/a/c/c/e;->f:Lcom/g/a/a/e;

    goto :goto_0
.end method

.method public a(Lcom/g/a/h;)V
    .locals 1

    sget-boolean v0, Lcom/g/a/c/c/e;->a:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/g/a/c/c/e;->h:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iget-boolean v0, p0, Lcom/g/a/c/c/e;->d:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/g/a/c/c/e;->d()V

    :cond_1
    invoke-virtual {p1}, Lcom/g/a/h;->l()I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/g/a/c/c/e;->e:Lcom/g/a/k;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/g/a/c/c/e;->e:Lcom/g/a/k;

    invoke-interface {v0, p1}, Lcom/g/a/k;->a(Lcom/g/a/h;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/g/a/c/c/e;->k:Lcom/g/a/c/c;

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Lcom/g/a/c/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "text/html; charset=utf-8"

    :cond_0
    invoke-virtual {p0, v0, p1}, Lcom/g/a/c/c/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/g/a/c/c/e;->a(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public a(Ljava/lang/String;[B)V
    .locals 4

    sget-boolean v0, Lcom/g/a/c/c/e;->a:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/g/a/c/c/e;->l:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    array-length v0, p2

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/g/a/c/c/e;->l:J

    iget-object v0, p0, Lcom/g/a/c/c/e;->k:Lcom/g/a/c/c;

    const-string v1, "Content-Length"

    array-length v2, p2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/g/a/c/c;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/g/a/c/c;

    iget-object v0, p0, Lcom/g/a/c/c/e;->k:Lcom/g/a/c/c;

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1, p1}, Lcom/g/a/c/c;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/g/a/c/c;

    new-instance v0, Lcom/g/a/c/c/s;

    invoke-direct {v0, p0}, Lcom/g/a/c/c/s;-><init>(Lcom/g/a/c/c/e;)V

    invoke-static {p0, p2, v0}, Lcom/g/a/t;->a(Lcom/g/a/k;[BLcom/g/a/a/a;)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 2

    const-string v0, "application/json; charset=utf-8"

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/g/a/c/c/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a_(Ljava/lang/Exception;)V
    .locals 0

    invoke-virtual {p0}, Lcom/g/a/c/c/e;->e()V

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/g/a/c/c/e;->i:I

    return v0
.end method

.method protected b(Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/g/a/c/c/e;->k:Lcom/g/a/c/c;

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1, p1}, Lcom/g/a/c/c;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/g/a/c/c;

    return-void
.end method

.method public c()V
    .locals 0

    invoke-direct {p0}, Lcom/g/a/c/c/e;->d()V

    return-void
.end method

.method public e()V
    .locals 2

    iget-boolean v0, p0, Lcom/g/a/c/c/e;->g:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/g/a/c/c/e;->g:Z

    iget-boolean v0, p0, Lcom/g/a/c/c/e;->d:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/g/a/c/c/e;->e:Lcom/g/a/k;

    if-eqz v0, :cond_0

    :cond_2
    iget-boolean v0, p0, Lcom/g/a/c/c/e;->d:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/g/a/c/c/e;->k:Lcom/g/a/c/c;

    const-string v1, "Transfer-Encoding"

    invoke-virtual {v0, v1}, Lcom/g/a/c/c;->c(Ljava/lang/String;)Ljava/lang/String;

    :cond_3
    iget-object v0, p0, Lcom/g/a/c/c/e;->e:Lcom/g/a/k;

    instance-of v0, v0, Lcom/g/a/c/b/c;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/g/a/c/c/e;->e:Lcom/g/a/k;

    check-cast v0, Lcom/g/a/c/b/c;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Lcom/g/a/c/b/c;->a(I)V

    iget-object v0, p0, Lcom/g/a/c/c/e;->e:Lcom/g/a/k;

    new-instance v1, Lcom/g/a/h;

    invoke-direct {v1}, Lcom/g/a/h;-><init>()V

    invoke-interface {v0, v1}, Lcom/g/a/k;->a(Lcom/g/a/h;)V

    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/g/a/c/c/e;->a()V

    goto :goto_0

    :cond_5
    iget-boolean v0, p0, Lcom/g/a/c/c/e;->d:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/g/a/c/c/e;->c:Lcom/g/a/c/c/c;

    invoke-virtual {v0}, Lcom/g/a/c/c/c;->k()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HEAD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "text/html"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/g/a/c/c/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/g/a/c/c/e;->c()V

    goto :goto_1
.end method

.method public g()Lcom/g/a/d;
    .locals 1

    iget-object v0, p0, Lcom/g/a/c/c/e;->b:Lcom/g/a/f;

    invoke-interface {v0}, Lcom/g/a/f;->g()Lcom/g/a/d;

    move-result-object v0

    return-object v0
.end method

.method public h()Lcom/g/a/a/e;
    .locals 1

    iget-object v0, p0, Lcom/g/a/c/c/e;->e:Lcom/g/a/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/g/a/c/c/e;->e:Lcom/g/a/k;

    invoke-interface {v0}, Lcom/g/a/k;->h()Lcom/g/a/a/e;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/g/a/c/c/e;->f:Lcom/g/a/a/e;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/g/a/c/c/e;->k:Lcom/g/a/c/c;

    if-nez v0, :cond_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "HTTP/1.1 %s %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/g/a/c/c/e;->i:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/g/a/c/c/e;->i:I

    invoke-static {v4}, Lcom/g/a/c/c/a;->a(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/g/a/c/c/e;->k:Lcom/g/a/c/c;

    invoke-virtual {v1, v0}, Lcom/g/a/c/c;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
