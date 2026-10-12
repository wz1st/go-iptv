.class Lcom/eztv/powerful/recycleview/a/d$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eztv/powerful/recycleview/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field a:I

.field b:Lcom/eztv/powerful/recycleview/a/d$c;

.field final synthetic c:Lcom/eztv/powerful/recycleview/a/d;


# direct methods
.method public constructor <init>(Lcom/eztv/powerful/recycleview/a/d;ILcom/eztv/powerful/recycleview/a/d$c;)V
    .locals 0

    iput-object p1, p0, Lcom/eztv/powerful/recycleview/a/d$b;->c:Lcom/eztv/powerful/recycleview/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/eztv/powerful/recycleview/a/d$b;->a:I

    iput-object p3, p0, Lcom/eztv/powerful/recycleview/a/d$b;->b:Lcom/eztv/powerful/recycleview/a/d$c;

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 5

    const v4, 0x3f933333    # 1.15f

    const v3, 0x3f90a3d7    # 1.13f

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/eztv/powerful/recycleview/a/d$b;->b:Lcom/eztv/powerful/recycleview/a/d$c;

    iget-object v0, v0, Lcom/eztv/powerful/recycleview/a/d$c;->b:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, p0, Lcom/eztv/powerful/recycleview/a/d$b;->b:Lcom/eztv/powerful/recycleview/a/d$c;

    iget-object v0, v0, Lcom/eztv/powerful/recycleview/a/d$c;->a:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v0, p0, Lcom/eztv/powerful/recycleview/a/d$b;->b:Lcom/eztv/powerful/recycleview/a/d$c;

    iget-object v0, v0, Lcom/eztv/powerful/recycleview/a/d$c;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lcom/eztv/powerful/recycleview/a/d$b;->b:Lcom/eztv/powerful/recycleview/a/d$c;

    iget-object v0, v0, Lcom/eztv/powerful/recycleview/a/d$c;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_0
    iget-object v0, p0, Lcom/eztv/powerful/recycleview/a/d$b;->c:Lcom/eztv/powerful/recycleview/a/d;

    invoke-static {v0}, Lcom/eztv/powerful/recycleview/a/d;->a(Lcom/eztv/powerful/recycleview/a/d;)Lcom/eztv/powerful/recycleview/c/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/eztv/powerful/recycleview/a/d$b;->c:Lcom/eztv/powerful/recycleview/a/d;

    invoke-static {v0}, Lcom/eztv/powerful/recycleview/a/d;->a(Lcom/eztv/powerful/recycleview/a/d;)Lcom/eztv/powerful/recycleview/c/d;

    move-result-object v0

    iget-object v1, p0, Lcom/eztv/powerful/recycleview/a/d$b;->b:Lcom/eztv/powerful/recycleview/a/d$c;

    iget v2, p0, Lcom/eztv/powerful/recycleview/a/d$b;->a:I

    invoke-interface {v0, v1, p1, p2, v2}, Lcom/eztv/powerful/recycleview/c/d;->a(Lcom/eztv/powerful/recycleview/a/d$c;Landroid/view/View;ZI)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/eztv/powerful/recycleview/a/d$b;->b:Lcom/eztv/powerful/recycleview/a/d$c;

    iget-object v0, v0, Lcom/eztv/powerful/recycleview/a/d$c;->b:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, p0, Lcom/eztv/powerful/recycleview/a/d$b;->b:Lcom/eztv/powerful/recycleview/a/d$c;

    iget-object v0, v0, Lcom/eztv/powerful/recycleview/a/d$c;->a:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v0, p0, Lcom/eztv/powerful/recycleview/a/d$b;->b:Lcom/eztv/powerful/recycleview/a/d$c;

    iget-object v0, v0, Lcom/eztv/powerful/recycleview/a/d$c;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lcom/eztv/powerful/recycleview/a/d$b;->b:Lcom/eztv/powerful/recycleview/a/d$c;

    iget-object v0, v0, Lcom/eztv/powerful/recycleview/a/d$c;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0
.end method
