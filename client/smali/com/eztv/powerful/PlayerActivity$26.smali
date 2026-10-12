.class Lcom/eztv/powerful/PlayerActivity$26;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eztv/powerful/PlayerActivity;->W()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Lcom/eztv/powerful/PlayerActivity;


# direct methods
.method constructor <init>(Lcom/eztv/powerful/PlayerActivity;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lcom/eztv/powerful/PlayerActivity$26;->b:Lcom/eztv/powerful/PlayerActivity;

    iput-object p2, p0, Lcom/eztv/powerful/PlayerActivity$26;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    const/4 v4, 0x1

    const/4 v1, 0x3

    const/4 v0, 0x7

    :try_start_0
    iget-object v2, p0, Lcom/eztv/powerful/PlayerActivity$26;->a:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    const/4 v3, 0x1

    :try_start_1
    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    :goto_0
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u505c\u7559\u65f6\u95f4\u8bbe\u7f6e\u6210\u4e86"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u79d2!\u5929\u6c14\u989d\u5916"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u79d2\uff01"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/eztv/powerful/PlayerActivity;->a(Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    iget-object v2, p0, Lcom/eztv/powerful/PlayerActivity$26;->b:Lcom/eztv/powerful/PlayerActivity;

    mul-int/lit16 v1, v1, 0x3e8

    invoke-static {v2, v1}, Lcom/eztv/powerful/PlayerActivity;->e(Lcom/eztv/powerful/PlayerActivity;I)I

    iget-object v1, p0, Lcom/eztv/powerful/PlayerActivity$26;->b:Lcom/eztv/powerful/PlayerActivity;

    mul-int/lit16 v0, v0, 0x3e8

    invoke-static {v1, v0}, Lcom/eztv/powerful/PlayerActivity;->f(Lcom/eztv/powerful/PlayerActivity;I)I

    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$26;->b:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v0}, Lcom/eztv/powerful/PlayerActivity;->e(Lcom/eztv/powerful/PlayerActivity;)Lcom/setting/MySettings;

    move-result-object v0

    const-string v1, "HideEpgBottomTime"

    iget-object v2, p0, Lcom/eztv/powerful/PlayerActivity$26;->b:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v2}, Lcom/eztv/powerful/PlayerActivity;->q(Lcom/eztv/powerful/PlayerActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/setting/MySettings;->a(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$26;->b:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v0}, Lcom/eztv/powerful/PlayerActivity;->e(Lcom/eztv/powerful/PlayerActivity;)Lcom/setting/MySettings;

    move-result-object v0

    const-string v1, "HideWBottomTime"

    iget-object v2, p0, Lcom/eztv/powerful/PlayerActivity$26;->b:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v2}, Lcom/eztv/powerful/PlayerActivity;->r(Lcom/eztv/powerful/PlayerActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/setting/MySettings;->a(Ljava/lang/String;I)V

    return-void

    :catch_0
    move-exception v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u8f93\u5165\u9519\u8bef\u505c\u7559\u65f6\u95f4\u8bbe\u7f6e\u6210\u4e86"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u79d2!\u5929\u6c14\u989d\u5916"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u79d2\uff01"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/eztv/powerful/PlayerActivity;->a(Ljava/lang/String;I)V

    goto :goto_1

    :catch_1
    move-exception v2

    goto/16 :goto_0
.end method
