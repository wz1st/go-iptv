.class Lcom/eztv/powerful/widget/a/a/a$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eztv/powerful/widget/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:Lcom/eztv/powerful/widget/a/a/a$b;

.field final synthetic c:Lcom/eztv/powerful/widget/a/a/a;


# direct methods
.method public constructor <init>(Lcom/eztv/powerful/widget/a/a/a;ILcom/eztv/powerful/widget/a/a/a$b;)V
    .locals 0

    iput-object p1, p0, Lcom/eztv/powerful/widget/a/a/a$a;->c:Lcom/eztv/powerful/widget/a/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/eztv/powerful/widget/a/a/a$a;->a:I

    iput-object p3, p0, Lcom/eztv/powerful/widget/a/a/a$a;->b:Lcom/eztv/powerful/widget/a/a/a$b;

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3

    const v2, 0x7f060033

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/eztv/powerful/widget/a/a/a$a;->b:Lcom/eztv/powerful/widget/a/a/a$b;

    iget-object v0, v0, Lcom/eztv/powerful/widget/a/a/a$b;->b:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, p0, Lcom/eztv/powerful/widget/a/a/a$a;->b:Lcom/eztv/powerful/widget/a/a/a$b;

    iget-object v0, v0, Lcom/eztv/powerful/widget/a/a/a$b;->a:Landroid/widget/TextView;

    const v1, 0x7f08007d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/eztv/powerful/widget/a/a/a$a;->b:Lcom/eztv/powerful/widget/a/a/a$b;

    iget-object v0, v0, Lcom/eztv/powerful/widget/a/a/a$b;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/eztv/powerful/widget/a/a/a$a;->c:Lcom/eztv/powerful/widget/a/a/a;

    invoke-static {v1}, Lcom/eztv/powerful/widget/a/a/a;->a(Lcom/eztv/powerful/widget/a/a/a;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06007c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/eztv/powerful/widget/a/a/a$a;->b:Lcom/eztv/powerful/widget/a/a/a$b;

    iget-object v0, v0, Lcom/eztv/powerful/widget/a/a/a$b;->r:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v0, p0, Lcom/eztv/powerful/widget/a/a/a$a;->b:Lcom/eztv/powerful/widget/a/a/a$b;

    iget-object v0, v0, Lcom/eztv/powerful/widget/a/a/a$b;->r:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/eztv/powerful/widget/a/a/a$a;->c:Lcom/eztv/powerful/widget/a/a/a;

    invoke-static {v1}, Lcom/eztv/powerful/widget/a/a/a;->a(Lcom/eztv/powerful/widget/a/a/a;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600a5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :goto_0
    iget-object v0, p0, Lcom/eztv/powerful/widget/a/a/a$a;->c:Lcom/eztv/powerful/widget/a/a/a;

    invoke-static {v0}, Lcom/eztv/powerful/widget/a/a/a;->b(Lcom/eztv/powerful/widget/a/a/a;)Lcom/eztv/powerful/widget/a/c/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/eztv/powerful/widget/a/a/a$a;->c:Lcom/eztv/powerful/widget/a/a/a;

    invoke-static {v0}, Lcom/eztv/powerful/widget/a/a/a;->b(Lcom/eztv/powerful/widget/a/a/a;)Lcom/eztv/powerful/widget/a/c/a;

    move-result-object v0

    iget-object v1, p0, Lcom/eztv/powerful/widget/a/a/a$a;->b:Lcom/eztv/powerful/widget/a/a/a$b;

    iget v2, p0, Lcom/eztv/powerful/widget/a/a/a$a;->a:I

    invoke-interface {v0, v1, p1, p2, v2}, Lcom/eztv/powerful/widget/a/c/a;->a(Lcom/eztv/powerful/widget/a/a/a$b;Landroid/view/View;ZI)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/eztv/powerful/widget/a/a/a$a;->b:Lcom/eztv/powerful/widget/a/a/a$b;

    iget-object v0, v0, Lcom/eztv/powerful/widget/a/a/a$b;->b:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, p0, Lcom/eztv/powerful/widget/a/a/a$a;->b:Lcom/eztv/powerful/widget/a/a/a$b;

    iget-object v0, v0, Lcom/eztv/powerful/widget/a/a/a$b;->r:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v0, p0, Lcom/eztv/powerful/widget/a/a/a$a;->b:Lcom/eztv/powerful/widget/a/a/a$b;

    iget-object v0, v0, Lcom/eztv/powerful/widget/a/a/a$b;->r:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/eztv/powerful/widget/a/a/a$a;->c:Lcom/eztv/powerful/widget/a/a/a;

    invoke-static {v1}, Lcom/eztv/powerful/widget/a/a/a;->a(Lcom/eztv/powerful/widget/a/a/a;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/eztv/powerful/widget/a/a/a$a;->b:Lcom/eztv/powerful/widget/a/a/a$b;

    iget-object v0, v0, Lcom/eztv/powerful/widget/a/a/a$b;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/eztv/powerful/widget/a/a/a$a;->c:Lcom/eztv/powerful/widget/a/a/a;

    invoke-static {v1}, Lcom/eztv/powerful/widget/a/a/a;->a(Lcom/eztv/powerful/widget/a/a/a;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/eztv/powerful/widget/a/a/a$a;->b:Lcom/eztv/powerful/widget/a/a/a$b;

    iget-object v0, v0, Lcom/eztv/powerful/widget/a/a/a$b;->a:Landroid/widget/TextView;

    const v1, 0x7f08007a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0
.end method
