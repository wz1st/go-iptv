.class public Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:I

.field d:J

.field e:F

.field f:F

.field final synthetic g:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;


# direct methods
.method constructor <init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;FI)V
    .locals 5

    const/4 v4, 0x0

    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$a;->g:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$a;->a:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$a;->b:I

    iput v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$a;->e:F

    iput p2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$a;->f:F

    iput p3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$a;->c:I

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$a;->d:J

    iget-object v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->ay:Landroid/os/Handler;

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$a;->b:I

    int-to-long v2, v1

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    cmpl-float v0, p2, v4

    if-lez v0, :cond_0

    iget-object v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->az:Lcom/scwang/smartrefresh/layout/a/h;

    sget-object v1, Lcom/scwang/smartrefresh/layout/b/b;->b:Lcom/scwang/smartrefresh/layout/b/b;

    invoke-interface {v0, v1}, Lcom/scwang/smartrefresh/layout/a/h;->a(Lcom/scwang/smartrefresh/layout/b/b;)Lcom/scwang/smartrefresh/layout/a/h;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->az:Lcom/scwang/smartrefresh/layout/a/h;

    sget-object v1, Lcom/scwang/smartrefresh/layout/b/b;->c:Lcom/scwang/smartrefresh/layout/b/b;

    invoke-interface {v0, v1}, Lcom/scwang/smartrefresh/layout/a/h;->a(Lcom/scwang/smartrefresh/layout/b/b;)Lcom/scwang/smartrefresh/layout/a/h;

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 7

    const/high16 v6, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$a;->g:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aP:Ljava/lang/Runnable;

    if-ne v0, p0, :cond_0

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$a;->g:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aA:Lcom/scwang/smartrefresh/layout/b/b;

    iget-boolean v0, v0, Lcom/scwang/smartrefresh/layout/b/b;->w:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$a;->g:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$a;->c:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-lt v0, v1, :cond_2

    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$a;->c:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$a;->f:F

    float-to-double v0, v0

    const-wide v2, 0x3fdcccccc0000000L    # 0.44999998807907104

    iget v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$a;->a:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$a;->a:I

    mul-int/lit8 v4, v4, 0x2

    int-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$a;->f:F

    :goto_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$a;->d:J

    sub-long v2, v0, v2

    long-to-float v2, v2

    mul-float/2addr v2, v6

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    iget v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$a;->f:F

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v6

    if-ltz v3, :cond_3

    iput-wide v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$a;->d:J

    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$a;->e:F

    add-float/2addr v0, v2

    iput v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$a;->e:F

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$a;->g:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$a;->e:F

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->c(F)V

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$a;->g:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->ay:Landroid/os/Handler;

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$a;->b:I

    int-to-long v2, v1

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$a;->f:F

    float-to-double v0, v0

    const-wide v2, 0x3feb333340000000L    # 0.8500000238418579

    iget v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$a;->a:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$a;->a:I

    mul-int/lit8 v4, v4, 0x2

    int-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$a;->f:F

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$a;->f:F

    float-to-double v0, v0

    const-wide v2, 0x3fee666660000000L    # 0.949999988079071

    iget v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$a;->a:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$a;->a:I

    mul-int/lit8 v4, v4, 0x2

    int-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$a;->f:F

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$a;->g:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aB:Lcom/scwang/smartrefresh/layout/b/b;

    iget-boolean v0, v0, Lcom/scwang/smartrefresh/layout/b/b;->u:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$a;->g:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aB:Lcom/scwang/smartrefresh/layout/b/b;

    iget-boolean v0, v0, Lcom/scwang/smartrefresh/layout/b/b;->r:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$a;->g:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->az:Lcom/scwang/smartrefresh/layout/a/h;

    sget-object v1, Lcom/scwang/smartrefresh/layout/b/b;->d:Lcom/scwang/smartrefresh/layout/b/b;

    invoke-interface {v0, v1}, Lcom/scwang/smartrefresh/layout/a/h;->a(Lcom/scwang/smartrefresh/layout/b/b;)Lcom/scwang/smartrefresh/layout/a/h;

    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$a;->g:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aP:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$a;->g:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$a;->c:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$a;->g:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$a;->c:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {v0}, Lcom/scwang/smartrefresh/layout/g/b;->a(I)F

    move-result v0

    float-to-int v0, v0

    const/16 v1, 0x1e

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/16 v1, 0x64

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$a;->g:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$a;->c:I

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$a;->g:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v4, v4, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->z:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a(IILandroid/view/animation/Interpolator;I)Landroid/animation/ValueAnimator;

    goto/16 :goto_1

    :cond_5
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$a;->g:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aB:Lcom/scwang/smartrefresh/layout/b/b;

    iget-boolean v0, v0, Lcom/scwang/smartrefresh/layout/b/b;->u:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$a;->g:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aB:Lcom/scwang/smartrefresh/layout/b/b;

    iget-boolean v0, v0, Lcom/scwang/smartrefresh/layout/b/b;->s:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$a;->g:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->az:Lcom/scwang/smartrefresh/layout/a/h;

    sget-object v1, Lcom/scwang/smartrefresh/layout/b/b;->e:Lcom/scwang/smartrefresh/layout/b/b;

    invoke-interface {v0, v1}, Lcom/scwang/smartrefresh/layout/a/h;->a(Lcom/scwang/smartrefresh/layout/b/b;)Lcom/scwang/smartrefresh/layout/a/h;

    goto :goto_2
.end method
