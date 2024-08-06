.class final Landroid/support/v17/leanback/transition/FadeAndShortSlide$2;
.super Landroid/support/v17/leanback/transition/FadeAndShortSlide$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/transition/FadeAndShortSlide;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v17/leanback/transition/FadeAndShortSlide$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v17/leanback/transition/FadeAndShortSlide;Landroid/view/ViewGroup;Landroid/view/View;[I)F
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p3}, Landroid/view/View;->getTranslationX()F

    move-result v0

    invoke-virtual {p1, p2}, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->a(Landroid/view/ViewGroup;)F

    move-result v1

    sub-float/2addr v0, v1

    :goto_1
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Landroid/view/View;->getTranslationX()F

    move-result v0

    invoke-virtual {p1, p2}, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->a(Landroid/view/ViewGroup;)F

    move-result v1

    add-float/2addr v0, v1

    goto :goto_1
.end method
