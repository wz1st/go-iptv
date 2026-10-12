.class public Landroid/support/constraint/d;
.super Landroid/view/ViewGroup;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/constraint/d$a;
    }
.end annotation


# instance fields
.field a:Landroid/support/constraint/c;


# virtual methods
.method protected a()Landroid/support/constraint/d$a;
    .locals 2

    const/4 v1, -0x2

    new-instance v0, Landroid/support/constraint/d$a;

    invoke-direct {v0, v1, v1}, Landroid/support/constraint/d$a;-><init>(II)V

    return-object v0
.end method

.method public a(Landroid/util/AttributeSet;)Landroid/support/constraint/d$a;
    .locals 2

    new-instance v0, Landroid/support/constraint/d$a;

    invoke-virtual {p0}, Landroid/support/constraint/d;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/constraint/d$a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0}, Landroid/support/constraint/d;->a()Landroid/support/constraint/d$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/support/constraint/d;->a(Landroid/util/AttributeSet;)Landroid/support/constraint/d$a;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance v0, Landroid/support/constraint/ConstraintLayout$a;

    invoke-direct {v0, p1}, Landroid/support/constraint/ConstraintLayout$a;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getConstraintSet()Landroid/support/constraint/c;
    .locals 1

    iget-object v0, p0, Landroid/support/constraint/d;->a:Landroid/support/constraint/c;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/constraint/c;

    invoke-direct {v0}, Landroid/support/constraint/c;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/d;->a:Landroid/support/constraint/c;

    :cond_0
    iget-object v0, p0, Landroid/support/constraint/d;->a:Landroid/support/constraint/c;

    invoke-virtual {v0, p0}, Landroid/support/constraint/c;->a(Landroid/support/constraint/d;)V

    iget-object v0, p0, Landroid/support/constraint/d;->a:Landroid/support/constraint/c;

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    return-void
.end method
