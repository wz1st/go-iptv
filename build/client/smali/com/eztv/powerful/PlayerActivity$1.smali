.class Lcom/eztv/powerful/PlayerActivity$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eztv/powerful/PlayerActivity;
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

    iput-object p1, p0, Lcom/eztv/powerful/PlayerActivity$1;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    const/16 v9, 0xa

    const/4 v8, 0x4

    const/4 v4, 0x1

    const-wide/16 v6, 0x400

    const/4 v5, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$1;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-virtual {v0}, Lcom/eztv/powerful/PlayerActivity;->g()V

    goto :goto_0

    :sswitch_1
    :try_start_0
    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$1;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v0}, Lcom/eztv/powerful/PlayerActivity;->a(Lcom/eztv/powerful/PlayerActivity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/e/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$1;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v0}, Lcom/eztv/powerful/PlayerActivity;->b(Lcom/eztv/powerful/PlayerActivity;)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$1;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v0}, Lcom/eztv/powerful/PlayerActivity;->c(Lcom/eztv/powerful/PlayerActivity;)V

    goto :goto_0

    :sswitch_4
    sget-object v0, Lcom/eztv/powerful/PlayerActivity;->b:Lcom/view/IJKVideoView;

    invoke-virtual {v0}, Lcom/view/IJKVideoView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/eztv/powerful/PlayerActivity;->b:Lcom/view/IJKVideoView;

    invoke-virtual {v0}, Lcom/view/IJKVideoView;->getCurrentPosition()I

    move-result v0

    int-to-long v0, v0

    move-wide v2, v0

    :goto_1
    sget v0, Lcom/eztv/powerful/PlayerActivity;->i:I

    if-ne v0, v4, :cond_4

    :try_start_1
    sget-object v0, Lcom/eztv/powerful/PlayerActivity;->c:Lcom/view/XVideoView;

    invoke-virtual {v0}, Lcom/view/XVideoView;->getCurrentPosition()I

    move-result v0

    if-gt v0, v9, :cond_1

    sget-object v0, Lcom/eztv/powerful/PlayerActivity;->b:Lcom/view/IJKVideoView;

    invoke-virtual {v0}, Lcom/view/IJKVideoView;->getCurrentPosition()I

    move-result v0

    if-le v0, v9, :cond_0

    :cond_1
    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$1;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v0}, Lcom/eztv/powerful/PlayerActivity;->d(Lcom/eztv/powerful/PlayerActivity;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$1;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v0}, Lcom/eztv/powerful/PlayerActivity;->e(Lcom/eztv/powerful/PlayerActivity;)Lcom/setting/MySettings;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/eztv/powerful/PlayerActivity;->M:Lcom/eztv/powerful/recycleview/b/c;

    sget v5, Lcom/eztv/powerful/PlayerActivity;->J:I

    invoke-virtual {v0, v5}, Lcom/eztv/powerful/recycleview/b/c;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eztv/powerful/recycleview/b/d;

    invoke-virtual {v0}, Lcom/eztv/powerful/recycleview/b/d;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v0, Lcom/eztv/powerful/PlayerActivity;->M:Lcom/eztv/powerful/recycleview/b/c;

    sget v5, Lcom/eztv/powerful/PlayerActivity;->J:I

    invoke-virtual {v0, v5}, Lcom/eztv/powerful/recycleview/b/c;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eztv/powerful/recycleview/b/d;

    invoke-virtual {v0}, Lcom/eztv/powerful/recycleview/b/d;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v0, Lcom/eztv/powerful/PlayerActivity;->L:Ljava/util/List;

    sget v5, Lcom/eztv/powerful/PlayerActivity;->K:I

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eztv/powerful/recycleview/b/e;

    invoke-virtual {v0}, Lcom/eztv/powerful/recycleview/b/e;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v2, v3}, Lcom/setting/MySettings;->a(Ljava/lang/String;J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    goto/16 :goto_0

    :cond_2
    sget-object v0, Lcom/eztv/powerful/PlayerActivity;->c:Lcom/view/XVideoView;

    invoke-virtual {v0}, Lcom/view/XVideoView;->getCurrentPosition()I

    move-result v0

    int-to-long v0, v0

    move-wide v2, v0

    goto :goto_1

    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$1;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v0}, Lcom/eztv/powerful/PlayerActivity;->e(Lcom/eztv/powerful/PlayerActivity;)Lcom/setting/MySettings;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/eztv/powerful/PlayerActivity;->H:Ljava/util/List;

    sget v5, Lcom/eztv/powerful/PlayerActivity;->J:I

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eztv/powerful/recycleview/b/d;

    invoke-virtual {v0}, Lcom/eztv/powerful/recycleview/b/d;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v0, Lcom/eztv/powerful/PlayerActivity;->H:Ljava/util/List;

    sget v5, Lcom/eztv/powerful/PlayerActivity;->J:I

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eztv/powerful/recycleview/b/d;

    invoke-virtual {v0}, Lcom/eztv/powerful/recycleview/b/d;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v0, Lcom/eztv/powerful/PlayerActivity;->H:Ljava/util/List;

    sget v5, Lcom/eztv/powerful/PlayerActivity;->J:I

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eztv/powerful/recycleview/b/d;

    invoke-virtual {v0}, Lcom/eztv/powerful/recycleview/b/d;->e()Ljava/util/List;

    move-result-object v0

    sget v5, Lcom/eztv/powerful/PlayerActivity;->K:I

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eztv/powerful/recycleview/b/e;

    invoke-virtual {v0}, Lcom/eztv/powerful/recycleview/b/e;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v2, v3}, Lcom/setting/MySettings;->a(Ljava/lang/String;J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$1;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v0}, Lcom/eztv/powerful/PlayerActivity;->f(Lcom/eztv/powerful/PlayerActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/eztv/powerful/PlayerActivity;->c:Lcom/view/XVideoView;

    invoke-virtual {v0}, Lcom/view/XVideoView;->getCurrentPosition()I

    move-result v0

    if-gt v0, v9, :cond_5

    sget-object v0, Lcom/eztv/powerful/PlayerActivity;->b:Lcom/view/IJKVideoView;

    invoke-virtual {v0}, Lcom/view/IJKVideoView;->getCurrentPosition()I

    move-result v0

    if-le v0, v9, :cond_0

    :cond_5
    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$1;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v0}, Lcom/eztv/powerful/PlayerActivity;->e(Lcom/eztv/powerful/PlayerActivity;)Lcom/setting/MySettings;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/eztv/powerful/PlayerActivity$1;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v4}, Lcom/eztv/powerful/PlayerActivity;->g(Lcom/eztv/powerful/PlayerActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/eztv/powerful/PlayerActivity$1;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v4}, Lcom/eztv/powerful/PlayerActivity;->h(Lcom/eztv/powerful/PlayerActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v3}, Lcom/setting/MySettings;->a(Ljava/lang/String;J)V

    goto/16 :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$1;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v0}, Lcom/eztv/powerful/PlayerActivity;->i(Lcom/eztv/powerful/PlayerActivity;)Landroid/widget/TextClock;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/TextClock;->setVisibility(I)V

    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$1;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v0}, Lcom/eztv/powerful/PlayerActivity;->j(Lcom/eztv/powerful/PlayerActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    :sswitch_6
    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$1;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v0}, Lcom/eztv/powerful/PlayerActivity;->i(Lcom/eztv/powerful/PlayerActivity;)Landroid/widget/TextClock;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextClock;->setVisibility(I)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x1f

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/eztv/powerful/PlayerActivity$1;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v1}, Lcom/eztv/powerful/PlayerActivity;->j(Lcom/eztv/powerful/PlayerActivity;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :sswitch_7
    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$1;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v0}, Lcom/eztv/powerful/PlayerActivity;->k(Lcom/eztv/powerful/PlayerActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :sswitch_8
    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$1;->a:Lcom/eztv/powerful/PlayerActivity;

    iget-object v1, p0, Lcom/eztv/powerful/PlayerActivity$1;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v1}, Lcom/eztv/powerful/PlayerActivity;->l(Lcom/eztv/powerful/PlayerActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/eztv/powerful/PlayerActivity;->a(Lcom/eztv/powerful/PlayerActivity;I)V

    goto/16 :goto_0

    :sswitch_9
    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$1;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v0}, Lcom/eztv/powerful/PlayerActivity;->m(Lcom/eztv/powerful/PlayerActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$1;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v0}, Lcom/eztv/powerful/PlayerActivity;->i(Lcom/eztv/powerful/PlayerActivity;)Landroid/widget/TextClock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextClock;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    sget-object v1, Lcom/eztv/powerful/PlayerActivity;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070600

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/eztv/powerful/PlayerActivity$1;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v1}, Lcom/eztv/powerful/PlayerActivity;->i(Lcom/eztv/powerful/PlayerActivity;)Landroid/widget/TextClock;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextClock;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$1;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v0}, Lcom/eztv/powerful/PlayerActivity;->n(Lcom/eztv/powerful/PlayerActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$1;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v0}, Lcom/eztv/powerful/PlayerActivity;->n(Lcom/eztv/powerful/PlayerActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$1;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v0}, Lcom/eztv/powerful/PlayerActivity;->o(Lcom/eztv/powerful/PlayerActivity;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$1;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v0}, Lcom/eztv/powerful/PlayerActivity;->j(Lcom/eztv/powerful/PlayerActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/eztv/powerful/PlayerActivity$1;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v1}, Lcom/eztv/powerful/PlayerActivity;->o(Lcom/eztv/powerful/PlayerActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :goto_2
    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$1;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v0}, Lcom/eztv/powerful/PlayerActivity;->p(Lcom/eztv/powerful/PlayerActivity;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$1;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v0}, Lcom/eztv/powerful/PlayerActivity;->j(Lcom/eztv/powerful/PlayerActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/eztv/powerful/PlayerActivity$1;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v1}, Lcom/eztv/powerful/PlayerActivity;->o(Lcom/eztv/powerful/PlayerActivity;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lcom/eztv/powerful/PlayerActivity$1;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v2}, Lcom/eztv/powerful/PlayerActivity;->q(Lcom/eztv/powerful/PlayerActivity;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$1;->a:Lcom/eztv/powerful/PlayerActivity;

    new-instance v1, Lcom/eztv/powerful/PlayerActivity$1$1;

    invoke-direct {v1, p0}, Lcom/eztv/powerful/PlayerActivity$1$1;-><init>(Lcom/eztv/powerful/PlayerActivity$1;)V

    invoke-static {v0, v1}, Lcom/eztv/powerful/PlayerActivity;->a(Lcom/eztv/powerful/PlayerActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$1;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v0}, Lcom/eztv/powerful/PlayerActivity;->j(Lcom/eztv/powerful/PlayerActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/eztv/powerful/PlayerActivity$1;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v1}, Lcom/eztv/powerful/PlayerActivity;->o(Lcom/eztv/powerful/PlayerActivity;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lcom/eztv/powerful/PlayerActivity$1;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v2}, Lcom/eztv/powerful/PlayerActivity;->q(Lcom/eztv/powerful/PlayerActivity;)I

    move-result v2

    iget-object v3, p0, Lcom/eztv/powerful/PlayerActivity$1;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v3}, Lcom/eztv/powerful/PlayerActivity;->r(Lcom/eztv/powerful/PlayerActivity;)I

    move-result v3

    add-int/2addr v2, v3

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :sswitch_a
    sget v0, Lcom/eztv/powerful/PlayerActivity;->i:I

    if-ge v0, v4, :cond_8

    sget-boolean v0, Lcom/eztv/powerful/PlayerActivity;->aq:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$1;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v0}, Lcom/eztv/powerful/PlayerActivity;->s(Lcom/eztv/powerful/PlayerActivity;)V

    :try_start_3
    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$1;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v0}, Lcom/eztv/powerful/PlayerActivity;->v(Lcom/eztv/powerful/PlayerActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/eztv/powerful/PlayerActivity$1;->a:Lcom/eztv/powerful/PlayerActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/eztv/powerful/PlayerActivity;->w:Lcom/eztv/powerful/b/b;

    sget v4, Lcom/eztv/powerful/PlayerActivity;->d:I

    invoke-virtual {v0, v4}, Lcom/eztv/powerful/b/b;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eztv/powerful/b/a;

    iget-object v0, v0, Lcom/eztv/powerful/b/a;->d:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/eztv/powerful/PlayerActivity$1;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v4}, Lcom/eztv/powerful/PlayerActivity;->t(Lcom/eztv/powerful/PlayerActivity;)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eztv/powerful/b/c;

    iget-object v0, v0, Lcom/eztv/powerful/b/c;->b:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " [\u7ebf\u8def"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v3, Lcom/eztv/powerful/PlayerActivity;->v:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/eztv/powerful/PlayerActivity$1;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v3}, Lcom/eztv/powerful/PlayerActivity;->u(Lcom/eztv/powerful/PlayerActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Lcom/eztv/powerful/PlayerActivity;->a(Lcom/eztv/powerful/PlayerActivity;Ljava/lang/String;Z)Landroid/text/SpannableString;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$1;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v0}, Lcom/eztv/powerful/PlayerActivity;->m(Lcom/eztv/powerful/PlayerActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$1;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v0}, Lcom/eztv/powerful/PlayerActivity;->i(Lcom/eztv/powerful/PlayerActivity;)Landroid/widget/TextClock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextClock;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    sget-object v1, Lcom/eztv/powerful/PlayerActivity;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07040c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/eztv/powerful/PlayerActivity$1;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v1}, Lcom/eztv/powerful/PlayerActivity;->i(Lcom/eztv/powerful/PlayerActivity;)Landroid/widget/TextClock;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextClock;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/k/a/f;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_8
    :try_start_4
    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$1;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v0}, Lcom/eztv/powerful/PlayerActivity;->d(Lcom/eztv/powerful/PlayerActivity;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$1;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v0}, Lcom/eztv/powerful/PlayerActivity;->v(Lcom/eztv/powerful/PlayerActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/eztv/powerful/PlayerActivity$1;->a:Lcom/eztv/powerful/PlayerActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/eztv/powerful/PlayerActivity;->M:Lcom/eztv/powerful/recycleview/b/c;

    sget v4, Lcom/eztv/powerful/PlayerActivity;->J:I

    invoke-virtual {v0, v4}, Lcom/eztv/powerful/recycleview/b/c;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eztv/powerful/recycleview/b/d;

    invoke-virtual {v0}, Lcom/eztv/powerful/recycleview/b/d;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " ["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v0, Lcom/eztv/powerful/PlayerActivity;->L:Ljava/util/List;

    sget v4, Lcom/eztv/powerful/PlayerActivity;->K:I

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eztv/powerful/recycleview/b/e;

    invoke-virtual {v0}, Lcom/eztv/powerful/recycleview/b/e;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Lcom/eztv/powerful/PlayerActivity;->a(Lcom/eztv/powerful/PlayerActivity;Ljava/lang/String;Z)Landroid/text/SpannableString;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :goto_4
    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$1;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v0}, Lcom/eztv/powerful/PlayerActivity;->m(Lcom/eztv/powerful/PlayerActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$1;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v0}, Lcom/eztv/powerful/PlayerActivity;->i(Lcom/eztv/powerful/PlayerActivity;)Landroid/widget/TextClock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextClock;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    sget-object v1, Lcom/eztv/powerful/PlayerActivity;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07040c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/eztv/powerful/PlayerActivity$1;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v1}, Lcom/eztv/powerful/PlayerActivity;->i(Lcom/eztv/powerful/PlayerActivity;)Landroid/widget/TextClock;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextClock;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    :cond_9
    :try_start_5
    sget v0, Lcom/eztv/powerful/PlayerActivity;->i:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$1;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v0}, Lcom/eztv/powerful/PlayerActivity;->v(Lcom/eztv/powerful/PlayerActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/eztv/powerful/PlayerActivity$1;->a:Lcom/eztv/powerful/PlayerActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$1;->a:Lcom/eztv/powerful/PlayerActivity;

    iget-object v0, v0, Lcom/eztv/powerful/PlayerActivity;->av:Lcom/eztv/powerful/widget/a/a;

    invoke-virtual {v0}, Lcom/eztv/powerful/widget/a/a;->a()Ljava/util/List;

    move-result-object v0

    iget-object v4, p0, Lcom/eztv/powerful/PlayerActivity$1;->a:Lcom/eztv/powerful/PlayerActivity;

    iget-object v4, v4, Lcom/eztv/powerful/PlayerActivity;->av:Lcom/eztv/powerful/widget/a/a;

    invoke-virtual {v4}, Lcom/eztv/powerful/widget/a/a;->b()I

    move-result v4

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eztv/powerful/widget/a/b/a;

    invoke-virtual {v0}, Lcom/eztv/powerful/widget/a/b/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " ["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$1;->a:Lcom/eztv/powerful/PlayerActivity;

    iget-object v0, v0, Lcom/eztv/powerful/PlayerActivity;->av:Lcom/eztv/powerful/widget/a/a;

    invoke-virtual {v0}, Lcom/eztv/powerful/widget/a/a;->a()Ljava/util/List;

    move-result-object v0

    iget-object v4, p0, Lcom/eztv/powerful/PlayerActivity$1;->a:Lcom/eztv/powerful/PlayerActivity;

    iget-object v4, v4, Lcom/eztv/powerful/PlayerActivity;->av:Lcom/eztv/powerful/widget/a/a;

    invoke-virtual {v4}, Lcom/eztv/powerful/widget/a/a;->b()I

    move-result v4

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eztv/powerful/widget/a/b/a;

    invoke-virtual {v0}, Lcom/eztv/powerful/widget/a/b/a;->c()Ljava/util/List;

    move-result-object v0

    iget-object v4, p0, Lcom/eztv/powerful/PlayerActivity$1;->a:Lcom/eztv/powerful/PlayerActivity;

    iget-object v4, v4, Lcom/eztv/powerful/PlayerActivity;->av:Lcom/eztv/powerful/widget/a/a;

    invoke-virtual {v4}, Lcom/eztv/powerful/widget/a/a;->c()I

    move-result v4

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eztv/powerful/widget/a/b/b;

    invoke-virtual {v0}, Lcom/eztv/powerful/widget/a/b/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Lcom/eztv/powerful/PlayerActivity;->a(Lcom/eztv/powerful/PlayerActivity;Ljava/lang/String;Z)Landroid/text/SpannableString;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_4

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/k/a/f;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_a
    :try_start_6
    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$1;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v0}, Lcom/eztv/powerful/PlayerActivity;->v(Lcom/eztv/powerful/PlayerActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/eztv/powerful/PlayerActivity$1;->a:Lcom/eztv/powerful/PlayerActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/eztv/powerful/PlayerActivity;->H:Ljava/util/List;

    sget v4, Lcom/eztv/powerful/PlayerActivity;->J:I

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eztv/powerful/recycleview/b/d;

    invoke-virtual {v0}, Lcom/eztv/powerful/recycleview/b/d;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " ["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v0, Lcom/eztv/powerful/PlayerActivity;->H:Ljava/util/List;

    sget v4, Lcom/eztv/powerful/PlayerActivity;->J:I

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eztv/powerful/recycleview/b/d;

    invoke-virtual {v0}, Lcom/eztv/powerful/recycleview/b/d;->e()Ljava/util/List;

    move-result-object v0

    sget v4, Lcom/eztv/powerful/PlayerActivity;->K:I

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eztv/powerful/recycleview/b/e;

    invoke-virtual {v0}, Lcom/eztv/powerful/recycleview/b/e;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Lcom/eztv/powerful/PlayerActivity;->a(Lcom/eztv/powerful/PlayerActivity;Ljava/lang/String;Z)Landroid/text/SpannableString;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_4

    :sswitch_b
    const-string v0, ""

    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$1;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v0}, Lcom/eztv/powerful/PlayerActivity;->w(Lcom/eztv/powerful/PlayerActivity;)J

    move-result-wide v0

    cmp-long v0, v0, v6

    if-gez v0, :cond_b

    const-string v0, "0KB/s"

    :goto_5
    sget-boolean v1, Lcom/eztv/powerful/PlayerActivity;->aF:Z

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/eztv/powerful/PlayerActivity$1;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v1}, Lcom/eztv/powerful/PlayerActivity;->x(Lcom/eztv/powerful/PlayerActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/eztv/powerful/PlayerActivity$1;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v1}, Lcom/eztv/powerful/PlayerActivity;->x(Lcom/eztv/powerful/PlayerActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/eztv/powerful/PlayerActivity$1;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v2}, Lcom/eztv/powerful/PlayerActivity;->y(Lcom/eztv/powerful/PlayerActivity;)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, p0, Lcom/eztv/powerful/PlayerActivity$1;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v1}, Lcom/eztv/powerful/PlayerActivity;->x(Lcom/eztv/powerful/PlayerActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_6
    iget-object v1, p0, Lcom/eztv/powerful/PlayerActivity$1;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v1}, Lcom/eztv/powerful/PlayerActivity;->z(Lcom/eztv/powerful/PlayerActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/eztv/powerful/PlayerActivity$1;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v1}, Lcom/eztv/powerful/PlayerActivity;->u(Lcom/eztv/powerful/PlayerActivity;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    \u7ebf\u8def"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/eztv/powerful/PlayerActivity;->v:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/eztv/powerful/PlayerActivity$1;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v1}, Lcom/eztv/powerful/PlayerActivity;->u(Lcom/eztv/powerful/PlayerActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_0

    :cond_b
    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$1;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v0}, Lcom/eztv/powerful/PlayerActivity;->w(Lcom/eztv/powerful/PlayerActivity;)J

    move-result-wide v0

    div-long/2addr v0, v6

    cmp-long v0, v0, v6

    if-lez v0, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/eztv/powerful/PlayerActivity$1;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v1}, Lcom/eztv/powerful/PlayerActivity;->w(Lcom/eztv/powerful/PlayerActivity;)J

    move-result-wide v2

    div-long/2addr v2, v6

    div-long/2addr v2, v6

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "MB/s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5

    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/eztv/powerful/PlayerActivity$1;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v1}, Lcom/eztv/powerful/PlayerActivity;->w(Lcom/eztv/powerful/PlayerActivity;)J

    move-result-wide v2

    div-long/2addr v2, v6

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "KB/s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5

    :cond_d
    iget-object v1, p0, Lcom/eztv/powerful/PlayerActivity$1;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v1}, Lcom/eztv/powerful/PlayerActivity;->x(Lcom/eztv/powerful/PlayerActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/eztv/powerful/PlayerActivity$1;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v1}, Lcom/eztv/powerful/PlayerActivity;->x(Lcom/eztv/powerful/PlayerActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/eztv/powerful/PlayerActivity$1;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v2}, Lcom/eztv/powerful/PlayerActivity;->y(Lcom/eztv/powerful/PlayerActivity;)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, p0, Lcom/eztv/powerful/PlayerActivity$1;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v1}, Lcom/eztv/powerful/PlayerActivity;->x(Lcom/eztv/powerful/PlayerActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_6

    :sswitch_c
    :try_start_7
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "hls"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/eztv/powerful/PlayerActivity;->at:Ljava/lang/String;

    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$1;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v0}, Lcom/eztv/powerful/PlayerActivity;->A(Lcom/eztv/powerful/PlayerActivity;)V
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_4

    goto/16 :goto_0

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/k/a/f;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :sswitch_d
    :try_start_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/eztv/powerful/PlayerActivity;->at:Ljava/lang/String;

    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$1;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v0}, Lcom/eztv/powerful/PlayerActivity;->A(Lcom/eztv/powerful/PlayerActivity;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    goto/16 :goto_0

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/k/a/f;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :sswitch_e
    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$1;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v0}, Lcom/eztv/powerful/PlayerActivity;->B(Lcom/eztv/powerful/PlayerActivity;)Lcom/view/ScrollTextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/view/ScrollTextView;->setVisibility(I)V

    goto/16 :goto_0

    :sswitch_f
    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$1;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v0}, Lcom/eztv/powerful/PlayerActivity;->B(Lcom/eztv/powerful/PlayerActivity;)Lcom/view/ScrollTextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/view/ScrollTextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$1;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v0}, Lcom/eztv/powerful/PlayerActivity;->B(Lcom/eztv/powerful/PlayerActivity;)Lcom/view/ScrollTextView;

    move-result-object v0

    sget-object v1, Lcom/eztv/powerful/SplashActivity;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/view/ScrollTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$1;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v0}, Lcom/eztv/powerful/PlayerActivity;->B(Lcom/eztv/powerful/PlayerActivity;)Lcom/view/ScrollTextView;

    move-result-object v0

    iget-object v1, p0, Lcom/eztv/powerful/PlayerActivity$1;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v1}, Lcom/eztv/powerful/PlayerActivity;->y(Lcom/eztv/powerful/PlayerActivity;)I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    int-to-float v1, v1

    invoke-virtual {v0, v5, v1}, Lcom/view/ScrollTextView;->setTextSize(IF)V

    goto/16 :goto_0

    :sswitch_10
    const-string v0, "\u8282\u76ee\u5217\u8868\u66f4\u65b0\u6210\u529f\uff01"

    invoke-static {v0, v4}, Lcom/eztv/powerful/PlayerActivity;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    :sswitch_11
    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$1;->a:Lcom/eztv/powerful/PlayerActivity;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/eztv/powerful/PlayerActivity;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_12
    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$1;->a:Lcom/eztv/powerful/PlayerActivity;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/eztv/powerful/PlayerActivity;->a(Lcom/eztv/powerful/PlayerActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_13
    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$1;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v0}, Lcom/eztv/powerful/PlayerActivity;->C(Lcom/eztv/powerful/PlayerActivity;)V

    goto/16 :goto_0

    :sswitch_14
    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$1;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v0}, Lcom/eztv/powerful/PlayerActivity;->c(Lcom/eztv/powerful/PlayerActivity;)V

    goto/16 :goto_0

    :sswitch_15
    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$1;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v0}, Lcom/eztv/powerful/PlayerActivity;->D(Lcom/eztv/powerful/PlayerActivity;)V

    goto/16 :goto_0

    :sswitch_16
    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$1;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v0}, Lcom/eztv/powerful/PlayerActivity;->E(Lcom/eztv/powerful/PlayerActivity;)V

    goto/16 :goto_0

    :sswitch_17
    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$1;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-virtual {v0}, Lcom/eztv/powerful/PlayerActivity;->q()V

    goto/16 :goto_0

    :sswitch_18
    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$1;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v0}, Lcom/eztv/powerful/PlayerActivity;->F(Lcom/eztv/powerful/PlayerActivity;)V

    goto/16 :goto_0

    :sswitch_19
    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$1;->a:Lcom/eztv/powerful/PlayerActivity;

    sget-object v1, Lcom/eztv/powerful/PlayerActivity;->N:Ljava/util/List;

    invoke-virtual {v0, v1, v4}, Lcom/eztv/powerful/PlayerActivity;->a(Ljava/util/List;Z)V

    goto/16 :goto_0

    :sswitch_1a
    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$1;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-virtual {v0}, Lcom/eztv/powerful/PlayerActivity;->c()V

    goto/16 :goto_0

    :sswitch_1b
    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$1;->a:Lcom/eztv/powerful/PlayerActivity;

    iget-object v0, v0, Lcom/eztv/powerful/PlayerActivity;->aL:Landroid/support/v7/widget/RecyclerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    goto/16 :goto_0

    :sswitch_1c
    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$1;->a:Lcom/eztv/powerful/PlayerActivity;

    iget-object v0, v0, Lcom/eztv/powerful/PlayerActivity;->aL:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    new-instance v0, Lcom/eztv/powerful/recycleview/a/b;

    iget-object v1, p0, Lcom/eztv/powerful/PlayerActivity$1;->a:Lcom/eztv/powerful/PlayerActivity;

    iget-object v1, v1, Lcom/eztv/powerful/PlayerActivity;->aM:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/eztv/powerful/recycleview/a/b;-><init>(Ljava/util/List;)V

    new-instance v1, Lcom/eztv/powerful/PlayerActivity$1$2;

    invoke-direct {v1, p0}, Lcom/eztv/powerful/PlayerActivity$1$2;-><init>(Lcom/eztv/powerful/PlayerActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/eztv/powerful/recycleview/a/b;->a(Lcom/eztv/powerful/recycleview/c/b;)V

    iget-object v1, p0, Lcom/eztv/powerful/PlayerActivity$1;->a:Lcom/eztv/powerful/PlayerActivity;

    iget-object v1, v1, Lcom/eztv/powerful/PlayerActivity;->aL:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x3 -> :sswitch_3
        0x8 -> :sswitch_8
        0xb -> :sswitch_9
        0xe -> :sswitch_a
        0xf -> :sswitch_d
        0x11 -> :sswitch_e
        0x12 -> :sswitch_f
        0x15 -> :sswitch_4
        0x19 -> :sswitch_7
        0x1a -> :sswitch_5
        0x1b -> :sswitch_b
        0x1e -> :sswitch_2
        0x1f -> :sswitch_6
        0x22 -> :sswitch_10
        0x23 -> :sswitch_0
        0x67 -> :sswitch_c
        0x97 -> :sswitch_11
        0x98 -> :sswitch_12
        0x99 -> :sswitch_15
        0x9a -> :sswitch_13
        0x9b -> :sswitch_14
        0x9c -> :sswitch_16
        0x9d -> :sswitch_17
        0x9e -> :sswitch_18
        0x9f -> :sswitch_19
        0xa0 -> :sswitch_1a
        0xa1 -> :sswitch_1c
        0xa2 -> :sswitch_1b
    .end sparse-switch
.end method
