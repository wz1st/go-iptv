.class final Lb/p;
.super Ljava/lang/Object;

# interfaces
.implements Lb/m;


# instance fields
.field final synthetic a:Lb/m;

.field final synthetic b:Lb/a;


# direct methods
.method constructor <init>(Lb/a;Lb/m;)V
    .locals 0

    iput-object p1, p0, Lb/p;->b:Lb/a;

    iput-object p2, p0, Lb/p;->a:Lb/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lb/b;J)J
    .locals 4

    iget-object v0, p0, Lb/p;->b:Lb/a;

    invoke-virtual {v0}, Lb/a;->f()V

    :try_start_0
    iget-object v0, p0, Lb/p;->a:Lb/m;

    invoke-interface {v0, p1, p2, p3}, Lb/m;->a(Lb/b;J)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    iget-object v2, p0, Lb/p;->b:Lb/a;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lb/a;->a(Z)V

    return-wide v0

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v1, p0, Lb/p;->b:Lb/a;

    invoke-virtual {v1, v0}, Lb/a;->b(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lb/p;->b:Lb/a;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lb/a;->a(Z)V

    throw v0
.end method

.method public final a()Lb/n;
    .locals 1

    iget-object v0, p0, Lb/p;->b:Lb/a;

    return-object v0
.end method

.method public final close()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lb/p;->a:Lb/m;

    invoke-interface {v0}, Lb/m;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lb/p;->b:Lb/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lb/a;->a(Z)V

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v1, p0, Lb/p;->b:Lb/a;

    invoke-virtual {v1, v0}, Lb/a;->b(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lb/p;->b:Lb/a;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lb/a;->a(Z)V

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AsyncTimeout.source("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lb/p;->a:Lb/m;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
