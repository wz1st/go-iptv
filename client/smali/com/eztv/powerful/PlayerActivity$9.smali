.class Lcom/eztv/powerful/PlayerActivity$9;
.super Landroid/view/OrientationEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eztv/powerful/PlayerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/eztv/powerful/PlayerActivity;


# direct methods
.method constructor <init>(Lcom/eztv/powerful/PlayerActivity;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/eztv/powerful/PlayerActivity$9;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    sget-boolean v0, Lcom/eztv/powerful/PlayerActivity;->q:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/16 v0, 0x15e

    if-gt p1, v0, :cond_2

    const/16 v0, 0xa

    if-ge p1, v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$9;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-virtual {v0, v1}, Lcom/eztv/powerful/PlayerActivity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_3
    const/16 v0, 0x50

    if-le p1, v0, :cond_4

    const/16 v0, 0x64

    if-ge p1, v0, :cond_4

    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$9;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-virtual {v0, v2}, Lcom/eztv/powerful/PlayerActivity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_4
    const/16 v0, 0xaa

    if-le p1, v0, :cond_5

    const/16 v0, 0xbe

    if-ge p1, v0, :cond_5

    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$9;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-virtual {v0, v2}, Lcom/eztv/powerful/PlayerActivity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_5
    const/16 v0, 0x104

    if-le p1, v0, :cond_0

    const/16 v0, 0x118

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$9;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-virtual {v0, v1}, Lcom/eztv/powerful/PlayerActivity;->setRequestedOrientation(I)V

    goto :goto_0
.end method
