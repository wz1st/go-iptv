.class Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a(IZZ)Lcom/scwang/smartrefresh/layout/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:I

.field final synthetic b:I

.field final synthetic c:Z

.field final synthetic d:Z

.field final synthetic e:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;


# direct methods
.method constructor <init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;IZZ)V
    .locals 1

    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8;->e:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iput p2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8;->b:I

    iput-boolean p3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8;->c:Z

    iput-boolean p4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8;->a:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8;->a:I

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8;->e:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aA:Lcom/scwang/smartrefresh/layout/b/b;

    sget-object v1, Lcom/scwang/smartrefresh/layout/b/b;->a:Lcom/scwang/smartrefresh/layout/b/b;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8;->e:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aB:Lcom/scwang/smartrefresh/layout/b/b;

    sget-object v1, Lcom/scwang/smartrefresh/layout/b/b;->m:Lcom/scwang/smartrefresh/layout/b/b;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8;->e:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v1, Lcom/scwang/smartrefresh/layout/b/b;->a:Lcom/scwang/smartrefresh/layout/b/b;

    iput-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aB:Lcom/scwang/smartrefresh/layout/b/b;

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8;->c:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8;->e:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->e(Z)Lcom/scwang/smartrefresh/layout/a/i;

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8;->e:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aQ:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8;->e:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aA:Lcom/scwang/smartrefresh/layout/b/b;

    iget-boolean v0, v0, Lcom/scwang/smartrefresh/layout/b/b;->u:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8;->e:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aA:Lcom/scwang/smartrefresh/layout/b/b;

    sget-object v1, Lcom/scwang/smartrefresh/layout/b/b;->k:Lcom/scwang/smartrefresh/layout/b/b;

    if-ne v0, v1, :cond_5

    :cond_3
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8;->e:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aA:Lcom/scwang/smartrefresh/layout/b/b;

    iget-boolean v0, v0, Lcom/scwang/smartrefresh/layout/b/b;->s:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8;->e:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aQ:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8;->e:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aQ:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8;->e:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aQ:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8;->e:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->az:Lcom/scwang/smartrefresh/layout/a/h;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/scwang/smartrefresh/layout/a/h;->a(I)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8;->e:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v1, Lcom/scwang/smartrefresh/layout/b/b;->a:Lcom/scwang/smartrefresh/layout/b/b;

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a(Lcom/scwang/smartrefresh/layout/b/b;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8;->e:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v1, Lcom/scwang/smartrefresh/layout/b/b;->e:Lcom/scwang/smartrefresh/layout/b/b;

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a(Lcom/scwang/smartrefresh/layout/b/b;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8;->e:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aA:Lcom/scwang/smartrefresh/layout/b/b;

    sget-object v1, Lcom/scwang/smartrefresh/layout/b/b;->m:Lcom/scwang/smartrefresh/layout/b/b;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8;->e:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->av:Lcom/scwang/smartrefresh/layout/a/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8;->e:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aw:Lcom/scwang/smartrefresh/layout/a/d;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8;->a:I

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8;->e:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->ay:Landroid/os/Handler;

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8;->b:I

    int-to-long v2, v1

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8;->e:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v1, Lcom/scwang/smartrefresh/layout/b/b;->p:Lcom/scwang/smartrefresh/layout/b/b;

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a(Lcom/scwang/smartrefresh/layout/b/b;)V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8;->e:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->av:Lcom/scwang/smartrefresh/layout/a/g;

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8;->e:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8;->d:Z

    invoke-interface {v0, v1, v2}, Lcom/scwang/smartrefresh/layout/a/g;->a(Lcom/scwang/smartrefresh/layout/a/i;Z)I

    move-result v10

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8;->e:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->ad:Lcom/scwang/smartrefresh/layout/f/c;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8;->e:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->av:Lcom/scwang/smartrefresh/layout/a/g;

    instance-of v0, v0, Lcom/scwang/smartrefresh/layout/a/e;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8;->e:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->ad:Lcom/scwang/smartrefresh/layout/f/c;

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8;->e:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->av:Lcom/scwang/smartrefresh/layout/a/g;

    check-cast v0, Lcom/scwang/smartrefresh/layout/a/e;

    iget-boolean v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8;->d:Z

    invoke-interface {v1, v0, v2}, Lcom/scwang/smartrefresh/layout/f/c;->a(Lcom/scwang/smartrefresh/layout/a/e;Z)V

    :cond_7
    const v0, 0x7fffffff

    if-ge v10, v0, :cond_1

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8;->c:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8;->e:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->H:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8;->e:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    if-gez v0, :cond_b

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8;->e:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aw:Lcom/scwang/smartrefresh/layout/a/d;

    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/a/d;->d()Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    :goto_2
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8;->e:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8;->e:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8;->e:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->am:I

    neg-int v2, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_3
    sub-int v9, v1, v0

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8;->e:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->n:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8;->e:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->ag:Z

    if-eqz v0, :cond_a

    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8;->e:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->n:Z

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8;->e:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8;->e:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v3, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->k:F

    iput v3, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->i:F

    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8;->e:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8;->e:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v3, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    sub-int/2addr v3, v9

    iput v3, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->d:I

    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8;->e:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->n:Z

    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8;->e:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->G:Z

    if-eqz v2, :cond_d

    move v8, v9

    :goto_4
    iget-object v11, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8;->e:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8;->e:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v5, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->j:F

    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8;->e:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->k:F

    int-to-float v3, v8

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8;->e:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v3, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a:I

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float v6, v2, v3

    const/4 v7, 0x0

    move-wide v2, v0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v2

    invoke-static {v11, v2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->d(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;Landroid/view/MotionEvent;)Z

    iget-object v11, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8;->e:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/4 v4, 0x2

    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8;->e:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v5, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->j:F

    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8;->e:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->k:F

    int-to-float v3, v8

    add-float v6, v2, v3

    const/4 v7, 0x0

    move-wide v2, v0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v2

    invoke-static {v11, v2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->e(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;Landroid/view/MotionEvent;)Z

    :cond_9
    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8;->e:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->ag:Z

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8;->e:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/4 v3, 0x0

    iput v3, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->af:I

    iget-object v8, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8;->e:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8;->e:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v5, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->j:F

    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8;->e:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v6, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->k:F

    const/4 v7, 0x0

    move-wide v2, v0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->f(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;Landroid/view/MotionEvent;)Z

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8;->e:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->ag:Z

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8;->e:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/4 v1, 0x0

    iput v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->d:I

    :cond_a
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8;->e:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->ay:Landroid/os/Handler;

    new-instance v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8$1;

    invoke-direct {v3, p0, v9}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8$1;-><init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8;I)V

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8;->e:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    if-gez v0, :cond_e

    int-to-long v0, v10

    :goto_5
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    :cond_b
    const/4 v0, 0x0

    goto/16 :goto_2

    :cond_c
    const/4 v0, 0x0

    goto/16 :goto_3

    :cond_d
    const/4 v2, 0x0

    move v8, v2

    goto :goto_4

    :cond_e
    const-wide/16 v0, 0x0

    goto :goto_5
.end method
