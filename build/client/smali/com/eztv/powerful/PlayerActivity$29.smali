.class Lcom/eztv/powerful/PlayerActivity$29;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eztv/powerful/PlayerActivity;->Y()V
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

    iput-object p1, p0, Lcom/eztv/powerful/PlayerActivity$29;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$29;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-virtual {v0}, Lcom/eztv/powerful/PlayerActivity;->l()V

    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$29;->a:Lcom/eztv/powerful/PlayerActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/eztv/powerful/PlayerActivity;->c(Z)V

    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$29;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-virtual {v0}, Lcom/eztv/powerful/PlayerActivity;->m()V

    :cond_0
    return-void
.end method
