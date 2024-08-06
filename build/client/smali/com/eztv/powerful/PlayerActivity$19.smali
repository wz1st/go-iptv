.class Lcom/eztv/powerful/PlayerActivity$19;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/eztv/powerful/recycleview/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eztv/powerful/PlayerActivity;->a(Lcom/eztv/powerful/recycleview/layoutmanager/MovieClassificationLinearLayoutManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/eztv/powerful/recycleview/layoutmanager/MovieClassificationLinearLayoutManager;

.field final synthetic b:Lcom/eztv/powerful/PlayerActivity;


# direct methods
.method constructor <init>(Lcom/eztv/powerful/PlayerActivity;Lcom/eztv/powerful/recycleview/layoutmanager/MovieClassificationLinearLayoutManager;)V
    .locals 0

    iput-object p1, p0, Lcom/eztv/powerful/PlayerActivity$19;->b:Lcom/eztv/powerful/PlayerActivity;

    iput-object p2, p0, Lcom/eztv/powerful/PlayerActivity$19;->a:Lcom/eztv/powerful/recycleview/layoutmanager/MovieClassificationLinearLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/eztv/powerful/recycleview/a/a$c;Landroid/view/View;ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/eztv/powerful/recycleview/a/a$c;",
            "Landroid/view/View;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/eztv/powerful/recycleview/b/b;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$19;->b:Lcom/eztv/powerful/PlayerActivity;

    invoke-virtual {v0, p3}, Lcom/eztv/powerful/PlayerActivity;->a(I)V

    return-void
.end method

.method public a(Lcom/eztv/powerful/recycleview/a/a$c;Landroid/view/View;ZI)V
    .locals 3

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$19;->b:Lcom/eztv/powerful/PlayerActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/eztv/powerful/PlayerActivity;->a(Lcom/eztv/powerful/PlayerActivity;Z)Z

    :cond_0
    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$19;->a:Lcom/eztv/powerful/recycleview/layoutmanager/MovieClassificationLinearLayoutManager;

    iget-object v1, p0, Lcom/eztv/powerful/PlayerActivity$19;->b:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v1}, Lcom/eztv/powerful/PlayerActivity;->H(Lcom/eztv/powerful/PlayerActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    new-instance v2, Landroid/support/v7/widget/RecyclerView$u;

    invoke-direct {v2}, Landroid/support/v7/widget/RecyclerView$u;-><init>()V

    invoke-virtual {v0, v1, v2, p4}, Lcom/eztv/powerful/recycleview/layoutmanager/MovieClassificationLinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$u;I)V

    return-void
.end method
