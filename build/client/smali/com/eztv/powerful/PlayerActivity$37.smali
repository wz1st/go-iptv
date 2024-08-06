.class Lcom/eztv/powerful/PlayerActivity$37;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


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

    iput-object p1, p0, Lcom/eztv/powerful/PlayerActivity$37;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    sget-boolean v0, Lcom/eztv/powerful/PlayerActivity;->r:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$37;->a:Lcom/eztv/powerful/PlayerActivity;

    const/16 v1, 0x1a

    invoke-static {v0, v1}, Lcom/eztv/powerful/PlayerActivity;->b(Lcom/eztv/powerful/PlayerActivity;I)V

    :cond_0
    return-void
.end method
