.class Landroid/support/v7/widget/ActivityChooserView$a;
.super Landroid/widget/BaseAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ActivityChooserView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/ActivityChooserView;

.field private b:Landroid/support/v7/widget/d;

.field private c:I

.field private d:Z

.field private e:Z

.field private f:Z


# virtual methods
.method public a()I
    .locals 9

    const/4 v3, 0x0

    const/4 v1, 0x0

    iget v5, p0, Landroid/support/v7/widget/ActivityChooserView$a;->c:I

    const v0, 0x7fffffff

    iput v0, p0, Landroid/support/v7/widget/ActivityChooserView$a;->c:I

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {p0}, Landroid/support/v7/widget/ActivityChooserView$a;->getCount()I

    move-result v8

    move v0, v1

    move-object v2, v3

    move v4, v1

    :goto_0
    if-ge v0, v8, :cond_0

    invoke-virtual {p0, v0, v2, v3}, Landroid/support/v7/widget/ActivityChooserView$a;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Landroid/view/View;->measure(II)V

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v0, v0, 0x1

    move-object v2, v1

    goto :goto_0

    :cond_0
    iput v5, p0, Landroid/support/v7/widget/ActivityChooserView$a;->c:I

    return v4
.end method

.method public a(I)V
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/ActivityChooserView$a;->c:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroid/support/v7/widget/ActivityChooserView$a;->c:I

    invoke-virtual {p0}, Landroid/support/v7/widget/ActivityChooserView$a;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public a(Landroid/support/v7/widget/d;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView$a;->a:Landroid/support/v7/widget/ActivityChooserView;

    iget-object v0, v0, Landroid/support/v7/widget/ActivityChooserView;->a:Landroid/support/v7/widget/ActivityChooserView$a;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActivityChooserView$a;->d()Landroid/support/v7/widget/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserView$a;->a:Landroid/support/v7/widget/ActivityChooserView;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActivityChooserView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserView$a;->a:Landroid/support/v7/widget/ActivityChooserView;

    iget-object v1, v1, Landroid/support/v7/widget/ActivityChooserView;->e:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/d;->unregisterObserver(Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Landroid/support/v7/widget/ActivityChooserView$a;->b:Landroid/support/v7/widget/d;

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView$a;->a:Landroid/support/v7/widget/ActivityChooserView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActivityChooserView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView$a;->a:Landroid/support/v7/widget/ActivityChooserView;

    iget-object v0, v0, Landroid/support/v7/widget/ActivityChooserView;->e:Landroid/database/DataSetObserver;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/d;->registerObserver(Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/ActivityChooserView$a;->notifyDataSetChanged()V

    return-void
.end method

.method public a(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/ActivityChooserView$a;->f:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroid/support/v7/widget/ActivityChooserView$a;->f:Z

    invoke-virtual {p0}, Landroid/support/v7/widget/ActivityChooserView$a;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public a(ZZ)V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/ActivityChooserView$a;->d:Z

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/ActivityChooserView$a;->e:Z

    if-eq v0, p2, :cond_1

    :cond_0
    iput-boolean p1, p0, Landroid/support/v7/widget/ActivityChooserView$a;->d:Z

    iput-boolean p2, p0, Landroid/support/v7/widget/ActivityChooserView$a;->e:Z

    invoke-virtual {p0}, Landroid/support/v7/widget/ActivityChooserView$a;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public b()Landroid/content/pm/ResolveInfo;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView$a;->b:Landroid/support/v7/widget/d;

    invoke-virtual {v0}, Landroid/support/v7/widget/d;->b()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView$a;->b:Landroid/support/v7/widget/d;

    invoke-virtual {v0}, Landroid/support/v7/widget/d;->a()I

    move-result v0

    return v0
.end method

.method public d()Landroid/support/v7/widget/d;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView$a;->b:Landroid/support/v7/widget/d;

    return-object v0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/ActivityChooserView$a;->d:Z

    return v0
.end method

.method public getCount()I
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView$a;->b:Landroid/support/v7/widget/d;

    invoke-virtual {v0}, Landroid/support/v7/widget/d;->a()I

    move-result v0

    iget-boolean v1, p0, Landroid/support/v7/widget/ActivityChooserView$a;->d:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserView$a;->b:Landroid/support/v7/widget/d;

    invoke-virtual {v1}, Landroid/support/v7/widget/d;->b()Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    iget v1, p0, Landroid/support/v7/widget/ActivityChooserView$a;->c:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-boolean v1, p0, Landroid/support/v7/widget/ActivityChooserView$a;->f:Z

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ActivityChooserView$a;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_1
    iget-boolean v0, p0, Landroid/support/v7/widget/ActivityChooserView$a;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView$a;->b:Landroid/support/v7/widget/d;

    invoke-virtual {v0}, Landroid/support/v7/widget/d;->b()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView$a;->b:Landroid/support/v7/widget/d;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/d;->a(I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/ActivityChooserView$a;->f:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/ActivityChooserView$a;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ActivityChooserView$a;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :pswitch_0
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    if-eq v0, v5, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView$a;->a:Landroid/support/v7/widget/ActivityChooserView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Landroid/support/v7/a/a$g;->abc_activity_chooser_view_list_item:I

    invoke-virtual {v0, v1, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v5}, Landroid/view/View;->setId(I)V

    sget v0, Landroid/support/v7/a/a$f;->title:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserView$a;->a:Landroid/support/v7/widget/ActivityChooserView;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Landroid/support/v7/a/a$h;->abc_activity_chooser_view_see_all:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-object p2

    :pswitch_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Landroid/support/v7/a/a$f;->list_item:I

    if-eq v0, v1, :cond_3

    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView$a;->a:Landroid/support/v7/widget/ActivityChooserView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Landroid/support/v7/a/a$g;->abc_activity_chooser_view_list_item:I

    invoke-virtual {v0, v1, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView$a;->a:Landroid/support/v7/widget/ActivityChooserView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    sget v0, Landroid/support/v7/a/a$f;->icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ActivityChooserView$a;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v1, v2}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    sget v0, Landroid/support/v7/a/a$f;->title:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v0, p0, Landroid/support/v7/widget/ActivityChooserView$a;->d:Z

    if-eqz v0, :cond_4

    if-nez p1, :cond_4

    iget-boolean v0, p0, Landroid/support/v7/widget/ActivityChooserView$a;->e:Z

    if-eqz v0, :cond_4

    invoke-virtual {p2, v5}, Landroid/view/View;->setActivated(Z)V

    goto :goto_0

    :cond_4
    invoke-virtual {p2, v4}, Landroid/view/View;->setActivated(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method
