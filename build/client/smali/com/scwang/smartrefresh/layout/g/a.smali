.class public Lcom/scwang/smartrefresh/layout/g/a;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/view/View;Lcom/scwang/smartrefresh/layout/a/h;Lcom/scwang/smartrefresh/layout/f/a;)V
    .locals 3

    :try_start_0
    instance-of v0, p0, Landroid/support/c/a/a;

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/scwang/smartrefresh/layout/a/h;->a()Lcom/scwang/smartrefresh/layout/a/i;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/scwang/smartrefresh/layout/a/i;->d(Z)Lcom/scwang/smartrefresh/layout/a/i;

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v2, v0, Landroid/support/design/widget/AppBarLayout;

    if-eqz v2, :cond_0

    check-cast v0, Landroid/support/design/widget/AppBarLayout;

    new-instance v2, Lcom/scwang/smartrefresh/layout/g/a$1;

    invoke-direct {v2, p2}, Lcom/scwang/smartrefresh/layout/g/a$1;-><init>(Lcom/scwang/smartrefresh/layout/f/a;)V

    invoke-virtual {v0, v2}, Landroid/support/design/widget/AppBarLayout;->addOnOffsetChangedListener(Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/e/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method
