.class final La/ah$a;
.super La/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/ah;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic b:La/ah;

.field private final c:La/f;


# virtual methods
.method protected final a()V
    .locals 5

    const/4 v1, 0x1

    :try_start_0
    iget-object v0, p0, La/ah$a;->b:La/ah;

    invoke-static {v0}, La/ah;->a(La/ah;)La/y;

    move-result-object v0

    iget-object v2, p0, La/ah$a;->b:La/ah;

    invoke-static {v2}, La/ah;->b(La/ah;)La/a/d/l;

    move-result-object v2

    invoke-virtual {v2}, La/a/d/l;->a()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    :try_start_1
    iget-object v0, p0, La/ah$a;->c:La/f;

    iget-object v2, p0, La/ah$a;->b:La/ah;

    new-instance v3, Ljava/io/IOException;

    const-string v4, "Canceled"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2, v3}, La/f;->a(La/e;Ljava/io/IOException;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iget-object v0, p0, La/ah$a;->b:La/ah;

    invoke-static {v0}, La/ah;->d(La/ah;)La/u;

    move-result-object v0

    invoke-virtual {v0}, La/u;->i()La/n;

    move-result-object v0

    invoke-virtual {v0, p0}, La/n;->a(La/ah$a;)V

    :goto_1
    return-void

    :cond_0
    :try_start_2
    iget-object v2, p0, La/ah$a;->c:La/f;

    iget-object v3, p0, La/ah$a;->b:La/ah;

    invoke-interface {v2, v3, v0}, La/f;->a(La/e;La/y;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_2
    if-eqz v1, :cond_1

    :try_start_3
    invoke-static {}, La/a/f/a;->a()La/a/f/a;

    move-result-object v1

    const/4 v2, 0x4

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Callback failure for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, La/ah$a;->b:La/ah;

    invoke-static {v4}, La/ah;->c(La/ah;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, La/a/f/a;->a(ILjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_3
    iget-object v0, p0, La/ah$a;->b:La/ah;

    invoke-static {v0}, La/ah;->d(La/ah;)La/u;

    move-result-object v0

    invoke-virtual {v0}, La/u;->i()La/n;

    move-result-object v0

    invoke-virtual {v0, p0}, La/n;->a(La/ah$a;)V

    goto :goto_1

    :cond_1
    :try_start_4
    iget-object v1, p0, La/ah$a;->c:La/f;

    iget-object v2, p0, La/ah$a;->b:La/ah;

    invoke-interface {v1, v2, v0}, La/f;->a(La/e;Ljava/io/IOException;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    iget-object v1, p0, La/ah$a;->b:La/ah;

    invoke-static {v1}, La/ah;->d(La/ah;)La/u;

    move-result-object v1

    invoke-virtual {v1}, La/u;->i()La/n;

    move-result-object v1

    invoke-virtual {v1, p0}, La/n;->a(La/ah$a;)V

    throw v0

    :catch_1
    move-exception v0

    const/4 v1, 0x0

    goto :goto_2
.end method

.method final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La/ah$a;->b:La/ah;

    iget-object v0, v0, La/ah;->a:La/w;

    invoke-virtual {v0}, La/w;->g()La/r;

    move-result-object v0

    invoke-virtual {v0}, La/r;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
