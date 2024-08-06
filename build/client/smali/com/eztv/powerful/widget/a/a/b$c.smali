.class public Lcom/eztv/powerful/widget/a/a/b$c;
.super Landroid/support/v7/widget/RecyclerView$x;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eztv/powerful/widget/a/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field a:Landroid/widget/ImageView;

.field r:Landroid/widget/TextView;

.field s:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$x;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a012c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/eztv/powerful/widget/a/a/b$c;->a:Landroid/widget/ImageView;

    const v0, 0x7f0a012a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/eztv/powerful/widget/a/a/b$c;->r:Landroid/widget/TextView;

    const v0, 0x7f0a012f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/eztv/powerful/widget/a/a/b$c;->s:Landroid/widget/TextView;

    return-void
.end method
