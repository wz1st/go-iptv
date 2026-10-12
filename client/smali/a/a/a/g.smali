.class final La/a/a/g;
.super Ljava/lang/Object;

# interfaces
.implements Lb/m;


# instance fields
.field a:Z

.field final synthetic b:Lb/d;

.field final synthetic c:La/a/a/b;

.field final synthetic d:Lb/c;

.field final synthetic e:La/a/a/a;


# direct methods
.method constructor <init>(La/a/a/a;Lb/d;La/a/a/b;Lb/c;)V
    .locals 0

    iput-object p1, p0, La/a/a/g;->e:La/a/a/a;

    iput-object p2, p0, La/a/a/g;->b:Lb/d;

    iput-object p3, p0, La/a/a/g;->c:La/a/a/b;

    iput-object p4, p0, La/a/a/g;->d:Lb/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lb/b;J)J
    .locals 6

    const-wide/16 v0, -0x1

    const/4 v3, 0x1

    :try_start_0
    iget-object v2, p0, La/a/a/g;->b:Lb/d;

    invoke-interface {v2, p1, p2, p3}, Lb/d;->a(Lb/b;J)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    cmp-long v2, v4, v0

    if-nez v2, :cond_2

    iget-boolean v2, p0, La/a/a/g;->a:Z

    if-nez v2, :cond_0

    iput-boolean v3, p0, La/a/a/g;->a:Z

    iget-object v2, p0, La/a/a/g;->d:Lb/c;

    invoke-interface {v2}, Lb/c;->close()V

    :cond_0
    move-wide v4, v0

    :goto_0
    return-wide v4

    :catch_0
    move-exception v0

    iget-boolean v1, p0, La/a/a/g;->a:Z

    if-nez v1, :cond_1

    iput-boolean v3, p0, La/a/a/g;->a:Z

    iget-object v1, p0, La/a/a/g;->c:La/a/a/b;

    invoke-interface {v1}, La/a/a/b;->a()V

    :cond_1
    throw v0

    :cond_2
    iget-object v0, p0, La/a/a/g;->d:Lb/c;

    invoke-interface {v0}, Lb/c;->b()Lb/b;

    move-result-object v1

    invoke-virtual {p1}, Lb/b;->s()J

    move-result-wide v2

    sub-long/2addr v2, v4

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lb/b;->a(Lb/b;JJ)Lb/b;

    iget-object v0, p0, La/a/a/g;->d:Lb/c;

    invoke-interface {v0}, Lb/c;->g()Lb/c;

    goto :goto_0
.end method

.method public final a()Lb/n;
    .locals 1

    iget-object v0, p0, La/a/a/g;->b:Lb/d;

    invoke-interface {v0}, Lb/d;->a()Lb/n;

    move-result-object v0

    return-object v0
.end method

.method public final close()V
    .locals 2

    iget-boolean v0, p0, La/a/a/g;->a:Z

    if-nez v0, :cond_0

    const/16 v0, 0x64

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, v0, v1}, La/a/c;->a(Lb/m;ILjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, La/a/a/g;->a:Z

    iget-object v0, p0, La/a/a/g;->c:La/a/a/b;

    invoke-interface {v0}, La/a/a/b;->a()V

    :cond_0
    iget-object v0, p0, La/a/a/g;->b:Lb/d;

    invoke-interface {v0}, Lb/d;->close()V

    return-void
.end method
