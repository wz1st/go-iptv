.class Lcom/eztv/powerful/g$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eztv/powerful/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/eztv/powerful/g;


# direct methods
.method constructor <init>(Lcom/eztv/powerful/g;)V
    .locals 0

    iput-object p1, p0, Lcom/eztv/powerful/g$1;->a:Lcom/eztv/powerful/g;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/eztv/powerful/g$1;->a:Lcom/eztv/powerful/g;

    invoke-virtual {v0}, Lcom/eztv/powerful/g;->b()V

    :cond_0
    return-void
.end method
