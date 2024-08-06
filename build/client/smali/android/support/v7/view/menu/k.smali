.class abstract Landroid/support/v7/view/menu/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v7/view/menu/m;
.implements Landroid/support/v7/view/menu/q;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private a:Landroid/graphics/Rect;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static a(Landroid/widget/ListAdapter;Landroid/view/ViewGroup;Landroid/content/Context;I)I
    .locals 10

    const/4 v5, 0x0

    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-interface {p0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v9

    move v6, v0

    move v3, v0

    move-object v4, v5

    move v1, v0

    move-object v2, p1

    :goto_0
    if-ge v6, v9, :cond_3

    invoke-interface {p0, v6}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    if-eq v0, v3, :cond_0

    move v3, v0

    move-object v4, v5

    :cond_0
    if-nez v2, :cond_1

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object v2, v0

    :cond_1
    invoke-interface {p0, v6, v4, v2}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7, v8}, Landroid/view/View;->measure(II)V

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-lt v0, p3, :cond_2

    :goto_1
    return p3

    :cond_2
    if-le v0, v1, :cond_4

    :goto_2
    add-int/lit8 v6, v6, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    move p3, v1

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_2
.end method

.method protected static a(Landroid/widget/ListAdapter;)Landroid/support/v7/view/menu/f;
    .locals 1

    instance-of v0, p0, Landroid/widget/HeaderViewListAdapter;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {p0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/f;

    :goto_0
    return-object v0

    :cond_0
    check-cast p0, Landroid/support/v7/view/menu/f;

    move-object v0, p0

    goto :goto_0
.end method

.method protected static b(Landroid/support/v7/view/menu/g;)Z
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/support/v7/view/menu/g;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Landroid/support/v7/view/menu/g;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/MenuItem;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public abstract a(I)V
.end method

.method public a(Landroid/content/Context;Landroid/support/v7/view/menu/g;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/view/menu/k;->a:Landroid/graphics/Rect;

    return-void
.end method

.method public abstract a(Landroid/support/v7/view/menu/g;)V
.end method

.method public abstract a(Landroid/view/View;)V
.end method

.method public abstract a(Landroid/widget/PopupWindow$OnDismissListener;)V
.end method

.method public abstract a(Z)V
.end method

.method public a(Landroid/support/v7/view/menu/g;Landroid/support/v7/view/menu/h;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract b(I)V
.end method

.method public b(Landroid/support/v7/view/menu/g;Landroid/support/v7/view/menu/h;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract c(I)V
.end method

.method public abstract c(Z)V
.end method

.method protected f()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public g()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/view/menu/k;->a:Landroid/graphics/Rect;

    return-object v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    invoke-static {v0}, Landroid/support/v7/view/menu/k;->a(Landroid/widget/ListAdapter;)Landroid/support/v7/view/menu/f;

    move-result-object v1

    iget-object v2, v1, Landroid/support/v7/view/menu/f;->a:Landroid/support/v7/view/menu/g;

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MenuItem;

    invoke-virtual {p0}, Landroid/support/v7/view/menu/k;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v0, p0, v1}, Landroid/support/v7/view/menu/g;->a(Landroid/view/MenuItem;Landroid/support/v7/view/menu/m;I)Z

    return-void

    :cond_0
    const/4 v1, 0x4

    goto :goto_0
.end method
