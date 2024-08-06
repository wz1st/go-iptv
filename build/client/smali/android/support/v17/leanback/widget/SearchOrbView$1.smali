.class Landroid/support/v17/leanback/widget/SearchOrbView$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/SearchOrbView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v17/leanback/widget/SearchOrbView;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/SearchOrbView;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/widget/SearchOrbView$1;->a:Landroid/support/v17/leanback/widget/SearchOrbView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/SearchOrbView$1;->a:Landroid/support/v17/leanback/widget/SearchOrbView;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/widget/SearchOrbView;->setOrbViewColor(I)V

    return-void
.end method
