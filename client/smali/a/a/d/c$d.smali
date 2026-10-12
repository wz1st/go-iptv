.class final La/a/d/c$d;
.super Ljava/lang/Object;

# interfaces
.implements Lb/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/d/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "d"
.end annotation


# instance fields
.field final synthetic a:La/a/d/c;

.field private final b:Lb/h;

.field private c:Z

.field private d:J


# direct methods
.method private constructor <init>(La/a/d/c;J)V
    .locals 2

    iput-object p1, p0, La/a/d/c$d;->a:La/a/d/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lb/h;

    iget-object v1, p0, La/a/d/c$d;->a:La/a/d/c;

    invoke-static {v1}, La/a/d/c;->a(La/a/d/c;)Lb/c;

    move-result-object v1

    invoke-interface {v1}, Lb/c;->a()Lb/n;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/h;-><init>(Lb/n;)V

    iput-object v0, p0, La/a/d/c$d;->b:Lb/h;

    iput-wide p2, p0, La/a/d/c$d;->d:J

    return-void
.end method

.method synthetic constructor <init>(La/a/d/c;JB)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, La/a/d/c$d;-><init>(La/a/d/c;J)V

    return-void
.end method


# virtual methods
.method public final a()Lb/n;
    .locals 1

    iget-object v0, p0, La/a/d/c$d;->b:Lb/h;

    return-object v0
.end method

.method public final a_(Lb/b;J)V
    .locals 6

    iget-boolean v0, p0, La/a/d/c$d;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Lb/b;->s()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, La/a/c;->a(JJJ)V

    iget-wide v0, p0, La/a/d/c$d;->d:J

    cmp-long v0, p2, v0

    if-lez v0, :cond_1

    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "expected "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, La/a/d/c$d;->d:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes but received "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, La/a/d/c$d;->a:La/a/d/c;

    invoke-static {v0}, La/a/d/c;->a(La/a/d/c;)Lb/c;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lb/c;->a_(Lb/b;J)V

    iget-wide v0, p0, La/a/d/c$d;->d:J

    sub-long/2addr v0, p2

    iput-wide v0, p0, La/a/d/c$d;->d:J

    return-void
.end method

.method public final close()V
    .locals 4

    iget-boolean v0, p0, La/a/d/c$d;->c:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, La/a/d/c$d;->c:Z

    iget-wide v0, p0, La/a/d/c$d;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "unexpected end of stream"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, La/a/d/c$d;->b:Lb/h;

    invoke-static {v0}, La/a/d/c;->a(Lb/h;)V

    iget-object v0, p0, La/a/d/c$d;->a:La/a/d/c;

    const/4 v1, 0x3

    invoke-static {v0, v1}, La/a/d/c;->a(La/a/d/c;I)I

    goto :goto_0
.end method

.method public final flush()V
    .locals 1

    iget-boolean v0, p0, La/a/d/c$d;->c:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, La/a/d/c$d;->a:La/a/d/c;

    invoke-static {v0}, La/a/d/c;->a(La/a/d/c;)Lb/c;

    move-result-object v0

    invoke-interface {v0}, Lb/c;->flush()V

    goto :goto_0
.end method
