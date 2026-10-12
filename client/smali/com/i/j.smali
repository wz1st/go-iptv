.class public Lcom/i/j;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/i/j$a;
    }
.end annotation


# instance fields
.field public a:Landroid/view/ViewGroup;

.field public b:Landroid/widget/TableLayout;

.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/TableLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/i/j;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/i/j;->a:Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/i/j;->b:Landroid/widget/TableLayout;

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/i/j;->c:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/i/j;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/i/j;->c:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/i/j;->b:Landroid/widget/TableLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, p2, p3}, Lcom/i/j;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/i/j;->b:Landroid/widget/TableLayout;

    invoke-virtual {v1, v0}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
    .locals 1

    const v0, 0x7f0c008a

    invoke-virtual {p0, v0, p1, p2}, Lcom/i/j;->a(ILjava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/View;)Lcom/i/j$a;
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/i/j$a;

    if-nez v0, :cond_0

    new-instance v1, Lcom/i/j$a;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/i/j$a;-><init>(Lcom/i/j$1;)V

    const v0, 0x7f0a0159

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/i/j$a;->a:Landroid/widget/TextView;

    const v0, 0x7f0a0219

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/i/j$a;->b:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    :cond_0
    return-object v0
.end method

.method public a(Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/i/j;->a(Landroid/view/View;)Lcom/i/j$a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/i/j$a;->b(Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/i/j;->a(Landroid/view/View;)Lcom/i/j$a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/i/j$a;->a(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/i/j$a;->b(Ljava/lang/String;)V

    return-void
.end method
