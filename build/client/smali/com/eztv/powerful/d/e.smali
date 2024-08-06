.class public Lcom/eztv/powerful/d/e;
.super Landroid/support/v7/widget/RecyclerView$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eztv/powerful/d/e$b;,
        Lcom/eztv/powerful/d/e$d;,
        Lcom/eztv/powerful/d/e$a;,
        Lcom/eztv/powerful/d/e$c;,
        Lcom/eztv/powerful/d/e$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$a",
        "<",
        "Lcom/eztv/powerful/d/e$e;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:Landroid/content/Context;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/eztv/powerful/b/a;",
            ">;"
        }
    .end annotation
.end field

.field private e:F

.field private f:F

.field private g:F

.field private h:Lcom/eztv/powerful/d/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/eztv/powerful/b/a;",
            ">;I)V"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    iput v1, p0, Lcom/eztv/powerful/d/e;->a:I

    iput v1, p0, Lcom/eztv/powerful/d/e;->b:I

    iput v0, p0, Lcom/eztv/powerful/d/e;->e:F

    iput v0, p0, Lcom/eztv/powerful/d/e;->f:F

    iput v0, p0, Lcom/eztv/powerful/d/e;->g:F

    iput-object p1, p0, Lcom/eztv/powerful/d/e;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/eztv/powerful/d/e;->d:Ljava/util/ArrayList;

    iput p3, p0, Lcom/eztv/powerful/d/e;->a:I

    iput p3, p0, Lcom/eztv/powerful/d/e;->b:I

    return-void
.end method

.method static synthetic a(Lcom/eztv/powerful/d/e;)Lcom/eztv/powerful/d/b;
    .locals 1

    iget-object v0, p0, Lcom/eztv/powerful/d/e;->h:Lcom/eztv/powerful/d/b;

    return-object v0
.end method

.method static synthetic b(Lcom/eztv/powerful/d/e;)F
    .locals 1

    iget v0, p0, Lcom/eztv/powerful/d/e;->e:F

    return v0
.end method

.method static synthetic c(Lcom/eztv/powerful/d/e;)F
    .locals 1

    iget v0, p0, Lcom/eztv/powerful/d/e;->f:F

    return v0
.end method

.method static synthetic d(Lcom/eztv/powerful/d/e;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/eztv/powerful/d/e;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic e(Lcom/eztv/powerful/d/e;)F
    .locals 1

    iget v0, p0, Lcom/eztv/powerful/d/e;->g:F

    return v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lcom/eztv/powerful/d/e;->d:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/eztv/powerful/d/e;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public a(Landroid/view/ViewGroup;I)Lcom/eztv/powerful/d/e$e;
    .locals 4

    iget-object v0, p0, Lcom/eztv/powerful/d/e;->c:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0029

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/eztv/powerful/d/e$e;

    invoke-direct {v1, p0, v0}, Lcom/eztv/powerful/d/e$e;-><init>(Lcom/eztv/powerful/d/e;Landroid/view/View;)V

    iget-object v0, v1, Lcom/eztv/powerful/d/e$e;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getY()F

    move-result v0

    iget-object v2, p0, Lcom/eztv/powerful/d/e;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07040b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/eztv/powerful/d/e;->e:F

    iget-object v0, v1, Lcom/eztv/powerful/d/e$e;->r:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getY()F

    move-result v0

    iget-object v2, p0, Lcom/eztv/powerful/d/e;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0705d4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/eztv/powerful/d/e;->f:F

    iget-object v0, v1, Lcom/eztv/powerful/d/e$e;->r:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getY()F

    move-result v0

    iput v0, p0, Lcom/eztv/powerful/d/e;->g:F

    return-object v1
.end method

.method public bridge synthetic a(Landroid/support/v7/widget/RecyclerView$x;I)V
    .locals 0

    check-cast p1, Lcom/eztv/powerful/d/e$e;

    invoke-virtual {p0, p1, p2}, Lcom/eztv/powerful/d/e;->a(Lcom/eztv/powerful/d/e$e;I)V

    return-void
.end method

.method public a(Lcom/eztv/powerful/d/b;)V
    .locals 0

    iput-object p1, p0, Lcom/eztv/powerful/d/e;->h:Lcom/eztv/powerful/d/b;

    return-void
.end method

.method public a(Lcom/eztv/powerful/d/e$e;I)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lcom/eztv/powerful/d/e$e;->a(Z)V

    iget-object v0, p1, Lcom/eztv/powerful/d/e$e;->b:Landroid/view/View;

    const v1, 0x7f0a01eb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/eztv/powerful/d/e;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060033

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v0, p1, Lcom/eztv/powerful/d/e$e;->s:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p1, Lcom/eztv/powerful/d/e$e;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/eztv/powerful/d/e;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eztv/powerful/b/a;

    iget-object v0, v0, Lcom/eztv/powerful/b/a;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/eztv/powerful/d/e$e;->b:Landroid/view/View;

    new-instance v1, Lcom/eztv/powerful/d/e$b;

    invoke-direct {v1, p0, p2, p1}, Lcom/eztv/powerful/d/e$b;-><init>(Lcom/eztv/powerful/d/e;ILcom/eztv/powerful/d/e$e;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p1, Lcom/eztv/powerful/d/e$e;->b:Landroid/view/View;

    new-instance v1, Lcom/eztv/powerful/d/e$a;

    invoke-direct {v1, p0, p2}, Lcom/eztv/powerful/d/e$a;-><init>(Lcom/eztv/powerful/d/e;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p1, Lcom/eztv/powerful/d/e$e;->b:Landroid/view/View;

    new-instance v1, Lcom/eztv/powerful/d/e$d;

    invoke-direct {v1, p0, p2}, Lcom/eztv/powerful/d/e$d;-><init>(Lcom/eztv/powerful/d/e;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p1, Lcom/eztv/powerful/d/e$e;->b:Landroid/view/View;

    new-instance v1, Lcom/eztv/powerful/d/e$c;

    invoke-direct {v1, p0, p2, p1}, Lcom/eztv/powerful/d/e$c;-><init>(Lcom/eztv/powerful/d/e;ILcom/eztv/powerful/d/e$e;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget v0, p0, Lcom/eztv/powerful/d/e;->b:I

    if-ne p2, v0, :cond_0

    iget-object v0, p1, Lcom/eztv/powerful/d/e$e;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/eztv/powerful/d/e;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060077

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v0, p1, Lcom/eztv/powerful/d/e$e;->s:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public b(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public synthetic b(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$x;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/eztv/powerful/d/e;->a(Landroid/view/ViewGroup;I)Lcom/eztv/powerful/d/e$e;

    move-result-object v0

    return-object v0
.end method

.method public f(I)V
    .locals 0

    iput p1, p0, Lcom/eztv/powerful/d/e;->b:I

    invoke-virtual {p0}, Lcom/eztv/powerful/d/e;->c()V

    return-void
.end method
