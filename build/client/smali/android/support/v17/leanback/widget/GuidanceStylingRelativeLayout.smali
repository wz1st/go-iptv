.class Landroid/support/v17/leanback/widget/GuidanceStylingRelativeLayout;
.super Landroid/widget/RelativeLayout;


# instance fields
.field private a:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v17/leanback/widget/GuidanceStylingRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v17/leanback/widget/GuidanceStylingRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {p1}, Landroid/support/v17/leanback/widget/GuidanceStylingRelativeLayout;->a(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/widget/GuidanceStylingRelativeLayout;->a:F

    return-void
.end method

.method public static a(Landroid/content/Context;)F
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Landroid/support/v17/leanback/a$l;->LeanbackGuidedStepTheme:[I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/a$l;->LeanbackGuidedStepTheme_guidedStepKeyline:I

    const/high16 v2, 0x42200000    # 40.0f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return v1
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 7

    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidanceStylingRelativeLayout;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/a$f;->guidance_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidanceStylingRelativeLayout;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v2, Landroid/support/v17/leanback/a$f;->guidance_breadcrumb:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidanceStylingRelativeLayout;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v3, Landroid/support/v17/leanback/a$f;->guidance_description:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidanceStylingRelativeLayout;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v4, Landroid/support/v17/leanback/a$f;->guidance_icon:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidanceStylingRelativeLayout;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Landroid/support/v17/leanback/widget/GuidanceStylingRelativeLayout;->a:F

    mul-float/2addr v4, v5

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v4, v5

    float-to-int v4, v4

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-ne v5, p0, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getBaseline()I

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    sub-int v5, v4, v5

    sub-int/2addr v5, v6

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int/2addr v5, v6

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-ne v6, p0, :cond_0

    invoke-virtual {v2, v5}, Landroid/view/View;->offsetTopAndBottom(I)V

    :cond_0
    invoke-virtual {v1, v5}, Landroid/view/View;->offsetTopAndBottom(I)V

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, p0, :cond_1

    invoke-virtual {v3, v5}, Landroid/view/View;->offsetTopAndBottom(I)V

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, p0, :cond_2

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v4, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->offsetTopAndBottom(I)V

    :cond_2
    return-void
.end method
