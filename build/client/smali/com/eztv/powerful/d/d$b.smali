.class Lcom/eztv/powerful/d/d$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eztv/powerful/d/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field a:I

.field b:Lcom/eztv/powerful/d/d$e;

.field c:Ljava/lang/String;

.field d:Ljava/lang/Long;

.field e:Ljava/lang/Long;

.field final synthetic f:Lcom/eztv/powerful/d/d;


# direct methods
.method public constructor <init>(Lcom/eztv/powerful/d/d;ILjava/lang/String;Lcom/eztv/powerful/d/d$e;)V
    .locals 2

    iput-object p1, p0, Lcom/eztv/powerful/d/d$b;->f:Lcom/eztv/powerful/d/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/eztv/powerful/d/d$b;->d:Ljava/lang/Long;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/eztv/powerful/d/d$b;->e:Ljava/lang/Long;

    iput p2, p0, Lcom/eztv/powerful/d/d$b;->a:I

    iput-object p4, p0, Lcom/eztv/powerful/d/d$b;->b:Lcom/eztv/powerful/d/d$e;

    iput-object p3, p0, Lcom/eztv/powerful/d/d$b;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 6

    const v5, 0x7f06007c

    const v4, 0x3f866666    # 1.05f

    const/high16 v3, 0x3f800000    # 1.0f

    const v2, 0x7f060033

    iget-object v0, p0, Lcom/eztv/powerful/d/d$b;->b:Lcom/eztv/powerful/d/d$e;

    iget-object v0, v0, Lcom/eztv/powerful/d/d$e;->b:Landroid/view/View;

    const v1, 0x7f0a01e9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/eztv/powerful/d/d$b;->f:Lcom/eztv/powerful/d/d;

    invoke-static {v1}, Lcom/eztv/powerful/d/d;->b(Lcom/eztv/powerful/d/d;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/eztv/powerful/d/d$b;->b:Lcom/eztv/powerful/d/d$e;

    invoke-static {v0}, Lcom/eztv/powerful/d/d$e;->c(Lcom/eztv/powerful/d/d$e;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f08007d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/eztv/powerful/d/d$b;->b:Lcom/eztv/powerful/d/d$e;

    invoke-static {v0}, Lcom/eztv/powerful/d/d$e;->c(Lcom/eztv/powerful/d/d$e;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/eztv/powerful/d/d$b;->f:Lcom/eztv/powerful/d/d;

    invoke-static {v1}, Lcom/eztv/powerful/d/d;->b(Lcom/eztv/powerful/d/d;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/eztv/powerful/d/d$b;->b:Lcom/eztv/powerful/d/d$e;

    iget-object v0, v0, Lcom/eztv/powerful/d/d$e;->b:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, p0, Lcom/eztv/powerful/d/d$b;->b:Lcom/eztv/powerful/d/d$e;

    invoke-static {v0}, Lcom/eztv/powerful/d/d$e;->a(Lcom/eztv/powerful/d/d$e;)Landroid/widget/TextView;

    move-result-object v0

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v0, p0, Lcom/eztv/powerful/d/d$b;->b:Lcom/eztv/powerful/d/d$e;

    iget-object v0, v0, Lcom/eztv/powerful/d/d$e;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lcom/eztv/powerful/d/d$b;->b:Lcom/eztv/powerful/d/d$e;

    invoke-static {v0}, Lcom/eztv/powerful/d/d$e;->b(Lcom/eztv/powerful/d/d$e;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/eztv/powerful/d/d$b;->f:Lcom/eztv/powerful/d/d;

    invoke-static {v1}, Lcom/eztv/powerful/d/d;->b(Lcom/eztv/powerful/d/d;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/eztv/powerful/d/d$b;->b:Lcom/eztv/powerful/d/d$e;

    invoke-static {v0}, Lcom/eztv/powerful/d/d$e;->b(Lcom/eztv/powerful/d/d$e;)Landroid/widget/TextView;

    move-result-object v0

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :goto_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v1, p0, Lcom/eztv/powerful/d/d$b;->d:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3c

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/eztv/powerful/d/d$b;->e:Ljava/lang/Long;

    iget-object v1, p0, Lcom/eztv/powerful/d/d$b;->e:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x14

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/eztv/powerful/d/d$b;->f:Lcom/eztv/powerful/d/d;

    iget-object v2, p0, Lcom/eztv/powerful/d/d$b;->b:Lcom/eztv/powerful/d/d$e;

    iget v3, p0, Lcom/eztv/powerful/d/d$b;->a:I

    iget-object v4, p0, Lcom/eztv/powerful/d/d$b;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/eztv/powerful/d/d;->a(Lcom/eztv/powerful/d/d$e;ILjava/lang/String;)V

    :cond_0
    iput-object v0, p0, Lcom/eztv/powerful/d/d$b;->d:Ljava/lang/Long;

    iget-object v0, p0, Lcom/eztv/powerful/d/d$b;->f:Lcom/eztv/powerful/d/d;

    invoke-static {v0}, Lcom/eztv/powerful/d/d;->a(Lcom/eztv/powerful/d/d;)Lcom/eztv/powerful/d/a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/eztv/powerful/d/d$b;->f:Lcom/eztv/powerful/d/d;

    invoke-static {v0}, Lcom/eztv/powerful/d/d;->a(Lcom/eztv/powerful/d/d;)Lcom/eztv/powerful/d/a;

    move-result-object v0

    iget-object v1, p0, Lcom/eztv/powerful/d/d$b;->b:Lcom/eztv/powerful/d/d$e;

    iget v2, p0, Lcom/eztv/powerful/d/d$b;->a:I

    invoke-interface {v0, v1, p1, p2, v2}, Lcom/eztv/powerful/d/a;->a(Lcom/eztv/powerful/d/d$e;Landroid/view/View;ZI)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/eztv/powerful/d/d$b;->b:Lcom/eztv/powerful/d/d$e;

    invoke-static {v0}, Lcom/eztv/powerful/d/d$e;->c(Lcom/eztv/powerful/d/d$e;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f08007a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/eztv/powerful/d/d$b;->b:Lcom/eztv/powerful/d/d$e;

    invoke-static {v0}, Lcom/eztv/powerful/d/d$e;->c(Lcom/eztv/powerful/d/d$e;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/eztv/powerful/d/d$b;->f:Lcom/eztv/powerful/d/d;

    invoke-static {v1}, Lcom/eztv/powerful/d/d;->b(Lcom/eztv/powerful/d/d;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/eztv/powerful/d/d$b;->b:Lcom/eztv/powerful/d/d$e;

    iget-object v0, v0, Lcom/eztv/powerful/d/d$e;->b:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, p0, Lcom/eztv/powerful/d/d$b;->b:Lcom/eztv/powerful/d/d$e;

    invoke-static {v0}, Lcom/eztv/powerful/d/d$e;->a(Lcom/eztv/powerful/d/d$e;)Landroid/widget/TextView;

    move-result-object v0

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v0, p0, Lcom/eztv/powerful/d/d$b;->b:Lcom/eztv/powerful/d/d$e;

    iget-object v0, v0, Lcom/eztv/powerful/d/d$e;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lcom/eztv/powerful/d/d$b;->b:Lcom/eztv/powerful/d/d$e;

    invoke-static {v0}, Lcom/eztv/powerful/d/d$e;->b(Lcom/eztv/powerful/d/d$e;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/eztv/powerful/d/d$b;->f:Lcom/eztv/powerful/d/d;

    invoke-static {v1}, Lcom/eztv/powerful/d/d;->b(Lcom/eztv/powerful/d/d;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/eztv/powerful/d/d$b;->b:Lcom/eztv/powerful/d/d$e;

    invoke-static {v0}, Lcom/eztv/powerful/d/d$e;->b(Lcom/eztv/powerful/d/d$e;)Landroid/widget/TextView;

    move-result-object v0

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_0
.end method
