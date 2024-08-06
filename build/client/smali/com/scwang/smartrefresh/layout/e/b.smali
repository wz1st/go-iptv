.class public abstract Lcom/scwang/smartrefresh/layout/e/b;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Lcom/scwang/smartrefresh/layout/a/g;


# instance fields
.field protected w:Landroid/view/View;

.field protected x:Lcom/scwang/smartrefresh/layout/b/c;

.field protected y:Lcom/scwang/smartrefresh/layout/a/g;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method protected constructor <init>(Landroid/view/View;)V
    .locals 1

    instance-of v0, p1, Lcom/scwang/smartrefresh/layout/a/g;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/scwang/smartrefresh/layout/a/g;

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/scwang/smartrefresh/layout/e/b;-><init>(Landroid/view/View;Lcom/scwang/smartrefresh/layout/a/g;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>(Landroid/view/View;Lcom/scwang/smartrefresh/layout/a/g;)V
    .locals 4

    const/high16 v3, -0x40800000    # -1.0f

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/e/b;->w:Landroid/view/View;

    iput-object p2, p0, Lcom/scwang/smartrefresh/layout/e/b;->y:Lcom/scwang/smartrefresh/layout/a/g;

    instance-of v0, p0, Lcom/scwang/smartrefresh/layout/d/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/e/b;->y:Lcom/scwang/smartrefresh/layout/a/g;

    instance-of v0, v0, Lcom/scwang/smartrefresh/layout/a/f;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/e/b;->y:Lcom/scwang/smartrefresh/layout/a/g;

    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/a/g;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/b/c;

    move-result-object v0

    sget-object v1, Lcom/scwang/smartrefresh/layout/b/c;->e:Lcom/scwang/smartrefresh/layout/b/c;

    if-ne v0, v1, :cond_1

    invoke-interface {p2}, Lcom/scwang/smartrefresh/layout/a/g;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleY(F)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, p0, Lcom/scwang/smartrefresh/layout/d/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/e/b;->y:Lcom/scwang/smartrefresh/layout/a/g;

    instance-of v0, v0, Lcom/scwang/smartrefresh/layout/a/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/e/b;->y:Lcom/scwang/smartrefresh/layout/a/g;

    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/a/g;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/b/c;

    move-result-object v0

    sget-object v1, Lcom/scwang/smartrefresh/layout/b/c;->e:Lcom/scwang/smartrefresh/layout/b/c;

    if-ne v0, v1, :cond_0

    invoke-interface {p2}, Lcom/scwang/smartrefresh/layout/a/g;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleY(F)V

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/scwang/smartrefresh/layout/a/i;Z)I
    .locals 1

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/e/b;->y:Lcom/scwang/smartrefresh/layout/a/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/e/b;->y:Lcom/scwang/smartrefresh/layout/a/g;

    if-eq v0, p0, :cond_0

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/e/b;->y:Lcom/scwang/smartrefresh/layout/a/g;

    invoke-interface {v0, p1, p2}, Lcom/scwang/smartrefresh/layout/a/g;->a(Lcom/scwang/smartrefresh/layout/a/i;Z)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(FII)V
    .locals 1

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/e/b;->y:Lcom/scwang/smartrefresh/layout/a/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/e/b;->y:Lcom/scwang/smartrefresh/layout/a/g;

    if-eq v0, p0, :cond_0

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/e/b;->y:Lcom/scwang/smartrefresh/layout/a/g;

    invoke-interface {v0, p1, p2, p3}, Lcom/scwang/smartrefresh/layout/a/g;->a(FII)V

    :cond_0
    return-void
.end method

.method public a(Lcom/scwang/smartrefresh/layout/a/h;II)V
    .locals 2

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/e/b;->y:Lcom/scwang/smartrefresh/layout/a/g;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/e/b;->y:Lcom/scwang/smartrefresh/layout/a/g;

    if-eq v0, p0, :cond_1

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/e/b;->y:Lcom/scwang/smartrefresh/layout/a/g;

    invoke-interface {v0, p1, p2, p3}, Lcom/scwang/smartrefresh/layout/a/g;->a(Lcom/scwang/smartrefresh/layout/a/h;II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/e/b;->w:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/e/b;->w:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$c;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$c;

    iget v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$c;->a:I

    invoke-interface {p1, p0, v0}, Lcom/scwang/smartrefresh/layout/a/h;->a(Lcom/scwang/smartrefresh/layout/a/g;I)Lcom/scwang/smartrefresh/layout/a/h;

    goto :goto_0
.end method

.method public a(Lcom/scwang/smartrefresh/layout/a/i;II)V
    .locals 1

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/e/b;->y:Lcom/scwang/smartrefresh/layout/a/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/e/b;->y:Lcom/scwang/smartrefresh/layout/a/g;

    if-eq v0, p0, :cond_0

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/e/b;->y:Lcom/scwang/smartrefresh/layout/a/g;

    invoke-interface {v0, p1, p2, p3}, Lcom/scwang/smartrefresh/layout/a/g;->a(Lcom/scwang/smartrefresh/layout/a/i;II)V

    :cond_0
    return-void
.end method

.method public a(Lcom/scwang/smartrefresh/layout/a/i;Lcom/scwang/smartrefresh/layout/b/b;Lcom/scwang/smartrefresh/layout/b/b;)V
    .locals 1

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/e/b;->y:Lcom/scwang/smartrefresh/layout/a/g;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/e/b;->y:Lcom/scwang/smartrefresh/layout/a/g;

    if-eq v0, p0, :cond_2

    instance-of v0, p0, Lcom/scwang/smartrefresh/layout/d/b;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/e/b;->y:Lcom/scwang/smartrefresh/layout/a/g;

    instance-of v0, v0, Lcom/scwang/smartrefresh/layout/a/f;

    if-eqz v0, :cond_3

    iget-boolean v0, p2, Lcom/scwang/smartrefresh/layout/b/b;->s:Z

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/scwang/smartrefresh/layout/b/b;->b()Lcom/scwang/smartrefresh/layout/b/b;

    move-result-object p2

    :cond_0
    iget-boolean v0, p3, Lcom/scwang/smartrefresh/layout/b/b;->s:Z

    if-eqz v0, :cond_1

    invoke-virtual {p3}, Lcom/scwang/smartrefresh/layout/b/b;->b()Lcom/scwang/smartrefresh/layout/b/b;

    move-result-object p3

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/e/b;->y:Lcom/scwang/smartrefresh/layout/a/g;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1, p2, p3}, Lcom/scwang/smartrefresh/layout/f/f;->a(Lcom/scwang/smartrefresh/layout/a/i;Lcom/scwang/smartrefresh/layout/b/b;Lcom/scwang/smartrefresh/layout/b/b;)V

    :cond_2
    return-void

    :cond_3
    instance-of v0, p0, Lcom/scwang/smartrefresh/layout/d/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/e/b;->y:Lcom/scwang/smartrefresh/layout/a/g;

    instance-of v0, v0, Lcom/scwang/smartrefresh/layout/a/e;

    if-eqz v0, :cond_1

    iget-boolean v0, p2, Lcom/scwang/smartrefresh/layout/b/b;->r:Z

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Lcom/scwang/smartrefresh/layout/b/b;->a()Lcom/scwang/smartrefresh/layout/b/b;

    move-result-object p2

    :cond_4
    iget-boolean v0, p3, Lcom/scwang/smartrefresh/layout/b/b;->r:Z

    if-eqz v0, :cond_1

    invoke-virtual {p3}, Lcom/scwang/smartrefresh/layout/b/b;->a()Lcom/scwang/smartrefresh/layout/b/b;

    move-result-object p3

    goto :goto_0
.end method

.method public a(ZFIII)V
    .locals 6

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/e/b;->y:Lcom/scwang/smartrefresh/layout/a/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/e/b;->y:Lcom/scwang/smartrefresh/layout/a/g;

    if-eq v0, p0, :cond_0

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/e/b;->y:Lcom/scwang/smartrefresh/layout/a/g;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/scwang/smartrefresh/layout/a/g;->a(ZFIII)V

    :cond_0
    return-void
.end method

.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/e/b;->y:Lcom/scwang/smartrefresh/layout/a/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/e/b;->y:Lcom/scwang/smartrefresh/layout/a/g;

    if-eq v0, p0, :cond_0

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/e/b;->y:Lcom/scwang/smartrefresh/layout/a/g;

    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/a/g;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Z)Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/e/b;->y:Lcom/scwang/smartrefresh/layout/a/g;

    instance-of v0, v0, Lcom/scwang/smartrefresh/layout/a/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/e/b;->y:Lcom/scwang/smartrefresh/layout/a/g;

    check-cast v0, Lcom/scwang/smartrefresh/layout/a/e;

    invoke-interface {v0, p1}, Lcom/scwang/smartrefresh/layout/a/e;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Lcom/scwang/smartrefresh/layout/a/i;II)V
    .locals 1

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/e/b;->y:Lcom/scwang/smartrefresh/layout/a/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/e/b;->y:Lcom/scwang/smartrefresh/layout/a/g;

    if-eq v0, p0, :cond_0

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/e/b;->y:Lcom/scwang/smartrefresh/layout/a/g;

    invoke-interface {v0, p1, p2, p3}, Lcom/scwang/smartrefresh/layout/a/g;->b(Lcom/scwang/smartrefresh/layout/a/i;II)V

    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    instance-of v2, p1, Lcom/scwang/smartrefresh/layout/a/g;

    if-eqz v2, :cond_2

    invoke-interface {p0}, Lcom/scwang/smartrefresh/layout/a/g;->getView()Landroid/view/View;

    move-result-object v2

    check-cast p1, Lcom/scwang/smartrefresh/layout/a/g;

    invoke-interface {p1}, Lcom/scwang/smartrefresh/layout/a/g;->getView()Landroid/view/View;

    move-result-object v3

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public getSpinnerStyle()Lcom/scwang/smartrefresh/layout/b/c;
    .locals 5

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/e/b;->x:Lcom/scwang/smartrefresh/layout/b/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/e/b;->x:Lcom/scwang/smartrefresh/layout/b/c;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/e/b;->y:Lcom/scwang/smartrefresh/layout/a/g;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/e/b;->y:Lcom/scwang/smartrefresh/layout/a/g;

    if-eq v0, p0, :cond_1

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/e/b;->y:Lcom/scwang/smartrefresh/layout/a/g;

    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/a/g;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/b/c;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/e/b;->w:Landroid/view/View;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/e/b;->w:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v0, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$c;

    if-eqz v0, :cond_2

    move-object v0, v1

    check-cast v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$c;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$c;->b:Lcom/scwang/smartrefresh/layout/b/c;

    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/e/b;->x:Lcom/scwang/smartrefresh/layout/b/c;

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/e/b;->x:Lcom/scwang/smartrefresh/layout/b/c;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/e/b;->x:Lcom/scwang/smartrefresh/layout/b/c;

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_5

    iget v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eqz v0, :cond_3

    iget v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_5

    :cond_3
    sget-object v2, Lcom/scwang/smartrefresh/layout/b/c;->f:[Lcom/scwang/smartrefresh/layout/b/c;

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_5

    aget-object v0, v2, v1

    iget-boolean v4, v0, Lcom/scwang/smartrefresh/layout/b/c;->i:Z

    if-eqz v4, :cond_4

    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/e/b;->x:Lcom/scwang/smartrefresh/layout/b/c;

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_5
    sget-object v0, Lcom/scwang/smartrefresh/layout/b/c;->a:Lcom/scwang/smartrefresh/layout/b/c;

    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/e/b;->x:Lcom/scwang/smartrefresh/layout/b/c;

    goto :goto_0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/e/b;->w:Landroid/view/View;

    if-nez v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/scwang/smartrefresh/layout/e/b;->w:Landroid/view/View;

    goto :goto_0
.end method

.method public varargs setPrimaryColors([I)V
    .locals 1

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/e/b;->y:Lcom/scwang/smartrefresh/layout/a/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/e/b;->y:Lcom/scwang/smartrefresh/layout/a/g;

    if-eq v0, p0, :cond_0

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/e/b;->y:Lcom/scwang/smartrefresh/layout/a/g;

    invoke-interface {v0, p1}, Lcom/scwang/smartrefresh/layout/a/g;->setPrimaryColors([I)V

    :cond_0
    return-void
.end method
