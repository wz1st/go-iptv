.class final Lcom/g/a/d$b;
.super Lcom/g/a/b/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/g/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/g/a/b/g",
        "<",
        "Lcom/g/a/b;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/nio/channels/SocketChannel;

.field b:Lcom/g/a/a/b;


# virtual methods
.method protected final a()V
    .locals 1

    invoke-super {p0}, Lcom/g/a/b/g;->a()V

    :try_start_0
    iget-object v0, p0, Lcom/g/a/d$b;->a:Ljava/nio/channels/SocketChannel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/g/a/d$b;->a:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
