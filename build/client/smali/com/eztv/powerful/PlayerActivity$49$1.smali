.class Lcom/eztv/powerful/PlayerActivity$49$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eztv/powerful/PlayerActivity$49;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/eztv/powerful/PlayerActivity$49;


# direct methods
.method constructor <init>(Lcom/eztv/powerful/PlayerActivity$49;)V
    .locals 0

    iput-object p1, p0, Lcom/eztv/powerful/PlayerActivity$49$1;->a:Lcom/eztv/powerful/PlayerActivity$49;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$49$1;->a:Lcom/eztv/powerful/PlayerActivity$49;

    iget-object v0, v0, Lcom/eztv/powerful/PlayerActivity$49;->a:Lcom/eztv/powerful/PlayerActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/eztv/powerful/PlayerActivity;->b(Z)V

    return-void
.end method
