.class Lcom/eztv/powerful/PlayerActivity$73;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eztv/powerful/PlayerActivity;->p()V
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

    iput-object p1, p0, Lcom/eztv/powerful/PlayerActivity$73;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$73;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v0}, Lcom/eztv/powerful/PlayerActivity;->as(Lcom/eztv/powerful/PlayerActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$73;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v0}, Lcom/eztv/powerful/PlayerActivity;->as(Lcom/eztv/powerful/PlayerActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$73;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-virtual {v0}, Lcom/eztv/powerful/PlayerActivity;->p()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$73;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-virtual {v0}, Lcom/eztv/powerful/PlayerActivity;->p()V

    goto :goto_0
.end method
