.class public Lcom/eztv/powerful/widget/a/a/a;
.super Landroid/support/v7/widget/RecyclerView$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eztv/powerful/widget/a/a/a$a;,
        Lcom/eztv/powerful/widget/a/a/a$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$a",
        "<",
        "Lcom/eztv/powerful/widget/a/a/a$b;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/eztv/powerful/widget/a/b/a;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/eztv/powerful/widget/a/c/a;

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
            "Lcom/eztv/powerful/widget/a/b/a;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    iput-object p2, p0, Lcom/eztv/powerful/widget/a/a/a;->a:Ljava/util/List;

    iput-object p1, p0, Lcom/eztv/powerful/widget/a/a/a;->c:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/eztv/powerful/widget/a/a/a;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/eztv/powerful/widget/a/a/a;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/eztv/powerful/widget/a/a/a;)Lcom/eztv/powerful/widget/a/c/a;
    .locals 1

    iget-object v0, p0, Lcom/eztv/powerful/widget/a/a/a;->b:Lcom/eztv/powerful/widget/a/c/a;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lcom/eztv/powerful/widget/a/a/a;->a:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/eztv/powerful/widget/a/a/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public a(I)I
    .locals 0

    return p1
.end method

.method public a(Landroid/view/ViewGroup;I)Lcom/eztv/powerful/widget/a/a/a$b;
    .locals 3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c002b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/eztv/powerful/widget/a/a/a$b;

    invoke-direct {v1, v0}, Lcom/eztv/powerful/widget/a/a/a$b;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method public bridge synthetic a(Landroid/support/v7/widget/RecyclerView$x;I)V
    .locals 0

    check-cast p1, Lcom/eztv/powerful/widget/a/a/a$b;

    invoke-virtual {p0, p1, p2}, Lcom/eztv/powerful/widget/a/a/a;->a(Lcom/eztv/powerful/widget/a/a/a$b;I)V

    return-void
.end method

.method public a(Lcom/eztv/powerful/widget/a/a/a$b;I)V
    .locals 4

    iget-object v0, p0, Lcom/eztv/powerful/widget/a/a/a;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eztv/powerful/widget/a/b/a;

    iget-object v1, p1, Lcom/eztv/powerful/widget/a/a/a$b;->b:Landroid/view/View;

    new-instance v2, Lcom/eztv/powerful/widget/a/a/a$a;

    invoke-direct {v2, p0, p2, p1}, Lcom/eztv/powerful/widget/a/a/a$a;-><init>(Lcom/eztv/powerful/widget/a/a/a;ILcom/eztv/powerful/widget/a/a/a$b;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v1, p1, Lcom/eztv/powerful/widget/a/a/a$b;->a:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Lcom/eztv/powerful/widget/a/a/a$b;->r:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/eztv/powerful/widget/a/b/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/eztv/powerful/widget/a/a/a$b;->s:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public a(Lcom/eztv/powerful/widget/a/c/a;)V
    .locals 0

    iput-object p1, p0, Lcom/eztv/powerful/widget/a/a/a;->b:Lcom/eztv/powerful/widget/a/c/a;

    return-void
.end method

.method public synthetic b(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$x;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/eztv/powerful/widget/a/a/a;->a(Landroid/view/ViewGroup;I)Lcom/eztv/powerful/widget/a/a/a$b;

    move-result-object v0

    return-object v0
.end method
