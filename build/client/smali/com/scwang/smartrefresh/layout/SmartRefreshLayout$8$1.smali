.class Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8;


# direct methods
.method constructor <init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8;I)V
    .locals 0

    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8$1;->b:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8;

    iput p2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v1, 0x0

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8$1;->b:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8;->e:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->N:Z

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8$1;->a:I

    if-gez v0, :cond_8

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8$1;->b:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8;->e:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aw:Lcom/scwang/smartrefresh/layout/a/d;

    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8$1;->b:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8;

    iget-object v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8;->e:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    invoke-interface {v0, v2}, Lcom/scwang/smartrefresh/layout/a/d;->a(I)Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/animation/ValueAnimator$AnimatorUpdateListener;->onAnimationUpdate(Landroid/animation/ValueAnimator;)V

    :cond_0
    :goto_0
    new-instance v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8$1$1;

    invoke-direct {v2, p0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8$1$1;-><init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8$1;)V

    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8$1;->b:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8;

    iget-object v3, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8;->e:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v3, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    if-lez v3, :cond_1

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8$1;->b:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8;->e:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->az:Lcom/scwang/smartrefresh/layout/a/h;

    invoke-interface {v0, v6}, Lcom/scwang/smartrefresh/layout/a/h;->a(I)Landroid/animation/ValueAnimator;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_7

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :goto_2
    return-void

    :cond_1
    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8$1;->b:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8;->e:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    if-nez v0, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8$1;->b:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8;->e:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aQ:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8$1;->b:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8;->e:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aQ:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8$1;->b:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8;->e:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aQ:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8$1;->b:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8;->e:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iput-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aQ:Landroid/animation/ValueAnimator;

    :cond_3
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8$1;->b:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8;->e:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->az:Lcom/scwang/smartrefresh/layout/a/h;

    invoke-interface {v0, v6, v6}, Lcom/scwang/smartrefresh/layout/a/h;->a(IZ)Lcom/scwang/smartrefresh/layout/a/h;

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8$1;->b:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8;->e:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->az:Lcom/scwang/smartrefresh/layout/a/h;

    sget-object v3, Lcom/scwang/smartrefresh/layout/b/b;->a:Lcom/scwang/smartrefresh/layout/b/b;

    invoke-interface {v0, v3}, Lcom/scwang/smartrefresh/layout/a/h;->a(Lcom/scwang/smartrefresh/layout/b/b;)Lcom/scwang/smartrefresh/layout/a/h;

    move-object v0, v1

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8$1;->b:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8;

    iget-boolean v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8;->c:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8$1;->b:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8;->e:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->H:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8$1;->b:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8;->e:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8$1;->b:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8;

    iget-object v3, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8;->e:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v3, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->am:I

    neg-int v3, v3

    if-lt v0, v3, :cond_5

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8$1;->b:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8;->e:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v3, Lcom/scwang/smartrefresh/layout/b/b;->a:Lcom/scwang/smartrefresh/layout/b/b;

    invoke-virtual {v0, v3}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a(Lcom/scwang/smartrefresh/layout/b/b;)V

    move-object v0, v1

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8$1;->b:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8;->e:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->az:Lcom/scwang/smartrefresh/layout/a/h;

    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8$1;->b:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8;

    iget-object v3, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8;->e:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v3, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->am:I

    neg-int v3, v3

    invoke-interface {v0, v3}, Lcom/scwang/smartrefresh/layout/a/h;->a(I)Landroid/animation/ValueAnimator;

    move-result-object v0

    goto/16 :goto_1

    :cond_6
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8$1;->b:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8;->e:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->az:Lcom/scwang/smartrefresh/layout/a/h;

    invoke-interface {v0, v6}, Lcom/scwang/smartrefresh/layout/a/h;->a(I)Landroid/animation/ValueAnimator;

    move-result-object v0

    goto/16 :goto_1

    :cond_7
    invoke-virtual {v2, v1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    goto/16 :goto_2

    :cond_8
    move-object v0, v1

    goto/16 :goto_0

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method
