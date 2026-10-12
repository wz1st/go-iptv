.class public Lcom/g/a/c/b/d;
.super Lcom/g/a/n;


# static fields
.field static final synthetic d:Z


# instance fields
.field e:J

.field f:J

.field g:Lcom/g/a/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/g/a/c/b/d;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/g/a/c/b/d;->d:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(J)V
    .locals 1

    invoke-direct {p0}, Lcom/g/a/n;-><init>()V

    new-instance v0, Lcom/g/a/h;

    invoke-direct {v0}, Lcom/g/a/h;-><init>()V

    iput-object v0, p0, Lcom/g/a/c/b/d;->g:Lcom/g/a/h;

    iput-wide p1, p0, Lcom/g/a/c/b/d;->e:J

    return-void
.end method


# virtual methods
.method public a(Lcom/g/a/i;Lcom/g/a/h;)V
    .locals 6

    sget-boolean v0, Lcom/g/a/c/b/d;->d:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/g/a/c/b/d;->f:J

    iget-wide v2, p0, Lcom/g/a/c/b/d;->e:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    invoke-virtual {p2}, Lcom/g/a/h;->l()I

    move-result v0

    iget-wide v2, p0, Lcom/g/a/c/b/d;->e:J

    iget-wide v4, p0, Lcom/g/a/c/b/d;->f:J

    sub-long/2addr v2, v4

    int-to-long v0, v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iget-object v2, p0, Lcom/g/a/c/b/d;->g:Lcom/g/a/h;

    long-to-int v0, v0

    invoke-virtual {p2, v2, v0}, Lcom/g/a/h;->a(Lcom/g/a/h;I)V

    iget-object v0, p0, Lcom/g/a/c/b/d;->g:Lcom/g/a/h;

    invoke-virtual {v0}, Lcom/g/a/h;->l()I

    move-result v0

    iget-object v1, p0, Lcom/g/a/c/b/d;->g:Lcom/g/a/h;

    invoke-super {p0, p1, v1}, Lcom/g/a/n;->a(Lcom/g/a/i;Lcom/g/a/h;)V

    iget-wide v2, p0, Lcom/g/a/c/b/d;->f:J

    iget-object v1, p0, Lcom/g/a/c/b/d;->g:Lcom/g/a/h;

    invoke-virtual {v1}, Lcom/g/a/h;->l()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-long v0, v0

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/g/a/c/b/d;->f:J

    iget-object v0, p0, Lcom/g/a/c/b/d;->g:Lcom/g/a/h;

    invoke-virtual {v0, p2}, Lcom/g/a/h;->a(Lcom/g/a/h;)V

    iget-wide v0, p0, Lcom/g/a/c/b/d;->f:J

    iget-wide v2, p0, Lcom/g/a/c/b/d;->e:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/g/a/c/b/d;->a(Ljava/lang/Exception;)V

    :cond_1
    return-void
.end method

.method protected final a(Ljava/lang/Exception;)V
    .locals 4

    if-nez p1, :cond_0

    iget-wide v0, p0, Lcom/g/a/c/b/d;->f:J

    iget-wide v2, p0, Lcom/g/a/c/b/d;->e:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    new-instance p1, Lcom/g/a/c/b/h;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "End of data reached before content length was read: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/g/a/c/b/d;->f:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/g/a/c/b/d;->e:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Paused: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/g/a/c/b/d;->j()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/g/a/c/b/h;-><init>(Ljava/lang/String;)V

    :cond_0
    invoke-super {p0, p1}, Lcom/g/a/n;->a(Ljava/lang/Exception;)V

    return-void
.end method
