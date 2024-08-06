.class Lcom/eztv/powerful/widget/a/a/b$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eztv/powerful/widget/a/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field a:I

.field b:Lcom/eztv/powerful/widget/a/a/b$c;

.field final synthetic c:Lcom/eztv/powerful/widget/a/a/b;


# direct methods
.method public constructor <init>(Lcom/eztv/powerful/widget/a/a/b;ILcom/eztv/powerful/widget/a/a/b$c;)V
    .locals 0

    iput-object p1, p0, Lcom/eztv/powerful/widget/a/a/b$b;->c:Lcom/eztv/powerful/widget/a/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/eztv/powerful/widget/a/a/b$b;->a:I

    iput-object p3, p0, Lcom/eztv/powerful/widget/a/a/b$b;->b:Lcom/eztv/powerful/widget/a/a/b$c;

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/eztv/powerful/widget/a/a;->g:Landroid/view/View;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/eztv/powerful/widget/a/a;->g:Landroid/view/View;

    const v1, 0x7f0a01f9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/eztv/powerful/widget/a/a/b$b;->b:Lcom/eztv/powerful/widget/a/a/b$c;

    iget-object v0, v0, Lcom/eztv/powerful/widget/a/a/b$c;->b:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, p0, Lcom/eztv/powerful/widget/a/a/b$b;->b:Lcom/eztv/powerful/widget/a/a/b$c;

    iget-object v0, v0, Lcom/eztv/powerful/widget/a/a/b$c;->s:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v0, p0, Lcom/eztv/powerful/widget/a/a/b$b;->b:Lcom/eztv/powerful/widget/a/a/b$c;

    iget-object v0, v0, Lcom/eztv/powerful/widget/a/a/b$c;->s:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/eztv/powerful/widget/a/a/b$b;->c:Lcom/eztv/powerful/widget/a/a/b;

    invoke-static {v1}, Lcom/eztv/powerful/widget/a/a/b;->a(Lcom/eztv/powerful/widget/a/a/b;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600a5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :goto_0
    iget-object v0, p0, Lcom/eztv/powerful/widget/a/a/b$b;->c:Lcom/eztv/powerful/widget/a/a/b;

    invoke-static {v0}, Lcom/eztv/powerful/widget/a/a/b;->b(Lcom/eztv/powerful/widget/a/a/b;)Lcom/eztv/powerful/widget/a/c/b;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/eztv/powerful/widget/a/a/b$b;->c:Lcom/eztv/powerful/widget/a/a/b;

    invoke-static {v0}, Lcom/eztv/powerful/widget/a/a/b;->b(Lcom/eztv/powerful/widget/a/a/b;)Lcom/eztv/powerful/widget/a/c/b;

    move-result-object v0

    iget-object v1, p0, Lcom/eztv/powerful/widget/a/a/b$b;->b:Lcom/eztv/powerful/widget/a/a/b$c;

    iget v2, p0, Lcom/eztv/powerful/widget/a/a/b$b;->a:I

    invoke-interface {v0, v1, p1, p2, v2}, Lcom/eztv/powerful/widget/a/c/b;->a(Lcom/eztv/powerful/widget/a/a/b$c;Landroid/view/View;ZI)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/eztv/powerful/widget/a/a/b$b;->b:Lcom/eztv/powerful/widget/a/a/b$c;

    iget-object v0, v0, Lcom/eztv/powerful/widget/a/a/b$c;->b:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, p0, Lcom/eztv/powerful/widget/a/a/b$b;->b:Lcom/eztv/powerful/widget/a/a/b$c;

    iget-object v0, v0, Lcom/eztv/powerful/widget/a/a/b$c;->s:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_0
.end method
