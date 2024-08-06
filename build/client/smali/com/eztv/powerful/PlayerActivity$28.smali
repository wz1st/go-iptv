.class Lcom/eztv/powerful/PlayerActivity$28;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eztv/powerful/PlayerActivity;->a(I)V
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

    iput-object p1, p0, Lcom/eztv/powerful/PlayerActivity$28;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$28;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v0}, Lcom/eztv/powerful/PlayerActivity;->I(Lcom/eztv/powerful/PlayerActivity;)Lcom/eztv/powerful/recycleview/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/eztv/powerful/PlayerActivity$28;->a:Lcom/eztv/powerful/PlayerActivity;

    iget v1, v1, Lcom/eztv/powerful/PlayerActivity;->az:I

    invoke-virtual {v0, v1}, Lcom/eztv/powerful/recycleview/b/a;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eztv/powerful/recycleview/b/b;

    invoke-virtual {v0}, Lcom/eztv/powerful/recycleview/b/b;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eztv/powerful/util/i;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$28;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-virtual {v0, v2}, Lcom/eztv/powerful/PlayerActivity;->b(Z)V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$28;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v0}, Lcom/eztv/powerful/PlayerActivity;->J(Lcom/eztv/powerful/PlayerActivity;)Lcom/eztv/powerful/recycleview/a/a;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/eztv/powerful/PlayerActivity$28;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v2}, Lcom/eztv/powerful/PlayerActivity;->I(Lcom/eztv/powerful/PlayerActivity;)Lcom/eztv/powerful/recycleview/b/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/eztv/powerful/recycleview/b/a;->size()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/eztv/powerful/recycleview/a/a;->a(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
