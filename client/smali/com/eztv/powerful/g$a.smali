.class Lcom/eztv/powerful/g$a;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eztv/powerful/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/eztv/powerful/g;


# direct methods
.method constructor <init>(Lcom/eztv/powerful/g;)V
    .locals 0

    iput-object p1, p0, Lcom/eztv/powerful/g$a;->a:Lcom/eztv/powerful/g;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v3, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/eztv/powerful/g$a;->a:Lcom/eztv/powerful/g;

    iget-object v2, v2, Lcom/eztv/powerful/g;->s:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    new-instance v0, Ljava/net/URL;

    iget-object v2, p0, Lcom/eztv/powerful/g$a;->a:Lcom/eztv/powerful/g;

    iget-object v2, v2, Lcom/eztv/powerful/g;->i:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v2, "Accept-Encoding"

    const-string v4, "identity"

    invoke-virtual {v0, v2, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    new-instance v5, Ljava/io/File;

    iget-object v2, p0, Lcom/eztv/powerful/g$a;->a:Lcom/eztv/powerful/g;

    iget-object v2, v2, Lcom/eztv/powerful/g;->s:Ljava/lang/String;

    const-string v4, "ezTV.apk"

    invoke-direct {v5, v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v4

    :try_start_2
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/16 v3, 0x400

    :try_start_3
    new-array v3, v3, [B

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v5

    :goto_0
    invoke-virtual {v4, v3}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_4

    const/4 v7, 0x0

    invoke-virtual {v2, v3, v7, v6}, Ljava/io/OutputStream;->write([BII)V

    add-int/2addr v1, v6

    iget-object v6, p0, Lcom/eztv/powerful/g$a;->a:Lcom/eztv/powerful/g;

    invoke-static {v6}, Lcom/eztv/powerful/g;->e(Lcom/eztv/powerful/g;)Landroid/app/ProgressDialog;

    move-result-object v6

    mul-int/lit8 v7, v1, 0x64

    div-int/2addr v7, v5

    invoke-virtual {v6, v7}, Landroid/app/ProgressDialog;->setProgress(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v5, v0

    :goto_1
    :try_start_4
    invoke-static {v1}, Lcom/e/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/eztv/powerful/g$a;->a:Lcom/eztv/powerful/g;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/eztv/powerful/g;->a(Lcom/eztv/powerful/g;Z)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    if-eqz v2, :cond_1

    :try_start_5
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    :cond_1
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_2
    :goto_2
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    :goto_3
    return-void

    :cond_4
    :try_start_6
    iget-object v1, p0, Lcom/eztv/powerful/g$a;->a:Lcom/eztv/powerful/g;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/eztv/powerful/g;->a(Lcom/eztv/powerful/g;Z)Z

    iget-object v1, p0, Lcom/eztv/powerful/g$a;->a:Lcom/eztv/powerful/g;

    invoke-static {v1}, Lcom/eztv/powerful/g;->f(Lcom/eztv/powerful/g;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz v2, :cond_5

    :try_start_7
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    :cond_5
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    :cond_6
    :goto_4
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object v2, v3

    move-object v4, v3

    move-object v5, v3

    :goto_5
    if-eqz v2, :cond_7

    :try_start_8
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    :cond_7
    if-eqz v4, :cond_8

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    :cond_8
    :goto_6
    if-eqz v5, :cond_9

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_9
    throw v1

    :catch_1
    move-exception v0

    goto :goto_6

    :catchall_1
    move-exception v1

    move-object v2, v3

    move-object v4, v3

    move-object v5, v0

    goto :goto_5

    :catchall_2
    move-exception v1

    move-object v2, v3

    move-object v5, v0

    goto :goto_5

    :catchall_3
    move-exception v1

    move-object v5, v0

    goto :goto_5

    :catchall_4
    move-exception v0

    move-object v1, v0

    goto :goto_5

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    move-object v1, v0

    move-object v2, v3

    move-object v4, v3

    move-object v5, v3

    goto :goto_1

    :catch_4
    move-exception v1

    move-object v2, v3

    move-object v4, v3

    move-object v5, v0

    goto :goto_1

    :catch_5
    move-exception v1

    move-object v2, v3

    move-object v5, v0

    goto :goto_1

    :catch_6
    move-exception v1

    goto :goto_4
.end method
