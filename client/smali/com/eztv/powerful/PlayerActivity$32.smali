.class Lcom/eztv/powerful/PlayerActivity$32;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/eztv/powerful/d/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eztv/powerful/PlayerActivity;->Y()V
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

    iput-object p1, p0, Lcom/eztv/powerful/PlayerActivity$32;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;I)V
    .locals 1

    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$32;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v0}, Lcom/eztv/powerful/PlayerActivity;->ad(Lcom/eztv/powerful/PlayerActivity;)V

    return-void
.end method

.method public a(Landroid/view/View;ZI)V
    .locals 3

    const/4 v2, 0x0

    sput p3, Lcom/eztv/powerful/PlayerActivity;->d:I

    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$32;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v0}, Lcom/eztv/powerful/PlayerActivity;->aa(Lcom/eztv/powerful/PlayerActivity;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$32;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v0, v2}, Lcom/eztv/powerful/PlayerActivity;->d(Lcom/eztv/powerful/PlayerActivity;Z)Z

    :cond_0
    if-eqz p2, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$32;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v0, p1}, Lcom/eztv/powerful/PlayerActivity;->a(Lcom/eztv/powerful/PlayerActivity;Landroid/view/View;)Landroid/view/View;

    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$32;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v0, p3}, Lcom/eztv/powerful/PlayerActivity;->g(Lcom/eztv/powerful/PlayerActivity;I)I

    const v0, 0x7f0a01eb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v1, Lcom/eztv/powerful/PlayerActivity;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06007c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    sput p3, Lcom/eztv/powerful/PlayerActivity;->A:I

    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$32;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v0}, Lcom/eztv/powerful/PlayerActivity;->ab(Lcom/eztv/powerful/PlayerActivity;)Lcom/view/EzChannelListView;

    move-result-object v0

    iput p3, v0, Lcom/view/EzChannelListView;->Q:I

    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$32;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v0}, Lcom/eztv/powerful/PlayerActivity;->ac(Lcom/eztv/powerful/PlayerActivity;)Lcom/eztv/powerful/d/e;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/eztv/powerful/d/e;->f(I)V

    sget-object v0, Lcom/eztv/powerful/PlayerActivity;->w:Lcom/eztv/powerful/b/b;

    invoke-virtual {v0, p3}, Lcom/eztv/powerful/b/b;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eztv/powerful/b/a;

    iget-object v0, v0, Lcom/eztv/powerful/b/a;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/eztv/powerful/PlayerActivity;->w:Lcom/eztv/powerful/b/b;

    invoke-virtual {v0, p3}, Lcom/eztv/powerful/b/b;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eztv/powerful/b/a;

    iget-boolean v0, v0, Lcom/eztv/powerful/b/a;->f:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$32;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-virtual {v0, p3}, Lcom/eztv/powerful/PlayerActivity;->c(I)V

    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$32;->a:Lcom/eztv/powerful/PlayerActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/eztv/powerful/PlayerActivity;->d(Lcom/eztv/powerful/PlayerActivity;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$32;->a:Lcom/eztv/powerful/PlayerActivity;

    const/16 v1, 0x2710

    invoke-static {v0, v1}, Lcom/eztv/powerful/PlayerActivity;->h(Lcom/eztv/powerful/PlayerActivity;I)V

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$32;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-virtual {v0, p3}, Lcom/eztv/powerful/PlayerActivity;->c(I)V

    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$32;->a:Lcom/eztv/powerful/PlayerActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/eztv/powerful/PlayerActivity;->d(Lcom/eztv/powerful/PlayerActivity;Z)Z

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_2
    const v0, 0x7f0a01eb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v1, Lcom/eztv/powerful/PlayerActivity;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060033

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    const v0, 0x7f0a01ed

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public a(Landroid/view/View;ILandroid/view/KeyEvent;Lcom/eztv/powerful/d/e$e;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_1
    :goto_1
    move v0, v1

    goto :goto_0

    :sswitch_0
    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$32;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v0}, Lcom/eztv/powerful/PlayerActivity;->ae(Lcom/eztv/powerful/PlayerActivity;)I

    move-result v0

    sget v2, Lcom/eztv/powerful/PlayerActivity;->d:I

    if-eq v0, v2, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$32;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v0}, Lcom/eztv/powerful/PlayerActivity;->af(Lcom/eztv/powerful/PlayerActivity;)Lcom/view/EzChannelListView;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/view/EzChannelListView;->setSelectedPosition(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/k/a/f;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :sswitch_1
    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$32;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v0}, Lcom/eztv/powerful/PlayerActivity;->ad(Lcom/eztv/powerful/PlayerActivity;)V

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x16 -> :sswitch_0
        0x17 -> :sswitch_1
        0x42 -> :sswitch_1
    .end sparse-switch
.end method

.method public b(Landroid/view/View;I)V
    .locals 1

    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$32;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v0, p2}, Lcom/eztv/powerful/PlayerActivity;->i(Lcom/eztv/powerful/PlayerActivity;I)V

    return-void
.end method
