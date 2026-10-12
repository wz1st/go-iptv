.class public Landroid/support/v4/f/l;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/view/ViewParent;

.field private b:Landroid/view/ViewParent;

.field private final c:Landroid/view/View;

.field private d:Z

.field private e:[I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/f/l;->c:Landroid/view/View;

    return-void
.end method

.method private a(ILandroid/view/ViewParent;)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iput-object p2, p0, Landroid/support/v4/f/l;->a:Landroid/view/ViewParent;

    goto :goto_0

    :pswitch_1
    iput-object p2, p0, Landroid/support/v4/f/l;->b:Landroid/view/ViewParent;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private d(I)Landroid/view/ViewParent;
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    iget-object v0, p0, Landroid/support/v4/f/l;->a:Landroid/view/ViewParent;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Landroid/support/v4/f/l;->b:Landroid/view/ViewParent;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/f/l;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/f/l;->c:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/f/t;->q(Landroid/view/View;)V

    :cond_0
    iput-boolean p1, p0, Landroid/support/v4/f/l;->d:Z

    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/f/l;->d:Z

    return v0
.end method

.method public a(FF)Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/support/v4/f/l;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Landroid/support/v4/f/l;->d(I)Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/support/v4/f/l;->c:Landroid/view/View;

    invoke-static {v1, v0, p1, p2}, Landroid/support/v4/f/x;->a(Landroid/view/ViewParent;Landroid/view/View;FF)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public a(FFZ)Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/support/v4/f/l;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Landroid/support/v4/f/l;->d(I)Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/support/v4/f/l;->c:Landroid/view/View;

    invoke-static {v1, v0, p1, p2, p3}, Landroid/support/v4/f/x;->a(Landroid/view/ViewParent;Landroid/view/View;FFZ)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public a(I)Z
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v4/f/l;->d(I)Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(II)Z
    .locals 4

    const/4 v2, 0x1

    invoke-virtual {p0, p2}, Landroid/support/v4/f/l;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/f/l;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v4/f/l;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v0, p0, Landroid/support/v4/f/l;->c:Landroid/view/View;

    :goto_1
    if-eqz v1, :cond_3

    iget-object v3, p0, Landroid/support/v4/f/l;->c:Landroid/view/View;

    invoke-static {v1, v0, v3, p1, p2}, Landroid/support/v4/f/x;->a(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;II)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0, p2, v1}, Landroid/support/v4/f/l;->a(ILandroid/view/ViewParent;)V

    iget-object v3, p0, Landroid/support/v4/f/l;->c:Landroid/view/View;

    invoke-static {v1, v0, v3, p1, p2}, Landroid/support/v4/f/x;->b(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;II)V

    move v0, v2

    goto :goto_0

    :cond_1
    instance-of v3, v1, Landroid/view/View;

    if-eqz v3, :cond_2

    move-object v0, v1

    check-cast v0, Landroid/view/View;

    :cond_2
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(IIII[I)Z
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/support/v4/f/l;->a(IIII[II)Z

    move-result v0

    return v0
.end method

.method public a(IIII[II)Z
    .locals 9

    invoke-virtual {p0}, Landroid/support/v4/f/l;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0, p6}, Landroid/support/v4/f/l;->d(I)Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    if-nez p3, :cond_1

    if-eqz p4, :cond_3

    :cond_1
    const/4 v2, 0x0

    const/4 v1, 0x0

    if-eqz p5, :cond_5

    iget-object v1, p0, Landroid/support/v4/f/l;->c:Landroid/view/View;

    invoke-virtual {v1, p5}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v1, 0x0

    aget v2, p5, v1

    const/4 v1, 0x1

    aget v1, p5, v1

    move v7, v1

    move v8, v2

    :goto_1
    iget-object v1, p0, Landroid/support/v4/f/l;->c:Landroid/view/View;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p6

    invoke-static/range {v0 .. v6}, Landroid/support/v4/f/x;->a(Landroid/view/ViewParent;Landroid/view/View;IIIII)V

    if-eqz p5, :cond_2

    iget-object v0, p0, Landroid/support/v4/f/l;->c:Landroid/view/View;

    invoke-virtual {v0, p5}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v0, 0x0

    aget v1, p5, v0

    sub-int/2addr v1, v8

    aput v1, p5, v0

    const/4 v0, 0x1

    aget v1, p5, v0

    sub-int/2addr v1, v7

    aput v1, p5, v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    if-eqz p5, :cond_4

    const/4 v0, 0x0

    const/4 v1, 0x0

    aput v1, p5, v0

    const/4 v0, 0x1

    const/4 v1, 0x0

    aput v1, p5, v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    :cond_5
    move v7, v1

    move v8, v2

    goto :goto_1
.end method

.method public a(II[I[I)Z
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/f/l;->a(II[I[II)Z

    move-result v0

    return v0
.end method

.method public a(II[I[II)Z
    .locals 10

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/support/v4/f/l;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p5}, Landroid/support/v4/f/l;->d(I)Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v6

    :cond_1
    if-nez p1, :cond_2

    if-eqz p2, :cond_7

    :cond_2
    if-eqz p4, :cond_9

    iget-object v1, p0, Landroid/support/v4/f/l;->c:Landroid/view/View;

    invoke-virtual {v1, p4}, Landroid/view/View;->getLocationInWindow([I)V

    aget v2, p4, v6

    aget v1, p4, v7

    move v8, v1

    move v9, v2

    :goto_1
    if-nez p3, :cond_8

    iget-object v1, p0, Landroid/support/v4/f/l;->e:[I

    if-nez v1, :cond_3

    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/support/v4/f/l;->e:[I

    :cond_3
    iget-object v4, p0, Landroid/support/v4/f/l;->e:[I

    :goto_2
    aput v6, v4, v6

    aput v6, v4, v7

    iget-object v1, p0, Landroid/support/v4/f/l;->c:Landroid/view/View;

    move v2, p1

    move v3, p2

    move v5, p5

    invoke-static/range {v0 .. v5}, Landroid/support/v4/f/x;->a(Landroid/view/ViewParent;Landroid/view/View;II[II)V

    if-eqz p4, :cond_4

    iget-object v0, p0, Landroid/support/v4/f/l;->c:Landroid/view/View;

    invoke-virtual {v0, p4}, Landroid/view/View;->getLocationInWindow([I)V

    aget v0, p4, v6

    sub-int/2addr v0, v9

    aput v0, p4, v6

    aget v0, p4, v7

    sub-int/2addr v0, v8

    aput v0, p4, v7

    :cond_4
    aget v0, v4, v6

    if-nez v0, :cond_5

    aget v0, v4, v7

    if-eqz v0, :cond_6

    :cond_5
    move v0, v7

    :goto_3
    move v6, v0

    goto :goto_0

    :cond_6
    move v0, v6

    goto :goto_3

    :cond_7
    if-eqz p4, :cond_0

    aput v6, p4, v6

    aput v6, p4, v7

    goto :goto_0

    :cond_8
    move-object v4, p3

    goto :goto_2

    :cond_9
    move v8, v6

    move v9, v6

    goto :goto_1
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/f/l;->a(I)Z

    move-result v0

    return v0
.end method

.method public b(I)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/f/l;->a(II)Z

    move-result v0

    return v0
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/f/l;->c(I)V

    return-void
.end method

.method public c(I)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/support/v4/f/l;->d(I)Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/support/v4/f/l;->c:Landroid/view/View;

    invoke-static {v0, v1, p1}, Landroid/support/v4/f/x;->a(Landroid/view/ViewParent;Landroid/view/View;I)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v4/f/l;->a(ILandroid/view/ViewParent;)V

    :cond_0
    return-void
.end method
