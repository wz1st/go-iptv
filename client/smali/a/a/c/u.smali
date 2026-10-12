.class final La/a/c/u;
.super La/a/b;


# instance fields
.field final synthetic b:I

.field final synthetic c:La/a/c/a;

.field final synthetic d:La/a/c/d;


# direct methods
.method varargs constructor <init>(La/a/c/d;Ljava/lang/String;[Ljava/lang/Object;ILa/a/c/a;)V
    .locals 0

    iput-object p1, p0, La/a/c/u;->d:La/a/c/d;

    iput p4, p0, La/a/c/u;->b:I

    iput-object p5, p0, La/a/c/u;->c:La/a/c/a;

    invoke-direct {p0, p2, p3}, La/a/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, La/a/c/u;->d:La/a/c/d;

    invoke-static {v0}, La/a/c/d;->j(La/a/c/d;)La/a/c/j;

    move-result-object v0

    iget v1, p0, La/a/c/u;->b:I

    iget-object v2, p0, La/a/c/u;->c:La/a/c/a;

    invoke-interface {v0, v1, v2}, La/a/c/j;->a(ILa/a/c/a;)V

    iget-object v1, p0, La/a/c/u;->d:La/a/c/d;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, La/a/c/u;->d:La/a/c/d;

    invoke-static {v0}, La/a/c/d;->k(La/a/c/d;)Ljava/util/Set;

    move-result-object v0

    iget v2, p0, La/a/c/u;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
