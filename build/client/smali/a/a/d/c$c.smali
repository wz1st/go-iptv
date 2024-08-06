.class final La/a/d/c$c;
.super La/a/d/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/d/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field final synthetic d:La/a/d/c;

.field private final e:La/r;

.field private f:J

.field private g:Z


# direct methods
.method constructor <init>(La/a/d/c;La/r;)V
    .locals 2

    iput-object p1, p0, La/a/d/c$c;->d:La/a/d/c;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, La/a/d/c$a;-><init>(La/a/d/c;B)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, La/a/d/c$c;->f:J

    const/4 v0, 0x1

    iput-boolean v0, p0, La/a/d/c$c;->g:Z

    iput-object p2, p0, La/a/d/c$c;->e:La/r;

    return-void
.end method


# virtual methods
.method public final a(Lb/b;J)J
    .locals 10

    const/4 v8, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v0, -0x1

    cmp-long v2, p2, v6

    if-gez v2, :cond_0

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

    :cond_0
    iget-boolean v2, p0, La/a/d/c$c;->b:Z

    if-eqz v2, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-boolean v2, p0, La/a/d/c$c;->g:Z

    if-nez v2, :cond_3

    :cond_2
    :goto_0
    return-wide v0

    :cond_3
    iget-wide v2, p0, La/a/d/c$c;->f:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_4

    iget-wide v2, p0, La/a/d/c$c;->f:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_9

    :cond_4
    iget-wide v2, p0, La/a/d/c$c;->f:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_5

    iget-object v2, p0, La/a/d/c$c;->d:La/a/d/c;

    invoke-static {v2}, La/a/d/c;->b(La/a/d/c;)Lb/d;

    move-result-object v2

    invoke-interface {v2}, Lb/d;->r()Ljava/lang/String;

    :cond_5
    :try_start_0
    iget-object v2, p0, La/a/d/c$c;->d:La/a/d/c;

    invoke-static {v2}, La/a/d/c;->b(La/a/d/c;)Lb/d;

    move-result-object v2

    invoke-interface {v2}, Lb/d;->l()J

    move-result-wide v2

    iput-wide v2, p0, La/a/d/c$c;->f:J

    iget-object v2, p0, La/a/d/c$c;->d:La/a/d/c;

    invoke-static {v2}, La/a/d/c;->b(La/a/d/c;)Lb/d;

    move-result-object v2

    invoke-interface {v2}, Lb/d;->r()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iget-wide v4, p0, La/a/d/c$c;->f:J

    cmp-long v3, v4, v6

    if-ltz v3, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    :cond_6
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "expected chunk size and optional extensions but was \""

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, La/a/d/c$c;->f:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/net/ProtocolException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    iget-wide v2, p0, La/a/d/c$c;->f:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_8

    iput-boolean v8, p0, La/a/d/c$c;->g:Z

    iget-object v2, p0, La/a/d/c$c;->d:La/a/d/c;

    invoke-static {v2}, La/a/d/c;->e(La/a/d/c;)La/u;

    move-result-object v2

    invoke-virtual {v2}, La/u;->h()La/m;

    move-result-object v2

    iget-object v3, p0, La/a/d/c$c;->e:La/r;

    iget-object v4, p0, La/a/d/c$c;->d:La/a/d/c;

    invoke-virtual {v4}, La/a/d/c;->d()La/q;

    move-result-object v4

    invoke-static {v2, v3, v4}, La/a/d/f;->a(La/m;La/r;La/q;)V

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, La/a/d/c$c;->a(Z)V

    :cond_8
    iget-boolean v2, p0, La/a/d/c$c;->g:Z

    if-eqz v2, :cond_2

    :cond_9
    iget-object v2, p0, La/a/d/c$c;->d:La/a/d/c;

    invoke-static {v2}, La/a/d/c;->b(La/a/d/c;)Lb/d;

    move-result-object v2

    iget-wide v4, p0, La/a/d/c$c;->f:J

    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-interface {v2, p1, v4, v5}, Lb/d;->a(Lb/b;J)J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-nez v0, :cond_a

    invoke-virtual {p0, v8}, La/a/d/c$c;->a(Z)V

    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "unexpected end of stream"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iget-wide v0, p0, La/a/d/c$c;->f:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, La/a/d/c$c;->f:J

    move-wide v0, v2

    goto/16 :goto_0
.end method

.method public final close()V
    .locals 2

    iget-boolean v0, p0, La/a/d/c$c;->b:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, La/a/d/c$c;->g:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x64

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, v0, v1}, La/a/c;->a(Lb/m;ILjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, La/a/d/c$c;->a(Z)V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, La/a/d/c$c;->b:Z

    goto :goto_0
.end method
