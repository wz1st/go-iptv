.class public Lcom/eztv/powerful/recycleview/a/c;
.super Landroid/support/v7/widget/RecyclerView$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eztv/powerful/recycleview/a/c$c;,
        Lcom/eztv/powerful/recycleview/a/c$a;,
        Lcom/eztv/powerful/recycleview/a/c$d;,
        Lcom/eztv/powerful/recycleview/a/c$b;,
        Lcom/eztv/powerful/recycleview/a/c$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$a",
        "<",
        "Lcom/eztv/powerful/recycleview/a/c$e;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/eztv/powerful/recycleview/b/d;",
            ">;"
        }
    .end annotation
.end field

.field b:Lcom/b/a/g/e;

.field private c:Lcom/eztv/powerful/recycleview/c/c;

.field private d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/eztv/powerful/recycleview/b/d;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    new-instance v0, Lcom/b/a/g/e;

    invoke-direct {v0}, Lcom/b/a/g/e;-><init>()V

    iput-object v0, p0, Lcom/eztv/powerful/recycleview/a/c;->b:Lcom/b/a/g/e;

    iput-object p2, p0, Lcom/eztv/powerful/recycleview/a/c;->a:Ljava/util/List;

    iput-object p1, p0, Lcom/eztv/powerful/recycleview/a/c;->d:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/eztv/powerful/recycleview/a/c;)Lcom/eztv/powerful/recycleview/c/c;
    .locals 1

    iget-object v0, p0, Lcom/eztv/powerful/recycleview/a/c;->c:Lcom/eztv/powerful/recycleview/c/c;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lcom/eztv/powerful/recycleview/a/c;->a:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/eztv/powerful/recycleview/a/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public a(I)I
    .locals 0

    return p1
.end method

.method public a(Landroid/view/ViewGroup;I)Lcom/eztv/powerful/recycleview/a/c$e;
    .locals 3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c002d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/eztv/powerful/recycleview/a/c$e;

    invoke-direct {v1, v0}, Lcom/eztv/powerful/recycleview/a/c$e;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method public bridge synthetic a(Landroid/support/v7/widget/RecyclerView$x;I)V
    .locals 0

    check-cast p1, Lcom/eztv/powerful/recycleview/a/c$e;

    invoke-virtual {p0, p1, p2}, Lcom/eztv/powerful/recycleview/a/c;->a(Lcom/eztv/powerful/recycleview/a/c$e;I)V

    return-void
.end method

.method public a(Lcom/eztv/powerful/recycleview/a/c$e;I)V
    .locals 3

    const v2, 0x7f0800a0

    iget-object v0, p0, Lcom/eztv/powerful/recycleview/a/c;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eztv/powerful/recycleview/b/d;

    iget-object v1, p0, Lcom/eztv/powerful/recycleview/a/c;->b:Lcom/b/a/g/e;

    invoke-virtual {v1, v2}, Lcom/b/a/g/e;->a(I)Lcom/b/a/g/e;

    iget-object v1, p0, Lcom/eztv/powerful/recycleview/a/c;->b:Lcom/b/a/g/e;

    invoke-virtual {v1, v2}, Lcom/b/a/g/e;->b(I)Lcom/b/a/g/e;

    iget-object v1, p0, Lcom/eztv/powerful/recycleview/a/c;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/b/a/c;->b(Landroid/content/Context;)Lcom/b/a/j;

    move-result-object v1

    invoke-virtual {v0}, Lcom/eztv/powerful/recycleview/b/d;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/b/a/j;->a(Ljava/lang/String;)Lcom/b/a/i;

    move-result-object v1

    iget-object v2, p0, Lcom/eztv/powerful/recycleview/a/c;->b:Lcom/b/a/g/e;

    invoke-virtual {v1, v2}, Lcom/b/a/i;->a(Lcom/b/a/g/e;)Lcom/b/a/i;

    move-result-object v1

    iget-object v2, p1, Lcom/eztv/powerful/recycleview/a/c$e;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/b/a/i;->a(Landroid/widget/ImageView;)Lcom/b/a/g/a/i;

    iget-object v1, p1, Lcom/eztv/powerful/recycleview/a/c$e;->b:Landroid/view/View;

    new-instance v2, Lcom/eztv/powerful/recycleview/a/c$b;

    invoke-direct {v2, p0, p2, p1}, Lcom/eztv/powerful/recycleview/a/c$b;-><init>(Lcom/eztv/powerful/recycleview/a/c;ILcom/eztv/powerful/recycleview/a/c$e;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v1, p1, Lcom/eztv/powerful/recycleview/a/c$e;->b:Landroid/view/View;

    new-instance v2, Lcom/eztv/powerful/recycleview/a/c$a;

    invoke-direct {v2, p0, p2, p1}, Lcom/eztv/powerful/recycleview/a/c$a;-><init>(Lcom/eztv/powerful/recycleview/a/c;ILcom/eztv/powerful/recycleview/a/c$e;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p1, Lcom/eztv/powerful/recycleview/a/c$e;->b:Landroid/view/View;

    new-instance v2, Lcom/eztv/powerful/recycleview/a/c$d;

    invoke-direct {v2, p0, p2, p1}, Lcom/eztv/powerful/recycleview/a/c$d;-><init>(Lcom/eztv/powerful/recycleview/a/c;ILcom/eztv/powerful/recycleview/a/c$e;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v1, p1, Lcom/eztv/powerful/recycleview/a/c$e;->b:Landroid/view/View;

    new-instance v2, Lcom/eztv/powerful/recycleview/a/c$c;

    invoke-direct {v2, p0, p2, p1}, Lcom/eztv/powerful/recycleview/a/c$c;-><init>(Lcom/eztv/powerful/recycleview/a/c;ILcom/eztv/powerful/recycleview/a/c$e;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v1, p1, Lcom/eztv/powerful/recycleview/a/c$e;->r:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/eztv/powerful/recycleview/b/d;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Lcom/eztv/powerful/recycleview/a/c$e;->s:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/eztv/powerful/recycleview/b/d;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Lcom/eztv/powerful/recycleview/c/c;)V
    .locals 0

    iput-object p1, p0, Lcom/eztv/powerful/recycleview/a/c;->c:Lcom/eztv/powerful/recycleview/c/c;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/eztv/powerful/recycleview/b/d;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/eztv/powerful/recycleview/a/c;->a:Ljava/util/List;

    return-void
.end method

.method public synthetic b(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$x;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/eztv/powerful/recycleview/a/c;->a(Landroid/view/ViewGroup;I)Lcom/eztv/powerful/recycleview/a/c$e;

    move-result-object v0

    return-object v0
.end method
