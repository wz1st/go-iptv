.class Landroid/support/v7/widget/ae$e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ae;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/ae;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/ae;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/ae$e;->a:Landroid/support/v7/widget/ae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/ae$e;->a:Landroid/support/v7/widget/ae;

    iget-object v0, v0, Landroid/support/v7/widget/ae;->c:Landroid/support/v7/widget/w;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ae$e;->a:Landroid/support/v7/widget/ae;

    iget-object v0, v0, Landroid/support/v7/widget/ae;->c:Landroid/support/v7/widget/w;

    invoke-static {v0}, Landroid/support/v4/f/t;->t(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ae$e;->a:Landroid/support/v7/widget/ae;

    iget-object v0, v0, Landroid/support/v7/widget/ae;->c:Landroid/support/v7/widget/w;

    invoke-virtual {v0}, Landroid/support/v7/widget/w;->getCount()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/ae$e;->a:Landroid/support/v7/widget/ae;

    iget-object v1, v1, Landroid/support/v7/widget/ae;->c:Landroid/support/v7/widget/w;

    invoke-virtual {v1}, Landroid/support/v7/widget/w;->getChildCount()I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ae$e;->a:Landroid/support/v7/widget/ae;

    iget-object v0, v0, Landroid/support/v7/widget/ae;->c:Landroid/support/v7/widget/w;

    invoke-virtual {v0}, Landroid/support/v7/widget/w;->getChildCount()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/ae$e;->a:Landroid/support/v7/widget/ae;

    iget v1, v1, Landroid/support/v7/widget/ae;->d:I

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ae$e;->a:Landroid/support/v7/widget/ae;

    iget-object v0, v0, Landroid/support/v7/widget/ae;->g:Landroid/widget/PopupWindow;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    iget-object v0, p0, Landroid/support/v7/widget/ae$e;->a:Landroid/support/v7/widget/ae;

    invoke-virtual {v0}, Landroid/support/v7/widget/ae;->a()V

    :cond_0
    return-void
.end method
