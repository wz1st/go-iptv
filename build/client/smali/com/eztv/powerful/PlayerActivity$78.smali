.class Lcom/eztv/powerful/PlayerActivity$78;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eztv/powerful/PlayerActivity;->aq()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Lcom/eztv/powerful/PlayerActivity;


# direct methods
.method constructor <init>(Lcom/eztv/powerful/PlayerActivity;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lcom/eztv/powerful/PlayerActivity$78;->b:Lcom/eztv/powerful/PlayerActivity;

    iput-object p2, p0, Lcom/eztv/powerful/PlayerActivity$78;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$78;->a:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$78;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$78;->b:Lcom/eztv/powerful/PlayerActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/eztv/powerful/PlayerActivity;->aN:Z

    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$78;->b:Lcom/eztv/powerful/PlayerActivity;

    iget-object v0, v0, Lcom/eztv/powerful/PlayerActivity;->aL:Landroid/support/v7/widget/RecyclerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    return-void
.end method
