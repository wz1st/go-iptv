.class public Landroid/support/v17/leanback/widget/y;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/view/ViewGroup;Landroid/view/View;)Z
    .locals 3

    const/4 v1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v2, v0, Landroid/view/View;

    if-nez v2, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    check-cast v0, Landroid/view/View;

    move-object p1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method
