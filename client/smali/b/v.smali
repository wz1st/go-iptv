.class final Lb/v;
.super Ljava/lang/Object;

# interfaces
.implements Lb/d;


# instance fields
.field a:Z

.field public final b:Lb/b;

.field public final c:Lb/m;


# direct methods
.method constructor <init>(Lb/m;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lb/b;

    invoke-direct {v0}, Lb/b;-><init>()V

    iput-object v0, p0, Lb/v;->b:Lb/b;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lb/v;->c:Lb/m;

    return-void
.end method


# virtual methods
.method public final a(B)J
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lb/v;->a(BJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(BJ)J
    .locals 8

    const-wide/16 v2, -0x1

    iget-boolean v0, p0, Lb/v;->a:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    :cond_1
    iget-object v0, p0, Lb/v;->b:Lb/b;

    invoke-virtual {v0, p1, p2, p3}, Lb/b;->a(BJ)J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    :goto_0
    return-wide v0

    :cond_2
    iget-object v0, p0, Lb/v;->b:Lb/b;

    iget-wide v0, v0, Lb/b;->b:J

    iget-object v4, p0, Lb/v;->c:Lb/m;

    iget-object v5, p0, Lb/v;->b:Lb/b;

    const-wide/16 v6, 0x2000

    invoke-interface {v4, v5, v6, v7}, Lb/m;->a(Lb/b;J)J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-nez v4, :cond_0

    move-wide v0, v2

    goto :goto_0
.end method

.method public final a(Lb/b;J)J
    .locals 6

    const-wide/16 v4, 0x0

    const-wide/16 v0, -0x1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sink == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    cmp-long v2, p2, v4

    if-gez v2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "byteCount < 0: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-boolean v2, p0, Lb/v;->a:Z

    if-eqz v2, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v2, p0, Lb/v;->b:Lb/b;

    iget-wide v2, v2, Lb/b;->b:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget-object v2, p0, Lb/v;->c:Lb/m;

    iget-object v3, p0, Lb/v;->b:Lb/b;

    const-wide/16 v4, 0x2000

    invoke-interface {v2, v3, v4, v5}, Lb/m;->a(Lb/b;J)J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-nez v2, :cond_3

    :goto_0
    return-wide v0

    :cond_3
    iget-object v0, p0, Lb/v;->b:Lb/b;

    iget-wide v0, v0, Lb/b;->b:J

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iget-object v2, p0, Lb/v;->b:Lb/b;

    invoke-virtual {v2, p1, v0, v1}, Lb/b;->a(Lb/b;J)J

    move-result-wide v0

    goto :goto_0
.end method

.method public final a()Lb/n;
    .locals 1

    iget-object v0, p0, Lb/v;->c:Lb/m;

    invoke-interface {v0}, Lb/m;->a()Lb/n;

    move-result-object v0

    return-object v0
.end method

.method public final a(J)Z
    .locals 5

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "byteCount < 0: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-boolean v0, p0, Lb/v;->a:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lb/v;->b:Lb/b;

    iget-wide v0, v0, Lb/b;->b:J

    cmp-long v0, v0, p1

    if-gez v0, :cond_2

    iget-object v0, p0, Lb/v;->c:Lb/m;

    iget-object v1, p0, Lb/v;->b:Lb/b;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v1, v2, v3}, Lb/m;->a(Lb/b;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final b()Lb/b;
    .locals 1

    iget-object v0, p0, Lb/v;->b:Lb/b;

    return-object v0
.end method

.method public final c(J)[B
    .locals 1

    invoke-virtual {p0, p1, p2}, Lb/v;->f(J)V

    iget-object v0, p0, Lb/v;->b:Lb/b;

    invoke-virtual {v0, p1, p2}, Lb/b;->c(J)[B

    move-result-object v0

    return-object v0
.end method

.method public final close()V
    .locals 1

    iget-boolean v0, p0, Lb/v;->a:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/v;->a:Z

    iget-object v0, p0, Lb/v;->c:Lb/m;

    invoke-interface {v0}, Lb/m;->close()V

    iget-object v0, p0, Lb/v;->b:Lb/b;

    invoke-virtual {v0}, Lb/b;->c()V

    goto :goto_0
.end method

.method public final d(J)Lb/e;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lb/v;->f(J)V

    iget-object v0, p0, Lb/v;->b:Lb/b;

    invoke-virtual {v0, p1, p2}, Lb/b;->d(J)Lb/e;

    move-result-object v0

    return-object v0
.end method

.method public final f(J)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Lb/v;->a(J)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_0
    return-void
.end method

.method public final g(J)V
    .locals 7

    const-wide/16 v4, 0x0

    iget-boolean v0, p0, Lb/v;->a:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lb/v;->b:Lb/b;

    invoke-virtual {v0}, Lb/b;->s()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iget-object v2, p0, Lb/v;->b:Lb/b;

    invoke-virtual {v2, v0, v1}, Lb/b;->g(J)V

    sub-long/2addr p1, v0

    :cond_1
    cmp-long v0, p1, v4

    if-lez v0, :cond_2

    iget-object v0, p0, Lb/v;->b:Lb/b;

    iget-wide v0, v0, Lb/b;->b:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    iget-object v0, p0, Lb/v;->c:Lb/m;

    iget-object v1, p0, Lb/v;->b:Lb/b;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v1, v2, v3}, Lb/m;->a(Lb/b;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_2
    return-void
.end method

.method public final h()Z
    .locals 4

    iget-boolean v0, p0, Lb/v;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lb/v;->b:Lb/b;

    invoke-virtual {v0}, Lb/b;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lb/v;->c:Lb/m;

    iget-object v1, p0, Lb/v;->b:Lb/b;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v1, v2, v3}, Lb/m;->a(Lb/b;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final i()B
    .locals 2

    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lb/v;->f(J)V

    iget-object v0, p0, Lb/v;->b:Lb/b;

    invoke-virtual {v0}, Lb/b;->i()B

    move-result v0

    return v0
.end method

.method public final j()[B
    .locals 2

    iget-object v0, p0, Lb/v;->b:Lb/b;

    iget-object v1, p0, Lb/v;->c:Lb/m;

    invoke-virtual {v0, v1}, Lb/b;->a(Lb/m;)J

    iget-object v0, p0, Lb/v;->b:Lb/b;

    invoke-virtual {v0}, Lb/b;->j()[B

    move-result-object v0

    return-object v0
.end method

.method public final l()J
    .locals 6

    const/4 v1, 0x0

    const-wide/16 v2, 0x1

    invoke-virtual {p0, v2, v3}, Lb/v;->f(J)V

    move v0, v1

    :goto_0
    add-int/lit8 v2, v0, 0x1

    int-to-long v2, v2

    invoke-virtual {p0, v2, v3}, Lb/v;->a(J)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lb/v;->b:Lb/b;

    int-to-long v4, v0

    invoke-virtual {v2, v4, v5}, Lb/b;->b(J)B

    move-result v2

    const/16 v3, 0x30

    if-lt v2, v3, :cond_0

    const/16 v3, 0x39

    if-le v2, v3, :cond_3

    :cond_0
    const/16 v3, 0x61

    if-lt v2, v3, :cond_1

    const/16 v3, 0x66

    if-le v2, v3, :cond_3

    :cond_1
    const/16 v3, 0x41

    if-lt v2, v3, :cond_2

    const/16 v3, 0x46

    if-le v2, v3, :cond_3

    :cond_2
    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v3, "Expected leading [0-9a-fA-F] character but was %#x"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lb/v;->b:Lb/b;

    invoke-virtual {v0}, Lb/b;->l()J

    move-result-wide v0

    return-wide v0
.end method

.method public final m()I
    .locals 2

    const-wide/16 v0, 0x4

    invoke-virtual {p0, v0, v1}, Lb/v;->f(J)V

    iget-object v0, p0, Lb/v;->b:Lb/b;

    invoke-virtual {v0}, Lb/b;->m()I

    move-result v0

    return v0
.end method

.method public final n()I
    .locals 2

    const-wide/16 v0, 0x4

    invoke-virtual {p0, v0, v1}, Lb/v;->f(J)V

    iget-object v0, p0, Lb/v;->b:Lb/b;

    invoke-virtual {v0}, Lb/b;->n()I

    move-result v0

    return v0
.end method

.method public final o()S
    .locals 2

    const-wide/16 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lb/v;->f(J)V

    iget-object v0, p0, Lb/v;->b:Lb/b;

    invoke-virtual {v0}, Lb/b;->o()S

    move-result v0

    return v0
.end method

.method public final p()S
    .locals 2

    const-wide/16 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lb/v;->f(J)V

    iget-object v0, p0, Lb/v;->b:Lb/b;

    invoke-virtual {v0}, Lb/b;->p()S

    move-result v0

    return v0
.end method

.method public final r()Ljava/lang/String;
    .locals 8

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lb/v;->a(B)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    new-instance v1, Lb/b;

    invoke-direct {v1}, Lb/b;-><init>()V

    iget-object v0, p0, Lb/v;->b:Lb/b;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x20

    iget-object v6, p0, Lb/v;->b:Lb/b;

    invoke-virtual {v6}, Lb/b;->s()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lb/b;->a(Lb/b;JJ)Lb/b;

    new-instance v0, Ljava/io/EOFException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\\n not found: size="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lb/v;->b:Lb/b;

    invoke-virtual {v3}, Lb/b;->s()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " content="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lb/b;->k()Lb/e;

    move-result-object v1

    invoke-virtual {v1}, Lb/e;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u2026"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v2, p0, Lb/v;->b:Lb/b;

    invoke-virtual {v2, v0, v1}, Lb/b;->a(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "buffer("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lb/v;->c:Lb/m;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
