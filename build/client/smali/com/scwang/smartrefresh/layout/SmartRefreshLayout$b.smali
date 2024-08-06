.class public Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "b"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:I

.field d:F

.field e:F

.field f:J

.field g:J

.field final synthetic h:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;


# direct methods
.method constructor <init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;F)V
    .locals 2

    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$b;->h:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$b;->b:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$b;->c:I

    const v0, 0x3f7ae148    # 0.98f

    iput v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$b;->e:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$b;->f:J

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$b;->g:J

    iput p2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$b;->d:F

    iget v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    iput v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$b;->a:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Runnable;
    .locals 13

    const/4 v0, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$b;->h:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aA:Lcom/scwang/smartrefresh/layout/b/b;

    iget-boolean v1, v1, Lcom/scwang/smartrefresh/layout/b/b;->w:Z

    if-eqz v1, :cond_0

    move-object p0, v0

    :goto_0
    return-object p0

    :cond_0
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$b;->h:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$b;->h:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aA:Lcom/scwang/smartrefresh/layout/b/b;

    iget-boolean v1, v1, Lcom/scwang/smartrefresh/layout/b/b;->v:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$b;->h:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->T:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$b;->h:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->H:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$b;->h:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->U:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$b;->h:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$b;->h:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->C:Z

    invoke-virtual {v1, v2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a(Z)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_1
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$b;->h:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aA:Lcom/scwang/smartrefresh/layout/b/b;

    sget-object v2, Lcom/scwang/smartrefresh/layout/b/b;->m:Lcom/scwang/smartrefresh/layout/b/b;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$b;->h:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->T:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$b;->h:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->H:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$b;->h:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->U:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$b;->h:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$b;->h:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->C:Z

    invoke-virtual {v1, v2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a(Z)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$b;->h:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$b;->h:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->am:I

    neg-int v2, v2

    if-lt v1, v2, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$b;->h:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aA:Lcom/scwang/smartrefresh/layout/b/b;

    sget-object v2, Lcom/scwang/smartrefresh/layout/b/b;->l:Lcom/scwang/smartrefresh/layout/b/b;

    if-ne v1, v2, :cond_8

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$b;->h:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$b;->h:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->ak:I

    if-le v1, v2, :cond_8

    :cond_4
    const/4 v3, 0x0

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$b;->h:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v2, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$b;->h:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v4, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$b;->d:F

    :goto_1
    mul-int v5, v4, v2

    if-lez v5, :cond_8

    float-to-double v6, v1

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$b;->e:F

    float-to-double v8, v1

    add-int/lit8 v3, v3, 0x1

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$b;->c:I

    mul-int/2addr v1, v3

    int-to-float v1, v1

    const/high16 v5, 0x41200000    # 10.0f

    div-float/2addr v1, v5

    float-to-double v10, v1

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    mul-double/2addr v6, v8

    double-to-float v1, v6

    iget v5, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$b;->c:I

    int-to-float v5, v5

    mul-float/2addr v5, v12

    const/high16 v6, 0x447a0000    # 1000.0f

    div-float/2addr v5, v6

    mul-float/2addr v5, v1

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v6, v6, v12

    if-gez v6, :cond_7

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$b;->h:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aA:Lcom/scwang/smartrefresh/layout/b/b;

    iget-boolean v1, v1, Lcom/scwang/smartrefresh/layout/b/b;->v:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$b;->h:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aA:Lcom/scwang/smartrefresh/layout/b/b;

    sget-object v3, Lcom/scwang/smartrefresh/layout/b/b;->l:Lcom/scwang/smartrefresh/layout/b/b;

    if-ne v1, v3, :cond_5

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$b;->h:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->ak:I

    if-gt v2, v1, :cond_6

    :cond_5
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$b;->h:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aA:Lcom/scwang/smartrefresh/layout/b/b;

    sget-object v3, Lcom/scwang/smartrefresh/layout/b/b;->l:Lcom/scwang/smartrefresh/layout/b/b;

    if-eq v1, v3, :cond_8

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$b;->h:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->am:I

    neg-int v1, v1

    if-ge v2, v1, :cond_8

    :cond_6
    move-object p0, v0

    goto/16 :goto_0

    :cond_7
    int-to-float v2, v2

    add-float/2addr v2, v5

    float-to-int v2, v2

    goto :goto_1

    :cond_8
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$b;->f:J

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$b;->h:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->ay:Landroid/os/Handler;

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$b;->c:I

    int-to-long v2, v1

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method

.method public run()V
    .locals 15

    const/4 v14, 0x0

    const/4 v13, 0x1

    const/4 v12, 0x0

    const/high16 v11, 0x447a0000    # 1000.0f

    const/high16 v10, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$b;->h:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aP:Ljava/lang/Runnable;

    if-ne v0, p0, :cond_0

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$b;->h:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aA:Lcom/scwang/smartrefresh/layout/b/b;

    iget-boolean v0, v0, Lcom/scwang/smartrefresh/layout/b/b;->w:Z

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$b;->g:J

    sub-long v2, v0, v2

    iget v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$b;->d:F

    float-to-double v4, v4

    iget v6, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$b;->e:F

    float-to-double v6, v6

    iget-wide v8, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$b;->f:J

    sub-long v8, v0, v8

    long-to-float v8, v8

    iget v9, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$b;->c:I

    int-to-float v9, v9

    div-float v9, v11, v9

    div-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-float v4, v4

    iput v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$b;->d:F

    iget v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$b;->d:F

    long-to-float v2, v2

    mul-float/2addr v2, v10

    div-float/2addr v2, v11

    mul-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v10

    if-lez v3, :cond_2

    iput-wide v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$b;->g:J

    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$b;->a:I

    int-to-float v0, v0

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$b;->a:I

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$b;->h:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$b;->a:I

    mul-int/2addr v0, v1

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$b;->h:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->az:Lcom/scwang/smartrefresh/layout/a/h;

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$b;->a:I

    invoke-interface {v0, v1, v13}, Lcom/scwang/smartrefresh/layout/a/h;->a(IZ)Lcom/scwang/smartrefresh/layout/a/h;

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$b;->h:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->ay:Landroid/os/Handler;

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$b;->c:I

    int-to-long v2, v1

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$b;->h:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iput-object v14, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aP:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$b;->h:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->az:Lcom/scwang/smartrefresh/layout/a/h;

    invoke-interface {v0, v12, v13}, Lcom/scwang/smartrefresh/layout/a/h;->a(IZ)Lcom/scwang/smartrefresh/layout/a/h;

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$b;->h:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aw:Lcom/scwang/smartrefresh/layout/a/d;

    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/a/d;->b()Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$b;->d:F

    neg-float v1, v1

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/scwang/smartrefresh/layout/g/b;->a(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$b;->h:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aI:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    cmpl-float v0, v2, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$b;->h:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iput-boolean v12, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aI:Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$b;->h:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iput-object v14, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->aP:Ljava/lang/Runnable;

    goto :goto_0
.end method
