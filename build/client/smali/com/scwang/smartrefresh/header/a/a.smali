.class public Lcom/scwang/smartrefresh/header/a/a;
.super Landroid/graphics/drawable/Drawable;

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scwang/smartrefresh/header/a/a$a;
    }
.end annotation


# static fields
.field static final a:Landroid/view/animation/Interpolator;

.field private static final d:Landroid/view/animation/Interpolator;

.field private static final e:[I


# instance fields
.field b:F

.field c:Z

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/animation/Animation;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/scwang/smartrefresh/header/a/a$a;

.field private h:F

.field private i:Landroid/view/View;

.field private j:Landroid/view/animation/Animation;

.field private k:F

.field private l:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/scwang/smartrefresh/header/a/a;->d:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/support/v4/f/b/b;

    invoke-direct {v0}, Landroid/support/v4/f/b/b;-><init>()V

    sput-object v0, Lcom/scwang/smartrefresh/header/a/a;->a:Landroid/view/animation/Interpolator;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/high16 v2, -0x1000000

    aput v2, v0, v1

    sput-object v0, Lcom/scwang/smartrefresh/header/a/a;->e:[I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/scwang/smartrefresh/header/a/a;->f:Ljava/util/List;

    new-instance v0, Lcom/scwang/smartrefresh/header/a/a$a;

    invoke-direct {v0, p0}, Lcom/scwang/smartrefresh/header/a/a$a;-><init>(Lcom/scwang/smartrefresh/header/a/a;)V

    iput-object v0, p0, Lcom/scwang/smartrefresh/header/a/a;->g:Lcom/scwang/smartrefresh/header/a/a$a;

    iput-object p1, p0, Lcom/scwang/smartrefresh/header/a/a;->i:Landroid/view/View;

    sget-object v0, Lcom/scwang/smartrefresh/header/a/a;->e:[I

    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/header/a/a;->a([I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/header/a/a;->a(I)V

    invoke-direct {p0}, Lcom/scwang/smartrefresh/header/a/a;->a()V

    return-void
.end method

.method private a(FII)I
    .locals 8

    shr-int/lit8 v0, p2, 0x18

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v1, p2, 0x10

    and-int/lit16 v1, v1, 0xff

    shr-int/lit8 v2, p2, 0x8

    and-int/lit16 v2, v2, 0xff

    and-int/lit16 v3, p2, 0xff

    shr-int/lit8 v4, p3, 0x18

    and-int/lit16 v4, v4, 0xff

    shr-int/lit8 v5, p3, 0x10

    and-int/lit16 v5, v5, 0xff

    shr-int/lit8 v6, p3, 0x8

    and-int/lit16 v6, v6, 0xff

    and-int/lit16 v7, p3, 0xff

    sub-int/2addr v4, v0

    int-to-float v4, v4

    mul-float/2addr v4, p1

    float-to-int v4, v4

    add-int/2addr v0, v4

    shl-int/lit8 v0, v0, 0x18

    sub-int v4, v5, v1

    int-to-float v4, v4

    mul-float/2addr v4, p1

    float-to-int v4, v4

    add-int/2addr v1, v4

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    sub-int v1, v6, v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    add-int/2addr v1, v2

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    sub-int v1, v7, v3

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    add-int/2addr v1, v3

    or-int/2addr v0, v1

    return v0
.end method

.method private a()V
    .locals 3

    iget-object v0, p0, Lcom/scwang/smartrefresh/header/a/a;->g:Lcom/scwang/smartrefresh/header/a/a$a;

    new-instance v1, Lcom/scwang/smartrefresh/header/a/a$1;

    invoke-direct {v1, p0, v0}, Lcom/scwang/smartrefresh/header/a/a$1;-><init>(Lcom/scwang/smartrefresh/header/a/a;Lcom/scwang/smartrefresh/header/a/a$a;)V

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    sget-object v2, Lcom/scwang/smartrefresh/header/a/a;->d:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v2, Lcom/scwang/smartrefresh/header/a/a$2;

    invoke-direct {v2, p0, v0}, Lcom/scwang/smartrefresh/header/a/a$2;-><init>(Lcom/scwang/smartrefresh/header/a/a;Lcom/scwang/smartrefresh/header/a/a$a;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iput-object v1, p0, Lcom/scwang/smartrefresh/header/a/a;->j:Landroid/view/animation/Animation;

    return-void
.end method

.method private a(IIFFFF)V
    .locals 4

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float v1, p1

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/scwang/smartrefresh/header/a/a;->k:F

    int-to-float v1, p2

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/scwang/smartrefresh/header/a/a;->l:F

    iget-object v1, p0, Lcom/scwang/smartrefresh/header/a/a;->g:Lcom/scwang/smartrefresh/header/a/a$a;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/scwang/smartrefresh/header/a/a$a;->a(I)V

    iget-object v1, p0, Lcom/scwang/smartrefresh/header/a/a;->g:Lcom/scwang/smartrefresh/header/a/a$a;

    iget-object v1, v1, Lcom/scwang/smartrefresh/header/a/a$a;->b:Landroid/graphics/Paint;

    mul-float v2, p4, v0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, p0, Lcom/scwang/smartrefresh/header/a/a;->g:Lcom/scwang/smartrefresh/header/a/a$a;

    mul-float v2, p4, v0

    iput v2, v1, Lcom/scwang/smartrefresh/header/a/a$a;->g:F

    iget-object v1, p0, Lcom/scwang/smartrefresh/header/a/a;->g:Lcom/scwang/smartrefresh/header/a/a$a;

    mul-float v2, p3, v0

    float-to-double v2, v2

    iput-wide v2, v1, Lcom/scwang/smartrefresh/header/a/a$a;->q:D

    iget-object v1, p0, Lcom/scwang/smartrefresh/header/a/a;->g:Lcom/scwang/smartrefresh/header/a/a$a;

    mul-float v2, p5, v0

    float-to-int v2, v2

    iput v2, v1, Lcom/scwang/smartrefresh/header/a/a$a;->r:I

    iget-object v1, p0, Lcom/scwang/smartrefresh/header/a/a;->g:Lcom/scwang/smartrefresh/header/a/a$a;

    mul-float/2addr v0, p6

    float-to-int v0, v0

    iput v0, v1, Lcom/scwang/smartrefresh/header/a/a$a;->s:I

    iget-object v0, p0, Lcom/scwang/smartrefresh/header/a/a;->g:Lcom/scwang/smartrefresh/header/a/a$a;

    iget v1, p0, Lcom/scwang/smartrefresh/header/a/a;->k:F

    float-to-int v1, v1

    iget v2, p0, Lcom/scwang/smartrefresh/header/a/a;->l:F

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/scwang/smartrefresh/header/a/a$a;->a(II)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method


# virtual methods
.method a(Lcom/scwang/smartrefresh/header/a/a$a;)F
    .locals 6

    iget v0, p1, Lcom/scwang/smartrefresh/header/a/a$a;->g:F

    float-to-double v0, v0

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    iget-wide v4, p1, Lcom/scwang/smartrefresh/header/a/a$a;->q:D

    mul-double/2addr v2, v4

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public a(F)V
    .locals 1

    iget-object v0, p0, Lcom/scwang/smartrefresh/header/a/a;->g:Lcom/scwang/smartrefresh/header/a/a$a;

    iget v0, v0, Lcom/scwang/smartrefresh/header/a/a$a;->p:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/scwang/smartrefresh/header/a/a;->g:Lcom/scwang/smartrefresh/header/a/a$a;

    iput p1, v0, Lcom/scwang/smartrefresh/header/a/a$a;->p:F

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public a(FF)V
    .locals 1

    iget-object v0, p0, Lcom/scwang/smartrefresh/header/a/a;->g:Lcom/scwang/smartrefresh/header/a/a$a;

    iput p1, v0, Lcom/scwang/smartrefresh/header/a/a$a;->d:F

    iget-object v0, p0, Lcom/scwang/smartrefresh/header/a/a;->g:Lcom/scwang/smartrefresh/header/a/a$a;

    iput p2, v0, Lcom/scwang/smartrefresh/header/a/a$a;->e:F

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method a(FLcom/scwang/smartrefresh/header/a/a$a;)V
    .locals 3

    const/high16 v1, 0x3f400000    # 0.75f

    cmpl-float v0, p1, v1

    if-lez v0, :cond_0

    sub-float v0, p1, v1

    const/high16 v1, 0x3e800000    # 0.25f

    div-float/2addr v0, v1

    invoke-virtual {p2}, Lcom/scwang/smartrefresh/header/a/a$a;->c()I

    move-result v1

    invoke-virtual {p2}, Lcom/scwang/smartrefresh/header/a/a$a;->a()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/scwang/smartrefresh/header/a/a;->a(FII)I

    move-result v0

    iput v0, p2, Lcom/scwang/smartrefresh/header/a/a$a;->t:I

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 8

    const/16 v1, 0x38

    const/16 v7, 0x28

    if-nez p1, :cond_0

    const/high16 v3, 0x41480000    # 12.5f

    const/high16 v4, 0x40400000    # 3.0f

    const/high16 v5, 0x41400000    # 12.0f

    const/high16 v6, 0x40c00000    # 6.0f

    move-object v0, p0

    move v2, v1

    invoke-direct/range {v0 .. v6}, Lcom/scwang/smartrefresh/header/a/a;->a(IIFFFF)V

    :goto_0
    return-void

    :cond_0
    const/high16 v3, 0x410c0000    # 8.75f

    const/high16 v4, 0x40200000    # 2.5f

    const/high16 v5, 0x41200000    # 10.0f

    const/high16 v6, 0x40a00000    # 5.0f

    move-object v0, p0

    move v1, v7

    move v2, v7

    invoke-direct/range {v0 .. v6}, Lcom/scwang/smartrefresh/header/a/a;->a(IIFFFF)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/scwang/smartrefresh/header/a/a;->g:Lcom/scwang/smartrefresh/header/a/a$a;

    iget-boolean v0, v0, Lcom/scwang/smartrefresh/header/a/a$a;->n:Z

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/scwang/smartrefresh/header/a/a;->g:Lcom/scwang/smartrefresh/header/a/a$a;

    iput-boolean p1, v0, Lcom/scwang/smartrefresh/header/a/a$a;->n:Z

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public varargs a([I)V
    .locals 2

    iget-object v0, p0, Lcom/scwang/smartrefresh/header/a/a;->g:Lcom/scwang/smartrefresh/header/a/a$a;

    iput-object p1, v0, Lcom/scwang/smartrefresh/header/a/a$a;->i:[I

    iget-object v0, p0, Lcom/scwang/smartrefresh/header/a/a;->g:Lcom/scwang/smartrefresh/header/a/a$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/header/a/a$a;->a(I)V

    return-void
.end method

.method public b(F)V
    .locals 1

    iget-object v0, p0, Lcom/scwang/smartrefresh/header/a/a;->g:Lcom/scwang/smartrefresh/header/a/a$a;

    iput p1, v0, Lcom/scwang/smartrefresh/header/a/a$a;->f:F

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method b(FLcom/scwang/smartrefresh/header/a/a$a;)V
    .locals 4

    invoke-virtual {p0, p1, p2}, Lcom/scwang/smartrefresh/header/a/a;->a(FLcom/scwang/smartrefresh/header/a/a$a;)V

    iget v0, p2, Lcom/scwang/smartrefresh/header/a/a$a;->m:F

    const v1, 0x3f4ccccd    # 0.8f

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    double-to-float v0, v0

    invoke-virtual {p0, p2}, Lcom/scwang/smartrefresh/header/a/a;->a(Lcom/scwang/smartrefresh/header/a/a$a;)F

    move-result v1

    iget v2, p2, Lcom/scwang/smartrefresh/header/a/a$a;->k:F

    iget v3, p2, Lcom/scwang/smartrefresh/header/a/a$a;->l:F

    sub-float v1, v3, v1

    iget v3, p2, Lcom/scwang/smartrefresh/header/a/a$a;->k:F

    sub-float/2addr v1, v3

    mul-float/2addr v1, p1

    add-float/2addr v1, v2

    iget v2, p2, Lcom/scwang/smartrefresh/header/a/a$a;->l:F

    invoke-virtual {p0, v1, v2}, Lcom/scwang/smartrefresh/header/a/a;->a(FF)V

    iget v1, p2, Lcom/scwang/smartrefresh/header/a/a$a;->m:F

    iget v2, p2, Lcom/scwang/smartrefresh/header/a/a$a;->m:F

    sub-float/2addr v0, v2

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/header/a/a;->b(F)V

    return-void
.end method

.method c(F)V
    .locals 0

    iput p1, p0, Lcom/scwang/smartrefresh/header/a/a;->h:F

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    iget v2, p0, Lcom/scwang/smartrefresh/header/a/a;->h:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v2, p0, Lcom/scwang/smartrefresh/header/a/a;->g:Lcom/scwang/smartrefresh/header/a/a$a;

    invoke-virtual {v2, p1, v0}, Lcom/scwang/smartrefresh/header/a/a$a;->a(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    iget v0, p0, Lcom/scwang/smartrefresh/header/a/a;->l:F

    float-to-int v0, v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    iget v0, p0, Lcom/scwang/smartrefresh/header/a/a;->k:F

    float-to-int v0, v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public isRunning()Z
    .locals 6

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/scwang/smartrefresh/header/a/a;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_1

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lcom/scwang/smartrefresh/header/a/a;->g:Lcom/scwang/smartrefresh/header/a/a$a;

    iget-object v0, v0, Lcom/scwang/smartrefresh/header/a/a$a;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public start()V
    .locals 4

    iget-object v0, p0, Lcom/scwang/smartrefresh/header/a/a;->j:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    iget-object v0, p0, Lcom/scwang/smartrefresh/header/a/a;->g:Lcom/scwang/smartrefresh/header/a/a$a;

    invoke-virtual {v0}, Lcom/scwang/smartrefresh/header/a/a$a;->d()V

    iget-object v0, p0, Lcom/scwang/smartrefresh/header/a/a;->g:Lcom/scwang/smartrefresh/header/a/a$a;

    iget v0, v0, Lcom/scwang/smartrefresh/header/a/a$a;->e:F

    iget-object v1, p0, Lcom/scwang/smartrefresh/header/a/a;->g:Lcom/scwang/smartrefresh/header/a/a$a;

    iget v1, v1, Lcom/scwang/smartrefresh/header/a/a$a;->d:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scwang/smartrefresh/header/a/a;->c:Z

    iget-object v0, p0, Lcom/scwang/smartrefresh/header/a/a;->j:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x29a

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/scwang/smartrefresh/header/a/a;->i:Landroid/view/View;

    iget-object v1, p0, Lcom/scwang/smartrefresh/header/a/a;->j:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/a/a;->g:Lcom/scwang/smartrefresh/header/a/a$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/header/a/a$a;->a(I)V

    iget-object v0, p0, Lcom/scwang/smartrefresh/header/a/a;->g:Lcom/scwang/smartrefresh/header/a/a$a;

    invoke-virtual {v0}, Lcom/scwang/smartrefresh/header/a/a$a;->e()V

    iget-object v0, p0, Lcom/scwang/smartrefresh/header/a/a;->j:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x534

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/scwang/smartrefresh/header/a/a;->i:Landroid/view/View;

    iget-object v1, p0, Lcom/scwang/smartrefresh/header/a/a;->j:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/scwang/smartrefresh/header/a/a;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Lcom/scwang/smartrefresh/header/a/a;->g:Lcom/scwang/smartrefresh/header/a/a$a;

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/header/a/a$a;->a(I)V

    iget-object v0, p0, Lcom/scwang/smartrefresh/header/a/a;->g:Lcom/scwang/smartrefresh/header/a/a$a;

    invoke-virtual {v0}, Lcom/scwang/smartrefresh/header/a/a$a;->e()V

    invoke-virtual {p0, v1}, Lcom/scwang/smartrefresh/header/a/a;->a(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/header/a/a;->c(F)V

    return-void
.end method
