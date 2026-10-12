.class Lcom/eztv/powerful/PlayerActivity$1$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/eztv/powerful/recycleview/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eztv/powerful/PlayerActivity$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/eztv/powerful/PlayerActivity$1;


# direct methods
.method constructor <init>(Lcom/eztv/powerful/PlayerActivity$1;)V
    .locals 0

    iput-object p1, p0, Lcom/eztv/powerful/PlayerActivity$1$2;->a:Lcom/eztv/powerful/PlayerActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/eztv/powerful/recycleview/a/b$b;Landroid/view/View;I)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$1$2;->a:Lcom/eztv/powerful/PlayerActivity$1;

    iget-object v0, v0, Lcom/eztv/powerful/PlayerActivity$1;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v0}, Lcom/eztv/powerful/PlayerActivity;->G(Lcom/eztv/powerful/PlayerActivity;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0197

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$1$2;->a:Lcom/eztv/powerful/PlayerActivity$1;

    iget-object v0, v0, Lcom/eztv/powerful/PlayerActivity$1;->a:Lcom/eztv/powerful/PlayerActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/eztv/powerful/PlayerActivity;->aN:Z

    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$1$2;->a:Lcom/eztv/powerful/PlayerActivity$1;

    iget-object v0, v0, Lcom/eztv/powerful/PlayerActivity$1;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v0}, Lcom/eztv/powerful/PlayerActivity;->G(Lcom/eztv/powerful/PlayerActivity;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0083

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/eztv/powerful/PlayerActivity$1$2;->a:Lcom/eztv/powerful/PlayerActivity$1;

    iget-object v1, v1, Lcom/eztv/powerful/PlayerActivity$1;->a:Lcom/eztv/powerful/PlayerActivity;

    iget-object v1, v1, Lcom/eztv/powerful/PlayerActivity;->aM:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0xa2

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/eztv/powerful/PlayerActivity$1$2;->a:Lcom/eztv/powerful/PlayerActivity$1;

    invoke-virtual {v1, v0}, Lcom/eztv/powerful/PlayerActivity$1;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
