.class Landroid/support/v17/leanback/widget/f$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v17/leanback/widget/e$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v17/leanback/widget/f;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/f;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/widget/f$2;->a:Landroid/support/v17/leanback/widget/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f$2;->a:Landroid/support/v17/leanback/widget/f;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/f;->d:Landroid/support/v7/widget/RecyclerView$u;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$u;->f()I

    move-result v0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/f$2;->a:Landroid/support/v17/leanback/widget/f;

    iget v1, v1, Landroid/support/v17/leanback/widget/f;->e:I

    add-int/2addr v0, v1

    return v0
.end method

.method public a(IZ[Ljava/lang/Object;Z)I
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f$2;->a:Landroid/support/v17/leanback/widget/f;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/f$2;->a:Landroid/support/v17/leanback/widget/f;

    iget v1, v1, Landroid/support/v17/leanback/widget/f;->e:I

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/f;->n(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/f$b;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/f$2;->a:Landroid/support/v17/leanback/widget/f;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/f;->b:Landroid/support/v17/leanback/widget/a;

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/a;->b(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$x;

    move-result-object v1

    iget-object v3, p0, Landroid/support/v17/leanback/widget/f$2;->a:Landroid/support/v17/leanback/widget/f;

    const-class v4, Landroid/support/v17/leanback/widget/j;

    invoke-virtual {v3, v1, v4}, Landroid/support/v17/leanback/widget/f;->a(Landroid/support/v7/widget/RecyclerView$x;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/j;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/f$b;->a(Landroid/support/v17/leanback/widget/j;)V

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/f$b;->j()Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p4, :cond_5

    if-eqz p2, :cond_4

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f$2;->a:Landroid/support/v17/leanback/widget/f;

    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/f;->n(Landroid/view/View;)V

    :goto_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/f$2;->a:Landroid/support/v17/leanback/widget/f;

    iget v0, v0, Landroid/support/v17/leanback/widget/f;->p:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f$2;->a:Landroid/support/v17/leanback/widget/f;

    iget v0, v0, Landroid/support/v17/leanback/widget/f;->p:I

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/f$2;->a:Landroid/support/v17/leanback/widget/f;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/f;->o:Landroid/support/v17/leanback/widget/f$d;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f$2;->a:Landroid/support/v17/leanback/widget/f;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/f;->o:Landroid/support/v17/leanback/widget/f$d;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/f$d;->e()V

    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/widget/f$2;->a:Landroid/support/v17/leanback/widget/f;

    invoke-virtual {v2}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/support/v17/leanback/widget/f;->a(Landroid/view/View;Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/f$2;->a:Landroid/support/v17/leanback/widget/f;

    iget v1, v1, Landroid/support/v17/leanback/widget/f;->j:I

    and-int/lit8 v1, v1, 0x3

    const/4 v3, 0x1

    if-eq v1, v3, :cond_7

    iget-object v1, p0, Landroid/support/v17/leanback/widget/f$2;->a:Landroid/support/v17/leanback/widget/f;

    iget v1, v1, Landroid/support/v17/leanback/widget/f;->l:I

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Landroid/support/v17/leanback/widget/f$2;->a:Landroid/support/v17/leanback/widget/f;

    iget v1, v1, Landroid/support/v17/leanback/widget/f;->m:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f$2;->a:Landroid/support/v17/leanback/widget/f;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/f;->o:Landroid/support/v17/leanback/widget/f$d;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f$2;->a:Landroid/support/v17/leanback/widget/f;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/f;->m()V

    :cond_2
    :goto_1
    iget-object v0, p0, Landroid/support/v17/leanback/widget/f$2;->a:Landroid/support/v17/leanback/widget/f;

    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/f;->l(Landroid/view/View;)V

    :cond_3
    aput-object v2, p3, v5

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f$2;->a:Landroid/support/v17/leanback/widget/f;

    iget v0, v0, Landroid/support/v17/leanback/widget/f;->c:I

    if-nez v0, :cond_9

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f$2;->a:Landroid/support/v17/leanback/widget/f;

    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/f;->j(Landroid/view/View;)I

    move-result v0

    :goto_2
    return v0

    :cond_4
    iget-object v0, p0, Landroid/support/v17/leanback/widget/f$2;->a:Landroid/support/v17/leanback/widget/f;

    invoke-virtual {v0, v2, v5}, Landroid/support/v17/leanback/widget/f;->b(Landroid/view/View;I)V

    goto :goto_0

    :cond_5
    if-eqz p2, :cond_6

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f$2;->a:Landroid/support/v17/leanback/widget/f;

    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/f;->o(Landroid/view/View;)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Landroid/support/v17/leanback/widget/f$2;->a:Landroid/support/v17/leanback/widget/f;

    invoke-virtual {v0, v2, v5}, Landroid/support/v17/leanback/widget/f;->c(Landroid/view/View;I)V

    goto :goto_0

    :cond_7
    iget-object v1, p0, Landroid/support/v17/leanback/widget/f$2;->a:Landroid/support/v17/leanback/widget/f;

    iget v1, v1, Landroid/support/v17/leanback/widget/f;->j:I

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/support/v17/leanback/widget/f$2;->a:Landroid/support/v17/leanback/widget/f;

    iget v1, v1, Landroid/support/v17/leanback/widget/f;->j:I

    and-int/lit8 v1, v1, 0x10

    if-nez v1, :cond_8

    iget-object v1, p0, Landroid/support/v17/leanback/widget/f$2;->a:Landroid/support/v17/leanback/widget/f;

    iget v1, v1, Landroid/support/v17/leanback/widget/f;->l:I

    if-ne p1, v1, :cond_8

    iget-object v1, p0, Landroid/support/v17/leanback/widget/f$2;->a:Landroid/support/v17/leanback/widget/f;

    iget v1, v1, Landroid/support/v17/leanback/widget/f;->m:I

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f$2;->a:Landroid/support/v17/leanback/widget/f;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/f;->m()V

    goto :goto_1

    :cond_8
    iget-object v1, p0, Landroid/support/v17/leanback/widget/f$2;->a:Landroid/support/v17/leanback/widget/f;

    iget v1, v1, Landroid/support/v17/leanback/widget/f;->j:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v17/leanback/widget/f$2;->a:Landroid/support/v17/leanback/widget/f;

    iget v1, v1, Landroid/support/v17/leanback/widget/f;->l:I

    if-lt p1, v1, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->hasFocusable()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v17/leanback/widget/f$2;->a:Landroid/support/v17/leanback/widget/f;

    iput p1, v1, Landroid/support/v17/leanback/widget/f;->l:I

    iget-object v1, p0, Landroid/support/v17/leanback/widget/f$2;->a:Landroid/support/v17/leanback/widget/f;

    iput v0, v1, Landroid/support/v17/leanback/widget/f;->m:I

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f$2;->a:Landroid/support/v17/leanback/widget/f;

    iget v1, v0, Landroid/support/v17/leanback/widget/f;->j:I

    and-int/lit8 v1, v1, -0x11

    iput v1, v0, Landroid/support/v17/leanback/widget/f;->j:I

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f$2;->a:Landroid/support/v17/leanback/widget/f;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/f;->m()V

    goto :goto_1

    :cond_9
    iget-object v0, p0, Landroid/support/v17/leanback/widget/f$2;->a:Landroid/support/v17/leanback/widget/f;

    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/f;->k(Landroid/view/View;)I

    move-result v0

    goto :goto_2
.end method

.method public a(I)V
    .locals 3

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f$2;->a:Landroid/support/v17/leanback/widget/f;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/f$2;->a:Landroid/support/v17/leanback/widget/f;

    iget v1, v1, Landroid/support/v17/leanback/widget/f;->e:I

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/f;->c(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/f$2;->a:Landroid/support/v17/leanback/widget/f;

    iget v1, v1, Landroid/support/v17/leanback/widget/f;->j:I

    and-int/lit8 v1, v1, 0x3

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/f$2;->a:Landroid/support/v17/leanback/widget/f;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/f$2;->a:Landroid/support/v17/leanback/widget/f;

    iget-object v2, v2, Landroid/support/v17/leanback/widget/f;->i:Landroid/support/v7/widget/RecyclerView$p;

    invoke-virtual {v1, v0, v2}, Landroid/support/v17/leanback/widget/f;->a(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$p;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Landroid/support/v17/leanback/widget/f$2;->a:Landroid/support/v17/leanback/widget/f;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/f$2;->a:Landroid/support/v17/leanback/widget/f;

    iget-object v2, v2, Landroid/support/v17/leanback/widget/f;->i:Landroid/support/v7/widget/RecyclerView$p;

    invoke-virtual {v1, v0, v2}, Landroid/support/v17/leanback/widget/f;->b(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$p;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/Object;IIII)V
    .locals 7

    const/4 v6, 0x1

    move-object v2, p1

    check-cast v2, Landroid/view/View;

    const/high16 v0, -0x80000000

    if-eq p5, v0, :cond_0

    const v0, 0x7fffffff

    if-ne p5, v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/f$2;->a:Landroid/support/v17/leanback/widget/f;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/f;->s:Landroid/support/v17/leanback/widget/e;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/e;->a()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f$2;->a:Landroid/support/v17/leanback/widget/f;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/f;->t:Landroid/support/v17/leanback/widget/aa;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/aa;->a()Landroid/support/v17/leanback/widget/aa$a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/aa$a;->n()I

    move-result v0

    :goto_0
    move p5, v0

    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/widget/f$2;->a:Landroid/support/v17/leanback/widget/f;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/f;->s:Landroid/support/v17/leanback/widget/e;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/e;->a()Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v6

    :goto_1
    if-eqz v0, :cond_7

    add-int v4, p5, p3

    move v3, p5

    :goto_2
    iget-object v0, p0, Landroid/support/v17/leanback/widget/f$2;->a:Landroid/support/v17/leanback/widget/f;

    invoke-virtual {v0, p4}, Landroid/support/v17/leanback/widget/f;->o(I)I

    move-result v0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/f$2;->a:Landroid/support/v17/leanback/widget/f;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/f;->t:Landroid/support/v17/leanback/widget/aa;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/aa;->b()Landroid/support/v17/leanback/widget/aa$a;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/aa$a;->n()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/support/v17/leanback/widget/f$2;->a:Landroid/support/v17/leanback/widget/f;

    iget v1, v1, Landroid/support/v17/leanback/widget/f;->q:I

    sub-int v5, v0, v1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f$2;->a:Landroid/support/v17/leanback/widget/f;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/f;->v:Landroid/support/v17/leanback/widget/z;

    invoke-virtual {v0, v2, p2}, Landroid/support/v17/leanback/widget/z;->a(Landroid/view/View;I)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f$2;->a:Landroid/support/v17/leanback/widget/f;

    move v1, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/v17/leanback/widget/f;->a(ILandroid/view/View;III)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f$2;->a:Landroid/support/v17/leanback/widget/f;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/f;->d:Landroid/support/v7/widget/RecyclerView$u;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$u;->a()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f$2;->a:Landroid/support/v17/leanback/widget/f;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/f;->y()V

    :cond_2
    iget-object v0, p0, Landroid/support/v17/leanback/widget/f$2;->a:Landroid/support/v17/leanback/widget/f;

    iget v0, v0, Landroid/support/v17/leanback/widget/f;->j:I

    and-int/lit8 v0, v0, 0x3

    if-eq v0, v6, :cond_3

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f$2;->a:Landroid/support/v17/leanback/widget/f;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/f;->o:Landroid/support/v17/leanback/widget/f$d;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f$2;->a:Landroid/support/v17/leanback/widget/f;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/f;->o:Landroid/support/v17/leanback/widget/f$d;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/f$d;->f()V

    :cond_3
    iget-object v0, p0, Landroid/support/v17/leanback/widget/f$2;->a:Landroid/support/v17/leanback/widget/f;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/f;->k:Landroid/support/v17/leanback/widget/m;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f$2;->a:Landroid/support/v17/leanback/widget/f;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/f;->b:Landroid/support/v17/leanback/widget/a;

    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/a;->b(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$x;

    move-result-object v3

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f$2;->a:Landroid/support/v17/leanback/widget/f;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/f;->k:Landroid/support/v17/leanback/widget/m;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/f$2;->a:Landroid/support/v17/leanback/widget/f;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/f;->b:Landroid/support/v17/leanback/widget/a;

    if-nez v3, :cond_8

    const-wide/16 v4, -0x1

    :goto_3
    move v3, p2

    invoke-interface/range {v0 .. v5}, Landroid/support/v17/leanback/widget/m;->a(Landroid/view/ViewGroup;Landroid/view/View;IJ)V

    :cond_4
    return-void

    :cond_5
    iget-object v0, p0, Landroid/support/v17/leanback/widget/f$2;->a:Landroid/support/v17/leanback/widget/f;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/f;->t:Landroid/support/v17/leanback/widget/aa;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/aa;->a()Landroid/support/v17/leanback/widget/aa$a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/aa$a;->m()I

    move-result v0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/f$2;->a:Landroid/support/v17/leanback/widget/f;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/f;->t:Landroid/support/v17/leanback/widget/aa;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/aa;->a()Landroid/support/v17/leanback/widget/aa$a;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/aa$a;->o()I

    move-result v1

    sub-int/2addr v0, v1

    goto/16 :goto_0

    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_7
    sub-int v3, p5, p3

    move v4, p5

    goto/16 :goto_2

    :cond_8
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$x;->g()J

    move-result-wide v4

    goto :goto_3
.end method

.method public b()I
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f$2;->a:Landroid/support/v17/leanback/widget/f;

    iget v0, v0, Landroid/support/v17/leanback/widget/f;->e:I

    return v0
.end method

.method public b(I)I
    .locals 3

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f$2;->a:Landroid/support/v17/leanback/widget/f;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/f$2;->a:Landroid/support/v17/leanback/widget/f;

    iget v1, v1, Landroid/support/v17/leanback/widget/f;->e:I

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/f;->c(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/f$2;->a:Landroid/support/v17/leanback/widget/f;

    iget v1, v1, Landroid/support/v17/leanback/widget/f;->j:I

    const/high16 v2, 0x40000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/f$2;->a:Landroid/support/v17/leanback/widget/f;

    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/widget/f;->h(Landroid/view/View;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Landroid/support/v17/leanback/widget/f$2;->a:Landroid/support/v17/leanback/widget/f;

    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/widget/f;->g(Landroid/view/View;)I

    move-result v0

    goto :goto_0
.end method

.method public c(I)I
    .locals 3

    iget-object v0, p0, Landroid/support/v17/leanback/widget/f$2;->a:Landroid/support/v17/leanback/widget/f;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/f$2;->a:Landroid/support/v17/leanback/widget/f;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/f$2;->a:Landroid/support/v17/leanback/widget/f;

    iget v2, v2, Landroid/support/v17/leanback/widget/f;->e:I

    sub-int v2, p1, v2

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/f;->c(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/f;->i(Landroid/view/View;)I

    move-result v0

    return v0
.end method
