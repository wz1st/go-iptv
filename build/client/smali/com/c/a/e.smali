.class Lcom/c/a/e;
.super Lcom/c/a/m;


# instance fields
.field private final a:Lcom/c/a/h;

.field private final b:Lcom/c/a/a/b;

.field private c:Lcom/c/a/b;


# direct methods
.method public constructor <init>(Lcom/c/a/h;Lcom/c/a/a/b;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/c/a/m;-><init>(Lcom/c/a/q;Lcom/c/a/a;)V

    iput-object p2, p0, Lcom/c/a/e;->b:Lcom/c/a/a/b;

    iput-object p1, p0, Lcom/c/a/e;->a:Lcom/c/a/h;

    return-void
.end method

.method private varargs a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/io/OutputStream;J)V
    .locals 4

    const/16 v0, 0x2000

    new-array v0, v0, [B

    :goto_0
    array-length v1, v0

    invoke-virtual {p0, v0, p2, p3, v1}, Lcom/c/a/e;->a([BJI)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v2, v1

    add-long/2addr p2, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method private a(Lcom/c/a/d;)Z
    .locals 10

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/c/a/e;->a:Lcom/c/a/h;

    invoke-virtual {v0}, Lcom/c/a/h;->a()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_2

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/c/a/e;->b:Lcom/c/a/a/b;

    invoke-virtual {v3}, Lcom/c/a/a/b;->a()J

    move-result-wide v6

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/c/a/d;->c:Z

    if-eqz v0, :cond_0

    iget-wide v8, p1, Lcom/c/a/d;->b:J

    long-to-float v0, v8

    long-to-float v3, v6

    long-to-float v4, v4

    const v5, 0x3e4ccccd    # 0.2f

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    return v2

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method private b(Lcom/c/a/d;)Ljava/lang/String;
    .locals 12

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/c/a/e;->a:Lcom/c/a/h;

    invoke-virtual {v0}, Lcom/c/a/h;->c()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/c/a/e;->b:Lcom/c/a/a/b;

    invoke-virtual {v3}, Lcom/c/a/a/b;->d()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/c/a/e;->b:Lcom/c/a/a/b;

    invoke-virtual {v3}, Lcom/c/a/a/b;->a()J

    move-result-wide v8

    :goto_1
    const-wide/16 v4, 0x0

    cmp-long v3, v8, v4

    if-ltz v3, :cond_2

    move v3, v1

    :goto_2
    iget-boolean v4, p1, Lcom/c/a/d;->c:Z

    if-eqz v4, :cond_3

    iget-wide v4, p1, Lcom/c/a/d;->b:J

    sub-long v4, v8, v4

    move-wide v6, v4

    :goto_3
    if-eqz v3, :cond_4

    iget-boolean v4, p1, Lcom/c/a/d;->c:Z

    if-eqz v4, :cond_4

    move v4, v1

    :goto_4
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v5, p1, Lcom/c/a/d;->c:Z

    if-eqz v5, :cond_5

    const-string v5, "HTTP/1.1 206 PARTIAL CONTENT\n"

    :goto_5
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, "Accept-Ranges: bytes\n"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v3, :cond_6

    const-string v3, "Content-Length: %d\n"

    new-array v11, v1, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v11, v2

    invoke-direct {p0, v3, v11}, Lcom/c/a/e;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_6
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v4, :cond_7

    const-string v3, "Content-Range: bytes %d-%d/%d\n"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget-wide v6, p1, Lcom/c/a/d;->b:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v2

    const-wide/16 v6, 0x1

    sub-long v6, v8, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v1

    const/4 v6, 0x2

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-direct {p0, v3, v4}, Lcom/c/a/e;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_7
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_8

    const-string v0, "Content-Type: %s\n"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v10, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/c/a/e;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_8
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v2

    goto/16 :goto_0

    :cond_1
    iget-object v3, p0, Lcom/c/a/e;->a:Lcom/c/a/h;

    invoke-virtual {v3}, Lcom/c/a/h;->a()J

    move-result-wide v8

    goto/16 :goto_1

    :cond_2
    move v3, v2

    goto/16 :goto_2

    :cond_3
    move-wide v6, v8

    goto/16 :goto_3

    :cond_4
    move v4, v2

    goto :goto_4

    :cond_5
    const-string v5, "HTTP/1.1 200 OK\n"

    goto :goto_5

    :cond_6
    const-string v3, ""

    goto :goto_6

    :cond_7
    const-string v3, ""

    goto :goto_7

    :cond_8
    const-string v0, ""

    goto :goto_8
.end method

.method private b(Ljava/io/OutputStream;J)V
    .locals 4

    new-instance v1, Lcom/c/a/h;

    iget-object v0, p0, Lcom/c/a/e;->a:Lcom/c/a/h;

    invoke-direct {v1, v0}, Lcom/c/a/h;-><init>(Lcom/c/a/h;)V

    long-to-int v0, p2

    int-to-long v2, v0

    :try_start_0
    invoke-virtual {v1, v2, v3}, Lcom/c/a/h;->a(J)V

    const/16 v0, 0x2000

    new-array v0, v0, [B

    :goto_0
    invoke-virtual {v1, v0}, Lcom/c/a/h;->a([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v2, v2

    add-long/2addr p2, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Lcom/c/a/h;->b()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/c/a/h;->b()V

    throw v0
.end method


# virtual methods
.method protected a(I)V
    .locals 3

    iget-object v0, p0, Lcom/c/a/e;->c:Lcom/c/a/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/c/a/e;->c:Lcom/c/a/b;

    iget-object v1, p0, Lcom/c/a/e;->b:Lcom/c/a/a/b;

    iget-object v1, v1, Lcom/c/a/a/b;->a:Ljava/io/File;

    iget-object v2, p0, Lcom/c/a/e;->a:Lcom/c/a/h;

    invoke-virtual {v2}, Lcom/c/a/h;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1}, Lcom/c/a/b;->a(Ljava/io/File;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public a(Lcom/c/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/c/a/e;->c:Lcom/c/a/b;

    return-void
.end method

.method public a(Lcom/c/a/d;Ljava/net/Socket;)V
    .locals 4

    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-virtual {p2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p0, p1}, Lcom/c/a/e;->b(Lcom/c/a/d;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    iget-wide v2, p1, Lcom/c/a/d;->b:J

    invoke-direct {p0, p1}, Lcom/c/a/e;->a(Lcom/c/a/d;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0, v2, v3}, Lcom/c/a/e;->a(Ljava/io/OutputStream;J)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, v0, v2, v3}, Lcom/c/a/e;->b(Ljava/io/OutputStream;J)V

    goto :goto_0
.end method
