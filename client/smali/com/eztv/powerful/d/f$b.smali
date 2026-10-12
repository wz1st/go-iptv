.class Lcom/eztv/powerful/d/f$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eztv/powerful/d/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field a:I

.field b:Lcom/eztv/powerful/d/f$d;

.field final synthetic c:Lcom/eztv/powerful/d/f;


# direct methods
.method public constructor <init>(Lcom/eztv/powerful/d/f;ILcom/eztv/powerful/d/f$d;)V
    .locals 0

    iput-object p1, p0, Lcom/eztv/powerful/d/f$b;->c:Lcom/eztv/powerful/d/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/eztv/powerful/d/f$b;->a:I

    iput-object p3, p0, Lcom/eztv/powerful/d/f$b;->b:Lcom/eztv/powerful/d/f$d;

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 6

    const v5, 0x7f06007c

    const v4, 0x7f060033

    const v3, 0x3f866666    # 1.05f

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/eztv/powerful/d/f$b;->b:Lcom/eztv/powerful/d/f$d;

    invoke-static {v0}, Lcom/eztv/powerful/d/f$d;->c(Lcom/eztv/powerful/d/f$d;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/eztv/powerful/d/f$b;->c:Lcom/eztv/powerful/d/f;

    invoke-static {v1}, Lcom/eztv/powerful/d/f;->b(Lcom/eztv/powerful/d/f;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/eztv/powerful/d/f$b;->b:Lcom/eztv/powerful/d/f$d;

    invoke-static {v0}, Lcom/eztv/powerful/d/f$d;->d(Lcom/eztv/powerful/d/f$d;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/eztv/powerful/d/f$b;->c:Lcom/eztv/powerful/d/f;

    invoke-static {v1}, Lcom/eztv/powerful/d/f;->b(Lcom/eztv/powerful/d/f;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/eztv/powerful/d/f$b;->b:Lcom/eztv/powerful/d/f$d;

    invoke-static {v0}, Lcom/eztv/powerful/d/f$d;->c(Lcom/eztv/powerful/d/f$d;)Landroid/widget/TextView;

    move-result-object v0

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v0, p0, Lcom/eztv/powerful/d/f$b;->b:Lcom/eztv/powerful/d/f$d;

    iget-object v0, v0, Lcom/eztv/powerful/d/f$d;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_0
    iget-object v0, p0, Lcom/eztv/powerful/d/f$b;->c:Lcom/eztv/powerful/d/f;

    invoke-static {v0}, Lcom/eztv/powerful/d/f;->a(Lcom/eztv/powerful/d/f;)Lcom/eztv/powerful/d/c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/eztv/powerful/d/f$b;->c:Lcom/eztv/powerful/d/f;

    invoke-static {v0}, Lcom/eztv/powerful/d/f;->a(Lcom/eztv/powerful/d/f;)Lcom/eztv/powerful/d/c;

    move-result-object v0

    iget v1, p0, Lcom/eztv/powerful/d/f$b;->a:I

    invoke-interface {v0, p1, p2, v1}, Lcom/eztv/powerful/d/c;->a(Landroid/view/View;ZI)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/eztv/powerful/d/f$b;->b:Lcom/eztv/powerful/d/f$d;

    invoke-static {v0}, Lcom/eztv/powerful/d/f$d;->c(Lcom/eztv/powerful/d/f$d;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/eztv/powerful/d/f$b;->c:Lcom/eztv/powerful/d/f;

    invoke-static {v1}, Lcom/eztv/powerful/d/f;->b(Lcom/eztv/powerful/d/f;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/eztv/powerful/d/f$b;->b:Lcom/eztv/powerful/d/f$d;

    invoke-static {v0}, Lcom/eztv/powerful/d/f$d;->d(Lcom/eztv/powerful/d/f$d;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/eztv/powerful/d/f$b;->c:Lcom/eztv/powerful/d/f;

    invoke-static {v1}, Lcom/eztv/powerful/d/f;->b(Lcom/eztv/powerful/d/f;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/eztv/powerful/d/f$b;->b:Lcom/eztv/powerful/d/f$d;

    invoke-static {v0}, Lcom/eztv/powerful/d/f$d;->c(Lcom/eztv/powerful/d/f$d;)Landroid/widget/TextView;

    move-result-object v0

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v0, p0, Lcom/eztv/powerful/d/f$b;->b:Lcom/eztv/powerful/d/f$d;

    iget-object v0, v0, Lcom/eztv/powerful/d/f$d;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0
.end method
