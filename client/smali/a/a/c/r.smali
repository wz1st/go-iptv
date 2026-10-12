.class final La/a/c/r;
.super La/a/b;


# instance fields
.field final synthetic b:I

.field final synthetic c:Ljava/util/List;

.field final synthetic d:La/a/c/d;


# direct methods
.method varargs constructor <init>(La/a/c/d;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;)V
    .locals 0

    iput-object p1, p0, La/a/c/r;->d:La/a/c/d;

    iput p4, p0, La/a/c/r;->b:I

    iput-object p5, p0, La/a/c/r;->c:Ljava/util/List;

    invoke-direct {p0, p2, p3}, La/a/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, La/a/c/r;->d:La/a/c/d;

    invoke-static {v0}, La/a/c/d;->j(La/a/c/d;)La/a/c/j;

    move-result-object v0

    iget v1, p0, La/a/c/r;->b:I

    iget-object v2, p0, La/a/c/r;->c:Ljava/util/List;

    invoke-interface {v0, v1, v2}, La/a/c/j;->a(ILjava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, La/a/c/r;->d:La/a/c/d;

    iget-object v0, v0, La/a/c/d;->j:La/a/c/c;

    iget v1, p0, La/a/c/r;->b:I

    sget-object v2, La/a/c/a;->a:La/a/c/a;

    invoke-interface {v0, v1, v2}, La/a/c/c;->a(ILa/a/c/a;)V

    iget-object v1, p0, La/a/c/r;->d:La/a/c/d;

    monitor-enter v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, La/a/c/r;->d:La/a/c/d;

    invoke-static {v0}, La/a/c/d;->k(La/a/c/d;)Ljava/util/Set;

    move-result-object v0

    iget v2, p0, La/a/c/r;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    :cond_0
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
