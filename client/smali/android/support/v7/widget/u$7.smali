.class Landroid/support/v7/widget/u$7;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/u;->a(Landroid/support/v7/widget/u$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/u$a;

.field final synthetic b:Landroid/view/ViewPropertyAnimator;

.field final synthetic c:Landroid/view/View;

.field final synthetic d:Landroid/support/v7/widget/u;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/u;Landroid/support/v7/widget/u$a;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/u$7;->d:Landroid/support/v7/widget/u;

    iput-object p2, p0, Landroid/support/v7/widget/u$7;->a:Landroid/support/v7/widget/u$a;

    iput-object p3, p0, Landroid/support/v7/widget/u$7;->b:Landroid/view/ViewPropertyAnimator;

    iput-object p4, p0, Landroid/support/v7/widget/u$7;->c:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v7/widget/u$7;->b:Landroid/view/ViewPropertyAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Landroid/support/v7/widget/u$7;->c:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Landroid/support/v7/widget/u$7;->c:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    iget-object v0, p0, Landroid/support/v7/widget/u$7;->c:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Landroid/support/v7/widget/u$7;->d:Landroid/support/v7/widget/u;

    iget-object v1, p0, Landroid/support/v7/widget/u$7;->a:Landroid/support/v7/widget/u$a;

    iget-object v1, v1, Landroid/support/v7/widget/u$a;->a:Landroid/support/v7/widget/RecyclerView$x;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/u;->a(Landroid/support/v7/widget/RecyclerView$x;Z)V

    iget-object v0, p0, Landroid/support/v7/widget/u$7;->d:Landroid/support/v7/widget/u;

    iget-object v0, v0, Landroid/support/v7/widget/u;->g:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v7/widget/u$7;->a:Landroid/support/v7/widget/u$a;

    iget-object v1, v1, Landroid/support/v7/widget/u$a;->a:Landroid/support/v7/widget/RecyclerView$x;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/support/v7/widget/u$7;->d:Landroid/support/v7/widget/u;

    invoke-virtual {v0}, Landroid/support/v7/widget/u;->c()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/u$7;->d:Landroid/support/v7/widget/u;

    iget-object v1, p0, Landroid/support/v7/widget/u$7;->a:Landroid/support/v7/widget/u$a;

    iget-object v1, v1, Landroid/support/v7/widget/u$a;->a:Landroid/support/v7/widget/RecyclerView$x;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/u;->b(Landroid/support/v7/widget/RecyclerView$x;Z)V

    return-void
.end method
