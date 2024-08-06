.class Landroid/support/v7/c/a/a$b;
.super Landroid/support/v7/c/a/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/c/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field a:Landroid/support/v4/e/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/e/h",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field b:Landroid/support/v4/e/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/e/o",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/support/v7/c/a/a$b;Landroid/support/v7/c/a/a;Landroid/content/res/Resources;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/c/a/d$a;-><init>(Landroid/support/v7/c/a/d$a;Landroid/support/v7/c/a/d;Landroid/content/res/Resources;)V

    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/support/v7/c/a/a$b;->a:Landroid/support/v4/e/h;

    iput-object v0, p0, Landroid/support/v7/c/a/a$b;->a:Landroid/support/v4/e/h;

    iget-object v0, p1, Landroid/support/v7/c/a/a$b;->b:Landroid/support/v4/e/o;

    iput-object v0, p0, Landroid/support/v7/c/a/a$b;->b:Landroid/support/v4/e/o;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/support/v4/e/h;

    invoke-direct {v0}, Landroid/support/v4/e/h;-><init>()V

    iput-object v0, p0, Landroid/support/v7/c/a/a$b;->a:Landroid/support/v4/e/h;

    new-instance v0, Landroid/support/v4/e/o;

    invoke-direct {v0}, Landroid/support/v4/e/o;-><init>()V

    iput-object v0, p0, Landroid/support/v7/c/a/a$b;->b:Landroid/support/v4/e/o;

    goto :goto_0
.end method

.method private static f(II)J
    .locals 4

    int-to-long v0, p0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    int-to-long v2, p1

    or-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method a(I)I
    .locals 2

    const/4 v0, 0x0

    if-gez p1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Landroid/support/v7/c/a/a$b;->b:Landroid/support/v4/e/o;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/e/o;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method a(II)I
    .locals 6

    invoke-static {p1, p2}, Landroid/support/v7/c/a/a$b;->f(II)J

    move-result-wide v0

    iget-object v2, p0, Landroid/support/v7/c/a/a$b;->a:Landroid/support/v4/e/h;

    const-wide/16 v4, -0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v0, v1, v3}, Landroid/support/v4/e/h;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method a(IILandroid/graphics/drawable/Drawable;Z)I
    .locals 10

    invoke-super {p0, p3}, Landroid/support/v7/c/a/d$a;->a(Landroid/graphics/drawable/Drawable;)I

    move-result v2

    invoke-static {p1, p2}, Landroid/support/v7/c/a/a$b;->f(II)J

    move-result-wide v4

    const-wide/16 v0, 0x0

    if-eqz p4, :cond_0

    const-wide v0, 0x200000000L

    :cond_0
    iget-object v3, p0, Landroid/support/v7/c/a/a$b;->a:Landroid/support/v4/e/h;

    int-to-long v6, v2

    or-long/2addr v6, v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/support/v4/e/h;->c(JLjava/lang/Object;)V

    if-eqz p4, :cond_1

    invoke-static {p2, p1}, Landroid/support/v7/c/a/a$b;->f(II)J

    move-result-wide v4

    iget-object v3, p0, Landroid/support/v7/c/a/a$b;->a:Landroid/support/v4/e/h;

    int-to-long v6, v2

    const-wide v8, 0x100000000L

    or-long/2addr v6, v8

    or-long/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v4, v5, v0}, Landroid/support/v4/e/h;->c(JLjava/lang/Object;)V

    :cond_1
    return v2
.end method

.method a([I)I
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v7/c/a/d$a;->b([I)I

    move-result v0

    if-ltz v0, :cond_0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Landroid/util/StateSet;->WILD_CARD:[I

    invoke-super {p0, v0}, Landroid/support/v7/c/a/d$a;->b([I)I

    move-result v0

    goto :goto_0
.end method

.method a([ILandroid/graphics/drawable/Drawable;I)I
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/support/v7/c/a/d$a;->a([ILandroid/graphics/drawable/Drawable;)I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/c/a/a$b;->b:Landroid/support/v4/e/o;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/e/o;->b(ILjava/lang/Object;)V

    return v0
.end method

.method a()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/c/a/a$b;->a:Landroid/support/v4/e/h;

    invoke-virtual {v0}, Landroid/support/v4/e/h;->a()Landroid/support/v4/e/h;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/c/a/a$b;->a:Landroid/support/v4/e/h;

    iget-object v0, p0, Landroid/support/v7/c/a/a$b;->b:Landroid/support/v4/e/o;

    invoke-virtual {v0}, Landroid/support/v4/e/o;->a()Landroid/support/v4/e/o;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/c/a/a$b;->b:Landroid/support/v4/e/o;

    return-void
.end method

.method b(II)Z
    .locals 6

    invoke-static {p1, p2}, Landroid/support/v7/c/a/a$b;->f(II)J

    move-result-wide v0

    iget-object v2, p0, Landroid/support/v7/c/a/a$b;->a:Landroid/support/v4/e/h;

    const-wide/16 v4, -0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v0, v1, v3}, Landroid/support/v4/e/h;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide v2, 0x100000000L

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method c(II)Z
    .locals 6

    invoke-static {p1, p2}, Landroid/support/v7/c/a/a$b;->f(II)J

    move-result-wide v0

    iget-object v2, p0, Landroid/support/v7/c/a/a$b;->a:Landroid/support/v4/e/h;

    const-wide/16 v4, -0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v0, v1, v3}, Landroid/support/v4/e/h;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide v2, 0x200000000L

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    new-instance v0, Landroid/support/v7/c/a/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/v7/c/a/a;-><init>(Landroid/support/v7/c/a/a$b;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1

    new-instance v0, Landroid/support/v7/c/a/a;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/c/a/a;-><init>(Landroid/support/v7/c/a/a$b;Landroid/content/res/Resources;)V

    return-object v0
.end method
