.class Lcom/eztv/powerful/PlayerActivity$61;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/eztv/powerful/util/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eztv/powerful/PlayerActivity;->ak()V
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

    iput-object p1, p0, Lcom/eztv/powerful/PlayerActivity$61;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x98

    iput v1, v0, Landroid/os/Message;->what:I

    const-string v1, ""

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/eztv/powerful/PlayerActivity$61;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v1}, Lcom/eztv/powerful/PlayerActivity;->j(Lcom/eztv/powerful/PlayerActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    const/16 v2, 0x98

    :try_start_0
    invoke-static {p1}, Lcom/a/a/e;->b(Ljava/lang/String;)Lcom/a/a/e;

    move-result-object v0

    const-string v1, "code"

    invoke-virtual {v0, v1}, Lcom/a/a/e;->e(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x98

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/eztv/powerful/PlayerActivity$61;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v1}, Lcom/eztv/powerful/PlayerActivity;->j(Lcom/eztv/powerful/PlayerActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x98

    iput v1, v0, Landroid/os/Message;->what:I

    const-string v1, ""

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/eztv/powerful/PlayerActivity$61;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v1}, Lcom/eztv/powerful/PlayerActivity;->j(Lcom/eztv/powerful/PlayerActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput v2, v0, Landroid/os/Message;->what:I

    const-string v1, ""

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/eztv/powerful/PlayerActivity$61;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v1}, Lcom/eztv/powerful/PlayerActivity;->j(Lcom/eztv/powerful/PlayerActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
