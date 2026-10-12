.class public Lcom/eztv/powerful/d/d$e;
.super Landroid/support/v7/widget/RecyclerView$x;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eztv/powerful/d/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# instance fields
.field public a:Landroid/widget/TextView;

.field final synthetic r:Lcom/eztv/powerful/d/d;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/widget/TextView;

.field private u:Landroid/widget/TextView;

.field private v:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Lcom/eztv/powerful/d/d;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/eztv/powerful/d/d$e;->r:Lcom/eztv/powerful/d/d;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$x;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a01e9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/eztv/powerful/d/d$e;->s:Landroid/widget/TextView;

    const v0, 0x7f0a009e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/eztv/powerful/d/d$e;->t:Landroid/widget/TextView;

    const v0, 0x7f0a01e8

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/eztv/powerful/d/d$e;->u:Landroid/widget/TextView;

    const v0, 0x7f0a01ea

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/eztv/powerful/d/d$e;->a:Landroid/widget/TextView;

    const v0, 0x7f0a00fd

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/eztv/powerful/d/d$e;->v:Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic a(Lcom/eztv/powerful/d/d$e;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/eztv/powerful/d/d$e;->s:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic b(Lcom/eztv/powerful/d/d$e;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/eztv/powerful/d/d$e;->u:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic c(Lcom/eztv/powerful/d/d$e;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/eztv/powerful/d/d$e;->t:Landroid/widget/TextView;

    return-object v0
.end method
