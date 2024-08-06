.class Lcom/eztv/powerful/PlayerActivity$81;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eztv/powerful/PlayerActivity;->aq()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/eztv/powerful/PlayerActivity;


# direct methods
.method constructor <init>(Lcom/eztv/powerful/PlayerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/eztv/powerful/PlayerActivity$81;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$81;->a:Lcom/eztv/powerful/PlayerActivity;

    iget-object v0, v0, Lcom/eztv/powerful/PlayerActivity;->aL:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$81;->a:Lcom/eztv/powerful/PlayerActivity;

    iget-object v0, v0, Lcom/eztv/powerful/PlayerActivity;->aL:Landroid/support/v7/widget/RecyclerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/eztv/powerful/PlayerActivity;->E:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$81;->a:Lcom/eztv/powerful/PlayerActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/eztv/powerful/PlayerActivity;->b(Lcom/eztv/powerful/PlayerActivity;Z)V

    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$81;->a:Lcom/eztv/powerful/PlayerActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/eztv/powerful/PlayerActivity;->c(Lcom/eztv/powerful/PlayerActivity;Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$81;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v0}, Lcom/eztv/powerful/PlayerActivity;->ax(Lcom/eztv/powerful/PlayerActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0
.end method
