.class Lcom/eztv/powerful/PlayerActivity$40;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eztv/powerful/PlayerActivity;->i()V
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

    iput-object p1, p0, Lcom/eztv/powerful/PlayerActivity$40;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const-string v0, ""

    sput-object v0, Lcom/eztv/powerful/PlayerActivity;->g:Ljava/lang/String;

    sget-object v0, Lcom/eztv/powerful/PlayerActivity;->g:Ljava/lang/String;

    sput-object v0, Lcom/eztv/powerful/PlayerActivity;->Z:Ljava/lang/String;

    sget-object v0, Lcom/eztv/powerful/PlayerActivity;->g:Ljava/lang/String;

    sput-object v0, Lcom/eztv/powerful/PlayerActivity;->aa:Ljava/lang/String;

    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$40;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v0}, Lcom/eztv/powerful/PlayerActivity;->e(Lcom/eztv/powerful/PlayerActivity;)Lcom/setting/MySettings;

    move-result-object v0

    const-string v1, "epgApi"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/setting/MySettings;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\u628aEPG\u63a5\u53e3\u8bbe\u4e3a\u9ed8\u8ba4\u4e86\u3002"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/eztv/powerful/PlayerActivity;->a(Ljava/lang/String;I)V

    return-void
.end method
