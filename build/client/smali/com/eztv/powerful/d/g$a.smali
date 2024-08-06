.class Lcom/eztv/powerful/d/g$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eztv/powerful/d/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:Lcom/eztv/powerful/d/g$c;

.field final synthetic c:Lcom/eztv/powerful/d/g;


# direct methods
.method public constructor <init>(Lcom/eztv/powerful/d/g;ILcom/eztv/powerful/d/g$c;)V
    .locals 0

    iput-object p1, p0, Lcom/eztv/powerful/d/g$a;->c:Lcom/eztv/powerful/d/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/eztv/powerful/d/g$a;->a:I

    iput-object p3, p0, Lcom/eztv/powerful/d/g$a;->b:Lcom/eztv/powerful/d/g$c;

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4

    const v3, 0x3f866666    # 1.05f

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/eztv/powerful/d/g$a;->b:Lcom/eztv/powerful/d/g$c;

    iget-object v0, v0, Lcom/eztv/powerful/d/g$c;->b:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, p0, Lcom/eztv/powerful/d/g$a;->b:Lcom/eztv/powerful/d/g$c;

    iget-object v0, v0, Lcom/eztv/powerful/d/g$c;->a:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget v0, p0, Lcom/eztv/powerful/d/g$a;->a:I

    if-eqz v0, :cond_0

    :cond_0
    iget-object v0, p0, Lcom/eztv/powerful/d/g$a;->b:Lcom/eztv/powerful/d/g$c;

    iget-object v0, v0, Lcom/eztv/powerful/d/g$c;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_0
    iget-object v0, p0, Lcom/eztv/powerful/d/g$a;->c:Lcom/eztv/powerful/d/g;

    invoke-static {v0}, Lcom/eztv/powerful/d/g;->a(Lcom/eztv/powerful/d/g;)Lcom/eztv/powerful/d/i;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/eztv/powerful/d/g$a;->c:Lcom/eztv/powerful/d/g;

    invoke-static {v0}, Lcom/eztv/powerful/d/g;->a(Lcom/eztv/powerful/d/g;)Lcom/eztv/powerful/d/i;

    move-result-object v0

    iget-object v1, p0, Lcom/eztv/powerful/d/g$a;->b:Lcom/eztv/powerful/d/g$c;

    iget v2, p0, Lcom/eztv/powerful/d/g$a;->a:I

    invoke-interface {v0, v1, p1, p2, v2}, Lcom/eztv/powerful/d/i;->a(Lcom/eztv/powerful/d/g$c;Landroid/view/View;ZI)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/eztv/powerful/d/g$a;->b:Lcom/eztv/powerful/d/g$c;

    iget-object v0, v0, Lcom/eztv/powerful/d/g$c;->b:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, p0, Lcom/eztv/powerful/d/g$a;->b:Lcom/eztv/powerful/d/g$c;

    iget-object v0, v0, Lcom/eztv/powerful/d/g$c;->a:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v0, p0, Lcom/eztv/powerful/d/g$a;->b:Lcom/eztv/powerful/d/g$c;

    iget-object v0, v0, Lcom/eztv/powerful/d/g$c;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0
.end method
