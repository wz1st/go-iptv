.class Landroid/support/v7/widget/bb;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/bb$b;,
        Landroid/support/v7/widget/bb$a;
    }
.end annotation


# instance fields
.field final a:Landroid/support/v7/widget/bb$b;

.field b:Landroid/support/v7/widget/bb$a;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/bb$b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/bb;->a:Landroid/support/v7/widget/bb$b;

    new-instance v0, Landroid/support/v7/widget/bb$a;

    invoke-direct {v0}, Landroid/support/v7/widget/bb$a;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/bb;->b:Landroid/support/v7/widget/bb$a;

    return-void
.end method


# virtual methods
.method a(IIII)Landroid/view/View;
    .locals 8

    iget-object v0, p0, Landroid/support/v7/widget/bb;->a:Landroid/support/v7/widget/bb$b;

    invoke-interface {v0}, Landroid/support/v7/widget/bb$b;->a()I

    move-result v3

    iget-object v0, p0, Landroid/support/v7/widget/bb;->a:Landroid/support/v7/widget/bb$b;

    invoke-interface {v0}, Landroid/support/v7/widget/bb$b;->b()I

    move-result v4

    if-le p2, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/4 v2, 0x0

    :goto_1
    if-eq p1, p2, :cond_2

    iget-object v1, p0, Landroid/support/v7/widget/bb;->a:Landroid/support/v7/widget/bb$b;

    invoke-interface {v1, p1}, Landroid/support/v7/widget/bb$b;->a(I)Landroid/view/View;

    move-result-object v1

    iget-object v5, p0, Landroid/support/v7/widget/bb;->a:Landroid/support/v7/widget/bb$b;

    invoke-interface {v5, v1}, Landroid/support/v7/widget/bb$b;->a(Landroid/view/View;)I

    move-result v5

    iget-object v6, p0, Landroid/support/v7/widget/bb;->a:Landroid/support/v7/widget/bb$b;

    invoke-interface {v6, v1}, Landroid/support/v7/widget/bb$b;->b(Landroid/view/View;)I

    move-result v6

    iget-object v7, p0, Landroid/support/v7/widget/bb;->b:Landroid/support/v7/widget/bb$a;

    invoke-virtual {v7, v3, v4, v5, v6}, Landroid/support/v7/widget/bb$a;->a(IIII)V

    if-eqz p3, :cond_1

    iget-object v5, p0, Landroid/support/v7/widget/bb;->b:Landroid/support/v7/widget/bb$a;

    invoke-virtual {v5}, Landroid/support/v7/widget/bb$a;->a()V

    iget-object v5, p0, Landroid/support/v7/widget/bb;->b:Landroid/support/v7/widget/bb$a;

    invoke-virtual {v5, p3}, Landroid/support/v7/widget/bb$a;->a(I)V

    iget-object v5, p0, Landroid/support/v7/widget/bb;->b:Landroid/support/v7/widget/bb$a;

    invoke-virtual {v5}, Landroid/support/v7/widget/bb$a;->b()Z

    move-result v5

    if-eqz v5, :cond_1

    :goto_2
    return-object v1

    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    if-eqz p4, :cond_3

    iget-object v5, p0, Landroid/support/v7/widget/bb;->b:Landroid/support/v7/widget/bb$a;

    invoke-virtual {v5}, Landroid/support/v7/widget/bb$a;->a()V

    iget-object v5, p0, Landroid/support/v7/widget/bb;->b:Landroid/support/v7/widget/bb$a;

    invoke-virtual {v5, p4}, Landroid/support/v7/widget/bb$a;->a(I)V

    iget-object v5, p0, Landroid/support/v7/widget/bb;->b:Landroid/support/v7/widget/bb$a;

    invoke-virtual {v5}, Landroid/support/v7/widget/bb$a;->b()Z

    move-result v5

    if-eqz v5, :cond_3

    :goto_3
    add-int/2addr p1, v0

    move-object v2, v1

    goto :goto_1

    :cond_2
    move-object v1, v2

    goto :goto_2

    :cond_3
    move-object v1, v2

    goto :goto_3
.end method

.method a(Landroid/view/View;I)Z
    .locals 5

    iget-object v0, p0, Landroid/support/v7/widget/bb;->b:Landroid/support/v7/widget/bb$a;

    iget-object v1, p0, Landroid/support/v7/widget/bb;->a:Landroid/support/v7/widget/bb$b;

    invoke-interface {v1}, Landroid/support/v7/widget/bb$b;->a()I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/widget/bb;->a:Landroid/support/v7/widget/bb$b;

    invoke-interface {v2}, Landroid/support/v7/widget/bb$b;->b()I

    move-result v2

    iget-object v3, p0, Landroid/support/v7/widget/bb;->a:Landroid/support/v7/widget/bb$b;

    invoke-interface {v3, p1}, Landroid/support/v7/widget/bb$b;->a(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Landroid/support/v7/widget/bb;->a:Landroid/support/v7/widget/bb$b;

    invoke-interface {v4, p1}, Landroid/support/v7/widget/bb$b;->b(Landroid/view/View;)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v7/widget/bb$a;->a(IIII)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/bb;->b:Landroid/support/v7/widget/bb$a;

    invoke-virtual {v0}, Landroid/support/v7/widget/bb$a;->a()V

    iget-object v0, p0, Landroid/support/v7/widget/bb;->b:Landroid/support/v7/widget/bb$a;

    invoke-virtual {v0, p2}, Landroid/support/v7/widget/bb$a;->a(I)V

    iget-object v0, p0, Landroid/support/v7/widget/bb;->b:Landroid/support/v7/widget/bb$a;

    invoke-virtual {v0}, Landroid/support/v7/widget/bb$a;->b()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
