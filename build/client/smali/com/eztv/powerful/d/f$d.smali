.class Lcom/eztv/powerful/d/f$d;
.super Landroid/support/v7/widget/RecyclerView$x;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eztv/powerful/d/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/eztv/powerful/d/f;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/widget/TextView;

.field private t:Lcom/airbnb/lottie/LottieAnimationView;

.field private u:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/eztv/powerful/d/f;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/eztv/powerful/d/f$d;->a:Lcom/eztv/powerful/d/f;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$x;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a01f4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/eztv/powerful/d/f$d;->r:Landroid/widget/TextView;

    const v0, 0x7f0a01f5

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/eztv/powerful/d/f$d;->s:Landroid/widget/TextView;

    const v0, 0x7f0a0133

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/eztv/powerful/d/f$d;->t:Lcom/airbnb/lottie/LottieAnimationView;

    const v0, 0x7f0a0092

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/eztv/powerful/d/f$d;->u:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic a(Lcom/eztv/powerful/d/f$d;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/eztv/powerful/d/f$d;->u:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic b(Lcom/eztv/powerful/d/f$d;)Lcom/airbnb/lottie/LottieAnimationView;
    .locals 1

    iget-object v0, p0, Lcom/eztv/powerful/d/f$d;->t:Lcom/airbnb/lottie/LottieAnimationView;

    return-object v0
.end method

.method static synthetic c(Lcom/eztv/powerful/d/f$d;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/eztv/powerful/d/f$d;->r:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Lcom/eztv/powerful/d/f$d;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/eztv/powerful/d/f$d;->s:Landroid/widget/TextView;

    return-object v0
.end method
