.class Lcom/eztv/powerful/PlayerActivity$50;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/eztv/powerful/PlayerActivity$50;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.TEXT"

    const-string v2, "\u6211\u5728\u4f7f\u7528\u7fa4\u6656IPTV\u7ba1\u7406\u7cfb\u7edf\u5957\u4ef6,\u611f\u89c9\u975e\u5e38\u597d\u7528,\u8fd9\u662f\u7fa4\u6656\u5957\u4ef6\u793e\u7fa4\u5730\u5740,\u9700\u8981\u7684\u53ef\u4ee5\u5c06\u5b83\u6dfb\u52a0\u5230\u7fa4\u6656 http://spk.bobohome.store:8880"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/eztv/powerful/PlayerActivity$50;->a:Lcom/eztv/powerful/PlayerActivity;

    const-string v2, "\u5206\u4eab"

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/eztv/powerful/PlayerActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
