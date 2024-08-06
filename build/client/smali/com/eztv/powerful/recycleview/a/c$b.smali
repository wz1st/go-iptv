.class Lcom/eztv/powerful/recycleview/a/c$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eztv/powerful/recycleview/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field a:I

.field b:Lcom/eztv/powerful/recycleview/a/c$e;

.field final synthetic c:Lcom/eztv/powerful/recycleview/a/c;


# direct methods
.method public constructor <init>(Lcom/eztv/powerful/recycleview/a/c;ILcom/eztv/powerful/recycleview/a/c$e;)V
    .locals 0

    iput-object p1, p0, Lcom/eztv/powerful/recycleview/a/c$b;->c:Lcom/eztv/powerful/recycleview/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/eztv/powerful/recycleview/a/c$b;->a:I

    iput-object p3, p0, Lcom/eztv/powerful/recycleview/a/c$b;->b:Lcom/eztv/powerful/recycleview/a/c$e;

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/eztv/powerful/recycleview/a/c$b;->b:Lcom/eztv/powerful/recycleview/a/c$e;

    iget-object v0, v0, Lcom/eztv/powerful/recycleview/a/c$e;->b:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, p0, Lcom/eztv/powerful/recycleview/a/c$b;->b:Lcom/eztv/powerful/recycleview/a/c$e;

    iget-object v0, v0, Lcom/eztv/powerful/recycleview/a/c$e;->r:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :goto_0
    iget-object v0, p0, Lcom/eztv/powerful/recycleview/a/c$b;->c:Lcom/eztv/powerful/recycleview/a/c;

    invoke-static {v0}, Lcom/eztv/powerful/recycleview/a/c;->a(Lcom/eztv/powerful/recycleview/a/c;)Lcom/eztv/powerful/recycleview/c/c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/eztv/powerful/recycleview/a/c$b;->c:Lcom/eztv/powerful/recycleview/a/c;

    invoke-static {v0}, Lcom/eztv/powerful/recycleview/a/c;->a(Lcom/eztv/powerful/recycleview/a/c;)Lcom/eztv/powerful/recycleview/c/c;

    move-result-object v0

    iget-object v1, p0, Lcom/eztv/powerful/recycleview/a/c$b;->b:Lcom/eztv/powerful/recycleview/a/c$e;

    iget v2, p0, Lcom/eztv/powerful/recycleview/a/c$b;->a:I

    invoke-interface {v0, v1, p1, p2, v2}, Lcom/eztv/powerful/recycleview/c/c;->a(Lcom/eztv/powerful/recycleview/a/c$e;Landroid/view/View;ZI)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/eztv/powerful/recycleview/a/c$b;->b:Lcom/eztv/powerful/recycleview/a/c$e;

    iget-object v0, v0, Lcom/eztv/powerful/recycleview/a/c$e;->b:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, p0, Lcom/eztv/powerful/recycleview/a/c$b;->b:Lcom/eztv/powerful/recycleview/a/c$e;

    iget-object v0, v0, Lcom/eztv/powerful/recycleview/a/c$e;->r:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_0
.end method
