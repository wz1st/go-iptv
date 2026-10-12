.class Landroid/support/v17/leanback/transition/ParallaxTransition$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/transition/ParallaxTransition;->a(Landroid/view/View;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v17/leanback/widget/p;

.field final synthetic b:Landroid/support/v17/leanback/transition/ParallaxTransition;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/transition/ParallaxTransition;Landroid/support/v17/leanback/widget/p;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/transition/ParallaxTransition$1;->b:Landroid/support/v17/leanback/transition/ParallaxTransition;

    iput-object p2, p0, Landroid/support/v17/leanback/transition/ParallaxTransition$1;->a:Landroid/support/v17/leanback/widget/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/transition/ParallaxTransition$1;->a:Landroid/support/v17/leanback/widget/p;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/p;->d()V

    return-void
.end method
