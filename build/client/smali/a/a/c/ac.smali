.class final La/a/c/ac;
.super Lb/g;


# instance fields
.field final synthetic a:La/a/c/ab;


# direct methods
.method constructor <init>(La/a/c/ab;Lb/m;)V
    .locals 0

    iput-object p1, p0, La/a/c/ac;->a:La/a/c/ab;

    invoke-direct {p0, p2}, Lb/g;-><init>(Lb/m;)V

    return-void
.end method


# virtual methods
.method public final a(Lb/b;J)J
    .locals 6

    const-wide/16 v0, -0x1

    iget-object v2, p0, La/a/c/ac;->a:La/a/c/ab;

    invoke-static {v2}, La/a/c/ab;->a(La/a/c/ab;)I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    iget-object v2, p0, La/a/c/ac;->a:La/a/c/ab;

    invoke-static {v2}, La/a/c/ab;->a(La/a/c/ab;)I

    move-result v2

    int-to-long v2, v2

    invoke-static {p2, p3, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-super {p0, p1, v2, v3}, Lb/g;->a(Lb/b;J)J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-eqz v4, :cond_0

    iget-object v0, p0, La/a/c/ac;->a:La/a/c/ab;

    iget-object v1, p0, La/a/c/ac;->a:La/a/c/ab;

    invoke-static {v1}, La/a/c/ab;->a(La/a/c/ab;)I

    move-result v1

    int-to-long v4, v1

    sub-long/2addr v4, v2

    long-to-int v1, v4

    invoke-static {v0, v1}, La/a/c/ab;->a(La/a/c/ab;I)I

    move-wide v0, v2

    goto :goto_0
.end method
