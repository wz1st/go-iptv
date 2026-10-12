.class Landroid/support/v17/leanback/widget/p$b;
.super Landroid/support/v17/leanback/widget/p$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v17/leanback/widget/p$c",
        "<",
        "Landroid/support/v17/leanback/widget/p$a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:F


# virtual methods
.method final a(Landroid/support/v17/leanback/widget/p;)I
    .locals 3

    iget v0, p0, Landroid/support/v17/leanback/widget/p$b;->b:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Landroid/support/v17/leanback/widget/p$b;->a:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/support/v17/leanback/widget/p$b;->a:I

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/p;->a()F

    move-result v1

    iget v2, p0, Landroid/support/v17/leanback/widget/p$b;->b:F

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method
