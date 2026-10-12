.class Lcom/eztv/powerful/widget/HelpActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eztv/powerful/widget/HelpActivity;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/eztv/powerful/widget/HelpActivity;


# direct methods
.method constructor <init>(Lcom/eztv/powerful/widget/HelpActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/eztv/powerful/widget/HelpActivity$1;->a:Lcom/eztv/powerful/widget/HelpActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/eztv/powerful/widget/HelpActivity$1;->a:Lcom/eztv/powerful/widget/HelpActivity;

    invoke-virtual {v0}, Lcom/eztv/powerful/widget/HelpActivity;->finish()V

    return-void
.end method
