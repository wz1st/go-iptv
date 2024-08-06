.class final Landroid/support/v7/widget/ai$1;
.super Landroid/support/v7/widget/ai;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/ai;->a(Landroid/support/v7/widget/RecyclerView$i;)Landroid/support/v7/widget/ai;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/support/v7/widget/RecyclerView$i;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/ai;-><init>(Landroid/support/v7/widget/RecyclerView$i;Landroid/support/v7/widget/ai$1;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$j;

    iget-object v1, p0, Landroid/support/v7/widget/ai$1;->a:Landroid/support/v7/widget/RecyclerView$i;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/RecyclerView$i;->c(Landroid/view/View;)I

    move-result v1

    iget v0, v0, Landroid/support/v7/widget/RecyclerView$j;->leftMargin:I

    sub-int v0, v1, v0

    return v0
.end method

.method public a(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/ai$1;->a:Landroid/support/v7/widget/RecyclerView$i;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$i;->y(I)V

    return-void
.end method

.method public b(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$j;

    iget-object v1, p0, Landroid/support/v7/widget/ai$1;->a:Landroid/support/v7/widget/RecyclerView$i;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/RecyclerView$i;->e(Landroid/view/View;)I

    move-result v1

    iget v0, v0, Landroid/support/v7/widget/RecyclerView$j;->rightMargin:I

    add-int/2addr v0, v1

    return v0
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/ai$1;->a:Landroid/support/v7/widget/RecyclerView$i;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$i;->S()I

    move-result v0

    return v0
.end method

.method public c(Landroid/view/View;)I
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/ai$1;->a:Landroid/support/v7/widget/RecyclerView$i;

    const/4 v1, 0x1

    iget-object v2, p0, Landroid/support/v7/widget/ai$1;->b:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1, v2}, Landroid/support/v7/widget/RecyclerView$i;->a(Landroid/view/View;ZLandroid/graphics/Rect;)V

    iget-object v0, p0, Landroid/support/v7/widget/ai$1;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public d()I
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/ai$1;->a:Landroid/support/v7/widget/RecyclerView$i;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$i;->Q()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/ai$1;->a:Landroid/support/v7/widget/RecyclerView$i;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$i;->U()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public d(Landroid/view/View;)I
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/ai$1;->a:Landroid/support/v7/widget/RecyclerView$i;

    const/4 v1, 0x1

    iget-object v2, p0, Landroid/support/v7/widget/ai$1;->b:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1, v2}, Landroid/support/v7/widget/RecyclerView$i;->a(Landroid/view/View;ZLandroid/graphics/Rect;)V

    iget-object v0, p0, Landroid/support/v7/widget/ai$1;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public e()I
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/ai$1;->a:Landroid/support/v7/widget/RecyclerView$i;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$i;->Q()I

    move-result v0

    return v0
.end method

.method public e(Landroid/view/View;)I
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$j;

    iget-object v1, p0, Landroid/support/v7/widget/ai$1;->a:Landroid/support/v7/widget/RecyclerView$i;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/RecyclerView$i;->s(Landroid/view/View;)I

    move-result v1

    iget v2, v0, Landroid/support/v7/widget/RecyclerView$j;->leftMargin:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/support/v7/widget/RecyclerView$j;->rightMargin:I

    add-int/2addr v0, v1

    return v0
.end method

.method public f()I
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/ai$1;->a:Landroid/support/v7/widget/RecyclerView$i;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$i;->Q()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/ai$1;->a:Landroid/support/v7/widget/RecyclerView$i;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$i;->S()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroid/support/v7/widget/ai$1;->a:Landroid/support/v7/widget/RecyclerView$i;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$i;->U()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public f(Landroid/view/View;)I
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$j;

    iget-object v1, p0, Landroid/support/v7/widget/ai$1;->a:Landroid/support/v7/widget/RecyclerView$i;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/RecyclerView$i;->t(Landroid/view/View;)I

    move-result v1

    iget v2, v0, Landroid/support/v7/widget/RecyclerView$j;->topMargin:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/support/v7/widget/RecyclerView$j;->bottomMargin:I

    add-int/2addr v0, v1

    return v0
.end method

.method public g()I
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/ai$1;->a:Landroid/support/v7/widget/RecyclerView$i;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$i;->U()I

    move-result v0

    return v0
.end method

.method public h()I
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/ai$1;->a:Landroid/support/v7/widget/RecyclerView$i;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$i;->O()I

    move-result v0

    return v0
.end method

.method public i()I
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/ai$1;->a:Landroid/support/v7/widget/RecyclerView$i;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$i;->P()I

    move-result v0

    return v0
.end method
