.class final Lb/o;
.super Ljava/lang/Object;

# interfaces
.implements Lb/l;


# instance fields
.field final synthetic a:Lb/l;

.field final synthetic b:Lb/a;


# direct methods
.method constructor <init>(Lb/a;Lb/l;)V
    .locals 0

    iput-object p1, p0, Lb/o;->b:Lb/a;

    iput-object p2, p0, Lb/o;->a:Lb/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lb/n;
    .locals 1

    iget-object v0, p0, Lb/o;->b:Lb/a;

    return-object v0
.end method

.method public final a_(Lb/b;J)V
    .locals 8

    const-wide/16 v2, 0x0

    iget-wide v0, p1, Lb/b;->b:J

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lb/aa;->a(JJJ)V

    move-wide v4, p2

    :goto_0
    cmp-long v0, v4, v2

    if-lez v0, :cond_2

    iget-object v0, p1, Lb/b;->a:Lb/w;

    move-wide v0, v2

    :cond_0
    const-wide/32 v6, 0x10000

    cmp-long v6, v0, v6

    if-gez v6, :cond_1

    iget-object v6, p1, Lb/b;->a:Lb/w;

    iget v6, v6, Lb/w;->c:I

    iget-object v7, p1, Lb/b;->a:Lb/w;

    iget v7, v7, Lb/w;->b:I

    sub-int/2addr v6, v7

    int-to-long v6, v6

    add-long/2addr v0, v6

    cmp-long v6, v0, v4

    if-ltz v6, :cond_0

    move-wide v0, v4

    :cond_1
    iget-object v6, p0, Lb/o;->b:Lb/a;

    invoke-virtual {v6}, Lb/a;->f()V

    :try_start_0
    iget-object v6, p0, Lb/o;->a:Lb/l;

    invoke-interface {v6, p1, v0, v1}, Lb/l;->a_(Lb/b;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long/2addr v4, v0

    iget-object v0, p0, Lb/o;->b:Lb/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lb/a;->a(Z)V

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v1, p0, Lb/o;->b:Lb/a;

    invoke-virtual {v1, v0}, Lb/a;->b(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lb/o;->b:Lb/a;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lb/a;->a(Z)V

    throw v0

    :cond_2
    return-void
.end method

.method public final close()V
    .locals 3

    iget-object v0, p0, Lb/o;->b:Lb/a;

    invoke-virtual {v0}, Lb/a;->f()V

    :try_start_0
    iget-object v0, p0, Lb/o;->a:Lb/l;

    invoke-interface {v0}, Lb/l;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lb/o;->b:Lb/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lb/a;->a(Z)V

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v1, p0, Lb/o;->b:Lb/a;

    invoke-virtual {v1, v0}, Lb/a;->b(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lb/o;->b:Lb/a;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lb/a;->a(Z)V

    throw v0
.end method

.method public final flush()V
    .locals 3

    iget-object v0, p0, Lb/o;->b:Lb/a;

    invoke-virtual {v0}, Lb/a;->f()V

    :try_start_0
    iget-object v0, p0, Lb/o;->a:Lb/l;

    invoke-interface {v0}, Lb/l;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lb/o;->b:Lb/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lb/a;->a(Z)V

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v1, p0, Lb/o;->b:Lb/a;

    invoke-virtual {v1, v0}, Lb/a;->b(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lb/o;->b:Lb/a;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lb/a;->a(Z)V

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AsyncTimeout.sink("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lb/o;->a:Lb/l;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
