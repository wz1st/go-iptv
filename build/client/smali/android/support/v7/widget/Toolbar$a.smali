.class Landroid/support/v7/widget/Toolbar$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v7/view/menu/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/Toolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:Landroid/support/v7/view/menu/g;

.field b:Landroid/support/v7/view/menu/h;

.field final synthetic c:Landroid/support/v7/widget/Toolbar;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/Toolbar;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/Toolbar$a;->c:Landroid/support/v7/widget/Toolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/support/v7/view/menu/g;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$a;->a:Landroid/support/v7/view/menu/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$a;->b:Landroid/support/v7/view/menu/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$a;->a:Landroid/support/v7/view/menu/g;

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar$a;->b:Landroid/support/v7/view/menu/h;

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/g;->d(Landroid/support/v7/view/menu/h;)Z

    :cond_0
    iput-object p2, p0, Landroid/support/v7/widget/Toolbar$a;->a:Landroid/support/v7/view/menu/g;

    return-void
.end method

.method public a(Landroid/support/v7/view/menu/g;Z)V
    .locals 0

    return-void
.end method

.method public a(Landroid/support/v7/view/menu/m$a;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/support/v7/view/menu/g;Landroid/support/v7/view/menu/h;)Z
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$a;->c:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->d()V

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$a;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->a:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar$a;->c:Landroid/support/v7/widget/Toolbar;

    if-eq v0, v1, :cond_1

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar$a;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->a:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$a;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar$a;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->a:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$a;->c:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p2}, Landroid/support/v7/view/menu/h;->getActionView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v7/widget/Toolbar;->b:Landroid/view/View;

    iput-object p2, p0, Landroid/support/v7/widget/Toolbar$a;->b:Landroid/support/v7/view/menu/h;

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$a;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar$a;->c:Landroid/support/v7/widget/Toolbar;

    if-eq v0, v1, :cond_3

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar$a;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$a;->c:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->e()Landroid/support/v7/widget/Toolbar$b;

    move-result-object v0

    const v1, 0x800003

    iget-object v2, p0, Landroid/support/v7/widget/Toolbar$a;->c:Landroid/support/v7/widget/Toolbar;

    iget v2, v2, Landroid/support/v7/widget/Toolbar;->c:I

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v1, v2

    iput v1, v0, Landroid/support/v7/widget/Toolbar$b;->a:I

    const/4 v1, 0x2

    iput v1, v0, Landroid/support/v7/widget/Toolbar$b;->b:I

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar$a;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->b:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$a;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar$a;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;)V

    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$a;->c:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->f()V

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$a;->c:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->requestLayout()V

    invoke-virtual {p2, v3}, Landroid/support/v7/view/menu/h;->e(Z)V

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$a;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->b:Landroid/view/View;

    instance-of v0, v0, Landroid/support/v7/view/b;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$a;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->b:Landroid/view/View;

    check-cast v0, Landroid/support/v7/view/b;

    invoke-interface {v0}, Landroid/support/v7/view/b;->a()V

    :cond_4
    return v3
.end method

.method public a(Landroid/support/v7/view/menu/s;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b(Z)V
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar$a;->b:Landroid/support/v7/view/menu/h;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar$a;->a:Landroid/support/v7/view/menu/g;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar$a;->a:Landroid/support/v7/view/menu/g;

    invoke-virtual {v1}, Landroid/support/v7/view/menu/g;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v3, p0, Landroid/support/v7/widget/Toolbar$a;->a:Landroid/support/v7/view/menu/g;

    invoke-virtual {v3, v1}, Landroid/support/v7/view/menu/g;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget-object v4, p0, Landroid/support/v7/widget/Toolbar$a;->b:Landroid/support/v7/view/menu/h;

    if-ne v3, v4, :cond_2

    const/4 v0, 0x1

    :cond_0
    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$a;->a:Landroid/support/v7/view/menu/g;

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar$a;->b:Landroid/support/v7/view/menu/h;

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/widget/Toolbar$a;->b(Landroid/support/v7/view/menu/g;Landroid/support/v7/view/menu/h;)Z

    :cond_1
    return-void

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b(Landroid/support/v7/view/menu/g;Landroid/support/v7/view/menu/h;)Z
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$a;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->b:Landroid/view/View;

    instance-of v0, v0, Landroid/support/v7/view/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$a;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->b:Landroid/view/View;

    check-cast v0, Landroid/support/v7/view/b;

    invoke-interface {v0}, Landroid/support/v7/view/b;->b()V

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$a;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar$a;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$a;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar$a;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->a:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$a;->c:Landroid/support/v7/widget/Toolbar;

    iput-object v2, v0, Landroid/support/v7/widget/Toolbar;->b:Landroid/view/View;

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$a;->c:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->g()V

    iput-object v2, p0, Landroid/support/v7/widget/Toolbar$a;->b:Landroid/support/v7/view/menu/h;

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$a;->c:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->requestLayout()V

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/support/v7/view/menu/h;->e(Z)V

    const/4 v0, 0x1

    return v0
.end method
