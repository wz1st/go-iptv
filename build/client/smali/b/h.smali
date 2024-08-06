.class public Lb/h;
.super Lb/n;


# instance fields
.field private a:Lb/n;


# direct methods
.method public constructor <init>(Lb/n;)V
    .locals 2

    invoke-direct {p0}, Lb/n;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "delegate == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lb/h;->a:Lb/n;

    return-void
.end method


# virtual methods
.method public final a(Lb/n;)Lb/h;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "delegate == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lb/h;->a:Lb/n;

    return-object p0
.end method

.method public a(J)Lb/n;
    .locals 1

    iget-object v0, p0, Lb/h;->a:Lb/n;

    invoke-virtual {v0, p1, p2}, Lb/n;->a(J)Lb/n;

    move-result-object v0

    return-object v0
.end method

.method public a(JLjava/util/concurrent/TimeUnit;)Lb/n;
    .locals 1

    iget-object v0, p0, Lb/h;->a:Lb/n;

    invoke-virtual {v0, p1, p2, p3}, Lb/n;->a(JLjava/util/concurrent/TimeUnit;)Lb/n;

    move-result-object v0

    return-object v0
.end method

.method public b()Lb/n;
    .locals 1

    iget-object v0, p0, Lb/h;->a:Lb/n;

    invoke-virtual {v0}, Lb/n;->b()Lb/n;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lb/n;
    .locals 1

    iget-object v0, p0, Lb/h;->a:Lb/n;

    return-object v0
.end method

.method public g_()Lb/n;
    .locals 1

    iget-object v0, p0, Lb/h;->a:Lb/n;

    invoke-virtual {v0}, Lb/n;->g_()Lb/n;

    move-result-object v0

    return-object v0
.end method

.method public h_()J
    .locals 2

    iget-object v0, p0, Lb/h;->a:Lb/n;

    invoke-virtual {v0}, Lb/n;->h_()J

    move-result-wide v0

    return-wide v0
.end method

.method public i_()Z
    .locals 1

    iget-object v0, p0, Lb/h;->a:Lb/n;

    invoke-virtual {v0}, Lb/n;->i_()Z

    move-result v0

    return v0
.end method

.method public j_()V
    .locals 1

    iget-object v0, p0, Lb/h;->a:Lb/n;

    invoke-virtual {v0}, Lb/n;->j_()V

    return-void
.end method

.method public k_()J
    .locals 2

    iget-object v0, p0, Lb/h;->a:Lb/n;

    invoke-virtual {v0}, Lb/n;->k_()J

    move-result-wide v0

    return-wide v0
.end method
