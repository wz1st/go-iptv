.class Lcom/eztv/powerful/widget/a/a$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eztv/powerful/widget/a/a;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/eztv/powerful/widget/a/a;


# direct methods
.method constructor <init>(Lcom/eztv/powerful/widget/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/eztv/powerful/widget/a/a$2;->a:Lcom/eztv/powerful/widget/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/eztv/powerful/widget/a/a$2;->a:Lcom/eztv/powerful/widget/a/a;

    invoke-static {v0}, Lcom/eztv/powerful/widget/a/a;->a(Lcom/eztv/powerful/widget/a/a;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method
