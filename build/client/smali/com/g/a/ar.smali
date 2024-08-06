.class final Lcom/g/a/ar;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/net/InetAddress;

.field final synthetic b:I

.field final synthetic c:Lcom/g/a/a/d;

.field final synthetic d:Lcom/g/a/d$d;

.field final synthetic e:Lcom/g/a/d;


# direct methods
.method constructor <init>(Lcom/g/a/d;Ljava/net/InetAddress;ILcom/g/a/a/d;Lcom/g/a/d$d;)V
    .locals 0

    iput-object p1, p0, Lcom/g/a/ar;->e:Lcom/g/a/d;

    iput-object p2, p0, Lcom/g/a/ar;->a:Ljava/net/InetAddress;

    iput p3, p0, Lcom/g/a/ar;->b:I

    iput-object p4, p0, Lcom/g/a/ar;->c:Lcom/g/a/a/d;

    iput-object p5, p0, Lcom/g/a/ar;->d:Lcom/g/a/d$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Ljava/nio/channels/ServerSocketChannel;->open()Ljava/nio/channels/ServerSocketChannel;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :try_start_1
    new-instance v3, Lcom/g/a/ai;

    invoke-direct {v3, v1}, Lcom/g/a/ai;-><init>(Ljava/nio/channels/ServerSocketChannel;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    iget-object v0, p0, Lcom/g/a/ar;->a:Ljava/net/InetAddress;

    if-nez v0, :cond_0

    new-instance v0, Ljava/net/InetSocketAddress;

    iget v2, p0, Lcom/g/a/ar;->b:I

    invoke-direct {v0, v2}, Ljava/net/InetSocketAddress;-><init>(I)V

    :goto_0
    invoke-virtual {v1}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V

    iget-object v0, p0, Lcom/g/a/ar;->e:Lcom/g/a/d;

    invoke-static {v0}, Lcom/g/a/d;->a(Lcom/g/a/d;)Lcom/g/a/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/g/a/r;->b()Ljava/nio/channels/Selector;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/g/a/ai;->a(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;

    move-result-object v2

    iget-object v0, p0, Lcom/g/a/ar;->c:Lcom/g/a/a/d;

    invoke-virtual {v2, v0}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/g/a/ar;->c:Lcom/g/a/a/d;

    iget-object v5, p0, Lcom/g/a/ar;->d:Lcom/g/a/d$d;

    new-instance v0, Lcom/g/a/as;

    invoke-direct {v0, p0, v1, v3, v2}, Lcom/g/a/as;-><init>(Lcom/g/a/ar;Ljava/nio/channels/ServerSocketChannel;Lcom/g/a/ai;Ljava/nio/channels/SelectionKey;)V

    iput-object v0, v5, Lcom/g/a/d$d;->a:Ljava/lang/Object;

    check-cast v0, Lcom/g/a/e;

    invoke-interface {v4, v0}, Lcom/g/a/a/d;->a(Lcom/g/a/e;)V

    :goto_1
    return-void

    :cond_0
    new-instance v0, Ljava/net/InetSocketAddress;

    iget-object v2, p0, Lcom/g/a/ar;->a:Ljava/net/InetAddress;

    iget v4, p0, Lcom/g/a/ar;->b:I

    invoke-direct {v0, v2, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    move-object v0, v1

    move-object v4, v2

    :goto_2
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/io/Closeable;

    const/4 v2, 0x0

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/g/a/e/c;->a([Ljava/io/Closeable;)V

    iget-object v0, p0, Lcom/g/a/ar;->c:Lcom/g/a/a/d;

    invoke-interface {v0, v4}, Lcom/g/a/a/d;->a_(Ljava/lang/Exception;)V

    goto :goto_1

    :catch_1
    move-exception v1

    move-object v0, v2

    move-object v3, v2

    move-object v4, v1

    goto :goto_2

    :catch_2
    move-exception v4

    move-object v0, v1

    move-object v3, v2

    goto :goto_2
.end method
