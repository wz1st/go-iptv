.class final La/a/d/c$e;
.super La/a/d/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/d/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "e"
.end annotation


# instance fields
.field final synthetic d:La/a/d/c;

.field private e:J


# direct methods
.method public constructor <init>(La/a/d/c;J)V
    .locals 4

    iput-object p1, p0, La/a/d/c$e;->d:La/a/d/c;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, La/a/d/c$a;-><init>(La/a/d/c;B)V

    iput-wide p2, p0, La/a/d/c$e;->e:J

    iget-wide v0, p0, La/a/d/c$e;->e:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, La/a/d/c$e;->a(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lb/b;J)J
    .locals 8

    const-wide/16 v0, -0x1

    const-wide/16 v6, 0x0

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
    iget-boolean v2, p0, La/a/d/c$e;->b:Z

    if-eqz v2, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-wide v2, p0, La/a/d/c$e;->e:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_2

    :goto_0
    return-wide v0

    :cond_2
    iget-object v2, p0, La/a/d/c$e;->d:La/a/d/c;

    invoke-static {v2}, La/a/d/c;->b(La/a/d/c;)Lb/d;

    move-result-object v2

    iget-wide v4, p0, La/a/d/c$e;->e:J

    invoke-static {v4, v5, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-interface {v2, p1, v4, v5}, Lb/d;->a(Lb/b;J)J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, La/a/d/c$e;->a(Z)V

    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "unexpected end of stream"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-wide v0, p0, La/a/d/c$e;->e:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, La/a/d/c$e;->e:J

    iget-wide v0, p0, La/a/d/c$e;->e:J

    cmp-long v0, v0, v6

    if-nez v0, :cond_4

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, La/a/d/c$e;->a(Z)V

    :cond_4
    move-wide v0, v2

    goto :goto_0
.end method

.method public final close()V
    .locals 4

    iget-boolean v0, p0, La/a/d/c$e;->b:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-wide v0, p0, La/a/d/c$e;->e:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const/16 v0, 0x64

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, v0, v1}, La/a/c;->a(Lb/m;ILjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, La/a/d/c$e;->a(Z)V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, La/a/d/c$e;->b:Z

    goto :goto_0
.end method
