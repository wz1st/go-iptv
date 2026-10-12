.class Lcom/eztv/powerful/recycleview/tvrecyclerview/TvGridLayoutManager$1;
.super Lcom/eztv/powerful/recycleview/tvrecyclerview/TvGridLayoutManager$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eztv/powerful/recycleview/tvrecyclerview/TvGridLayoutManager;->a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$u;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/eztv/powerful/recycleview/tvrecyclerview/TvGridLayoutManager;


# direct methods
.method constructor <init>(Lcom/eztv/powerful/recycleview/tvrecyclerview/TvGridLayoutManager;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/eztv/powerful/recycleview/tvrecyclerview/TvGridLayoutManager$1;->a:Lcom/eztv/powerful/recycleview/tvrecyclerview/TvGridLayoutManager;

    invoke-direct {p0, p1, p2}, Lcom/eztv/powerful/recycleview/tvrecyclerview/TvGridLayoutManager$a;-><init>(Lcom/eztv/powerful/recycleview/tvrecyclerview/TvGridLayoutManager;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a(I)Landroid/graphics/PointF;
    .locals 1

    iget-object v0, p0, Lcom/eztv/powerful/recycleview/tvrecyclerview/TvGridLayoutManager$1;->a:Lcom/eztv/powerful/recycleview/tvrecyclerview/TvGridLayoutManager;

    invoke-virtual {v0, p1}, Lcom/eztv/powerful/recycleview/tvrecyclerview/TvGridLayoutManager;->f(I)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method
