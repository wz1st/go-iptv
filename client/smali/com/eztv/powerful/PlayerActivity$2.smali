.class Lcom/eztv/powerful/PlayerActivity$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/eztv/powerful/recycleview/c/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eztv/powerful/PlayerActivity;->a(Lcom/eztv/powerful/recycleview/a/d;Lcom/eztv/powerful/recycleview/layoutmanager/SourceLinearLayoutManager;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/eztv/powerful/recycleview/layoutmanager/SourceLinearLayoutManager;

.field final synthetic b:Z

.field final synthetic c:Lcom/eztv/powerful/PlayerActivity;


# direct methods
.method constructor <init>(Lcom/eztv/powerful/PlayerActivity;Lcom/eztv/powerful/recycleview/layoutmanager/SourceLinearLayoutManager;Z)V
    .locals 0

    iput-object p1, p0, Lcom/eztv/powerful/PlayerActivity$2;->c:Lcom/eztv/powerful/PlayerActivity;

    iput-object p2, p0, Lcom/eztv/powerful/PlayerActivity$2;->a:Lcom/eztv/powerful/recycleview/layoutmanager/SourceLinearLayoutManager;

    iput-boolean p3, p0, Lcom/eztv/powerful/PlayerActivity$2;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/eztv/powerful/recycleview/a/d$c;Landroid/view/View;ILjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/eztv/powerful/recycleview/a/d$c;",
            "Landroid/view/View;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/eztv/powerful/recycleview/b/e;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/eztv/powerful/PlayerActivity$2;->c:Lcom/eztv/powerful/PlayerActivity;

    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eztv/powerful/recycleview/b/e;

    invoke-virtual {v0}, Lcom/eztv/powerful/recycleview/b/e;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/eztv/powerful/PlayerActivity;->b(Lcom/eztv/powerful/PlayerActivity;Ljava/lang/String;)V

    sput p3, Lcom/eztv/powerful/PlayerActivity;->K:I

    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$2;->c:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v0}, Lcom/eztv/powerful/PlayerActivity;->ay(Lcom/eztv/powerful/PlayerActivity;)I

    move-result v0

    sput v0, Lcom/eztv/powerful/PlayerActivity;->J:I

    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$2;->c:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v0}, Lcom/eztv/powerful/PlayerActivity;->ax(Lcom/eztv/powerful/PlayerActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    iget-boolean v0, p0, Lcom/eztv/powerful/PlayerActivity$2;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$2;->c:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v0}, Lcom/eztv/powerful/PlayerActivity;->G(Lcom/eztv/powerful/PlayerActivity;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a014b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5f53\u524d\u64ad\u653e:\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v1, Lcom/eztv/powerful/PlayerActivity;->M:Lcom/eztv/powerful/recycleview/b/c;

    sget v3, Lcom/eztv/powerful/PlayerActivity;->J:I

    invoke-virtual {v1, v3}, Lcom/eztv/powerful/recycleview/b/c;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eztv/powerful/recycleview/b/d;

    invoke-virtual {v1}, Lcom/eztv/powerful/recycleview/b/d;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u3010"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eztv/powerful/recycleview/b/e;

    invoke-virtual {v1}, Lcom/eztv/powerful/recycleview/b/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u3011"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$2;->c:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v0}, Lcom/eztv/powerful/PlayerActivity;->e(Lcom/eztv/powerful/PlayerActivity;)Lcom/setting/MySettings;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "si"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v0, Lcom/eztv/powerful/PlayerActivity;->M:Lcom/eztv/powerful/recycleview/b/c;

    sget v3, Lcom/eztv/powerful/PlayerActivity;->J:I

    invoke-virtual {v0, v3}, Lcom/eztv/powerful/recycleview/b/c;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eztv/powerful/recycleview/b/d;

    invoke-virtual {v0}, Lcom/eztv/powerful/recycleview/b/d;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, p3}, Lcom/setting/MySettings;->a(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :goto_0
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5f00\u59cb\u64ad\u653e:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eztv/powerful/recycleview/b/e;

    invoke-virtual {v0}, Lcom/eztv/powerful/recycleview/b/e;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/eztv/powerful/PlayerActivity;->a(Ljava/lang/String;I)V

    sget-object v0, Lcom/eztv/powerful/PlayerActivity;->M:Lcom/eztv/powerful/recycleview/b/c;

    sget v1, Lcom/eztv/powerful/PlayerActivity;->J:I

    invoke-virtual {v0, v1}, Lcom/eztv/powerful/recycleview/b/c;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eztv/powerful/recycleview/b/d;

    invoke-virtual {v0}, Lcom/eztv/powerful/recycleview/b/d;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$2;->c:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v0}, Lcom/eztv/powerful/PlayerActivity;->G(Lcom/eztv/powerful/PlayerActivity;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0153

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    sget-object v0, Lcom/eztv/powerful/PlayerActivity;->M:Lcom/eztv/powerful/recycleview/b/c;

    sget v1, Lcom/eztv/powerful/PlayerActivity;->J:I

    invoke-virtual {v0, v1}, Lcom/eztv/powerful/recycleview/b/c;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eztv/powerful/recycleview/b/d;

    invoke-virtual {v0}, Lcom/eztv/powerful/recycleview/b/d;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eztv/powerful/recycleview/b/e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/eztv/powerful/recycleview/b/e;->a(Z)V

    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$2;->c:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v0}, Lcom/eztv/powerful/PlayerActivity;->G(Lcom/eztv/powerful/PlayerActivity;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a014b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5f53\u524d\u64ad\u653e:\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v1, Lcom/eztv/powerful/PlayerActivity;->H:Ljava/util/List;

    sget v3, Lcom/eztv/powerful/PlayerActivity;->J:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eztv/powerful/recycleview/b/d;

    invoke-virtual {v1}, Lcom/eztv/powerful/recycleview/b/d;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u3010"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eztv/powerful/recycleview/b/e;

    invoke-virtual {v1}, Lcom/eztv/powerful/recycleview/b/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u3011"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/eztv/powerful/PlayerActivity;->H:Ljava/util/List;

    sget v1, Lcom/eztv/powerful/PlayerActivity;->J:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eztv/powerful/recycleview/b/d;

    invoke-virtual {v0}, Lcom/eztv/powerful/recycleview/b/d;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$2;->c:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v0}, Lcom/eztv/powerful/PlayerActivity;->G(Lcom/eztv/powerful/PlayerActivity;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0153

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$2;->c:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v0}, Lcom/eztv/powerful/PlayerActivity;->e(Lcom/eztv/powerful/PlayerActivity;)Lcom/setting/MySettings;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "si"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v0, Lcom/eztv/powerful/PlayerActivity;->H:Ljava/util/List;

    sget v3, Lcom/eztv/powerful/PlayerActivity;->J:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eztv/powerful/recycleview/b/d;

    invoke-virtual {v0}, Lcom/eztv/powerful/recycleview/b/d;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, p3}, Lcom/setting/MySettings;->a(Ljava/lang/String;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :goto_2
    :try_start_4
    sget-object v0, Lcom/eztv/powerful/PlayerActivity;->H:Ljava/util/List;

    sget v1, Lcom/eztv/powerful/PlayerActivity;->J:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eztv/powerful/recycleview/b/d;

    invoke-virtual {v0}, Lcom/eztv/powerful/recycleview/b/d;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eztv/powerful/recycleview/b/e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/eztv/powerful/recycleview/b/e;->a(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5f00\u59cb\u64ad\u653e:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eztv/powerful/recycleview/b/e;

    invoke-virtual {v0}, Lcom/eztv/powerful/recycleview/b/e;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/eztv/powerful/PlayerActivity;->a(Ljava/lang/String;I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_1

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto/16 :goto_0
.end method

.method public a(Lcom/eztv/powerful/recycleview/a/d$c;Landroid/view/View;ZI)V
    .locals 3

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$2;->a:Lcom/eztv/powerful/recycleview/layoutmanager/SourceLinearLayoutManager;

    iget-object v1, p0, Lcom/eztv/powerful/PlayerActivity$2;->c:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v1}, Lcom/eztv/powerful/PlayerActivity;->aw(Lcom/eztv/powerful/PlayerActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    new-instance v2, Landroid/support/v7/widget/RecyclerView$u;

    invoke-direct {v2}, Landroid/support/v7/widget/RecyclerView$u;-><init>()V

    invoke-virtual {v0, v1, v2, p4}, Lcom/eztv/powerful/recycleview/layoutmanager/SourceLinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$u;I)V

    :cond_0
    return-void
.end method
