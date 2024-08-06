.class final Lb/u;
.super Ljava/lang/Object;

# interfaces
.implements Lb/c;


# instance fields
.field a:Z

.field public final b:Lb/b;

.field public final c:Lb/l;


# direct methods
.method constructor <init>(Lb/l;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lb/b;

    invoke-direct {v0}, Lb/b;-><init>()V

    iput-object v0, p0, Lb/u;->b:Lb/b;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "sink == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lb/u;->c:Lb/l;

    return-void
.end method


# virtual methods
.method public final a(Lb/m;)J
    .locals 6

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    iget-object v2, p0, Lb/u;->b:Lb/b;

    const-wide/16 v4, 0x2000

    invoke-interface {p1, v2, v4, v5}, Lb/m;->a(Lb/b;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_1

    add-long/2addr v0, v2

    invoke-virtual {p0}, Lb/u;->g()Lb/c;

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method public final a()Lb/n;
    .locals 1

    iget-object v0, p0, Lb/u;->c:Lb/l;

    invoke-interface {v0}, Lb/l;->a()Lb/n;

    move-result-object v0

    return-object v0
.end method

.method public final a_(Lb/b;J)V
    .locals 2

    iget-boolean v0, p0, Lb/u;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lb/u;->b:Lb/b;

    invoke-virtual {v0, p1, p2, p3}, Lb/b;->a_(Lb/b;J)V

    invoke-virtual {p0}, Lb/u;->g()Lb/c;

    return-void
.end method

.method public final b()Lb/b;
    .locals 1

    iget-object v0, p0, Lb/u;->b:Lb/b;

    return-object v0
.end method

.method public final b(Lb/e;)Lb/c;
    .locals 2

    iget-boolean v0, p0, Lb/u;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lb/u;->b:Lb/b;

    invoke-virtual {v0, p1}, Lb/b;->a(Lb/e;)Lb/b;

    invoke-virtual {p0}, Lb/u;->g()Lb/c;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Lb/c;
    .locals 2

    iget-boolean v0, p0, Lb/u;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lb/u;->b:Lb/b;

    invoke-virtual {v0, p1}, Lb/b;->a(Ljava/lang/String;)Lb/b;

    invoke-virtual {p0}, Lb/u;->g()Lb/c;

    move-result-object v0

    return-object v0
.end method

.method public final c([B)Lb/c;
    .locals 2

    iget-boolean v0, p0, Lb/u;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lb/u;->b:Lb/b;

    invoke-virtual {v0, p1}, Lb/b;->b([B)Lb/b;

    invoke-virtual {p0}, Lb/u;->g()Lb/c;

    move-result-object v0

    return-object v0
.end method

.method public final close()V
    .locals 6

    iget-boolean v0, p0, Lb/u;->a:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lb/u;->b:Lb/b;

    iget-wide v2, v1, Lb/b;->b:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    iget-object v1, p0, Lb/u;->c:Lb/l;

    iget-object v2, p0, Lb/u;->b:Lb/b;

    iget-object v3, p0, Lb/u;->b:Lb/b;

    iget-wide v4, v3, Lb/b;->b:J

    invoke-interface {v1, v2, v4, v5}, Lb/l;->a_(Lb/b;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_2
    :goto_1
    :try_start_1
    iget-object v1, p0, Lb/u;->c:Lb/l;

    invoke-interface {v1}, Lb/l;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    :goto_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lb/u;->a:Z

    if-eqz v0, :cond_0

    invoke-static {v0}, Lb/aa;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_0
    move-exception v1

    if-nez v0, :cond_3

    move-object v0, v1

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public final d(I)Lb/c;
    .locals 2

    iget-boolean v0, p0, Lb/u;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lb/u;->b:Lb/b;

    invoke-virtual {v0, p1}, Lb/b;->c(I)Lb/b;

    invoke-virtual {p0}, Lb/u;->g()Lb/c;

    move-result-object v0

    return-object v0
.end method

.method public final f(I)Lb/c;
    .locals 2

    iget-boolean v0, p0, Lb/u;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lb/u;->b:Lb/b;

    invoke-virtual {v0, p1}, Lb/b;->e(I)Lb/b;

    invoke-virtual {p0}, Lb/u;->g()Lb/c;

    move-result-object v0

    return-object v0
.end method

.method public final flush()V
    .locals 4

    iget-boolean v0, p0, Lb/u;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lb/u;->b:Lb/b;

    iget-wide v0, v0, Lb/b;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-object v0, p0, Lb/u;->c:Lb/l;

    iget-object v1, p0, Lb/u;->b:Lb/b;

    iget-object v2, p0, Lb/u;->b:Lb/b;

    iget-wide v2, v2, Lb/b;->b:J

    invoke-interface {v0, v1, v2, v3}, Lb/l;->a_(Lb/b;J)V

    :cond_1
    iget-object v0, p0, Lb/u;->c:Lb/l;

    invoke-interface {v0}, Lb/l;->flush()V

    return-void
.end method

.method public final g()Lb/c;
    .locals 4

    iget-boolean v0, p0, Lb/u;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lb/u;->b:Lb/b;

    invoke-virtual {v0}, Lb/b;->e()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lb/u;->c:Lb/l;

    iget-object v3, p0, Lb/u;->b:Lb/b;

    invoke-interface {v2, v3, v0, v1}, Lb/l;->a_(Lb/b;J)V

    :cond_1
    return-object p0
.end method

.method public final h(I)Lb/c;
    .locals 2

    iget-boolean v0, p0, Lb/u;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lb/u;->b:Lb/b;

    invoke-virtual {v0, p1}, Lb/b;->g(I)Lb/b;

    invoke-virtual {p0}, Lb/u;->g()Lb/c;

    move-result-object v0

    return-object v0
.end method

.method public final i(J)Lb/c;
    .locals 3

    iget-boolean v0, p0, Lb/u;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lb/u;->b:Lb/b;

    invoke-virtual {v0, p1, p2}, Lb/b;->h(J)Lb/b;

    invoke-virtual {p0}, Lb/u;->g()Lb/c;

    move-result-object v0

    return-object v0
.end method

.method public final k(J)Lb/c;
    .locals 3

    iget-boolean v0, p0, Lb/u;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lb/u;->b:Lb/b;

    invoke-virtual {v0, p1, p2}, Lb/b;->j(J)Lb/b;

    invoke-virtual {p0}, Lb/u;->g()Lb/c;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "buffer("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lb/u;->c:Lb/l;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
