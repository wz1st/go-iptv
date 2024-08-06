.class Lcom/eztv/powerful/widget/a/a$4$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/eztv/powerful/widget/a/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eztv/powerful/widget/a/a$4;->a(Lcom/eztv/powerful/widget/a/a/a$b;Landroid/view/View;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/eztv/powerful/widget/a/a$4;


# direct methods
.method constructor <init>(Lcom/eztv/powerful/widget/a/a$4;)V
    .locals 0

    iput-object p1, p0, Lcom/eztv/powerful/widget/a/a$4$1;->a:Lcom/eztv/powerful/widget/a/a$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/eztv/powerful/widget/a/a/b$c;Landroid/view/View;ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/eztv/powerful/widget/a/a/b$c;",
            "Landroid/view/View;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/eztv/powerful/widget/a/b/b;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/eztv/powerful/widget/a/a$4$1;->a:Lcom/eztv/powerful/widget/a/a$4;

    iget-object v0, v0, Lcom/eztv/powerful/widget/a/a$4;->c:Lcom/eztv/powerful/widget/a/a;

    invoke-virtual {v0, p3}, Lcom/eztv/powerful/widget/a/a;->a(I)V

    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eztv/powerful/widget/a/b/b;

    invoke-virtual {v0}, Lcom/eztv/powerful/widget/a/b/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eztv/powerful/a/a/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eztv/powerful/widget/a/a$4$1;->a:Lcom/eztv/powerful/widget/a/a$4;

    iget-object v1, v0, Lcom/eztv/powerful/widget/a/a$4;->c:Lcom/eztv/powerful/widget/a/a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5f53\u524d\u64ad\u653e: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eztv/powerful/widget/a/b/b;

    invoke-virtual {v0}, Lcom/eztv/powerful/widget/a/b/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/eztv/powerful/widget/a/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eztv/powerful/widget/a/a$4$1;->a:Lcom/eztv/powerful/widget/a/a$4;

    iget-object v0, v0, Lcom/eztv/powerful/widget/a/a$4;->c:Lcom/eztv/powerful/widget/a/a;

    invoke-static {v0}, Lcom/eztv/powerful/widget/a/a;->a(Lcom/eztv/powerful/widget/a/a;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    iget-object v0, p0, Lcom/eztv/powerful/widget/a/a$4$1;->a:Lcom/eztv/powerful/widget/a/a$4;

    iget-object v0, v0, Lcom/eztv/powerful/widget/a/a$4;->c:Lcom/eztv/powerful/widget/a/a;

    iput-object p2, v0, Lcom/eztv/powerful/widget/a/a;->m:Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/e/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Lcom/eztv/powerful/widget/a/a/b$c;Landroid/view/View;ZI)V
    .locals 3

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/eztv/powerful/widget/a/a$4$1;->a:Lcom/eztv/powerful/widget/a/a$4;

    iget-object v0, v0, Lcom/eztv/powerful/widget/a/a$4;->b:Lcom/eztv/powerful/recycleview/layoutmanager/MovieLinearLayoutManager;

    iget-object v1, p0, Lcom/eztv/powerful/widget/a/a$4$1;->a:Lcom/eztv/powerful/widget/a/a$4;

    iget-object v1, v1, Lcom/eztv/powerful/widget/a/a$4;->c:Lcom/eztv/powerful/widget/a/a;

    iget-object v1, v1, Lcom/eztv/powerful/widget/a/a;->f:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Landroid/support/v7/widget/RecyclerView$u;

    invoke-direct {v2}, Landroid/support/v7/widget/RecyclerView$u;-><init>()V

    invoke-virtual {v0, v1, v2, p4}, Lcom/eztv/powerful/recycleview/layoutmanager/MovieLinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$u;I)V

    :cond_0
    return-void
.end method
