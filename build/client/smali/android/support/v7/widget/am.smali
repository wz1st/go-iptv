.class Landroid/support/v7/widget/am;
.super Ljava/lang/Object;


# direct methods
.method static a(Landroid/support/v7/widget/RecyclerView$u;Landroid/support/v7/widget/ai;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/RecyclerView$i;Z)I
    .locals 2

    invoke-virtual {p4}, Landroid/support/v7/widget/RecyclerView$i;->N()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$u;->f()I

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    if-nez p5, :cond_2

    invoke-virtual {p4, p2}, Landroid/support/v7/widget/RecyclerView$i;->q(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p4, p3}, Landroid/support/v7/widget/RecyclerView$i;->q(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1, p3}, Landroid/support/v7/widget/ai;->b(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/ai;->a(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/support/v7/widget/ai;->f()I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method static a(Landroid/support/v7/widget/RecyclerView$u;Landroid/support/v7/widget/ai;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/RecyclerView$i;ZZ)I
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p4}, Landroid/support/v7/widget/RecyclerView$i;->N()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$u;->f()I

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p4, p2}, Landroid/support/v7/widget/RecyclerView$i;->q(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p4, p3}, Landroid/support/v7/widget/RecyclerView$i;->q(Landroid/view/View;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p4, p2}, Landroid/support/v7/widget/RecyclerView$i;->q(Landroid/view/View;)I

    move-result v2

    invoke-virtual {p4, p3}, Landroid/support/v7/widget/RecyclerView$i;->q(Landroid/view/View;)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-eqz p6, :cond_2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$u;->f()I

    move-result v1

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_1
    if-eqz p5, :cond_0

    invoke-virtual {p1, p3}, Landroid/support/v7/widget/ai;->b(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/ai;->a(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-virtual {p4, p2}, Landroid/support/v7/widget/RecyclerView$i;->q(Landroid/view/View;)I

    move-result v2

    invoke-virtual {p4, p3}, Landroid/support/v7/widget/RecyclerView$i;->q(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    int-to-float v1, v1

    int-to-float v2, v2

    div-float/2addr v1, v2

    int-to-float v0, v0

    mul-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/support/v7/widget/ai;->c()I

    move-result v1

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/ai;->a(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0

    :cond_2
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_1
.end method

.method static b(Landroid/support/v7/widget/RecyclerView$u;Landroid/support/v7/widget/ai;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/RecyclerView$i;Z)I
    .locals 3

    invoke-virtual {p4}, Landroid/support/v7/widget/RecyclerView$i;->N()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$u;->f()I

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    if-nez p5, :cond_2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$u;->f()I

    move-result v0

    goto :goto_0

    :cond_2
    invoke-virtual {p1, p3}, Landroid/support/v7/widget/ai;->b(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/ai;->a(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p4, p2}, Landroid/support/v7/widget/RecyclerView$i;->q(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p4, p3}, Landroid/support/v7/widget/RecyclerView$i;->q(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$u;->f()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0
.end method
