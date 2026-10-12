.class final Landroid/support/v17/leanback/widget/f$d;
.super Landroid/support/v17/leanback/widget/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v17/leanback/widget/f;

.field private final i:Z

.field private j:I


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/f;IZ)V
    .locals 1

    iput-object p1, p0, Landroid/support/v17/leanback/widget/f$d;->a:Landroid/support/v17/leanback/widget/f;

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/f$a;-><init>(Landroid/support/v17/leanback/widget/f;)V

    iput p2, p0, Landroid/support/v17/leanback/widget/f$d;->j:I

    iput-boolean p3, p0, Landroid/support/v17/leanback/widget/f$d;->i:Z

    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/f$d;->d(I)V

    return-void
.end method


# virtual methods
.method public a(I)Landroid/graphics/PointF;
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Landroid/support/v17/leanback/widget/f$d;->j:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/f$d;->a:Landroid/support/v17/leanback/widget/f;

    iget v0, v0, Landroid/support/v17/leanback/widget/f;->j:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/support/v17/leanback/widget/f$d;->j:I

    if-lez v0, :cond_3

    :cond_1
    const/4 v0, -0x1

    :goto_1
    iget-object v1, p0, Landroid/support/v17/leanback/widget/f$d;->a:Landroid/support/v17/leanback/widget/f;

    iget v1, v1, Landroid/support/v17/leanback/widget/f;->c:I

    if-nez v1, :cond_4

    new-instance v1, Landroid/graphics/PointF;

    int-to-float v0, v0

    invoke-direct {v1, v0, v2}, Landroid/graphics/PointF;-><init>(FF)V

    move-object v0, v1

    goto :goto_0

    :cond_2
    iget v0, p0, Landroid/support/v17/leanback/widget/f$d;->j:I

    if-ltz v0, :cond_1

    :cond_3
    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    new-instance v1, Landroid/graphics/PointF;

    int-to-float v0, v0

    invoke-direct {v1, v2, v0}, Landroid/graphics/PointF;-><init>(FF)V

    move-object v0, v1

    goto :goto_0
.end method

.method protected a(Landroid/support/v7/widget/RecyclerView$t$a;)V
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/f$d;->j:I

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v17/leanback/widget/f$a;->a(Landroid/support/v7/widget/RecyclerView$t$a;)V

    goto :goto_0
.end method

.method protected b()V
    .locals 3

    invoke-super {p0}, Landroid/support/v17/leanback/widget/f$a;->b()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v17/leanback/widget/f$d;->j:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/f$d;->n()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/f$d;->e(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/f$d;->a:Landroid/support/v17/leanback/widget/f;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/support/v17/leanback/widget/f;->a(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method c()V
    .locals 2

    iget v0, p0, Landroid/support/v17/leanback/widget/f$d;->j:I

    iget-object v1, p0, Landroid/support/v17/leanback/widget/f$d;->a:Landroid/support/v17/leanback/widget/f;

    iget v1, v1, Landroid/support/v17/leanback/widget/f;->a:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Landroid/support/v17/leanback/widget/f$d;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v17/leanback/widget/f$d;->j:I

    :cond_0
    return-void
.end method

.method d()V
    .locals 2

    iget v0, p0, Landroid/support/v17/leanback/widget/f$d;->j:I

    iget-object v1, p0, Landroid/support/v17/leanback/widget/f$d;->a:Landroid/support/v17/leanback/widget/f;

    iget v1, v1, Landroid/support/v17/leanback/widget/f;->a:I

    neg-int v1, v1

    if-le v0, v1, :cond_0

    iget v0, p0, Landroid/support/v17/leanback/widget/f$d;->j:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/v17/leanback/widget/f$d;->j:I

    :cond_0
    return-void
.end method

.method e()V
    .locals 4

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/f$d;->i:Z

    if-nez v0, :cond_0

    iget v0, p0, Landroid/support/v17/leanback/widget/f$d;->j:I

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    iget v0, p0, Landroid/support/v17/leanback/widget/f$d;->j:I

    if-lez v0, :cond_3

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f$d;->a:Landroid/support/v17/leanback/widget/f;

    iget v0, v0, Landroid/support/v17/leanback/widget/f;->l:I

    iget-object v2, p0, Landroid/support/v17/leanback/widget/f$d;->a:Landroid/support/v17/leanback/widget/f;

    iget v2, v2, Landroid/support/v17/leanback/widget/f;->r:I

    add-int/2addr v0, v2

    :goto_1
    move v2, v0

    :goto_2
    iget v0, p0, Landroid/support/v17/leanback/widget/f$d;->j:I

    if-eqz v0, :cond_2

    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/f$d;->e(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_4

    :cond_2
    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f$d;->a:Landroid/support/v17/leanback/widget/f;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/f;->W()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f$d;->a:Landroid/support/v17/leanback/widget/f;

    iget v2, v0, Landroid/support/v17/leanback/widget/f;->j:I

    or-int/lit8 v2, v2, 0x20

    iput v2, v0, Landroid/support/v17/leanback/widget/f;->j:I

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f$d;->a:Landroid/support/v17/leanback/widget/f;

    iget v1, v0, Landroid/support/v17/leanback/widget/f;->j:I

    and-int/lit8 v1, v1, -0x21

    iput v1, v0, Landroid/support/v17/leanback/widget/f;->j:I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroid/support/v17/leanback/widget/f$d;->a:Landroid/support/v17/leanback/widget/f;

    iget v0, v0, Landroid/support/v17/leanback/widget/f;->l:I

    iget-object v2, p0, Landroid/support/v17/leanback/widget/f$d;->a:Landroid/support/v17/leanback/widget/f;

    iget v2, v2, Landroid/support/v17/leanback/widget/f;->r:I

    sub-int/2addr v0, v2

    goto :goto_1

    :cond_4
    iget-object v3, p0, Landroid/support/v17/leanback/widget/f$d;->a:Landroid/support/v17/leanback/widget/f;

    invoke-virtual {v3, v0}, Landroid/support/v17/leanback/widget/f;->m(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_5

    move-object v0, v1

    :goto_3
    iget v1, p0, Landroid/support/v17/leanback/widget/f$d;->j:I

    if-lez v1, :cond_7

    iget-object v1, p0, Landroid/support/v17/leanback/widget/f$d;->a:Landroid/support/v17/leanback/widget/f;

    iget v1, v1, Landroid/support/v17/leanback/widget/f;->r:I

    add-int/2addr v1, v2

    move v2, v1

    :goto_4
    move-object v1, v0

    goto :goto_2

    :cond_5
    iget-object v1, p0, Landroid/support/v17/leanback/widget/f$d;->a:Landroid/support/v17/leanback/widget/f;

    iput v2, v1, Landroid/support/v17/leanback/widget/f;->l:I

    iget-object v1, p0, Landroid/support/v17/leanback/widget/f$d;->a:Landroid/support/v17/leanback/widget/f;

    const/4 v3, 0x0

    iput v3, v1, Landroid/support/v17/leanback/widget/f;->m:I

    iget v1, p0, Landroid/support/v17/leanback/widget/f$d;->j:I

    if-lez v1, :cond_6

    iget v1, p0, Landroid/support/v17/leanback/widget/f$d;->j:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/support/v17/leanback/widget/f$d;->j:I

    goto :goto_3

    :cond_6
    iget v1, p0, Landroid/support/v17/leanback/widget/f$d;->j:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/support/v17/leanback/widget/f$d;->j:I

    goto :goto_3

    :cond_7
    iget-object v1, p0, Landroid/support/v17/leanback/widget/f$d;->a:Landroid/support/v17/leanback/widget/f;

    iget v1, v1, Landroid/support/v17/leanback/widget/f;->r:I

    sub-int v1, v2, v1

    move v2, v1

    goto :goto_4
.end method

.method f()V
    .locals 3

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/f$d;->i:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v17/leanback/widget/f$d;->j:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f$d;->a:Landroid/support/v17/leanback/widget/f;

    const/4 v1, 0x1

    iget v2, p0, Landroid/support/v17/leanback/widget/f$d;->j:I

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/widget/f;->a(ZI)I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/widget/f$d;->j:I

    :cond_0
    iget v0, p0, Landroid/support/v17/leanback/widget/f$d;->j:I

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/support/v17/leanback/widget/f$d;->j:I

    if-lez v0, :cond_1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f$d;->a:Landroid/support/v17/leanback/widget/f;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/f;->D()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget v0, p0, Landroid/support/v17/leanback/widget/f$d;->j:I

    if-gez v0, :cond_3

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f$d;->a:Landroid/support/v17/leanback/widget/f;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/f;->E()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Landroid/support/v17/leanback/widget/f$d;->a:Landroid/support/v17/leanback/widget/f;

    iget v0, v0, Landroid/support/v17/leanback/widget/f;->l:I

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/f$d;->d(I)V

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/f$d;->k()V

    :cond_3
    return-void
.end method
