.class Lcom/eztv/powerful/PlayerActivity$57;
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

    iput-object p1, p0, Lcom/eztv/powerful/PlayerActivity$57;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget v0, Lcom/eztv/powerful/PlayerActivity;->i:I

    if-ne v0, v4, :cond_0

    sput v3, Lcom/eztv/powerful/PlayerActivity;->i:I

    :goto_0
    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$57;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v0}, Lcom/eztv/powerful/PlayerActivity;->e(Lcom/eztv/powerful/PlayerActivity;)Lcom/setting/MySettings;

    move-result-object v0

    const-string v1, "movieMode"

    sget v2, Lcom/eztv/powerful/PlayerActivity;->i:I

    invoke-virtual {v0, v1, v2}, Lcom/setting/MySettings;->a(Ljava/lang/String;I)V

    sget v0, Lcom/eztv/powerful/PlayerActivity;->i:I

    if-ne v0, v4, :cond_1

    const-string v0, "\u5207\u6362\u5230\u4e86\u300e\u70b9\u64ad\u300f\u6a21\u5f0f,\u6253\u5f00\u5217\u8868\u770b\u770b\u5427!"

    invoke-static {v0, v3}, Lcom/eztv/powerful/PlayerActivity;->a(Ljava/lang/String;I)V

    :goto_1
    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$57;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v0}, Lcom/eztv/powerful/PlayerActivity;->al(Lcom/eztv/powerful/PlayerActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void

    :cond_0
    sput v4, Lcom/eztv/powerful/PlayerActivity;->i:I

    goto :goto_0

    :cond_1
    const-string v0, "\u5207\u6362\u5230\u4e86\u300e\u76f4\u64ad\u300f\u6a21\u5f0f,\u6253\u5f00\u5217\u8868\u770b\u770b\u5427!"

    invoke-static {v0, v3}, Lcom/eztv/powerful/PlayerActivity;->a(Ljava/lang/String;I)V

    goto :goto_1
.end method
