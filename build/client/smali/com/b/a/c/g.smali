.class public final Lcom/b/a/c/g;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/util/List;Ljava/io/InputStream;Lcom/b/a/c/b/a/b;)Lcom/b/a/c/f$a;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/b/a/c/f;",
            ">;",
            "Ljava/io/InputStream;",
            "Lcom/b/a/c/b/a/b;",
            ")",
            "Lcom/b/a/c/f$a;"
        }
    .end annotation

    if-nez p1, :cond_0

    sget-object v0, Lcom/b/a/c/f$a;->h:Lcom/b/a/c/f$a;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/b/a/c/d/a/r;

    invoke-direct {v0, p1, p2}, Lcom/b/a/c/d/a/r;-><init>(Ljava/io/InputStream;Lcom/b/a/c/b/a/b;)V

    move-object p1, v0

    :cond_1
    const/high16 v0, 0x500000

    invoke-virtual {p1, v0}, Ljava/io/InputStream;->mark(I)V

    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_3

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/c/f;

    :try_start_0
    invoke-interface {v0, p1}, Lcom/b/a/c/f;->a(Ljava/io/InputStream;)Lcom/b/a/c/f$a;

    move-result-object v0

    sget-object v3, Lcom/b/a/c/f$a;->h:Lcom/b/a/c/f$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, v3, :cond_2

    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    throw v0

    :cond_3
    sget-object v0, Lcom/b/a/c/f$a;->h:Lcom/b/a/c/f$a;

    goto :goto_0
.end method

.method public static a(Ljava/util/List;Ljava/nio/ByteBuffer;)Lcom/b/a/c/f$a;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/b/a/c/f;",
            ">;",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Lcom/b/a/c/f$a;"
        }
    .end annotation

    if-nez p1, :cond_1

    sget-object v0, Lcom/b/a/c/f$a;->h:Lcom/b/a/c/f$a;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_2

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/c/f;

    invoke-interface {v0, p1}, Lcom/b/a/c/f;->a(Ljava/nio/ByteBuffer;)Lcom/b/a/c/f$a;

    move-result-object v0

    sget-object v3, Lcom/b/a/c/f$a;->h:Lcom/b/a/c/f$a;

    if-ne v0, v3, :cond_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/b/a/c/f$a;->h:Lcom/b/a/c/f$a;

    goto :goto_0
.end method

.method public static b(Ljava/util/List;Ljava/io/InputStream;Lcom/b/a/c/b/a/b;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/b/a/c/f;",
            ">;",
            "Ljava/io/InputStream;",
            "Lcom/b/a/c/b/a/b;",
            ")I"
        }
    .end annotation

    const/4 v1, -0x1

    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/b/a/c/d/a/r;

    invoke-direct {v0, p1, p2}, Lcom/b/a/c/d/a/r;-><init>(Ljava/io/InputStream;Lcom/b/a/c/b/a/b;)V

    move-object p1, v0

    :cond_1
    const/high16 v0, 0x500000

    invoke-virtual {p1, v0}, Ljava/io/InputStream;->mark(I)V

    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    move v2, v0

    :goto_1
    if-ge v2, v3, :cond_3

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/c/f;

    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/b/a/c/f;->a(Ljava/io/InputStream;Lcom/b/a/c/b/a/b;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    throw v0

    :cond_3
    move v0, v1

    goto :goto_0
.end method
