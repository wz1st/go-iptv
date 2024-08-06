.class public Landroid/support/constraint/a/a/n;
.super Landroid/support/constraint/a/a/o;


# instance fields
.field a:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/constraint/a/a/o;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/a/a/n;->a:F

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    iget v0, p0, Landroid/support/constraint/a/a/n;->i:I

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/constraint/a/a/n;->a:F

    int-to-float v1, p1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    :cond_0
    int-to-float v0, p1

    iput v0, p0, Landroid/support/constraint/a/a/n;->a:F

    iget v0, p0, Landroid/support/constraint/a/a/n;->i:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/support/constraint/a/a/n;->e()V

    :cond_1
    invoke-virtual {p0}, Landroid/support/constraint/a/a/n;->f()V

    :cond_2
    return-void
.end method

.method public b()V
    .locals 1

    invoke-super {p0}, Landroid/support/constraint/a/a/o;->b()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/a/a/n;->a:F

    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Landroid/support/constraint/a/a/n;->i:I

    return-void
.end method
