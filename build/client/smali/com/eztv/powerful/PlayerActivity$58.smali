.class Lcom/eztv/powerful/PlayerActivity$58;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eztv/powerful/PlayerActivity;->ac()V
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

    iput-object p1, p0, Lcom/eztv/powerful/PlayerActivity$58;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$58;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v0}, Lcom/eztv/powerful/PlayerActivity;->an(Lcom/eztv/powerful/PlayerActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    const/4 v0, 0x0

    return v0
.end method
