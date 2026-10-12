.class public Lcom/scwang/smartrefresh/layout/g/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Interpolator;


# static fields
.field public static a:I

.field public static b:I

.field private static d:F

.field private static final e:F

.field private static final f:F


# instance fields
.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    sput v0, Lcom/scwang/smartrefresh/layout/g/b;->a:I

    const/4 v0, 0x1

    sput v0, Lcom/scwang/smartrefresh/layout/g/b;->b:I

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/scwang/smartrefresh/layout/g/b;->d:F

    invoke-static {v2}, Lcom/scwang/smartrefresh/layout/g/b;->b(F)F

    move-result v0

    div-float v0, v2, v0

    sput v0, Lcom/scwang/smartrefresh/layout/g/b;->e:F

    sget v0, Lcom/scwang/smartrefresh/layout/g/b;->e:F

    invoke-static {v2}, Lcom/scwang/smartrefresh/layout/g/b;->b(F)F

    move-result v1

    mul-float/2addr v0, v1

    sub-float v0, v2, v0

    sput v0, Lcom/scwang/smartrefresh/layout/g/b;->f:F

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/scwang/smartrefresh/layout/g/b;->c:I

    return-void
.end method

.method public static a(I)F
    .locals 2

    int-to-float v0, p0

    sget v1, Lcom/scwang/smartrefresh/layout/g/b;->d:F

    div-float/2addr v0, v1

    return v0
.end method

.method public static a(F)I
    .locals 2

    const/high16 v0, 0x3f000000    # 0.5f

    sget v1, Lcom/scwang/smartrefresh/layout/g/b;->d:F

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static a(Landroid/view/View;)I
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    :cond_0
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v3, v3, v1}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v2, :cond_1

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    :goto_0
    invoke-virtual {p0, v1, v0}, Landroid/view/View;->measure(II)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0

    :cond_1
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_0
.end method

.method public static a(Landroid/view/View;I)V
    .locals 2

    const/4 v1, 0x0

    instance-of v0, p0, Landroid/widget/ScrollView;

    if-eqz v0, :cond_1

    check-cast p0, Landroid/widget/ScrollView;

    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->fling(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, p0, Landroid/widget/AbsListView;

    if-eqz v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    check-cast p0, Landroid/widget/AbsListView;

    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->fling(I)V

    goto :goto_0

    :cond_2
    instance-of v0, p0, Landroid/webkit/WebView;

    if-eqz v0, :cond_3

    check-cast p0, Landroid/webkit/WebView;

    invoke-virtual {p0, v1, p1}, Landroid/webkit/WebView;->flingScroll(II)V

    goto :goto_0

    :cond_3
    instance-of v0, p0, Landroid/support/v4/widget/NestedScrollView;

    if-eqz v0, :cond_4

    check-cast p0, Landroid/support/v4/widget/NestedScrollView;

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/NestedScrollView;->f(I)V

    goto :goto_0

    :cond_4
    instance-of v0, p0, Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0, v1, p1}, Landroid/support/v7/widget/RecyclerView;->b(II)Z

    goto :goto_0
.end method

.method public static a(Landroid/widget/AbsListView;I)V
    .locals 3

    const/4 v2, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->scrollListBy(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, p0, Landroid/widget/ListView;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v1, p1

    check-cast p0, Landroid/widget/ListView;

    invoke-virtual {p0, v0, v1}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1, v2}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    goto :goto_0
.end method

.method public static a(Landroid/view/View;Landroid/graphics/PointF;)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-static {p0, v1}, Lcom/scwang/smartrefresh/layout/g/b;->b(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v1, p0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    if-eqz p1, :cond_3

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    :goto_1
    if-lez v1, :cond_3

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget v4, p1, Landroid/graphics/PointF;->x:F

    iget v5, p1, Landroid/graphics/PointF;->y:F

    invoke-static {p0, v3, v4, v5, v2}, Lcom/scwang/smartrefresh/layout/g/b;->a(Landroid/view/View;Landroid/view/View;FFLandroid/graphics/PointF;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v1, "fixed"

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "fixed-bottom"

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget v0, v2, Landroid/graphics/PointF;->x:F

    iget v1, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/PointF;->offset(FF)V

    invoke-static {v3, p1}, Lcom/scwang/smartrefresh/layout/g/b;->a(Landroid/view/View;Landroid/graphics/PointF;)Z

    move-result v0

    iget v1, v2, Landroid/graphics/PointF;->x:F

    neg-float v1, v1

    iget v2, v2, Landroid/graphics/PointF;->y:F

    neg-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/PointF;->offset(FF)V

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static a(Landroid/view/View;Landroid/graphics/PointF;Z)Z
    .locals 8

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v2}, Lcom/scwang/smartrefresh/layout/g/b;->b(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    invoke-static {p0}, Lcom/scwang/smartrefresh/layout/g/b;->b(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_3

    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4}, Landroid/graphics/PointF;-><init>()V

    :goto_1
    if-lez v3, :cond_3

    add-int/lit8 v5, v3, -0x1

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    iget v6, p1, Landroid/graphics/PointF;->x:F

    iget v7, p1, Landroid/graphics/PointF;->y:F

    invoke-static {v0, v5, v6, v7, v4}, Lcom/scwang/smartrefresh/layout/g/b;->a(Landroid/view/View;Landroid/view/View;FFLandroid/graphics/PointF;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v0, "fixed"

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "fixed-top"

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, v4, Landroid/graphics/PointF;->x:F

    iget v1, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/PointF;->offset(FF)V

    invoke-static {v5, p1, p2}, Lcom/scwang/smartrefresh/layout/g/b;->a(Landroid/view/View;Landroid/graphics/PointF;Z)Z

    move-result v1

    iget v0, v4, Landroid/graphics/PointF;->x:F

    neg-float v0, v0

    iget v2, v4, Landroid/graphics/PointF;->y:F

    neg-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/PointF;->offset(FF)V

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_3
    if-nez p2, :cond_4

    const/4 v0, -0x1

    invoke-static {p0, v0}, Lcom/scwang/smartrefresh/layout/g/b;->b(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    move v0, v2

    :goto_2
    move v1, v0

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_2
.end method

.method public static a(Landroid/view/View;Landroid/view/View;FFLandroid/graphics/PointF;)Z
    .locals 7

    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x2

    new-array v3, v1, [F

    aput p2, v3, v0

    aput p3, v3, v2

    aget v1, v3, v0

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    add-float/2addr v1, v4

    aput v1, v3, v0

    aget v1, v3, v2

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    add-float/2addr v1, v4

    aput v1, v3, v2

    aget v1, v3, v0

    cmpl-float v1, v1, v6

    if-ltz v1, :cond_2

    aget v1, v3, v2

    cmpl-float v1, v1, v6

    if-ltz v1, :cond_2

    aget v1, v3, v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v1, v1, v4

    if-gez v1, :cond_2

    aget v1, v3, v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v1, v1, v4

    if-gez v1, :cond_2

    move v1, v2

    :goto_1
    if-eqz v1, :cond_1

    if-eqz p4, :cond_1

    aget v0, v3, v0

    sub-float/2addr v0, p2

    aget v2, v3, v2

    sub-float/2addr v2, p3

    invoke-virtual {p4, v0, v2}, Landroid/graphics/PointF;->set(FF)V

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v1, v0

    goto :goto_1
.end method

.method private static b(F)F
    .locals 5

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v0, 0x41000000    # 8.0f

    mul-float/2addr v0, p0

    cmpg-float v1, v0, v4

    if-gez v1, :cond_0

    neg-float v1, v0

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    double-to-float v1, v2

    sub-float v1, v4, v1

    sub-float/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    const v1, 0x3ebc5ab2

    sub-float v0, v4, v0

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    double-to-float v0, v2

    sub-float v0, v4, v0

    sub-float v2, v4, v1

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    goto :goto_0
.end method

.method public static b(Landroid/view/View;)Z
    .locals 1

    instance-of v0, p0, Landroid/widget/AbsListView;

    if-nez v0, :cond_0

    instance-of v0, p0, Landroid/widget/ScrollView;

    if-nez v0, :cond_0

    instance-of v0, p0, Landroid/support/v4/f/r;

    if-nez v0, :cond_0

    instance-of v0, p0, Landroid/webkit/WebView;

    if-nez v0, :cond_0

    instance-of v0, p0, Landroid/support/v4/f/j;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/view/View;I)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_7

    instance-of v0, p0, Landroid/widget/AbsListView;

    if-eqz v0, :cond_5

    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    move-object v1, p0

    check-cast v1, Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-lez p1, :cond_3

    if-lez v4, :cond_2

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v1

    add-int/lit8 v5, v4, -0x1

    if-lt v1, v5, :cond_0

    add-int/lit8 v1, v4, -0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    if-le v0, v1, :cond_2

    :cond_0
    move v0, v2

    :goto_0
    move v2, v0

    :cond_1
    :goto_1
    return v2

    :cond_2
    move v0, v3

    goto :goto_0

    :cond_3
    if-lez v4, :cond_4

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v1

    if-gtz v1, :cond_1

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    if-lt v0, v1, :cond_1

    :cond_4
    move v2, v3

    goto :goto_1

    :cond_5
    if-lez p1, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v0

    if-ltz v0, :cond_1

    move v2, v3

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v0

    if-gtz v0, :cond_1

    move v2, v3

    goto :goto_1

    :cond_7
    invoke-virtual {p0, p1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v2

    goto :goto_1
.end method

.method public static c(Landroid/view/View;)Z
    .locals 1

    invoke-static {p0}, Lcom/scwang/smartrefresh/layout/g/b;->b(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    instance-of v0, p0, Landroid/support/v4/f/w;

    if-nez v0, :cond_0

    instance-of v0, p0, Landroid/support/v4/f/m;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 3

    const/high16 v2, 0x3f800000    # 1.0f

    iget v0, p0, Lcom/scwang/smartrefresh/layout/g/b;->c:I

    sget v1, Lcom/scwang/smartrefresh/layout/g/b;->b:I

    if-ne v0, v1, :cond_1

    sub-float v0, v2, p1

    sub-float v1, v2, p1

    mul-float/2addr v0, v1

    sub-float v0, v2, v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget v0, Lcom/scwang/smartrefresh/layout/g/b;->e:F

    invoke-static {p1}, Lcom/scwang/smartrefresh/layout/g/b;->b(F)F

    move-result v1

    mul-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    sget v1, Lcom/scwang/smartrefresh/layout/g/b;->f:F

    add-float/2addr v0, v1

    goto :goto_0
.end method
