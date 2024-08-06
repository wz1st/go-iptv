.class public Lcom/eztv/powerful/recycleview/a/b;
.super Landroid/support/v7/widget/RecyclerView$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eztv/powerful/recycleview/a/b$a;,
        Lcom/eztv/powerful/recycleview/a/b$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$a",
        "<",
        "Lcom/eztv/powerful/recycleview/a/b$b;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/eztv/powerful/recycleview/c/b;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    iput-object p1, p0, Lcom/eztv/powerful/recycleview/a/b;->a:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/eztv/powerful/recycleview/a/b;)Lcom/eztv/powerful/recycleview/c/b;
    .locals 1

    iget-object v0, p0, Lcom/eztv/powerful/recycleview/a/b;->b:Lcom/eztv/powerful/recycleview/c/b;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lcom/eztv/powerful/recycleview/a/b;->a:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/eztv/powerful/recycleview/a/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public a(I)I
    .locals 0

    return p1
.end method

.method public a(Landroid/view/ViewGroup;I)Lcom/eztv/powerful/recycleview/a/b$b;
    .locals 3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c002e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/eztv/powerful/recycleview/a/b$b;

    invoke-direct {v1, v0}, Lcom/eztv/powerful/recycleview/a/b$b;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method public bridge synthetic a(Landroid/support/v7/widget/RecyclerView$x;I)V
    .locals 0

    check-cast p1, Lcom/eztv/powerful/recycleview/a/b$b;

    invoke-virtual {p0, p1, p2}, Lcom/eztv/powerful/recycleview/a/b;->a(Lcom/eztv/powerful/recycleview/a/b$b;I)V

    return-void
.end method

.method public a(Lcom/eztv/powerful/recycleview/a/b$b;I)V
    .locals 2

    iget-object v0, p1, Lcom/eztv/powerful/recycleview/a/b$b;->b:Landroid/view/View;

    new-instance v1, Lcom/eztv/powerful/recycleview/a/b$a;

    invoke-direct {v1, p0, p2, p1}, Lcom/eztv/powerful/recycleview/a/b$a;-><init>(Lcom/eztv/powerful/recycleview/a/b;ILcom/eztv/powerful/recycleview/a/b$b;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p1, Lcom/eztv/powerful/recycleview/a/b$b;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/eztv/powerful/recycleview/a/b;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Lcom/eztv/powerful/recycleview/c/b;)V
    .locals 0

    iput-object p1, p0, Lcom/eztv/powerful/recycleview/a/b;->b:Lcom/eztv/powerful/recycleview/c/b;

    return-void
.end method

.method public synthetic b(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$x;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/eztv/powerful/recycleview/a/b;->a(Landroid/view/ViewGroup;I)Lcom/eztv/powerful/recycleview/a/b$b;

    move-result-object v0

    return-object v0
.end method
