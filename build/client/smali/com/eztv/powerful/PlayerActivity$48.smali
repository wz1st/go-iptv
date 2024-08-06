.class Lcom/eztv/powerful/PlayerActivity$48;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eztv/powerful/PlayerActivity;->ac()V
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

    iput-object p1, p0, Lcom/eztv/powerful/PlayerActivity$48;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/eztv/powerful/PlayerActivity;->a:Landroid/content/Context;

    const-class v2, Lcom/eztv/powerful/widget/HelpActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/eztv/powerful/PlayerActivity$48;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-virtual {v1, v0}, Lcom/eztv/powerful/PlayerActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
