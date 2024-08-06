.class Lcom/eztv/powerful/PlayerActivity$79;
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

    iput-object p1, p0, Lcom/eztv/powerful/PlayerActivity$79;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$79;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v0, v1}, Lcom/eztv/powerful/PlayerActivity;->a(Lcom/eztv/powerful/PlayerActivity;Z)Z

    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$79;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v0, v1}, Lcom/eztv/powerful/PlayerActivity;->b(Lcom/eztv/powerful/PlayerActivity;Z)V

    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$79;->a:Lcom/eztv/powerful/PlayerActivity;

    sget-object v1, Lcom/eztv/powerful/PlayerActivity;->M:Lcom/eztv/powerful/recycleview/b/c;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/eztv/powerful/PlayerActivity;->a(Ljava/util/List;Z)V

    return-void
.end method
