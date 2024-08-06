.class public Landroid/support/v17/leanback/widget/SearchOrbView$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/SearchOrbView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/support/v17/leanback/widget/SearchOrbView$a;->a:I

    if-ne p2, p1, :cond_0

    invoke-static {p1}, Landroid/support/v17/leanback/widget/SearchOrbView$a;->a(I)I

    move-result p2

    :cond_0
    iput p2, p0, Landroid/support/v17/leanback/widget/SearchOrbView$a;->b:I

    iput p3, p0, Landroid/support/v17/leanback/widget/SearchOrbView$a;->c:I

    return-void
.end method

.method public static a(I)I
    .locals 6

    const/high16 v5, 0x42190000    # 38.25f

    const v4, 0x3f59999a    # 0.85f

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v4

    add-float/2addr v0, v5

    float-to-int v0, v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v4

    add-float/2addr v1, v5

    float-to-int v1, v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v4

    add-float/2addr v2, v5

    float-to-int v2, v2

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v4

    add-float/2addr v3, v5

    float-to-int v3, v3

    invoke-static {v3, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method
