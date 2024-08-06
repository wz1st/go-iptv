.class public Lcom/eztv/powerful/d/g;
.super Landroid/support/v7/widget/RecyclerView$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eztv/powerful/d/g$a;,
        Lcom/eztv/powerful/d/g$b;,
        Lcom/eztv/powerful/d/g$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$a",
        "<",
        "Lcom/eztv/powerful/d/g$c;",
        ">;"
    }
.end annotation


# static fields
.field public static a:F


# instance fields
.field private b:I

.field private c:I

.field private d:Landroid/content/Context;

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/eztv/powerful/b/f;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/eztv/powerful/d/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x41c80000    # 25.0f

    sput v0, Lcom/eztv/powerful/d/g;->a:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/eztv/powerful/b/f;",
            ">;I)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    iput v0, p0, Lcom/eztv/powerful/d/g;->b:I

    iput v0, p0, Lcom/eztv/powerful/d/g;->c:I

    iput-object p1, p0, Lcom/eztv/powerful/d/g;->d:Landroid/content/Context;

    iput-object p2, p0, Lcom/eztv/powerful/d/g;->e:Ljava/util/ArrayList;

    iput p3, p0, Lcom/eztv/powerful/d/g;->b:I

    iput p3, p0, Lcom/eztv/powerful/d/g;->c:I

    return-void
.end method

.method static synthetic a(Lcom/eztv/powerful/d/g;)Lcom/eztv/powerful/d/i;
    .locals 1

    iget-object v0, p0, Lcom/eztv/powerful/d/g;->f:Lcom/eztv/powerful/d/i;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lcom/eztv/powerful/d/g;->e:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/eztv/powerful/d/g;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public a(Landroid/view/ViewGroup;I)Lcom/eztv/powerful/d/g$c;
    .locals 3

    iget-object v0, p0, Lcom/eztv/powerful/d/g;->d:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c002f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/eztv/powerful/d/g$c;

    invoke-direct {v1, p0, v0}, Lcom/eztv/powerful/d/g$c;-><init>(Lcom/eztv/powerful/d/g;Landroid/view/View;)V

    return-object v1
.end method

.method public bridge synthetic a(Landroid/support/v7/widget/RecyclerView$x;I)V
    .locals 0

    check-cast p1, Lcom/eztv/powerful/d/g$c;

    invoke-virtual {p0, p1, p2}, Lcom/eztv/powerful/d/g;->a(Lcom/eztv/powerful/d/g$c;I)V

    return-void
.end method

.method public a(Lcom/eztv/powerful/d/g$c;I)V
    .locals 3

    iget-object v0, p1, Lcom/eztv/powerful/d/g$c;->b:Landroid/view/View;

    const v1, 0x7f0a0204

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/eztv/powerful/d/g;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06002d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v0, p1, Lcom/eztv/powerful/d/g$c;->r:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p1, Lcom/eztv/powerful/d/g$c;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/eztv/powerful/d/g;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eztv/powerful/b/f;

    iget-object v0, v0, Lcom/eztv/powerful/b/f;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/eztv/powerful/d/g$c;->b:Landroid/view/View;

    new-instance v1, Lcom/eztv/powerful/d/g$a;

    invoke-direct {v1, p0, p2, p1}, Lcom/eztv/powerful/d/g$a;-><init>(Lcom/eztv/powerful/d/g;ILcom/eztv/powerful/d/g$c;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p1, Lcom/eztv/powerful/d/g$c;->b:Landroid/view/View;

    new-instance v1, Lcom/eztv/powerful/d/g$b;

    invoke-direct {v1, p0, p2, p1}, Lcom/eztv/powerful/d/g$b;-><init>(Lcom/eztv/powerful/d/g;ILcom/eztv/powerful/d/g$c;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget v0, p0, Lcom/eztv/powerful/d/g;->c:I

    if-ne p2, v0, :cond_0

    iget-object v0, p1, Lcom/eztv/powerful/d/g$c;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/eztv/powerful/d/g;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060077

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v0, p1, Lcom/eztv/powerful/d/g$c;->r:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    if-nez p2, :cond_1

    iget-object v0, p1, Lcom/eztv/powerful/d/g$c;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_1
    return-void
.end method

.method public a(Lcom/eztv/powerful/d/i;)V
    .locals 0

    iput-object p1, p0, Lcom/eztv/powerful/d/g;->f:Lcom/eztv/powerful/d/i;

    return-void
.end method

.method public b(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public synthetic b(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$x;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/eztv/powerful/d/g;->a(Landroid/view/ViewGroup;I)Lcom/eztv/powerful/d/g$c;

    move-result-object v0

    return-object v0
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/eztv/powerful/d/g;->c:I

    return-void
.end method
