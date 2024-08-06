.class Lcom/eztv/powerful/PlayerActivity$14$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/eztv/powerful/util/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eztv/powerful/PlayerActivity$14;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/eztv/powerful/PlayerActivity$14;


# direct methods
.method constructor <init>(Lcom/eztv/powerful/PlayerActivity$14;)V
    .locals 0

    iput-object p1, p0, Lcom/eztv/powerful/PlayerActivity$14$1;->a:Lcom/eztv/powerful/PlayerActivity$14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/k/a/f;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x1

    invoke-static {}, Landroid/os/Looper;->prepare()V

    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$14$1;->a:Lcom/eztv/powerful/PlayerActivity$14;

    iget-boolean v0, v0, Lcom/eztv/powerful/PlayerActivity$14;->a:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/eztv/powerful/util/h;->c(Ljava/lang/String;)I

    move-result v0

    const-string v1, "\u4fdd\u5b58\u7684\u9891\u9053\u6570\uff1a"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/eztv/powerful/PlayerActivity;->a:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u6dfb\u52a0\u4e86"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\u4e2a\u5206\u7c7b"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void

    :cond_0
    invoke-static {p1, v4}, Lcom/eztv/powerful/PlayerActivity;->b(Ljava/lang/String;Z)V

    goto :goto_0
.end method
