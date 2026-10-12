.class Lcom/eztv/powerful/PlayerActivity$14;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eztv/powerful/PlayerActivity;->P()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Landroid/widget/EditText;

.field final synthetic c:Lcom/eztv/powerful/PlayerActivity;


# direct methods
.method constructor <init>(Lcom/eztv/powerful/PlayerActivity;Landroid/widget/EditText;)V
    .locals 1

    iput-object p1, p0, Lcom/eztv/powerful/PlayerActivity$14;->c:Lcom/eztv/powerful/PlayerActivity;

    iput-object p2, p0, Lcom/eztv/powerful/PlayerActivity$14;->b:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/eztv/powerful/PlayerActivity$14;->a:Z

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$14;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    const-string v1, ""

    sput-object v1, Lcom/eztv/powerful/PlayerActivity;->t:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/eztv/powerful/PlayerActivity$14;->a:Z

    :goto_0
    iget-object v1, p0, Lcom/eztv/powerful/PlayerActivity$14;->c:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v1}, Lcom/eztv/powerful/PlayerActivity;->U(Lcom/eztv/powerful/PlayerActivity;)V

    new-instance v1, Lcom/eztv/powerful/PlayerActivity$14$1;

    invoke-direct {v1, p0}, Lcom/eztv/powerful/PlayerActivity$14$1;-><init>(Lcom/eztv/powerful/PlayerActivity$14;)V

    invoke-static {v0, v1}, Lcom/eztv/powerful/util/h;->a(Ljava/lang/String;Lcom/eztv/powerful/util/e;)V

    :try_start_0
    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$14;->c:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v0}, Lcom/eztv/powerful/PlayerActivity;->V(Lcom/eztv/powerful/PlayerActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_0
    sput-object v0, Lcom/eztv/powerful/PlayerActivity;->t:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/eztv/powerful/PlayerActivity$14;->a:Z

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method
