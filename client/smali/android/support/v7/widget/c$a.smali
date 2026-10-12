.class Landroid/support/v7/widget/c$a;
.super Landroid/support/v7/view/menu/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/c;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/c;Landroid/content/Context;Landroid/support/v7/view/menu/s;Landroid/view/View;)V
    .locals 6

    iput-object p1, p0, Landroid/support/v7/widget/c$a;->a:Landroid/support/v7/widget/c;

    const/4 v4, 0x0

    sget v5, Landroid/support/v7/a/a$a;->actionOverflowMenuStyle:I

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/view/menu/l;-><init>(Landroid/content/Context;Landroid/support/v7/view/menu/g;Landroid/view/View;ZI)V

    invoke-virtual {p3}, Landroid/support/v7/view/menu/s;->getItem()Landroid/view/MenuItem;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/h;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/h;->j()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/support/v7/widget/c;->g:Landroid/support/v7/widget/c$d;

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/support/v7/widget/c;->c(Landroid/support/v7/widget/c;)Landroid/support/v7/view/menu/n;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/c$a;->a(Landroid/view/View;)V

    :cond_0
    iget-object v0, p1, Landroid/support/v7/widget/c;->k:Landroid/support/v7/widget/c$f;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/c$a;->a(Landroid/support/v7/view/menu/m$a;)V

    return-void

    :cond_1
    iget-object v0, p1, Landroid/support/v7/widget/c;->g:Landroid/support/v7/widget/c$d;

    goto :goto_0
.end method


# virtual methods
.method protected e()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/c$a;->a:Landroid/support/v7/widget/c;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v7/widget/c;->i:Landroid/support/v7/widget/c$a;

    iget-object v0, p0, Landroid/support/v7/widget/c$a;->a:Landroid/support/v7/widget/c;

    const/4 v1, 0x0

    iput v1, v0, Landroid/support/v7/widget/c;->l:I

    invoke-super {p0}, Landroid/support/v7/view/menu/l;->e()V

    return-void
.end method
