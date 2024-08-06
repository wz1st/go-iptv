.class final Landroid/support/v17/leanback/transition/FadeAndShortSlide$5;
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
.method public b(Landroid/support/v17/leanback/transition/FadeAndShortSlide;Landroid/view/ViewGroup;Landroid/view/View;[I)F
    .locals 2

    invoke-virtual {p3}, Landroid/view/View;->getTranslationY()F

    move-result v0

    invoke-virtual {p1, p2}, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->b(Landroid/view/ViewGroup;)F

    move-result v1

    sub-float/2addr v0, v1

    return v0
.end method
