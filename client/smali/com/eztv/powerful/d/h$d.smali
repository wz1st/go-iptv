.class public Lcom/eztv/powerful/d/h$d;
.super Landroid/support/v7/widget/RecyclerView$x;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eztv/powerful/d/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public a:Landroid/widget/TextView;

.field public r:Landroid/widget/TextView;

.field final synthetic s:Lcom/eztv/powerful/d/h;


# direct methods
.method public constructor <init>(Lcom/eztv/powerful/d/h;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/eztv/powerful/d/h$d;->s:Lcom/eztv/powerful/d/h;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$x;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a0206

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/eztv/powerful/d/h$d;->a:Landroid/widget/TextView;

    const v0, 0x7f0a0205

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/eztv/powerful/d/h$d;->r:Landroid/widget/TextView;

    return-void
.end method
