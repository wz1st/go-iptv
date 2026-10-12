.class Lcom/eztv/powerful/PlayerActivity$6;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eztv/powerful/PlayerActivity;->C()V
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

    iput-object p1, p0, Lcom/eztv/powerful/PlayerActivity$6;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$6;->a:Lcom/eztv/powerful/PlayerActivity;

    const/16 v1, 0x15

    invoke-static {v0, v1}, Lcom/eztv/powerful/PlayerActivity;->b(Lcom/eztv/powerful/PlayerActivity;I)V

    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$6;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v0}, Lcom/eztv/powerful/PlayerActivity;->O(Lcom/eztv/powerful/PlayerActivity;)I

    move-result v0

    sget v1, Lcom/eztv/powerful/SplashActivity;->g:I

    mul-int/lit8 v1, v1, 0xa

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$6;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v0}, Lcom/eztv/powerful/PlayerActivity;->P(Lcom/eztv/powerful/PlayerActivity;)V

    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$6;->a:Lcom/eztv/powerful/PlayerActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/eztv/powerful/PlayerActivity;->c(Lcom/eztv/powerful/PlayerActivity;I)I

    :cond_0
    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$6;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-static {v0}, Lcom/eztv/powerful/PlayerActivity;->Q(Lcom/eztv/powerful/PlayerActivity;)I

    return-void
.end method
