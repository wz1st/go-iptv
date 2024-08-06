.class Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$4;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a(IILandroid/view/animation/Interpolator;I)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;


# direct methods
.method constructor <init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$4;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$4;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aQ:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$4;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$4;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aA:Lcom/scwang/smartrefresh/layout/b/b;

    sget-object v1, Lcom/scwang/smartrefresh/layout/b/b;->a:Lcom/scwang/smartrefresh/layout/b/b;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$4;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aA:Lcom/scwang/smartrefresh/layout/b/b;

    iget-boolean v0, v0, Lcom/scwang/smartrefresh/layout/b/b;->v:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$4;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aA:Lcom/scwang/smartrefresh/layout/b/b;

    iget-boolean v0, v0, Lcom/scwang/smartrefresh/layout/b/b;->u:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$4;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v1, Lcom/scwang/smartrefresh/layout/b/b;->a:Lcom/scwang/smartrefresh/layout/b/b;

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a(Lcom/scwang/smartrefresh/layout/b/b;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$4;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aA:Lcom/scwang/smartrefresh/layout/b/b;

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$4;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aB:Lcom/scwang/smartrefresh/layout/b/b;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$4;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$4;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aA:Lcom/scwang/smartrefresh/layout/b/b;

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setViceState(Lcom/scwang/smartrefresh/layout/b/b;)V

    goto :goto_0
.end method
