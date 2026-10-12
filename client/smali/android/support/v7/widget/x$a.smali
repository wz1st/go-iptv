.class Landroid/support/v7/widget/x$a;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/x;

.field private b:Z


# direct methods
.method constructor <init>(Landroid/support/v7/widget/x;)V
    .locals 1

    iput-object p1, p0, Landroid/support/v7/widget/x$a;->a:Landroid/support/v7/widget/x;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/x$a;->b:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/x$a;->b:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Landroid/support/v7/widget/x$a;->b:Z

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Landroid/support/v7/widget/x$a;->b:Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/x$a;->a:Landroid/support/v7/widget/x;

    iget-object v0, v0, Landroid/support/v7/widget/x;->i:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/x$a;->a:Landroid/support/v7/widget/x;

    iput v2, v0, Landroid/support/v7/widget/x;->j:I

    iget-object v0, p0, Landroid/support/v7/widget/x$a;->a:Landroid/support/v7/widget/x;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/x;->a(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/x$a;->a:Landroid/support/v7/widget/x;

    const/4 v1, 0x2

    iput v1, v0, Landroid/support/v7/widget/x;->j:I

    iget-object v0, p0, Landroid/support/v7/widget/x$a;->a:Landroid/support/v7/widget/x;

    invoke-virtual {v0}, Landroid/support/v7/widget/x;->a()V

    goto :goto_0
.end method
