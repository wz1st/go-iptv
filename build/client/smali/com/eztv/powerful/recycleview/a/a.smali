.class public Lcom/eztv/powerful/recycleview/a/a;
.super Landroid/support/v7/widget/RecyclerView$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eztv/powerful/recycleview/a/a$a;,
        Lcom/eztv/powerful/recycleview/a/a$b;,
        Lcom/eztv/powerful/recycleview/a/a$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$a",
        "<",
        "Lcom/eztv/powerful/recycleview/a/a$c;",
        ">;"
    }
.end annotation


# instance fields
.field a:I

.field private b:Lcom/eztv/powerful/recycleview/c/a;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/eztv/powerful/recycleview/b/b;",
            ">;"
        }
    .end annotation
.end field

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
            "Lcom/eztv/powerful/recycleview/b/b;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/eztv/powerful/recycleview/a/a;->a:I

    iput-object p2, p0, Lcom/eztv/powerful/recycleview/a/a;->c:Ljava/util/List;

    iput-object p1, p0, Lcom/eztv/powerful/recycleview/a/a;->d:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/eztv/powerful/recycleview/a/a;)Lcom/eztv/powerful/recycleview/c/a;
    .locals 1

    iget-object v0, p0, Lcom/eztv/powerful/recycleview/a/a;->b:Lcom/eztv/powerful/recycleview/c/a;

    return-object v0
.end method

.method static synthetic a(Lcom/eztv/powerful/recycleview/a/a;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/eztv/powerful/recycleview/a/a;->f(I)V

    return-void
.end method

.method static synthetic b(Lcom/eztv/powerful/recycleview/a/a;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/eztv/powerful/recycleview/a/a;->c:Ljava/util/List;

    return-object v0
.end method

.method private f(I)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/eztv/powerful/recycleview/a/a;->c:Ljava/util/List;

    iget v1, p0, Lcom/eztv/powerful/recycleview/a/a;->a:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eztv/powerful/recycleview/b/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/eztv/powerful/recycleview/b/b;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/eztv/powerful/recycleview/a/a;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eztv/powerful/recycleview/b/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/eztv/powerful/recycleview/b/b;->a(Z)V

    iput p1, p0, Lcom/eztv/powerful/recycleview/a/a;->a:I

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/e/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lcom/eztv/powerful/recycleview/a/a;->c:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/eztv/powerful/recycleview/a/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public a(Landroid/view/ViewGroup;I)Lcom/eztv/powerful/recycleview/a/a$c;
    .locals 3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0028

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/eztv/powerful/recycleview/a/a$c;

    invoke-direct {v1, v0}, Lcom/eztv/powerful/recycleview/a/a$c;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method public bridge synthetic a(Landroid/support/v7/widget/RecyclerView$x;I)V
    .locals 0

    check-cast p1, Lcom/eztv/powerful/recycleview/a/a$c;

    invoke-virtual {p0, p1, p2}, Lcom/eztv/powerful/recycleview/a/a;->a(Lcom/eztv/powerful/recycleview/a/a$c;I)V

    return-void
.end method

.method public a(Lcom/eztv/powerful/recycleview/a/a$c;I)V
    .locals 2

    iget-object v0, p0, Lcom/eztv/powerful/recycleview/a/a;->c:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eztv/powerful/recycleview/b/b;

    invoke-virtual {v0}, Lcom/eztv/powerful/recycleview/b/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/eztv/powerful/recycleview/a/a$c;->b:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    :goto_0
    iget-object v0, p0, Lcom/eztv/powerful/recycleview/a/a;->c:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eztv/powerful/recycleview/b/b;

    iget-object v1, p1, Lcom/eztv/powerful/recycleview/a/a$c;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/eztv/powerful/recycleview/b/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/eztv/powerful/recycleview/a/a$c;->b:Landroid/view/View;

    new-instance v1, Lcom/eztv/powerful/recycleview/a/a$b;

    invoke-direct {v1, p0, p2, p1}, Lcom/eztv/powerful/recycleview/a/a$b;-><init>(Lcom/eztv/powerful/recycleview/a/a;ILcom/eztv/powerful/recycleview/a/a$c;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p1, Lcom/eztv/powerful/recycleview/a/a$c;->b:Landroid/view/View;

    new-instance v1, Lcom/eztv/powerful/recycleview/a/a$a;

    invoke-direct {v1, p0, p2, p1}, Lcom/eztv/powerful/recycleview/a/a$a;-><init>(Lcom/eztv/powerful/recycleview/a/a;ILcom/eztv/powerful/recycleview/a/a$c;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    iget-object v0, p1, Lcom/eztv/powerful/recycleview/a/a$c;->b:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0
.end method

.method public a(Lcom/eztv/powerful/recycleview/c/a;)V
    .locals 0

    iput-object p1, p0, Lcom/eztv/powerful/recycleview/a/a;->b:Lcom/eztv/powerful/recycleview/c/a;

    return-void
.end method

.method public synthetic b(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$x;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/eztv/powerful/recycleview/a/a;->a(Landroid/view/ViewGroup;I)Lcom/eztv/powerful/recycleview/a/a$c;

    move-result-object v0

    return-object v0
.end method
