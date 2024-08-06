.class Landroid/support/v17/leanback/widget/f$3;
.super Landroid/support/v17/leanback/widget/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/widget/f;->s(I)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v17/leanback/widget/f;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/f;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/widget/f$3;->a:Landroid/support/v17/leanback/widget/f;

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/f$a;-><init>(Landroid/support/v17/leanback/widget/f;)V

    return-void
.end method


# virtual methods
.method public a(I)Landroid/graphics/PointF;
    .locals 6

    const/4 v5, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/f$3;->o()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v2, p0, Landroid/support/v17/leanback/widget/f$3;->a:Landroid/support/v17/leanback/widget/f;

    iget-object v3, p0, Landroid/support/v17/leanback/widget/f$3;->a:Landroid/support/v17/leanback/widget/f;

    invoke-virtual {v3, v1}, Landroid/support/v17/leanback/widget/f;->x(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/f;->q(Landroid/view/View;)I

    move-result v2

    iget-object v3, p0, Landroid/support/v17/leanback/widget/f$3;->a:Landroid/support/v17/leanback/widget/f;

    iget v3, v3, Landroid/support/v17/leanback/widget/f;->j:I

    const/high16 v4, 0x40000

    and-int/2addr v3, v4

    if-eqz v3, :cond_3

    if-le p1, v2, :cond_1

    move v1, v0

    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    const/4 v0, -0x1

    :cond_2
    iget-object v1, p0, Landroid/support/v17/leanback/widget/f$3;->a:Landroid/support/v17/leanback/widget/f;

    iget v1, v1, Landroid/support/v17/leanback/widget/f;->c:I

    if-nez v1, :cond_4

    new-instance v1, Landroid/graphics/PointF;

    int-to-float v0, v0

    invoke-direct {v1, v0, v5}, Landroid/graphics/PointF;-><init>(FF)V

    move-object v0, v1

    goto :goto_0

    :cond_3
    if-ge p1, v2, :cond_1

    move v1, v0

    goto :goto_1

    :cond_4
    new-instance v1, Landroid/graphics/PointF;

    int-to-float v0, v0

    invoke-direct {v1, v5, v0}, Landroid/graphics/PointF;-><init>(FF)V

    move-object v0, v1

    goto :goto_0
.end method
