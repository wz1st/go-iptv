.class public Lcom/airbnb/lottie/ak;
.super Lcom/airbnb/lottie/d;

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# instance fields
.field private c:Lcom/airbnb/lottie/aj;

.field private final d:Landroid/animation/ValueAnimator;

.field private e:F

.field private f:F

.field private g:Lcom/airbnb/lottie/aa;

.field private h:Ljava/lang/String;

.field private i:Lcom/airbnb/lottie/ab;

.field private j:Z

.field private k:Z

.field private l:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/airbnb/lottie/d;-><init>(Landroid/graphics/drawable/Drawable$Callback;)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/ak;->d:Landroid/animation/ValueAnimator;

    iput v1, p0, Lcom/airbnb/lottie/ak;->e:F

    iput v1, p0, Lcom/airbnb/lottie/ak;->f:F

    iget-object v0, p0, Lcom/airbnb/lottie/ak;->d:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/airbnb/lottie/ak;->d:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/airbnb/lottie/ak;->d:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/airbnb/lottie/ak$1;

    invoke-direct {v1, p0}, Lcom/airbnb/lottie/ak$1;-><init>(Lcom/airbnb/lottie/ak;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic a(Lcom/airbnb/lottie/ak;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/airbnb/lottie/ak;->l:Z

    return v0
.end method

.method static synthetic b(Lcom/airbnb/lottie/ak;)Landroid/animation/ValueAnimator;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/ak;->d:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method private b(Lcom/airbnb/lottie/aj;)V
    .locals 10

    const/4 v1, 0x0

    const/4 v4, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Composition is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v6, Landroid/support/v4/e/h;

    invoke-virtual {p1}, Lcom/airbnb/lottie/aj;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v6, v0}, Landroid/support/v4/e/h;-><init>(I)V

    new-instance v7, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/airbnb/lottie/aj;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p1}, Lcom/airbnb/lottie/aj;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v5, v0

    move-object v3, v1

    :goto_0
    if-ltz v5, :cond_3

    invoke-virtual {p1}, Lcom/airbnb/lottie/aj;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/ah;

    new-instance v2, Lcom/airbnb/lottie/ai;

    invoke-direct {v2, v0, p1, p0}, Lcom/airbnb/lottie/ai;-><init>(Lcom/airbnb/lottie/ah;Lcom/airbnb/lottie/aj;Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {v2}, Lcom/airbnb/lottie/ai;->h()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9, v2}, Landroid/support/v4/e/h;->b(JLjava/lang/Object;)V

    if-eqz v3, :cond_1

    invoke-virtual {v3, v2}, Lcom/airbnb/lottie/ai;->b(Lcom/airbnb/lottie/ai;)V

    move-object v0, v1

    :goto_1
    add-int/lit8 v2, v5, -0x1

    move v5, v2

    move-object v3, v0

    goto :goto_0

    :cond_1
    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/airbnb/lottie/ah;->j()Lcom/airbnb/lottie/ah$c;

    move-result-object v8

    sget-object v9, Lcom/airbnb/lottie/ah$c;->b:Lcom/airbnb/lottie/ah$c;

    if-ne v8, v9, :cond_2

    move-object v0, v2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/airbnb/lottie/ah;->j()Lcom/airbnb/lottie/ah$c;

    move-result-object v0

    sget-object v8, Lcom/airbnb/lottie/ah$c;->c:Lcom/airbnb/lottie/ah$c;

    if-ne v0, v8, :cond_7

    move-object v0, v2

    goto :goto_1

    :cond_3
    move v1, v4

    :goto_2
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/ai;

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/ak;->a(Lcom/airbnb/lottie/d;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_4
    :goto_3
    invoke-virtual {v6}, Landroid/support/v4/e/h;->b()I

    move-result v0

    if-ge v4, v0, :cond_6

    invoke-virtual {v6, v4}, Landroid/support/v4/e/h;->b(I)J

    move-result-wide v0

    invoke-virtual {v6, v0, v1}, Landroid/support/v4/e/h;->a(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/ai;

    invoke-virtual {v0}, Lcom/airbnb/lottie/ai;->e()Lcom/airbnb/lottie/ah;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/lottie/ah;->k()J

    move-result-wide v2

    invoke-virtual {v6, v2, v3}, Landroid/support/v4/e/h;->a(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/ai;

    if-eqz v1, :cond_5

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/ai;->a(Lcom/airbnb/lottie/ai;)V

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_6
    return-void

    :cond_7
    move-object v0, v3

    goto :goto_1
.end method

.method private b(Z)V
    .locals 4

    iget-object v0, p0, Lcom/airbnb/lottie/ak;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/lottie/ak;->j:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/airbnb/lottie/ak;->k:Z

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/airbnb/lottie/ak;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Lcom/airbnb/lottie/ak;->c()F

    move-result v1

    iget-object v2, p0, Lcom/airbnb/lottie/ak;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v2

    long-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/ak;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method private c(Z)V
    .locals 4

    iget-object v0, p0, Lcom/airbnb/lottie/ak;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/airbnb/lottie/ak;->j:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/lottie/ak;->k:Z

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/airbnb/lottie/ak;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Lcom/airbnb/lottie/ak;->c()F

    move-result v1

    iget-object v2, p0, Lcom/airbnb/lottie/ak;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v2

    long-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/ak;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->reverse()V

    goto :goto_0
.end method

.method private m()V
    .locals 1

    invoke-virtual {p0}, Lcom/airbnb/lottie/ak;->e()V

    invoke-virtual {p0}, Lcom/airbnb/lottie/ak;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/airbnb/lottie/ak;->g:Lcom/airbnb/lottie/aa;

    return-void
.end method

.method private n()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/airbnb/lottie/ak;->c:Lcom/airbnb/lottie/aj;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/ak;->c:Lcom/airbnb/lottie/aj;

    invoke-virtual {v0}, Lcom/airbnb/lottie/aj;->a()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/airbnb/lottie/ak;->f:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/airbnb/lottie/ak;->c:Lcom/airbnb/lottie/aj;

    invoke-virtual {v1}, Lcom/airbnb/lottie/aj;->a()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/airbnb/lottie/ak;->f:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p0, v3, v3, v0, v1}, Lcom/airbnb/lottie/ak;->setBounds(IIII)V

    goto :goto_0
.end method

.method private o()Lcom/airbnb/lottie/aa;
    .locals 5

    iget-object v0, p0, Lcom/airbnb/lottie/ak;->g:Lcom/airbnb/lottie/aa;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/ak;->g:Lcom/airbnb/lottie/aa;

    invoke-direct {p0}, Lcom/airbnb/lottie/ak;->p()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/aa;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/ak;->g:Lcom/airbnb/lottie/aa;

    invoke-virtual {v0}, Lcom/airbnb/lottie/aa;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/airbnb/lottie/ak;->g:Lcom/airbnb/lottie/aa;

    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/ak;->g:Lcom/airbnb/lottie/aa;

    if-nez v0, :cond_1

    new-instance v0, Lcom/airbnb/lottie/aa;

    invoke-virtual {p0}, Lcom/airbnb/lottie/ak;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/lottie/ak;->h:Ljava/lang/String;

    iget-object v3, p0, Lcom/airbnb/lottie/ak;->i:Lcom/airbnb/lottie/ab;

    iget-object v4, p0, Lcom/airbnb/lottie/ak;->c:Lcom/airbnb/lottie/aj;

    invoke-virtual {v4}, Lcom/airbnb/lottie/aj;->f()Ljava/util/Map;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/airbnb/lottie/aa;-><init>(Landroid/graphics/drawable/Drawable$Callback;Ljava/lang/String;Lcom/airbnb/lottie/ab;Ljava/util/Map;)V

    iput-object v0, p0, Lcom/airbnb/lottie/ak;->g:Lcom/airbnb/lottie/aa;

    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/ak;->g:Lcom/airbnb/lottie/aa;

    return-object v0
.end method

.method private p()Landroid/content/Context;
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/airbnb/lottie/ak;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_1

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic a(F)V
    .locals 0

    invoke-super {p0, p1}, Lcom/airbnb/lottie/d;->a(F)V

    return-void
.end method

.method public a(Lcom/airbnb/lottie/ab;)V
    .locals 1

    iput-object p1, p0, Lcom/airbnb/lottie/ak;->i:Lcom/airbnb/lottie/ab;

    iget-object v0, p0, Lcom/airbnb/lottie/ak;->g:Lcom/airbnb/lottie/aa;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/ak;->g:Lcom/airbnb/lottie/aa;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/aa;->a(Lcom/airbnb/lottie/ab;)V

    :cond_0
    return-void
.end method

.method a(Lcom/airbnb/lottie/d;)V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/airbnb/lottie/d;->a(Lcom/airbnb/lottie/d;)V

    iget-boolean v0, p0, Lcom/airbnb/lottie/ak;->j:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/airbnb/lottie/ak;->j:Z

    invoke-virtual {p0}, Lcom/airbnb/lottie/ak;->i()V

    :cond_0
    iget-boolean v0, p0, Lcom/airbnb/lottie/ak;->k:Z

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/airbnb/lottie/ak;->k:Z

    invoke-virtual {p0}, Lcom/airbnb/lottie/ak;->j()V

    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/airbnb/lottie/ak;->h:Ljava/lang/String;

    return-void
.end method

.method a(Z)V
    .locals 2

    iget-object v1, p0, Lcom/airbnb/lottie/ak;->d:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/airbnb/lottie/aj;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/airbnb/lottie/ak;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You or your view must set a Drawable.Callback before setting the composition. This gets done automatically when added to an ImageView. Either call ImageView.setImageDrawable() before setComposition() or call setCallback(yourView.getCallback()) first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/ak;->c:Lcom/airbnb/lottie/aj;

    if-ne v0, p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/airbnb/lottie/ak;->m()V

    iput-object p1, p0, Lcom/airbnb/lottie/ak;->c:Lcom/airbnb/lottie/aj;

    iget v0, p0, Lcom/airbnb/lottie/ak;->e:F

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/ak;->b(F)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/ak;->c(F)V

    invoke-direct {p0}, Lcom/airbnb/lottie/ak;->n()V

    invoke-direct {p0, p1}, Lcom/airbnb/lottie/ak;->b(Lcom/airbnb/lottie/aj;)V

    invoke-virtual {p0}, Lcom/airbnb/lottie/ak;->c()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/ak;->a(F)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method b(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    invoke-direct {p0}, Lcom/airbnb/lottie/ak;->o()Lcom/airbnb/lottie/aa;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/aa;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public b(F)V
    .locals 4

    const/4 v1, 0x2

    iput p1, p0, Lcom/airbnb/lottie/ak;->e:F

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/airbnb/lottie/ak;->d:Landroid/animation/ValueAnimator;

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    :goto_0
    iget-object v0, p0, Lcom/airbnb/lottie/ak;->c:Lcom/airbnb/lottie/aj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/ak;->d:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/airbnb/lottie/ak;->c:Lcom/airbnb/lottie/aj;

    invoke-virtual {v1}, Lcom/airbnb/lottie/aj;->b()J

    move-result-wide v2

    long-to-float v1, v2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float/2addr v1, v2

    float-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/ak;->d:Landroid/animation/ValueAnimator;

    new-array v1, v1, [F

    fill-array-data v1, :array_1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    goto :goto_0

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public c(F)V
    .locals 0

    iput p1, p0, Lcom/airbnb/lottie/ak;->f:F

    invoke-direct {p0}, Lcom/airbnb/lottie/ak;->n()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/airbnb/lottie/ak;->c:Lcom/airbnb/lottie/aj;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    invoke-virtual {p0}, Lcom/airbnb/lottie/ak;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/airbnb/lottie/ak;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {p1, v3, v3, v1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    invoke-super {p0, p1}, Lcom/airbnb/lottie/d;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/ak;->g:Lcom/airbnb/lottie/aa;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/ak;->g:Lcom/airbnb/lottie/aa;

    invoke-virtual {v0}, Lcom/airbnb/lottie/aa;->a()V

    :cond_0
    return-void
.end method

.method f()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/lottie/ak;->l:Z

    return-void
.end method

.method g()Z
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/ak;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getRepeatCount()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getAlpha()I
    .locals 1

    invoke-super {p0}, Lcom/airbnb/lottie/d;->getAlpha()I

    move-result v0

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/ak;->c:Lcom/airbnb/lottie/aj;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/ak;->c:Lcom/airbnb/lottie/aj;

    invoke-virtual {v0}, Lcom/airbnb/lottie/aj;->a()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/airbnb/lottie/ak;->f:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0
.end method

.method public getIntrinsicWidth()I
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/ak;->c:Lcom/airbnb/lottie/aj;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/ak;->c:Lcom/airbnb/lottie/aj;

    invoke-virtual {v0}, Lcom/airbnb/lottie/aj;->a()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/airbnb/lottie/ak;->f:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0
.end method

.method public bridge synthetic getOpacity()I
    .locals 1

    invoke-super {p0}, Lcom/airbnb/lottie/d;->getOpacity()I

    move-result v0

    return v0
.end method

.method h()Z
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/ak;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    return v0
.end method

.method public i()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/airbnb/lottie/ak;->b(Z)V

    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-virtual {p0}, Lcom/airbnb/lottie/ak;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public invalidateSelf()V
    .locals 1

    invoke-virtual {p0}, Lcom/airbnb/lottie/ak;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public j()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/airbnb/lottie/ak;->c(Z)V

    return-void
.end method

.method public k()F
    .locals 1

    iget v0, p0, Lcom/airbnb/lottie/ak;->f:F

    return v0
.end method

.method l()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/airbnb/lottie/ak;->j:Z

    iput-boolean v0, p0, Lcom/airbnb/lottie/ak;->k:Z

    iget-object v0, p0, Lcom/airbnb/lottie/ak;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1

    invoke-virtual {p0}, Lcom/airbnb/lottie/ak;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-interface {v0, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    goto :goto_0
.end method

.method public bridge synthetic setAlpha(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/airbnb/lottie/d;->setAlpha(I)V

    return-void
.end method

.method public bridge synthetic setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/airbnb/lottie/d;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 1

    invoke-virtual {p0}, Lcom/airbnb/lottie/ak;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-interface {v0, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    goto :goto_0
.end method
