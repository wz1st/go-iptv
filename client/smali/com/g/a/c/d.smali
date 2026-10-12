.class public Lcom/g/a/c/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/g/a/c/d$a;
    }
.end annotation


# direct methods
.method public static a(Lcom/g/a/i;Lcom/g/a/a/a;Lcom/g/a/c/c;)Lcom/g/a/c/a/a;
    .locals 5

    const/4 v1, 0x0

    const-string v0, "Content-Type"

    invoke-virtual {p2, v0}, Lcom/g/a/c/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    move v0, v1

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    array-length v0, v2

    :goto_1
    if-ge v1, v0, :cond_5

    aget-object v3, v2, v1

    const-string v4, "application/x-www-form-urlencoded"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v0, Lcom/g/a/c/a/f;

    invoke-direct {v0}, Lcom/g/a/c/a/f;-><init>()V

    :goto_2
    return-object v0

    :cond_1
    const-string v4, "application/json"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v0, Lcom/g/a/c/a/b;

    invoke-direct {v0}, Lcom/g/a/c/a/b;-><init>()V

    goto :goto_2

    :cond_2
    const-string v4, "text/plain"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v0, Lcom/g/a/c/a/e;

    invoke-direct {v0}, Lcom/g/a/c/a/e;-><init>()V

    goto :goto_2

    :cond_3
    const-string v4, "multipart/form-data"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v0, Lcom/g/a/c/a/c;

    invoke-direct {v0, v2}, Lcom/g/a/c/a/c;-><init>([Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public static a(Lcom/g/a/i;Lcom/g/a/c/g;Lcom/g/a/c/c;Z)Lcom/g/a/i;
    .locals 10

    const-wide/16 v8, 0x0

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    :try_start_0
    const-string v0, "Content-Length"

    invoke-virtual {p2, v0}, Lcom/g/a/c/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    move-wide v2, v0

    :goto_0
    cmp-long v0, v4, v2

    if-eqz v0, :cond_4

    cmp-long v0, v2, v8

    if-gez v0, :cond_1

    invoke-interface {p0}, Lcom/g/a/i;->g()Lcom/g/a/d;

    move-result-object v0

    new-instance v1, Lcom/g/a/c/b;

    const-string v2, "not using chunked encoding, and no content-length found."

    invoke-direct {v1, v2}, Lcom/g/a/c/b;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/g/a/c/d$a;->a(Lcom/g/a/d;Ljava/lang/Exception;)Lcom/g/a/c/d$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/g/a/c/d$a;->a(Lcom/g/a/i;)V

    move-object p0, v0

    :cond_0
    :goto_1
    return-object p0

    :catch_0
    move-exception v0

    move-wide v2, v4

    goto :goto_0

    :cond_1
    cmp-long v0, v2, v8

    if-nez v0, :cond_2

    invoke-interface {p0}, Lcom/g/a/i;->g()Lcom/g/a/d;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/g/a/c/d$a;->a(Lcom/g/a/d;Ljava/lang/Exception;)Lcom/g/a/c/d$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/g/a/c/d$a;->a(Lcom/g/a/i;)V

    move-object p0, v0

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/g/a/c/b/d;

    invoke-direct {v0, v2, v3}, Lcom/g/a/c/b/d;-><init>(J)V

    invoke-virtual {v0, p0}, Lcom/g/a/c/b/d;->a(Lcom/g/a/i;)V

    move-object p0, v0

    :cond_3
    :goto_2
    const-string v0, "gzip"

    const-string v1, "Content-Encoding"

    invoke-virtual {p2, v1}, Lcom/g/a/c/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Lcom/g/a/c/b/f;

    invoke-direct {v0}, Lcom/g/a/c/b/f;-><init>()V

    invoke-virtual {v0, p0}, Lcom/g/a/c/b/f;->a(Lcom/g/a/i;)V

    move-object p0, v0

    goto :goto_1

    :cond_4
    const-string v0, "chunked"

    const-string v1, "Transfer-Encoding"

    invoke-virtual {p2, v1}, Lcom/g/a/c/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/g/a/c/b/b;

    invoke-direct {v0}, Lcom/g/a/c/b/b;-><init>()V

    invoke-virtual {v0, p0}, Lcom/g/a/c/b/b;->a(Lcom/g/a/i;)V

    move-object p0, v0

    goto :goto_2

    :cond_5
    if-nez p3, :cond_6

    sget-object v0, Lcom/g/a/c/g;->b:Lcom/g/a/c/g;

    if-ne p1, v0, :cond_3

    :cond_6
    const-string v0, "close"

    const-string v1, "Connection"

    invoke-virtual {p2, v1}, Lcom/g/a/c/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {p0}, Lcom/g/a/i;->g()Lcom/g/a/d;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/g/a/c/d$a;->a(Lcom/g/a/d;Ljava/lang/Exception;)Lcom/g/a/c/d$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/g/a/c/d$a;->a(Lcom/g/a/i;)V

    move-object p0, v0

    goto :goto_1

    :cond_7
    const-string v0, "deflate"

    const-string v1, "Content-Encoding"

    invoke-virtual {p2, v1}, Lcom/g/a/c/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/g/a/c/b/g;

    invoke-direct {v0}, Lcom/g/a/c/b/g;-><init>()V

    invoke-virtual {v0, p0}, Lcom/g/a/c/b/g;->a(Lcom/g/a/i;)V

    move-object p0, v0

    goto/16 :goto_1
.end method

.method public static a(Lcom/g/a/c/g;Lcom/g/a/c/c;)Z
    .locals 2

    const-string v0, "Connection"

    invoke-virtual {p1, v0}, Lcom/g/a/c/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/g/a/c/g;->b:Lcom/g/a/c/g;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const-string v1, "keep-alive"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
