.class Lcom/eztv/powerful/PlayerActivity$24;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eztv/powerful/PlayerActivity;->a(Lcom/eztv/powerful/d/h$d;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Lcom/eztv/powerful/PlayerActivity;


# direct methods
.method constructor <init>(Lcom/eztv/powerful/PlayerActivity;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/eztv/powerful/PlayerActivity$24;->b:Lcom/eztv/powerful/PlayerActivity;

    iput-object p2, p0, Lcom/eztv/powerful/PlayerActivity$24;->a:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v3, 0x1

    sget-object v0, Lcom/eztv/powerful/PlayerActivity;->k:Ljava/lang/String;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ge v0, v3, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/eztv/powerful/PlayerActivity$24;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/eztv/powerful/PlayerActivity;->k:Ljava/lang/String;

    :goto_0
    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$24;->b:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v0}, Lcom/eztv/powerful/PlayerActivity;->e(Lcom/eztv/powerful/PlayerActivity;)Lcom/setting/MySettings;

    move-result-object v0

    const-string v1, "headAgent"

    sget-object v2, Lcom/eztv/powerful/PlayerActivity;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/setting/MySettings;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/eztv/powerful/PlayerActivity;->k:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/eztv/powerful/PlayerActivity;->a(Ljava/lang/String;I)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/eztv/powerful/PlayerActivity$24;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/eztv/powerful/PlayerActivity;->k:Ljava/lang/String;

    goto :goto_0
.end method
