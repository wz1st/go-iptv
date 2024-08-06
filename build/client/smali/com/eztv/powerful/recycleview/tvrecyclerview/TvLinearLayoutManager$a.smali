.class abstract Lcom/eztv/powerful/recycleview/tvrecyclerview/TvLinearLayoutManager$a;
.super Landroid/support/v7/widget/ad;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eztv/powerful/recycleview/tvrecyclerview/TvLinearLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "a"
.end annotation


# instance fields
.field final synthetic b:Lcom/eztv/powerful/recycleview/tvrecyclerview/TvLinearLayoutManager;


# direct methods
.method public constructor <init>(Lcom/eztv/powerful/recycleview/tvrecyclerview/TvLinearLayoutManager;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/eztv/powerful/recycleview/tvrecyclerview/TvLinearLayoutManager$a;->b:Lcom/eztv/powerful/recycleview/tvrecyclerview/TvLinearLayoutManager;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/ad;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    invoke-super {p0}, Landroid/support/v7/widget/ad;->a()V

    invoke-virtual {p0}, Lcom/eztv/powerful/recycleview/tvrecyclerview/TvLinearLayoutManager$a;->n()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/eztv/powerful/recycleview/tvrecyclerview/TvLinearLayoutManager$a;->e(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_0
    invoke-super {p0}, Landroid/support/v7/widget/ad;->a()V

    return-void
.end method
