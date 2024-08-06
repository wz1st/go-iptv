.class Landroid/support/v17/leanback/transition/a$a;
.super Landroid/animation/AnimatorListenerAdapter;

# interfaces
.implements Landroid/transition/Transition$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/transition/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Landroid/view/View;

.field private final c:I

.field private final d:I

.field private e:[I

.field private f:F

.field private g:F

.field private final h:F

.field private final i:F


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/view/View;IIFF)V
    .locals 3

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    iput-object p1, p0, Landroid/support/v17/leanback/transition/a$a;->b:Landroid/view/View;

    iput-object p2, p0, Landroid/support/v17/leanback/transition/a$a;->a:Landroid/view/View;

    iget-object v0, p0, Landroid/support/v17/leanback/transition/a$a;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sub-int v0, p3, v0

    iput v0, p0, Landroid/support/v17/leanback/transition/a$a;->c:I

    iget-object v0, p0, Landroid/support/v17/leanback/transition/a$a;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sub-int v0, p4, v0

    iput v0, p0, Landroid/support/v17/leanback/transition/a$a;->d:I

    iput p5, p0, Landroid/support/v17/leanback/transition/a$a;->h:F

    iput p6, p0, Landroid/support/v17/leanback/transition/a$a;->i:F

    iget-object v0, p0, Landroid/support/v17/leanback/transition/a$a;->a:Landroid/view/View;

    sget v1, Landroid/support/v17/leanback/a$f;->transitionPosition:I

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    iput-object v0, p0, Landroid/support/v17/leanback/transition/a$a;->e:[I

    iget-object v0, p0, Landroid/support/v17/leanback/transition/a$a;->e:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/transition/a$a;->a:Landroid/view/View;

    sget v1, Landroid/support/v17/leanback/a$f;->transitionPosition:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 4

    iget-object v0, p0, Landroid/support/v17/leanback/transition/a$a;->e:[I

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/v17/leanback/transition/a$a;->e:[I

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/transition/a$a;->e:[I

    const/4 v1, 0x0

    iget v2, p0, Landroid/support/v17/leanback/transition/a$a;->c:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/support/v17/leanback/transition/a$a;->b:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTranslationX()F

    move-result v3

    add-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Landroid/support/v17/leanback/transition/a$a;->e:[I

    const/4 v1, 0x1

    iget v2, p0, Landroid/support/v17/leanback/transition/a$a;->d:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/support/v17/leanback/transition/a$a;->b:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTranslationY()F

    move-result v3

    add-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Landroid/support/v17/leanback/transition/a$a;->a:Landroid/view/View;

    sget v1, Landroid/support/v17/leanback/a$f;->transitionPosition:I

    iget-object v2, p0, Landroid/support/v17/leanback/transition/a$a;->e:[I

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationPause(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/transition/a$a;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/transition/a$a;->f:F

    iget-object v0, p0, Landroid/support/v17/leanback/transition/a$a;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/transition/a$a;->g:F

    iget-object v0, p0, Landroid/support/v17/leanback/transition/a$a;->b:Landroid/view/View;

    iget v1, p0, Landroid/support/v17/leanback/transition/a$a;->h:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    iget-object v0, p0, Landroid/support/v17/leanback/transition/a$a;->b:Landroid/view/View;

    iget v1, p0, Landroid/support/v17/leanback/transition/a$a;->i:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public onAnimationResume(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/transition/a$a;->b:Landroid/view/View;

    iget v1, p0, Landroid/support/v17/leanback/transition/a$a;->f:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    iget-object v0, p0, Landroid/support/v17/leanback/transition/a$a;->b:Landroid/view/View;

    iget v1, p0, Landroid/support/v17/leanback/transition/a$a;->g:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public onTransitionCancel(Landroid/transition/Transition;)V
    .locals 0

    return-void
.end method

.method public onTransitionEnd(Landroid/transition/Transition;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/transition/a$a;->b:Landroid/view/View;

    iget v1, p0, Landroid/support/v17/leanback/transition/a$a;->h:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    iget-object v0, p0, Landroid/support/v17/leanback/transition/a$a;->b:Landroid/view/View;

    iget v1, p0, Landroid/support/v17/leanback/transition/a$a;->i:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public onTransitionPause(Landroid/transition/Transition;)V
    .locals 0

    return-void
.end method

.method public onTransitionResume(Landroid/transition/Transition;)V
    .locals 0

    return-void
.end method

.method public onTransitionStart(Landroid/transition/Transition;)V
    .locals 0

    return-void
.end method
