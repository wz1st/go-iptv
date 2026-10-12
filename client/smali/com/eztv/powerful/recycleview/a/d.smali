.class public Lcom/eztv/powerful/recycleview/a/d;
.super Landroid/support/v7/widget/RecyclerView$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eztv/powerful/recycleview/a/d$a;,
        Lcom/eztv/powerful/recycleview/a/d$b;,
        Lcom/eztv/powerful/recycleview/a/d$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$a",
        "<",
        "Lcom/eztv/powerful/recycleview/a/d$c;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/eztv/powerful/recycleview/c/d;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/eztv/powerful/recycleview/b/e;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/eztv/powerful/recycleview/b/e;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    iput-object p2, p0, Lcom/eztv/powerful/recycleview/a/d;->b:Ljava/util/List;

    iput-object p1, p0, Lcom/eztv/powerful/recycleview/a/d;->c:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/eztv/powerful/recycleview/a/d;)Lcom/eztv/powerful/recycleview/c/d;
    .locals 1

    iget-object v0, p0, Lcom/eztv/powerful/recycleview/a/d;->a:Lcom/eztv/powerful/recycleview/c/d;

    return-object v0
.end method

.method static synthetic b(Lcom/eztv/powerful/recycleview/a/d;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/eztv/powerful/recycleview/a/d;->b:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lcom/eztv/powerful/recycleview/a/d;->b:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/eztv/powerful/recycleview/a/d;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public a(Landroid/view/ViewGroup;I)Lcom/eztv/powerful/recycleview/a/d$c;
    .locals 3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0031

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/eztv/powerful/recycleview/a/d$c;

    invoke-direct {v1, v0}, Lcom/eztv/powerful/recycleview/a/d$c;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method public bridge synthetic a(Landroid/support/v7/widget/RecyclerView$x;I)V
    .locals 0

    check-cast p1, Lcom/eztv/powerful/recycleview/a/d$c;

    invoke-virtual {p0, p1, p2}, Lcom/eztv/powerful/recycleview/a/d;->a(Lcom/eztv/powerful/recycleview/a/d$c;I)V

    return-void
.end method

.method public a(Lcom/eztv/powerful/recycleview/a/d$c;I)V
    .locals 2

    iget-object v0, p0, Lcom/eztv/powerful/recycleview/a/d;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eztv/powerful/recycleview/b/e;

    iget-object v1, p1, Lcom/eztv/powerful/recycleview/a/d$c;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/eztv/powerful/recycleview/b/e;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/eztv/powerful/recycleview/a/d$c;->b:Landroid/view/View;

    new-instance v1, Lcom/eztv/powerful/recycleview/a/d$b;

    invoke-direct {v1, p0, p2, p1}, Lcom/eztv/powerful/recycleview/a/d$b;-><init>(Lcom/eztv/powerful/recycleview/a/d;ILcom/eztv/powerful/recycleview/a/d$c;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p1, Lcom/eztv/powerful/recycleview/a/d$c;->b:Landroid/view/View;

    new-instance v1, Lcom/eztv/powerful/recycleview/a/d$a;

    invoke-direct {v1, p0, p2, p1}, Lcom/eztv/powerful/recycleview/a/d$a;-><init>(Lcom/eztv/powerful/recycleview/a/d;ILcom/eztv/powerful/recycleview/a/d$c;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public a(Lcom/eztv/powerful/recycleview/c/d;)V
    .locals 0

    iput-object p1, p0, Lcom/eztv/powerful/recycleview/a/d;->a:Lcom/eztv/powerful/recycleview/c/d;

    return-void
.end method

.method public synthetic b(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$x;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/eztv/powerful/recycleview/a/d;->a(Landroid/view/ViewGroup;I)Lcom/eztv/powerful/recycleview/a/d$c;

    move-result-object v0

    return-object v0
.end method
