.class public Lcom/g/a/e/c;
.super Ljava/lang/Object;


# direct methods
.method public static varargs a([Ljava/io/Closeable;)V
    .locals 3

    if-nez p0, :cond_1

    :cond_0
    return-void

    :cond_1
    array-length v1, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p0, v0

    if-eqz v2, :cond_2

    :try_start_0
    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1
.end method
