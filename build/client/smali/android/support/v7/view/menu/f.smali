.class public Landroid/support/v7/view/menu/f;
.super Landroid/widget/BaseAdapter;


# instance fields
.field a:Landroid/support/v7/view/menu/g;

.field private b:I

.field private c:Z

.field private final d:Z

.field private final e:Landroid/view/LayoutInflater;

.field private final f:I


# direct methods
.method public constructor <init>(Landroid/support/v7/view/menu/g;Landroid/view/LayoutInflater;ZI)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/view/menu/f;->b:I

    iput-boolean p3, p0, Landroid/support/v7/view/menu/f;->d:Z

    iput-object p2, p0, Landroid/support/v7/view/menu/f;->e:Landroid/view/LayoutInflater;

    iput-object p1, p0, Landroid/support/v7/view/menu/f;->a:Landroid/support/v7/view/menu/g;

    iput p4, p0, Landroid/support/v7/view/menu/f;->f:I

    invoke-virtual {p0}, Landroid/support/v7/view/menu/f;->b()V

    return-void
.end method


# virtual methods
.method public a()Landroid/support/v7/view/menu/g;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/view/menu/f;->a:Landroid/support/v7/view/menu/g;

    return-object v0
.end method

.method public a(I)Landroid/support/v7/view/menu/h;
    .locals 2

    iget-boolean v0, p0, Landroid/support/v7/view/menu/f;->d:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/view/menu/f;->a:Landroid/support/v7/view/menu/g;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/g;->l()Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    iget v1, p0, Landroid/support/v7/view/menu/f;->b:I

    if-ltz v1, :cond_0

    iget v1, p0, Landroid/support/v7/view/menu/f;->b:I

    if-lt p1, v1, :cond_0

    add-int/lit8 p1, p1, 0x1

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/h;

    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/support/v7/view/menu/f;->a:Landroid/support/v7/view/menu/g;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/g;->i()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/support/v7/view/menu/f;->c:Z

    return-void
.end method

.method b()V
    .locals 5

    iget-object v0, p0, Landroid/support/v7/view/menu/f;->a:Landroid/support/v7/view/menu/g;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/g;->p()Landroid/support/v7/view/menu/h;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Landroid/support/v7/view/menu/f;->a:Landroid/support/v7/view/menu/g;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/g;->l()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/h;

    if-ne v0, v2, :cond_0

    iput v1, p0, Landroid/support/v7/view/menu/f;->b:I

    :goto_1
    return-void

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/view/menu/f;->b:I

    goto :goto_1
.end method

.method public getCount()I
    .locals 2

    iget-boolean v0, p0, Landroid/support/v7/view/menu/f;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/view/menu/f;->a:Landroid/support/v7/view/menu/g;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/g;->l()Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    iget v1, p0, Landroid/support/v7/view/menu/f;->b:I

    if-gez v1, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_1
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/view/menu/f;->a:Landroid/support/v7/view/menu/g;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/g;->i()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/f;->a(I)Landroid/support/v7/view/menu/h;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez p2, :cond_3

    iget-object v0, p0, Landroid/support/v7/view/menu/f;->e:Landroid/view/LayoutInflater;

    iget v1, p0, Landroid/support/v7/view/menu/f;->f:I

    invoke-virtual {v0, v1, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/f;->a(I)Landroid/support/v7/view/menu/h;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/view/menu/h;->getGroupId()I

    move-result v3

    add-int/lit8 v0, p1, -0x1

    if-ltz v0, :cond_1

    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/f;->a(I)Landroid/support/v7/view/menu/h;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/view/menu/h;->getGroupId()I

    move-result v0

    move v2, v0

    :goto_1
    move-object v0, v1

    check-cast v0, Landroid/support/v7/view/menu/ListMenuItemView;

    iget-object v6, p0, Landroid/support/v7/view/menu/f;->a:Landroid/support/v7/view/menu/g;

    invoke-virtual {v6}, Landroid/support/v7/view/menu/g;->a()Z

    move-result v6

    if-eqz v6, :cond_2

    if-eq v3, v2, :cond_2

    move v2, v4

    :goto_2
    invoke-virtual {v0, v2}, Landroid/support/v7/view/menu/ListMenuItemView;->setGroupDividerEnabled(Z)V

    move-object v0, v1

    check-cast v0, Landroid/support/v7/view/menu/n$a;

    iget-boolean v2, p0, Landroid/support/v7/view/menu/f;->c:Z

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Landroid/support/v7/view/menu/ListMenuItemView;

    invoke-virtual {v2, v4}, Landroid/support/v7/view/menu/ListMenuItemView;->setForceShowIcon(Z)V

    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/f;->a(I)Landroid/support/v7/view/menu/h;

    move-result-object v2

    invoke-interface {v0, v2, v5}, Landroid/support/v7/view/menu/n$a;->a(Landroid/support/v7/view/menu/h;I)V

    return-object v1

    :cond_1
    move v2, v3

    goto :goto_1

    :cond_2
    move v2, v5

    goto :goto_2

    :cond_3
    move-object v1, p2

    goto :goto_0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    invoke-virtual {p0}, Landroid/support/v7/view/menu/f;->b()V

    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
