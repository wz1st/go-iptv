.class public Lcom/b/a/c/d/e/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/b/a/c/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/b/a/c/l",
        "<",
        "Lcom/b/a/c/d/e/c;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/b/a/c/j;)Lcom/b/a/c/c;
    .locals 1

    sget-object v0, Lcom/b/a/c/c;->a:Lcom/b/a/c/c;

    return-object v0
.end method

.method public a(Lcom/b/a/c/b/u;Ljava/io/File;Lcom/b/a/c/j;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/c/b/u",
            "<",
            "Lcom/b/a/c/d/e/c;",
            ">;",
            "Ljava/io/File;",
            "Lcom/b/a/c/j;",
            ")Z"
        }
    .end annotation

    invoke-interface {p1}, Lcom/b/a/c/b/u;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/c/d/e/c;

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Lcom/b/a/c/d/e/c;->c()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/b/a/i/a;->a(Ljava/nio/ByteBuffer;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v2, "GifEncoder"

    const/4 v3, 0x5

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "GifEncoder"

    const-string v3, "Failed to encode GIF drawable data"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/io/File;Lcom/b/a/c/j;)Z
    .locals 1

    check-cast p1, Lcom/b/a/c/b/u;

    invoke-virtual {p0, p1, p2, p3}, Lcom/b/a/c/d/e/d;->a(Lcom/b/a/c/b/u;Ljava/io/File;Lcom/b/a/c/j;)Z

    move-result v0

    return v0
.end method
