.class Landroid/support/v17/leanback/widget/k;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Landroid/support/v17/leanback/widget/k;->a:Landroid/graphics/Rect;

    return-void
.end method

.method static a(Landroid/view/View;Landroid/support/v17/leanback/widget/j$a;I)I
    .locals 8

    const/4 v7, 0x0

    const/high16 v6, -0x40800000    # -1.0f

    const/high16 v5, 0x42c80000    # 100.0f

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/f$b;

    iget v1, p1, Landroid/support/v17/leanback/widget/j$a;->a:I

    if-eqz v1, :cond_13

    iget v1, p1, Landroid/support/v17/leanback/widget/j$a;->a:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    move-object v1, p0

    :cond_0
    :goto_0
    iget v3, p1, Landroid/support/v17/leanback/widget/j$a;->c:I

    if-nez p2, :cond_b

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_7

    if-ne v1, p0, :cond_4

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/f$b;->d(Landroid/view/View;)I

    move-result v2

    :goto_1
    sub-int/2addr v2, v3

    iget-boolean v3, p1, Landroid/support/v17/leanback/widget/j$a;->e:Z

    if-eqz v3, :cond_1

    iget v3, p1, Landroid/support/v17/leanback/widget/j$a;->d:F

    cmpl-float v3, v3, v7

    if-nez v3, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    :cond_1
    :goto_2
    iget v3, p1, Landroid/support/v17/leanback/widget/j$a;->d:F

    cmpl-float v3, v3, v6

    if-eqz v3, :cond_2

    if-ne v1, p0, :cond_6

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/f$b;->d(Landroid/view/View;)I

    move-result v3

    :goto_3
    int-to-float v3, v3

    iget v4, p1, Landroid/support/v17/leanback/widget/j$a;->d:F

    mul-float/2addr v3, v4

    div-float/2addr v3, v5

    float-to-int v3, v3

    sub-int/2addr v2, v3

    :cond_2
    if-eq p0, v1, :cond_11

    sget-object v3, Landroid/support/v17/leanback/widget/k;->a:Landroid/graphics/Rect;

    iput v2, v3, Landroid/graphics/Rect;->right:I

    check-cast p0, Landroid/view/ViewGroup;

    sget-object v2, Landroid/support/v17/leanback/widget/k;->a:Landroid/graphics/Rect;

    invoke-virtual {p0, v1, v2}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    sget-object v1, Landroid/support/v17/leanback/widget/k;->a:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/f$b;->d()I

    move-result v0

    add-int/2addr v0, v1

    :cond_3
    :goto_4
    return v0

    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v2

    goto :goto_1

    :cond_5
    iget v3, p1, Landroid/support/v17/leanback/widget/j$a;->d:F

    cmpl-float v3, v3, v5

    if-nez v3, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_2

    :cond_6
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v3

    goto :goto_3

    :cond_7
    iget-boolean v2, p1, Landroid/support/v17/leanback/widget/j$a;->e:Z

    if-eqz v2, :cond_12

    iget v2, p1, Landroid/support/v17/leanback/widget/j$a;->d:F

    cmpl-float v2, v2, v7

    if-nez v2, :cond_9

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    add-int/2addr v2, v3

    :goto_5
    iget v3, p1, Landroid/support/v17/leanback/widget/j$a;->d:F

    cmpl-float v3, v3, v6

    if-eqz v3, :cond_8

    if-ne v1, p0, :cond_a

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/f$b;->d(Landroid/view/View;)I

    move-result v3

    :goto_6
    int-to-float v3, v3

    iget v4, p1, Landroid/support/v17/leanback/widget/j$a;->d:F

    mul-float/2addr v3, v4

    div-float/2addr v3, v5

    float-to-int v3, v3

    add-int/2addr v2, v3

    :cond_8
    if-eq p0, v1, :cond_11

    sget-object v3, Landroid/support/v17/leanback/widget/k;->a:Landroid/graphics/Rect;

    iput v2, v3, Landroid/graphics/Rect;->left:I

    check-cast p0, Landroid/view/ViewGroup;

    sget-object v2, Landroid/support/v17/leanback/widget/k;->a:Landroid/graphics/Rect;

    invoke-virtual {p0, v1, v2}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    sget-object v1, Landroid/support/v17/leanback/widget/k;->a:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/f$b;->c()I

    move-result v0

    sub-int v0, v1, v0

    goto :goto_4

    :cond_9
    iget v2, p1, Landroid/support/v17/leanback/widget/j$a;->d:F

    cmpl-float v2, v2, v5

    if-nez v2, :cond_12

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int v2, v3, v2

    goto :goto_5

    :cond_a
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v3

    goto :goto_6

    :cond_b
    iget-boolean v2, p1, Landroid/support/v17/leanback/widget/j$a;->e:Z

    if-eqz v2, :cond_c

    iget v2, p1, Landroid/support/v17/leanback/widget/j$a;->d:F

    cmpl-float v2, v2, v7

    if-nez v2, :cond_d

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    add-int/2addr v3, v2

    :cond_c
    :goto_7
    iget v2, p1, Landroid/support/v17/leanback/widget/j$a;->d:F

    cmpl-float v2, v2, v6

    if-eqz v2, :cond_10

    if-ne v1, p0, :cond_e

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/f$b;->e(Landroid/view/View;)I

    move-result v2

    :goto_8
    int-to-float v2, v2

    iget v4, p1, Landroid/support/v17/leanback/widget/j$a;->d:F

    mul-float/2addr v2, v4

    div-float/2addr v2, v5

    float-to-int v2, v2

    add-int/2addr v2, v3

    :goto_9
    if-eq p0, v1, :cond_f

    sget-object v3, Landroid/support/v17/leanback/widget/k;->a:Landroid/graphics/Rect;

    iput v2, v3, Landroid/graphics/Rect;->top:I

    check-cast p0, Landroid/view/ViewGroup;

    sget-object v2, Landroid/support/v17/leanback/widget/k;->a:Landroid/graphics/Rect;

    invoke-virtual {p0, v1, v2}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    sget-object v2, Landroid/support/v17/leanback/widget/k;->a:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/f$b;->e()I

    move-result v0

    sub-int v0, v2, v0

    :goto_a
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/j$a;->e()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getBaseline()I

    move-result v1

    add-int/2addr v0, v1

    goto/16 :goto_4

    :cond_d
    iget v2, p1, Landroid/support/v17/leanback/widget/j$a;->d:F

    cmpl-float v2, v2, v5

    if-nez v2, :cond_c

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v3, v2

    goto :goto_7

    :cond_e
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v2

    goto :goto_8

    :cond_f
    move v0, v2

    goto :goto_a

    :cond_10
    move v2, v3

    goto :goto_9

    :cond_11
    move v0, v2

    goto/16 :goto_4

    :cond_12
    move v2, v3

    goto/16 :goto_5

    :cond_13
    move-object v1, p0

    goto/16 :goto_0
.end method
