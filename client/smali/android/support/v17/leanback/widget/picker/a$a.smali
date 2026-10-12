.class Landroid/support/v17/leanback/widget/picker/a$a;
.super Landroid/support/v7/widget/RecyclerView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/picker/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$a",
        "<",
        "Landroid/support/v17/leanback/widget/picker/a$c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v17/leanback/widget/picker/a;

.field private final b:I

.field private final c:I

.field private final d:I

.field private e:Landroid/support/v17/leanback/widget/picker/b;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/picker/a;Landroid/content/Context;III)V
    .locals 2

    iput-object p1, p0, Landroid/support/v17/leanback/widget/picker/a$a;->a:Landroid/support/v17/leanback/widget/picker/a;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    iput p3, p0, Landroid/support/v17/leanback/widget/picker/a$a;->b:I

    iput p5, p0, Landroid/support/v17/leanback/widget/picker/a$a;->c:I

    iput p4, p0, Landroid/support/v17/leanback/widget/picker/a$a;->d:I

    iget-object v0, p1, Landroid/support/v17/leanback/widget/picker/a;->n:Ljava/util/ArrayList;

    iget v1, p0, Landroid/support/v17/leanback/widget/picker/a$a;->c:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/picker/b;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/picker/a$a;->e:Landroid/support/v17/leanback/widget/picker/b;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/a$a;->e:Landroid/support/v17/leanback/widget/picker/b;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/a$a;->e:Landroid/support/v17/leanback/widget/picker/b;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/picker/b;->b()I

    move-result v0

    goto :goto_0
.end method

.method public a(Landroid/view/ViewGroup;I)Landroid/support/v17/leanback/widget/picker/a$c;
    .locals 3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Landroid/support/v17/leanback/widget/picker/a$a;->b:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iget v0, p0, Landroid/support/v17/leanback/widget/picker/a$a;->d:I

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v17/leanback/widget/picker/a$a;->d:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    :goto_0
    new-instance v2, Landroid/support/v17/leanback/widget/picker/a$c;

    invoke-direct {v2, v1, v0}, Landroid/support/v17/leanback/widget/picker/a$c;-><init>(Landroid/view/View;Landroid/widget/TextView;)V

    return-object v2

    :cond_0
    move-object v0, v1

    check-cast v0, Landroid/widget/TextView;

    goto :goto_0
.end method

.method public a(Landroid/support/v17/leanback/widget/picker/a$c;)V
    .locals 2

    iget-object v0, p1, Landroid/support/v17/leanback/widget/picker/a$c;->b:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/picker/a$a;->a:Landroid/support/v17/leanback/widget/picker/a;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/picker/a;->isActivated()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    return-void
.end method

.method public a(Landroid/support/v17/leanback/widget/picker/a$c;I)V
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p1, Landroid/support/v17/leanback/widget/picker/a$c;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/a$a;->e:Landroid/support/v17/leanback/widget/picker/b;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/support/v17/leanback/widget/picker/a$c;->a:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/picker/a$a;->e:Landroid/support/v17/leanback/widget/picker/b;

    iget-object v3, p0, Landroid/support/v17/leanback/widget/picker/a$a;->e:Landroid/support/v17/leanback/widget/picker/b;

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/picker/b;->c()I

    move-result v3

    add-int/2addr v3, p2

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/picker/b;->a(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v2, p0, Landroid/support/v17/leanback/widget/picker/a$a;->a:Landroid/support/v17/leanback/widget/picker/a;

    iget-object v3, p1, Landroid/support/v17/leanback/widget/picker/a$c;->b:Landroid/view/View;

    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/a$a;->a:Landroid/support/v17/leanback/widget/picker/a;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/picker/a;->m:Ljava/util/List;

    iget v4, p0, Landroid/support/v17/leanback/widget/picker/a$a;->c:I

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->getSelectedPosition()I

    move-result v0

    if-ne v0, p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget v4, p0, Landroid/support/v17/leanback/widget/picker/a$a;->c:I

    invoke-virtual {v2, v3, v0, v4, v1}, Landroid/support/v17/leanback/widget/picker/a;->a(Landroid/view/View;ZIZ)V

    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public bridge synthetic a(Landroid/support/v7/widget/RecyclerView$x;)V
    .locals 0

    check-cast p1, Landroid/support/v17/leanback/widget/picker/a$c;

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/picker/a$a;->a(Landroid/support/v17/leanback/widget/picker/a$c;)V

    return-void
.end method

.method public bridge synthetic a(Landroid/support/v7/widget/RecyclerView$x;I)V
    .locals 0

    check-cast p1, Landroid/support/v17/leanback/widget/picker/a$c;

    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/widget/picker/a$a;->a(Landroid/support/v17/leanback/widget/picker/a$c;I)V

    return-void
.end method

.method public synthetic b(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$x;
    .locals 1

    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/widget/picker/a$a;->a(Landroid/view/ViewGroup;I)Landroid/support/v17/leanback/widget/picker/a$c;

    move-result-object v0

    return-object v0
.end method
