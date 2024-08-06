.class Lcom/eztv/powerful/PlayerActivity$70;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/eztv/powerful/d/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eztv/powerful/PlayerActivity;->a(Ljava/lang/String;)V
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

    iput-object p1, p0, Lcom/eztv/powerful/PlayerActivity$70;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;ILcom/a/a/b;)V
    .locals 3

    const v0, 0x7f0a0092

    :try_start_0
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-nez v0, :cond_0

    :try_start_1
    invoke-virtual {p3, p2}, Lcom/a/a/b;->a(I)Lcom/a/a/e;

    move-result-object v0

    const-string v1, "starttime"

    invoke-virtual {v0, v1}, Lcom/a/a/e;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/eztv/powerful/PlayerActivity;->ak:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    add-int/lit8 v0, p2, 0x1

    const/16 v1, 0x9

    if-le v0, v1, :cond_1

    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/eztv/powerful/PlayerActivity;->ad:Ljava/lang/String;

    :goto_1
    const/4 v0, 0x1

    sput-boolean v0, Lcom/eztv/powerful/PlayerActivity;->ac:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/eztv/powerful/PlayerActivity;->aj:Z

    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$70;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v0}, Lcom/eztv/powerful/PlayerActivity;->c(Lcom/eztv/powerful/PlayerActivity;)V

    :cond_0
    :goto_2
    return-void

    :catch_0
    move-exception v0

    const-string v0, ""

    sput-object v0, Lcom/eztv/powerful/PlayerActivity;->ak:Ljava/lang/String;

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_2

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "00"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/eztv/powerful/PlayerActivity;->ad:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1
.end method

.method public a(Landroid/view/View;ZI)V
    .locals 3

    const/4 v2, 0x1

    sput p3, Lcom/eztv/powerful/PlayerActivity;->aD:I

    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$70;->a:Lcom/eztv/powerful/PlayerActivity;

    const/16 v1, 0x2710

    invoke-static {v0, v1}, Lcom/eztv/powerful/PlayerActivity;->h(Lcom/eztv/powerful/PlayerActivity;I)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$70;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v0}, Lcom/eztv/powerful/PlayerActivity;->ar(Lcom/eztv/powerful/PlayerActivity;)Lcom/view/EzChannelListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/view/EzChannelListView;->getFocusScrollStrategy()I

    move-result v0

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$70;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v0}, Lcom/eztv/powerful/PlayerActivity;->ar(Lcom/eztv/powerful/PlayerActivity;)Lcom/view/EzChannelListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/view/EzChannelListView;->setFocusScrollStrategy(I)V

    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$70;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v0}, Lcom/eztv/powerful/PlayerActivity;->af(Lcom/eztv/powerful/PlayerActivity;)Lcom/view/EzChannelListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/view/EzChannelListView;->requestFocus()Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
    .end packed-switch
.end method
