.class public Lcom/eztv/powerful/recycleview/tvrecyclerview/TvLinearLayoutManager;
.super Landroid/support/v7/widget/LinearLayoutManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eztv/powerful/recycleview/tvrecyclerview/TvLinearLayoutManager$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public a(I)Landroid/graphics/PointF;
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->d(I)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$u;I)V
    .locals 2

    new-instance v0, Lcom/eztv/powerful/recycleview/tvrecyclerview/TvLinearLayoutManager$1;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/eztv/powerful/recycleview/tvrecyclerview/TvLinearLayoutManager$1;-><init>(Lcom/eztv/powerful/recycleview/tvrecyclerview/TvLinearLayoutManager;Landroid/content/Context;)V

    invoke-virtual {v0, p3}, Lcom/eztv/powerful/recycleview/tvrecyclerview/TvLinearLayoutManager$a;->d(I)V

    invoke-virtual {p0, v0}, Lcom/eztv/powerful/recycleview/tvrecyclerview/TvLinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$t;)V

    return-void
.end method
