.class Lcom/eztv/powerful/widget/a/a$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/eztv/powerful/widget/a/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eztv/powerful/widget/a/a;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/eztv/powerful/recycleview/layoutmanager/MovieClassificationLinearLayoutManager;

.field final synthetic b:Lcom/eztv/powerful/recycleview/layoutmanager/MovieLinearLayoutManager;

.field final synthetic c:Lcom/eztv/powerful/widget/a/a;


# direct methods
.method constructor <init>(Lcom/eztv/powerful/widget/a/a;Lcom/eztv/powerful/recycleview/layoutmanager/MovieClassificationLinearLayoutManager;Lcom/eztv/powerful/recycleview/layoutmanager/MovieLinearLayoutManager;)V
    .locals 0

    iput-object p1, p0, Lcom/eztv/powerful/widget/a/a$4;->c:Lcom/eztv/powerful/widget/a/a;

    iput-object p2, p0, Lcom/eztv/powerful/widget/a/a$4;->a:Lcom/eztv/powerful/recycleview/layoutmanager/MovieClassificationLinearLayoutManager;

    iput-object p3, p0, Lcom/eztv/powerful/widget/a/a$4;->b:Lcom/eztv/powerful/recycleview/layoutmanager/MovieLinearLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/eztv/powerful/widget/a/a/a$b;Landroid/view/View;ZI)V
    .locals 4

    const v2, 0x7f0a01f9

    const/16 v1, 0x8

    sget-object v0, Lcom/eztv/powerful/widget/a/a;->g:Landroid/view/View;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/eztv/powerful/widget/a/a;->g:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/eztv/powerful/widget/a/a$4;->a:Lcom/eztv/powerful/recycleview/layoutmanager/MovieClassificationLinearLayoutManager;

    iget-object v1, p0, Lcom/eztv/powerful/widget/a/a$4;->c:Lcom/eztv/powerful/widget/a/a;

    iget-object v1, v1, Lcom/eztv/powerful/widget/a/a;->e:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Landroid/support/v7/widget/RecyclerView$u;

    invoke-direct {v2}, Landroid/support/v7/widget/RecyclerView$u;-><init>()V

    invoke-virtual {v0, v1, v2, p4}, Lcom/eztv/powerful/recycleview/layoutmanager/MovieClassificationLinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$u;I)V

    iget-object v0, p0, Lcom/eztv/powerful/widget/a/a$4;->c:Lcom/eztv/powerful/widget/a/a;

    iput p4, v0, Lcom/eztv/powerful/widget/a/a;->i:I

    sput-object p2, Lcom/eztv/powerful/widget/a/a;->g:Landroid/view/View;

    iget-object v1, p0, Lcom/eztv/powerful/widget/a/a$4;->c:Lcom/eztv/powerful/widget/a/a;

    new-instance v2, Lcom/eztv/powerful/widget/a/a/b;

    sget-object v3, Lcom/eztv/powerful/widget/a/a;->a:Lcom/eztv/powerful/PlayerActivity;

    iget-object v0, p0, Lcom/eztv/powerful/widget/a/a$4;->c:Lcom/eztv/powerful/widget/a/a;

    iget-object v0, v0, Lcom/eztv/powerful/widget/a/a;->b:Ljava/util/List;

    invoke-interface {v0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eztv/powerful/widget/a/b/a;

    invoke-virtual {v0}, Lcom/eztv/powerful/widget/a/b/a;->c()Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/eztv/powerful/widget/a/a/b;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v2, v1, Lcom/eztv/powerful/widget/a/a;->k:Lcom/eztv/powerful/widget/a/a/b;

    iget-object v0, p0, Lcom/eztv/powerful/widget/a/a$4;->c:Lcom/eztv/powerful/widget/a/a;

    iget-object v0, v0, Lcom/eztv/powerful/widget/a/a;->k:Lcom/eztv/powerful/widget/a/a/b;

    new-instance v1, Lcom/eztv/powerful/widget/a/a$4$1;

    invoke-direct {v1, p0}, Lcom/eztv/powerful/widget/a/a$4$1;-><init>(Lcom/eztv/powerful/widget/a/a$4;)V

    invoke-virtual {v0, v1}, Lcom/eztv/powerful/widget/a/a/b;->a(Lcom/eztv/powerful/widget/a/c/b;)V

    iget-object v0, p0, Lcom/eztv/powerful/widget/a/a$4;->c:Lcom/eztv/powerful/widget/a/a;

    iget-object v0, v0, Lcom/eztv/powerful/widget/a/a;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/eztv/powerful/widget/a/a$4;->c:Lcom/eztv/powerful/widget/a/a;

    iget-object v1, v1, Lcom/eztv/powerful/widget/a/a;->k:Lcom/eztv/powerful/widget/a/a/b;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    iget-object v0, p0, Lcom/eztv/powerful/widget/a/a$4;->c:Lcom/eztv/powerful/widget/a/a;

    invoke-static {v0}, Lcom/eztv/powerful/widget/a/a;->c(Lcom/eztv/powerful/widget/a/a;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
