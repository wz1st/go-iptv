.class Landroid/support/v7/widget/u$6;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/u;->b(Landroid/support/v7/widget/RecyclerView$x;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/RecyclerView$x;

.field final synthetic b:I

.field final synthetic c:Landroid/view/View;

.field final synthetic d:I

.field final synthetic e:Landroid/view/ViewPropertyAnimator;

.field final synthetic f:Landroid/support/v7/widget/u;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/u;Landroid/support/v7/widget/RecyclerView$x;ILandroid/view/View;ILandroid/view/ViewPropertyAnimator;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/u$6;->f:Landroid/support/v7/widget/u;

    iput-object p2, p0, Landroid/support/v7/widget/u$6;->a:Landroid/support/v7/widget/RecyclerView$x;

    iput p3, p0, Landroid/support/v7/widget/u$6;->b:I

    iput-object p4, p0, Landroid/support/v7/widget/u$6;->c:Landroid/view/View;

    iput p5, p0, Landroid/support/v7/widget/u$6;->d:I

    iput-object p6, p0, Landroid/support/v7/widget/u$6;->e:Landroid/view/ViewPropertyAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Landroid/support/v7/widget/u$6;->b:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/u$6;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    :cond_0
    iget v0, p0, Landroid/support/v7/widget/u$6;->d:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/u$6;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_1
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/u$6;->e:Landroid/view/ViewPropertyAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Landroid/support/v7/widget/u$6;->f:Landroid/support/v7/widget/u;

    iget-object v1, p0, Landroid/support/v7/widget/u$6;->a:Landroid/support/v7/widget/RecyclerView$x;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/u;->j(Landroid/support/v7/widget/RecyclerView$x;)V

    iget-object v0, p0, Landroid/support/v7/widget/u$6;->f:Landroid/support/v7/widget/u;

    iget-object v0, v0, Landroid/support/v7/widget/u;->e:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v7/widget/u$6;->a:Landroid/support/v7/widget/RecyclerView$x;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/support/v7/widget/u$6;->f:Landroid/support/v7/widget/u;

    invoke-virtual {v0}, Landroid/support/v7/widget/u;->c()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/u$6;->f:Landroid/support/v7/widget/u;

    iget-object v1, p0, Landroid/support/v7/widget/u$6;->a:Landroid/support/v7/widget/RecyclerView$x;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/u;->m(Landroid/support/v7/widget/RecyclerView$x;)V

    return-void
.end method
