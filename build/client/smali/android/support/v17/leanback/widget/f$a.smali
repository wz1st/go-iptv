.class abstract Landroid/support/v17/leanback/widget/f$a;
.super Landroid/support/v7/widget/ad;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "a"
.end annotation


# instance fields
.field b:Z

.field final synthetic c:Landroid/support/v17/leanback/widget/f;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/f;)V
    .locals 1

    iput-object p1, p0, Landroid/support/v17/leanback/widget/f$a;->c:Landroid/support/v17/leanback/widget/f;

    iget-object v0, p1, Landroid/support/v17/leanback/widget/f;->b:Landroid/support/v17/leanback/widget/a;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/ad;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/support/v7/widget/ad;->a()V

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/f$a;->b:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/f$a;->b()V

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/f$a;->c:Landroid/support/v17/leanback/widget/f;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/f;->n:Landroid/support/v17/leanback/widget/f$a;

    if-ne v0, p0, :cond_1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f$a;->c:Landroid/support/v17/leanback/widget/f;

    iput-object v1, v0, Landroid/support/v17/leanback/widget/f;->n:Landroid/support/v17/leanback/widget/f$a;

    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/widget/f$a;->c:Landroid/support/v17/leanback/widget/f;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/f;->o:Landroid/support/v17/leanback/widget/f$d;

    if-ne v0, p0, :cond_2

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f$a;->c:Landroid/support/v17/leanback/widget/f;

    iput-object v1, v0, Landroid/support/v17/leanback/widget/f;->o:Landroid/support/v17/leanback/widget/f$d;

    :cond_2
    return-void
.end method

.method protected a(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$u;Landroid/support/v7/widget/RecyclerView$t$a;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f$a;->c:Landroid/support/v17/leanback/widget/f;

    const/4 v1, 0x0

    sget-object v2, Landroid/support/v17/leanback/widget/f;->u:[I

    invoke-virtual {v0, p1, v1, v2}, Landroid/support/v17/leanback/widget/f;->a(Landroid/view/View;Landroid/view/View;[I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f$a;->c:Landroid/support/v17/leanback/widget/f;

    iget v0, v0, Landroid/support/v17/leanback/widget/f;->c:I

    if-nez v0, :cond_1

    sget-object v0, Landroid/support/v17/leanback/widget/f;->u:[I

    aget v1, v0, v3

    sget-object v0, Landroid/support/v17/leanback/widget/f;->u:[I

    aget v0, v0, v4

    :goto_0
    mul-int v2, v1, v1

    mul-int v3, v0, v0

    add-int/2addr v2, v3

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/f$a;->c(I)I

    move-result v2

    iget-object v3, p0, Landroid/support/v17/leanback/widget/f$a;->e:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p3, v1, v0, v2, v3}, Landroid/support/v7/widget/RecyclerView$t$a;->a(IIILandroid/view/animation/Interpolator;)V

    :cond_0
    return-void

    :cond_1
    sget-object v0, Landroid/support/v17/leanback/widget/f;->u:[I

    aget v1, v0, v4

    sget-object v0, Landroid/support/v17/leanback/widget/f;->u:[I

    aget v0, v0, v3

    goto :goto_0
.end method

.method protected b(I)I
    .locals 3

    invoke-super {p0, p1}, Landroid/support/v7/widget/ad;->b(I)I

    move-result v0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/f$a;->c:Landroid/support/v17/leanback/widget/f;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/f;->t:Landroid/support/v17/leanback/widget/aa;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/aa;->a()Landroid/support/v17/leanback/widget/aa$a;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/aa$a;->m()I

    move-result v1

    if-lez v1, :cond_0

    const/high16 v1, 0x41f00000    # 30.0f

    iget-object v2, p0, Landroid/support/v17/leanback/widget/f$a;->c:Landroid/support/v17/leanback/widget/f;

    iget-object v2, v2, Landroid/support/v17/leanback/widget/f;->t:Landroid/support/v17/leanback/widget/aa;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/aa;->a()Landroid/support/v17/leanback/widget/aa$a;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/aa$a;->m()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    int-to-float v2, p1

    mul-float/2addr v1, v2

    int-to-float v2, v0

    cmpg-float v2, v2, v1

    if-gez v2, :cond_0

    float-to-int v0, v1

    :cond_0
    return v0
.end method

.method protected b()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/f$a;->n()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/f$a;->e(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/f$a;->n()I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f$a;->c:Landroid/support/v17/leanback/widget/f;

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/f$a;->n()I

    move-result v1

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/support/v17/leanback/widget/f;->b(IIZI)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Landroid/support/v17/leanback/widget/f$a;->c:Landroid/support/v17/leanback/widget/f;

    iget v1, v1, Landroid/support/v17/leanback/widget/f;->l:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/f$a;->n()I

    move-result v2

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Landroid/support/v17/leanback/widget/f$a;->c:Landroid/support/v17/leanback/widget/f;

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/f$a;->n()I

    move-result v2

    iput v2, v1, Landroid/support/v17/leanback/widget/f;->l:I

    :cond_2
    iget-object v1, p0, Landroid/support/v17/leanback/widget/f$a;->c:Landroid/support/v17/leanback/widget/f;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/f;->W()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/support/v17/leanback/widget/f$a;->c:Landroid/support/v17/leanback/widget/f;

    iget v2, v1, Landroid/support/v17/leanback/widget/f;->j:I

    or-int/lit8 v2, v2, 0x20

    iput v2, v1, Landroid/support/v17/leanback/widget/f;->j:I

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f$a;->c:Landroid/support/v17/leanback/widget/f;

    iget v1, v0, Landroid/support/v17/leanback/widget/f;->j:I

    and-int/lit8 v1, v1, -0x21

    iput v1, v0, Landroid/support/v17/leanback/widget/f;->j:I

    :cond_3
    iget-object v0, p0, Landroid/support/v17/leanback/widget/f$a;->c:Landroid/support/v17/leanback/widget/f;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/f;->m()V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f$a;->c:Landroid/support/v17/leanback/widget/f;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/f;->n()V

    goto :goto_0
.end method
