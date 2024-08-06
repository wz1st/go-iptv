.class Landroid/support/v7/widget/s$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:J

.field b:Landroid/support/v7/widget/s$a;


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/support/v7/widget/s$a;->a:J

    return-void
.end method

.method private b()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/s$a;->b:Landroid/support/v7/widget/s$a;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v7/widget/s$a;

    invoke-direct {v0}, Landroid/support/v7/widget/s$a;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/s$a;->b:Landroid/support/v7/widget/s$a;

    :cond_0
    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/support/v7/widget/s$a;->a:J

    iget-object v0, p0, Landroid/support/v7/widget/s$a;->b:Landroid/support/v7/widget/s$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/s$a;->b:Landroid/support/v7/widget/s$a;

    invoke-virtual {v0}, Landroid/support/v7/widget/s$a;->a()V

    :cond_0
    return-void
.end method

.method a(I)V
    .locals 4

    const/16 v0, 0x40

    if-lt p1, v0, :cond_0

    invoke-direct {p0}, Landroid/support/v7/widget/s$a;->b()V

    iget-object v0, p0, Landroid/support/v7/widget/s$a;->b:Landroid/support/v7/widget/s$a;

    add-int/lit8 v1, p1, -0x40

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/s$a;->a(I)V

    :goto_0
    return-void

    :cond_0
    iget-wide v0, p0, Landroid/support/v7/widget/s$a;->a:J

    const-wide/16 v2, 0x1

    shl-long/2addr v2, p1

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/support/v7/widget/s$a;->a:J

    goto :goto_0
.end method

.method a(IZ)V
    .locals 12

    const-wide/16 v8, 0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v0, 0x40

    if-lt p1, v0, :cond_1

    invoke-direct {p0}, Landroid/support/v7/widget/s$a;->b()V

    iget-object v0, p0, Landroid/support/v7/widget/s$a;->b:Landroid/support/v7/widget/s$a;

    add-int/lit8 v1, p1, -0x40

    invoke-virtual {v0, v1, p2}, Landroid/support/v7/widget/s$a;->a(IZ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-wide v4, p0, Landroid/support/v7/widget/s$a;->a:J

    const-wide/high16 v6, -0x8000000000000000L

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    shl-long v4, v8, p1

    sub-long/2addr v4, v8

    iget-wide v6, p0, Landroid/support/v7/widget/s$a;->a:J

    and-long/2addr v6, v4

    iget-wide v8, p0, Landroid/support/v7/widget/s$a;->a:J

    const-wide/16 v10, -0x1

    xor-long/2addr v4, v10

    and-long/2addr v4, v8

    shl-long/2addr v4, v1

    or-long/2addr v4, v6

    iput-wide v4, p0, Landroid/support/v7/widget/s$a;->a:J

    if-eqz p2, :cond_4

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/s$a;->a(I)V

    :goto_2
    if-nez v0, :cond_2

    iget-object v1, p0, Landroid/support/v7/widget/s$a;->b:Landroid/support/v7/widget/s$a;

    if-eqz v1, :cond_0

    :cond_2
    invoke-direct {p0}, Landroid/support/v7/widget/s$a;->b()V

    iget-object v1, p0, Landroid/support/v7/widget/s$a;->b:Landroid/support/v7/widget/s$a;

    invoke-virtual {v1, v2, v0}, Landroid/support/v7/widget/s$a;->a(IZ)V

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/s$a;->b(I)V

    goto :goto_2
.end method

.method b(I)V
    .locals 6

    const/16 v0, 0x40

    if-lt p1, v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/s$a;->b:Landroid/support/v7/widget/s$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/s$a;->b:Landroid/support/v7/widget/s$a;

    add-int/lit8 v1, p1, -0x40

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/s$a;->b(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-wide v0, p0, Landroid/support/v7/widget/s$a;->a:J

    const-wide/16 v2, 0x1

    shl-long/2addr v2, p1

    const-wide/16 v4, -0x1

    xor-long/2addr v2, v4

    and-long/2addr v0, v2

    iput-wide v0, p0, Landroid/support/v7/widget/s$a;->a:J

    goto :goto_0
.end method

.method c(I)Z
    .locals 4

    const/16 v0, 0x40

    if-lt p1, v0, :cond_0

    invoke-direct {p0}, Landroid/support/v7/widget/s$a;->b()V

    iget-object v0, p0, Landroid/support/v7/widget/s$a;->b:Landroid/support/v7/widget/s$a;

    add-int/lit8 v1, p1, -0x40

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/s$a;->c(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Landroid/support/v7/widget/s$a;->a:J

    const-wide/16 v2, 0x1

    shl-long/2addr v2, p1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method d(I)Z
    .locals 14

    const-wide/16 v12, 0x1

    const-wide/16 v10, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v0, 0x40

    if-lt p1, v0, :cond_1

    invoke-direct {p0}, Landroid/support/v7/widget/s$a;->b()V

    iget-object v0, p0, Landroid/support/v7/widget/s$a;->b:Landroid/support/v7/widget/s$a;

    add-int/lit8 v1, p1, -0x40

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/s$a;->d(I)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    shl-long v4, v12, p1

    iget-wide v6, p0, Landroid/support/v7/widget/s$a;->a:J

    and-long/2addr v6, v4

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    iget-wide v6, p0, Landroid/support/v7/widget/s$a;->a:J

    xor-long v8, v4, v10

    and-long/2addr v6, v8

    iput-wide v6, p0, Landroid/support/v7/widget/s$a;->a:J

    sub-long/2addr v4, v12

    iget-wide v6, p0, Landroid/support/v7/widget/s$a;->a:J

    and-long/2addr v6, v4

    iget-wide v8, p0, Landroid/support/v7/widget/s$a;->a:J

    xor-long/2addr v4, v10

    and-long/2addr v4, v8

    invoke-static {v4, v5, v1}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v4

    or-long/2addr v4, v6

    iput-wide v4, p0, Landroid/support/v7/widget/s$a;->a:J

    iget-object v1, p0, Landroid/support/v7/widget/s$a;->b:Landroid/support/v7/widget/s$a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/s$a;->b:Landroid/support/v7/widget/s$a;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/s$a;->c(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x3f

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/s$a;->a(I)V

    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/s$a;->b:Landroid/support/v7/widget/s$a;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/s$a;->d(I)Z

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method e(I)I
    .locals 6

    const/16 v1, 0x40

    const-wide/16 v4, 0x1

    iget-object v0, p0, Landroid/support/v7/widget/s$a;->b:Landroid/support/v7/widget/s$a;

    if-nez v0, :cond_1

    if-lt p1, v1, :cond_0

    iget-wide v0, p0, Landroid/support/v7/widget/s$a;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Landroid/support/v7/widget/s$a;->a:J

    shl-long v2, v4, p1

    sub-long/2addr v2, v4

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result v0

    goto :goto_0

    :cond_1
    if-ge p1, v1, :cond_2

    iget-wide v0, p0, Landroid/support/v7/widget/s$a;->a:J

    shl-long v2, v4, p1

    sub-long/2addr v2, v4

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/s$a;->b:Landroid/support/v7/widget/s$a;

    add-int/lit8 v1, p1, -0x40

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/s$a;->e(I)I

    move-result v0

    iget-wide v2, p0, Landroid/support/v7/widget/s$a;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->bitCount(J)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Landroid/support/v7/widget/s$a;->b:Landroid/support/v7/widget/s$a;

    if-nez v0, :cond_0

    iget-wide v0, p0, Landroid/support/v7/widget/s$a;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/support/v7/widget/s$a;->b:Landroid/support/v7/widget/s$a;

    invoke-virtual {v1}, Landroid/support/v7/widget/s$a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "xx"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Landroid/support/v7/widget/s$a;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
