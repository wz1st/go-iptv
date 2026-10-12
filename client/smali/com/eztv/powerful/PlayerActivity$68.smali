.class Lcom/eztv/powerful/PlayerActivity$68;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/eztv/powerful/d/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eztv/powerful/PlayerActivity;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Lcom/eztv/powerful/PlayerActivity;


# direct methods
.method constructor <init>(Lcom/eztv/powerful/PlayerActivity;)V
    .locals 1

    iput-object p1, p0, Lcom/eztv/powerful/PlayerActivity$68;->b:Lcom/eztv/powerful/PlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/eztv/powerful/PlayerActivity$68;->a:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/eztv/powerful/d/d$e;Landroid/view/View;I)Ljava/lang/Boolean;
    .locals 2

    const v1, 0x7f0a00fd

    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$68;->b:Lcom/eztv/powerful/PlayerActivity;

    invoke-virtual {v0, p3}, Lcom/eztv/powerful/PlayerActivity;->d(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/eztv/powerful/d/d$e;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p1, Lcom/eztv/powerful/d/d$e;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public a(Landroid/view/View;I)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/eztv/powerful/PlayerActivity$68;->a:Z

    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$68;->b:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v0, p2}, Lcom/eztv/powerful/PlayerActivity;->k(Lcom/eztv/powerful/PlayerActivity;I)I

    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$68;->b:Lcom/eztv/powerful/PlayerActivity;

    iget-object v1, p0, Lcom/eztv/powerful/PlayerActivity$68;->b:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v1}, Lcom/eztv/powerful/PlayerActivity;->t(Lcom/eztv/powerful/PlayerActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/eztv/powerful/PlayerActivity;->j(Lcom/eztv/powerful/PlayerActivity;I)I

    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$68;->b:Lcom/eztv/powerful/PlayerActivity;

    invoke-virtual {v0, p2}, Lcom/eztv/powerful/PlayerActivity;->e(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/eztv/powerful/PlayerActivity$68;->a:Z

    return-void
.end method

.method public a(Lcom/eztv/powerful/d/d$e;Landroid/view/View;ZI)V
    .locals 8

    const v7, 0x7f060033

    const/4 v6, 0x4

    const v5, 0x7f0a01ea

    const v4, 0x7f0a01e9

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$68;->b:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v0}, Lcom/eztv/powerful/PlayerActivity;->ap(Lcom/eztv/powerful/PlayerActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$68;->b:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v0}, Lcom/eztv/powerful/PlayerActivity;->ap(Lcom/eztv/powerful/PlayerActivity;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a01ed

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$68;->b:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v0}, Lcom/eztv/powerful/PlayerActivity;->ap(Lcom/eztv/powerful/PlayerActivity;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a01eb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v1, Lcom/eztv/powerful/PlayerActivity;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060077

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$68;->b:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v0}, Lcom/eztv/powerful/PlayerActivity;->aq(Lcom/eztv/powerful/PlayerActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$68;->b:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v0}, Lcom/eztv/powerful/PlayerActivity;->aq(Lcom/eztv/powerful/PlayerActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$68;->b:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v0}, Lcom/eztv/powerful/PlayerActivity;->aq(Lcom/eztv/powerful/PlayerActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v1, Lcom/eztv/powerful/PlayerActivity;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_1
    if-eqz p3, :cond_3

    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$68;->b:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v0}, Lcom/eztv/powerful/PlayerActivity;->ar(Lcom/eztv/powerful/PlayerActivity;)Lcom/view/EzChannelListView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/view/EzChannelListView;->setFocusScrollStrategy(I)V

    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$68;->b:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v0, p4}, Lcom/eztv/powerful/PlayerActivity;->j(Lcom/eztv/powerful/PlayerActivity;I)I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v1, Lcom/eztv/powerful/PlayerActivity;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06007c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$68;->b:Lcom/eztv/powerful/PlayerActivity;

    invoke-virtual {v0, v3}, Lcom/eztv/powerful/PlayerActivity;->c(Z)V

    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$68;->b:Lcom/eztv/powerful/PlayerActivity;

    invoke-virtual {v0}, Lcom/eztv/powerful/PlayerActivity;->m()V

    :goto_0
    iget-boolean v0, p0, Lcom/eztv/powerful/PlayerActivity$68;->a:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$68;->b:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v0, p4}, Lcom/eztv/powerful/PlayerActivity;->k(Lcom/eztv/powerful/PlayerActivity;I)I

    :cond_2
    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$68;->b:Lcom/eztv/powerful/PlayerActivity;

    const/16 v1, 0x2710

    invoke-static {v0, v1}, Lcom/eztv/powerful/PlayerActivity;->h(Lcom/eztv/powerful/PlayerActivity;I)V

    return-void

    :cond_3
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v1, Lcom/eztv/powerful/PlayerActivity;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$68;->b:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v0}, Lcom/eztv/powerful/PlayerActivity;->t(Lcom/eztv/powerful/PlayerActivity;)I

    move-result v0

    if-ne v0, p4, :cond_4

    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$68;->b:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v0}, Lcom/eztv/powerful/PlayerActivity;->ar(Lcom/eztv/powerful/PlayerActivity;)Lcom/view/EzChannelListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/view/EzChannelListView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$68;->b:Lcom/eztv/powerful/PlayerActivity;

    iget-object v1, p1, Lcom/eztv/powerful/d/d$e;->b:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/eztv/powerful/PlayerActivity;->b(Lcom/eztv/powerful/PlayerActivity;Landroid/view/View;)Landroid/view/View;

    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$68;->b:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v0}, Lcom/eztv/powerful/PlayerActivity;->aq(Lcom/eztv/powerful/PlayerActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v1, Lcom/eztv/powerful/PlayerActivity;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060077

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$68;->b:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v0}, Lcom/eztv/powerful/PlayerActivity;->aq(Lcom/eztv/powerful/PlayerActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$68;->b:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v0}, Lcom/eztv/powerful/PlayerActivity;->af(Lcom/eztv/powerful/PlayerActivity;)Lcom/view/EzChannelListView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/view/EzChannelListView;->setFocusable(Z)V

    goto :goto_0
.end method

.method public a(Lcom/eztv/powerful/d/d$e;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4

    const v3, 0x7f0a00fd

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p4}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p4}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_1
    :goto_1
    move v0, v1

    goto :goto_0

    :sswitch_0
    iget-object v2, p0, Lcom/eztv/powerful/PlayerActivity$68;->b:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v2, v0}, Lcom/eztv/powerful/PlayerActivity;->e(Lcom/eztv/powerful/PlayerActivity;Z)Z

    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$68;->b:Lcom/eztv/powerful/PlayerActivity;

    invoke-virtual {v0, p3}, Lcom/eztv/powerful/PlayerActivity;->e(I)V

    goto :goto_1

    :sswitch_1
    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$68;->b:Lcom/eztv/powerful/PlayerActivity;

    invoke-virtual {v0, p3}, Lcom/eztv/powerful/PlayerActivity;->d(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/eztv/powerful/d/d$e;->b:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_2
    iget-object v0, p1, Lcom/eztv/powerful/d/d$e;->b:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :sswitch_2
    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$68;->b:Lcom/eztv/powerful/PlayerActivity;

    invoke-virtual {v0}, Lcom/eztv/powerful/PlayerActivity;->m()V

    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$68;->b:Lcom/eztv/powerful/PlayerActivity;

    invoke-virtual {v0}, Lcom/eztv/powerful/PlayerActivity;->n()V

    goto :goto_1

    :sswitch_3
    add-int/lit8 v0, p3, -0x1

    if-gez v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$68;->b:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v0}, Lcom/eztv/powerful/PlayerActivity;->af(Lcom/eztv/powerful/PlayerActivity;)Lcom/view/EzChannelListView;

    move-result-object v2

    sget-object v0, Lcom/eztv/powerful/PlayerActivity;->w:Lcom/eztv/powerful/b/b;

    sget v3, Lcom/eztv/powerful/PlayerActivity;->d:I

    invoke-virtual {v0, v3}, Lcom/eztv/powerful/b/b;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eztv/powerful/b/a;

    iget-object v0, v0, Lcom/eztv/powerful/b/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/view/EzChannelListView;->a(I)V
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

    :sswitch_4
    add-int/lit8 v2, p3, 0x2

    :try_start_1
    sget-object v0, Lcom/eztv/powerful/PlayerActivity;->w:Lcom/eztv/powerful/b/b;

    sget v3, Lcom/eztv/powerful/PlayerActivity;->d:I

    invoke-virtual {v0, v3}, Lcom/eztv/powerful/b/b;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eztv/powerful/b/a;

    iget-object v0, v0, Lcom/eztv/powerful/b/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v2, v0, :cond_1

    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$68;->b:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v0}, Lcom/eztv/powerful/PlayerActivity;->af(Lcom/eztv/powerful/PlayerActivity;)Lcom/view/EzChannelListView;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/view/EzChannelListView;->a(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/k/a/f;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_3
        0x14 -> :sswitch_4
        0x16 -> :sswitch_2
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
        0x52 -> :sswitch_1
    .end sparse-switch
.end method
