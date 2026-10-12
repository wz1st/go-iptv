.class final La/a/c/t;
.super La/a/b;


# instance fields
.field final synthetic b:I

.field final synthetic c:Lb/b;

.field final synthetic d:I

.field final synthetic e:Z

.field final synthetic f:La/a/c/d;


# direct methods
.method varargs constructor <init>(La/a/c/d;Ljava/lang/String;[Ljava/lang/Object;ILb/b;IZ)V
    .locals 0

    iput-object p1, p0, La/a/c/t;->f:La/a/c/d;

    iput p4, p0, La/a/c/t;->b:I

    iput-object p5, p0, La/a/c/t;->c:Lb/b;

    iput p6, p0, La/a/c/t;->d:I

    iput-boolean p7, p0, La/a/c/t;->e:Z

    invoke-direct {p0, p2, p3}, La/a/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    :try_start_0
    iget-object v0, p0, La/a/c/t;->f:La/a/c/d;

    invoke-static {v0}, La/a/c/d;->j(La/a/c/d;)La/a/c/j;

    move-result-object v0

    iget v1, p0, La/a/c/t;->b:I

    iget-object v2, p0, La/a/c/t;->c:Lb/b;

    iget v3, p0, La/a/c/t;->d:I

    iget-boolean v4, p0, La/a/c/t;->e:Z

    invoke-interface {v0, v1, v2, v3, v4}, La/a/c/j;->a(ILb/d;IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, La/a/c/t;->f:La/a/c/d;

    iget-object v1, v1, La/a/c/d;->j:La/a/c/c;

    iget v2, p0, La/a/c/t;->b:I

    sget-object v3, La/a/c/a;->a:La/a/c/a;

    invoke-interface {v1, v2, v3}, La/a/c/c;->a(ILa/a/c/a;)V

    :cond_0
    if-nez v0, :cond_1

    iget-boolean v0, p0, La/a/c/t;->e:Z

    if-eqz v0, :cond_2

    :cond_1
    iget-object v1, p0, La/a/c/t;->f:La/a/c/d;

    monitor-enter v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, La/a/c/t;->f:La/a/c/d;

    invoke-static {v0}, La/a/c/d;->k(La/a/c/d;)Ljava/util/Set;

    move-result-object v0

    iget v2, p0, La/a/c/t;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    :cond_2
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
