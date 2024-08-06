.class Landroid/support/v7/widget/x;
.super Landroid/support/v7/widget/RecyclerView$h;

# interfaces
.implements Landroid/support/v7/widget/RecyclerView$m;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/x$b;,
        Landroid/support/v7/widget/x$a;
    }
.end annotation


# static fields
.field private static final k:[I

.field private static final l:[I


# instance fields
.field private A:I

.field private final B:[I

.field private final C:[I

.field private final D:Ljava/lang/Runnable;

.field private final E:Landroid/support/v7/widget/RecyclerView$n;

.field final a:Landroid/graphics/drawable/StateListDrawable;

.field final b:Landroid/graphics/drawable/Drawable;

.field c:I

.field d:I

.field e:F

.field f:I

.field g:I

.field h:F

.field final i:Landroid/animation/ValueAnimator;

.field j:I

.field private final m:I

.field private final n:I

.field private final o:I

.field private final p:I

.field private final q:Landroid/graphics/drawable/StateListDrawable;

.field private final r:Landroid/graphics/drawable/Drawable;

.field private final s:I

.field private final t:I

.field private u:I

.field private v:I

.field private w:Landroid/support/v7/widget/RecyclerView;

.field private x:Z

.field private y:Z

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x10100a7

    aput v1, v0, v2

    sput-object v0, Landroid/support/v7/widget/x;->k:[I

    new-array v0, v2, [I

    sput-object v0, Landroid/support/v7/widget/x;->l:[I

    return-void
.end method

.method constructor <init>(Landroid/support/v7/widget/RecyclerView;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;III)V
    .locals 4

    const/16 v3, 0xff

    const/4 v2, 0x2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$h;-><init>()V

    iput v1, p0, Landroid/support/v7/widget/x;->u:I

    iput v1, p0, Landroid/support/v7/widget/x;->v:I

    iput-boolean v1, p0, Landroid/support/v7/widget/x;->x:Z

    iput-boolean v1, p0, Landroid/support/v7/widget/x;->y:Z

    iput v1, p0, Landroid/support/v7/widget/x;->z:I

    iput v1, p0, Landroid/support/v7/widget/x;->A:I

    new-array v0, v2, [I

    iput-object v0, p0, Landroid/support/v7/widget/x;->B:[I

    new-array v0, v2, [I

    iput-object v0, p0, Landroid/support/v7/widget/x;->C:[I

    new-array v0, v2, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/x;->i:Landroid/animation/ValueAnimator;

    iput v1, p0, Landroid/support/v7/widget/x;->j:I

    new-instance v0, Landroid/support/v7/widget/x$1;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/x$1;-><init>(Landroid/support/v7/widget/x;)V

    iput-object v0, p0, Landroid/support/v7/widget/x;->D:Ljava/lang/Runnable;

    new-instance v0, Landroid/support/v7/widget/x$2;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/x$2;-><init>(Landroid/support/v7/widget/x;)V

    iput-object v0, p0, Landroid/support/v7/widget/x;->E:Landroid/support/v7/widget/RecyclerView$n;

    iput-object p2, p0, Landroid/support/v7/widget/x;->a:Landroid/graphics/drawable/StateListDrawable;

    iput-object p3, p0, Landroid/support/v7/widget/x;->b:Landroid/graphics/drawable/Drawable;

    iput-object p4, p0, Landroid/support/v7/widget/x;->q:Landroid/graphics/drawable/StateListDrawable;

    iput-object p5, p0, Landroid/support/v7/widget/x;->r:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/StateListDrawable;->getIntrinsicWidth()I

    move-result v0

    invoke-static {p6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/x;->o:I

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-static {p6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/x;->p:I

    invoke-virtual {p4}, Landroid/graphics/drawable/StateListDrawable;->getIntrinsicWidth()I

    move-result v0

    invoke-static {p6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/x;->s:I

    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-static {p6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/x;->t:I

    iput p7, p0, Landroid/support/v7/widget/x;->m:I

    iput p8, p0, Landroid/support/v7/widget/x;->n:I

    iget-object v0, p0, Landroid/support/v7/widget/x;->a:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/StateListDrawable;->setAlpha(I)V

    iget-object v0, p0, Landroid/support/v7/widget/x;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, p0, Landroid/support/v7/widget/x;->i:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/support/v7/widget/x$a;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/x$a;-><init>(Landroid/support/v7/widget/x;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Landroid/support/v7/widget/x;->i:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/support/v7/widget/x$b;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/x$b;-><init>(Landroid/support/v7/widget/x;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/x;->a(Landroid/support/v7/widget/RecyclerView;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private a(FF[IIII)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    aget v1, p3, v1

    aget v2, p3, v0

    sub-int/2addr v1, v2

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sub-float v2, p2, p1

    int-to-float v1, v1

    div-float v1, v2, v1

    sub-int v2, p4, p6

    int-to-float v3, v2

    mul-float/2addr v1, v3

    float-to-int v1, v1

    add-int v3, p5, v1

    if-ge v3, v2, :cond_0

    if-ltz v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private a(F)V
    .locals 8

    const/4 v7, 0x0

    invoke-direct {p0}, Landroid/support/v7/widget/x;->g()[I

    move-result-object v3

    aget v0, v3, v7

    int-to-float v0, v0

    const/4 v1, 0x1

    aget v1, v3, v1

    int-to-float v1, v1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget v0, p0, Landroid/support/v7/widget/x;->d:I

    int-to-float v0, v0

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v1, p0, Landroid/support/v7/widget/x;->e:F

    iget-object v0, p0, Landroid/support/v7/widget/x;->w:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result v4

    iget-object v0, p0, Landroid/support/v7/widget/x;->w:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v5

    iget v6, p0, Landroid/support/v7/widget/x;->v:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/widget/x;->a(FF[IIII)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/x;->w:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v7, v0}, Landroid/support/v7/widget/RecyclerView;->scrollBy(II)V

    :cond_1
    iput v2, p0, Landroid/support/v7/widget/x;->e:F

    goto :goto_0
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 8

    const/4 v7, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    iget v0, p0, Landroid/support/v7/widget/x;->u:I

    iget v1, p0, Landroid/support/v7/widget/x;->o:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/support/v7/widget/x;->d:I

    iget v2, p0, Landroid/support/v7/widget/x;->c:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/support/v7/widget/x;->a:Landroid/graphics/drawable/StateListDrawable;

    iget v3, p0, Landroid/support/v7/widget/x;->o:I

    iget v4, p0, Landroid/support/v7/widget/x;->c:I

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/drawable/StateListDrawable;->setBounds(IIII)V

    iget-object v2, p0, Landroid/support/v7/widget/x;->b:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Landroid/support/v7/widget/x;->p:I

    iget v4, p0, Landroid/support/v7/widget/x;->v:I

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-direct {p0}, Landroid/support/v7/widget/x;->e()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/x;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget v0, p0, Landroid/support/v7/widget/x;->o:I

    int-to-float v0, v0

    int-to-float v2, v1

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {p1, v0, v6}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v0, p0, Landroid/support/v7/widget/x;->a:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/StateListDrawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v6, v6}, Landroid/graphics/Canvas;->scale(FF)V

    iget v0, p0, Landroid/support/v7/widget/x;->o:I

    neg-int v0, v0

    int-to-float v0, v0

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_0
    return-void

    :cond_0
    int-to-float v2, v0

    invoke-virtual {p1, v2, v7}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v2, p0, Landroid/support/v7/widget/x;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    int-to-float v2, v1

    invoke-virtual {p1, v7, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v2, p0, Landroid/support/v7/widget/x;->a:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/StateListDrawable;->draw(Landroid/graphics/Canvas;)V

    neg-int v0, v0

    int-to-float v0, v0

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0
.end method

.method private b(F)V
    .locals 8

    const/4 v7, 0x0

    invoke-direct {p0}, Landroid/support/v7/widget/x;->h()[I

    move-result-object v3

    aget v0, v3, v7

    int-to-float v0, v0

    const/4 v1, 0x1

    aget v1, v3, v1

    int-to-float v1, v1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget v0, p0, Landroid/support/v7/widget/x;->g:I

    int-to-float v0, v0

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v1, p0, Landroid/support/v7/widget/x;->h:F

    iget-object v0, p0, Landroid/support/v7/widget/x;->w:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->computeHorizontalScrollRange()I

    move-result v4

    iget-object v0, p0, Landroid/support/v7/widget/x;->w:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->computeHorizontalScrollOffset()I

    move-result v5

    iget v6, p0, Landroid/support/v7/widget/x;->u:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/widget/x;->a(FF[IIII)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/x;->w:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0, v7}, Landroid/support/v7/widget/RecyclerView;->scrollBy(II)V

    :cond_1
    iput v2, p0, Landroid/support/v7/widget/x;->h:F

    goto :goto_0
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    iget v0, p0, Landroid/support/v7/widget/x;->v:I

    iget v1, p0, Landroid/support/v7/widget/x;->s:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/support/v7/widget/x;->g:I

    iget v2, p0, Landroid/support/v7/widget/x;->f:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/support/v7/widget/x;->q:Landroid/graphics/drawable/StateListDrawable;

    iget v3, p0, Landroid/support/v7/widget/x;->f:I

    iget v4, p0, Landroid/support/v7/widget/x;->s:I

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/drawable/StateListDrawable;->setBounds(IIII)V

    iget-object v2, p0, Landroid/support/v7/widget/x;->r:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Landroid/support/v7/widget/x;->u:I

    iget v4, p0, Landroid/support/v7/widget/x;->t:I

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    int-to-float v2, v0

    invoke-virtual {p1, v6, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v2, p0, Landroid/support/v7/widget/x;->r:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    int-to-float v2, v1

    invoke-virtual {p1, v2, v6}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v2, p0, Landroid/support/v7/widget/x;->q:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/StateListDrawable;->draw(Landroid/graphics/Canvas;)V

    neg-int v1, v1

    int-to-float v1, v1

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    return-void
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/x;->w:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$h;)V

    iget-object v0, p0, Landroid/support/v7/widget/x;->w:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$m;)V

    iget-object v0, p0, Landroid/support/v7/widget/x;->w:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Landroid/support/v7/widget/x;->E:Landroid/support/v7/widget/RecyclerView$n;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$n;)V

    return-void
.end method

.method private c(I)V
    .locals 4

    invoke-direct {p0}, Landroid/support/v7/widget/x;->f()V

    iget-object v0, p0, Landroid/support/v7/widget/x;->w:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Landroid/support/v7/widget/x;->D:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v7/widget/RecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/x;->w:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/support/v7/widget/RecyclerView$h;)V

    iget-object v0, p0, Landroid/support/v7/widget/x;->w:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/support/v7/widget/RecyclerView$m;)V

    iget-object v0, p0, Landroid/support/v7/widget/x;->w:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Landroid/support/v7/widget/x;->E:Landroid/support/v7/widget/RecyclerView$n;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/support/v7/widget/RecyclerView$n;)V

    invoke-direct {p0}, Landroid/support/v7/widget/x;->f()V

    return-void
.end method

.method private e()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Landroid/support/v7/widget/x;->w:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v4/f/t;->f(Landroid/view/View;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/x;->w:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Landroid/support/v7/widget/x;->D:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private g()[I
    .locals 4

    iget-object v0, p0, Landroid/support/v7/widget/x;->B:[I

    const/4 v1, 0x0

    iget v2, p0, Landroid/support/v7/widget/x;->n:I

    aput v2, v0, v1

    iget-object v0, p0, Landroid/support/v7/widget/x;->B:[I

    const/4 v1, 0x1

    iget v2, p0, Landroid/support/v7/widget/x;->v:I

    iget v3, p0, Landroid/support/v7/widget/x;->n:I

    sub-int/2addr v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Landroid/support/v7/widget/x;->B:[I

    return-object v0
.end method

.method private h()[I
    .locals 4

    iget-object v0, p0, Landroid/support/v7/widget/x;->C:[I

    const/4 v1, 0x0

    iget v2, p0, Landroid/support/v7/widget/x;->n:I

    aput v2, v0, v1

    iget-object v0, p0, Landroid/support/v7/widget/x;->C:[I

    const/4 v1, 0x1

    iget v2, p0, Landroid/support/v7/widget/x;->u:I

    iget v3, p0, Landroid/support/v7/widget/x;->n:I

    sub-int/2addr v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Landroid/support/v7/widget/x;->C:[I

    return-object v0
.end method


# virtual methods
.method a()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/x;->w:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    return-void
.end method

.method a(I)V
    .locals 3

    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    iget v0, p0, Landroid/support/v7/widget/x;->z:I

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/x;->a:Landroid/graphics/drawable/StateListDrawable;

    sget-object v1, Landroid/support/v7/widget/x;->k:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    invoke-direct {p0}, Landroid/support/v7/widget/x;->f()V

    :cond_0
    if-nez p1, :cond_2

    invoke-virtual {p0}, Landroid/support/v7/widget/x;->a()V

    :goto_0
    iget v0, p0, Landroid/support/v7/widget/x;->z:I

    if-ne v0, v2, :cond_3

    if-eq p1, v2, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/x;->a:Landroid/graphics/drawable/StateListDrawable;

    sget-object v1, Landroid/support/v7/widget/x;->l:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    const/16 v0, 0x4b0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/x;->c(I)V

    :cond_1
    :goto_1
    iput p1, p0, Landroid/support/v7/widget/x;->z:I

    return-void

    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/x;->b()V

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const/16 v0, 0x5dc

    invoke-direct {p0, v0}, Landroid/support/v7/widget/x;->c(I)V

    goto :goto_1
.end method

.method a(II)V
    .locals 9

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Landroid/support/v7/widget/x;->w:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result v3

    iget v4, p0, Landroid/support/v7/widget/x;->v:I

    sub-int v0, v3, v4

    if-lez v0, :cond_1

    iget v0, p0, Landroid/support/v7/widget/x;->v:I

    iget v5, p0, Landroid/support/v7/widget/x;->m:I

    if-lt v0, v5, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/support/v7/widget/x;->x:Z

    iget-object v0, p0, Landroid/support/v7/widget/x;->w:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->computeHorizontalScrollRange()I

    move-result v5

    iget v6, p0, Landroid/support/v7/widget/x;->u:I

    sub-int v0, v5, v6

    if-lez v0, :cond_2

    iget v0, p0, Landroid/support/v7/widget/x;->u:I

    iget v7, p0, Landroid/support/v7/widget/x;->m:I

    if-lt v0, v7, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Landroid/support/v7/widget/x;->y:Z

    iget-boolean v0, p0, Landroid/support/v7/widget/x;->x:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Landroid/support/v7/widget/x;->y:Z

    if-nez v0, :cond_3

    iget v0, p0, Landroid/support/v7/widget/x;->z:I

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/x;->a(I)V

    :cond_0
    :goto_2
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    iget-boolean v0, p0, Landroid/support/v7/widget/x;->x:Z

    if-eqz v0, :cond_4

    int-to-float v0, p2

    int-to-float v2, v4

    div-float/2addr v2, v8

    add-float/2addr v0, v2

    int-to-float v2, v4

    mul-float/2addr v0, v2

    int-to-float v2, v3

    div-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/x;->d:I

    mul-int v0, v4, v4

    div-int/2addr v0, v3

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/x;->c:I

    :cond_4
    iget-boolean v0, p0, Landroid/support/v7/widget/x;->y:Z

    if-eqz v0, :cond_5

    int-to-float v0, p1

    int-to-float v2, v6

    div-float/2addr v2, v8

    add-float/2addr v0, v2

    int-to-float v2, v6

    mul-float/2addr v0, v2

    int-to-float v2, v5

    div-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/x;->g:I

    mul-int v0, v6, v6

    div-int/2addr v0, v5

    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/x;->f:I

    :cond_5
    iget v0, p0, Landroid/support/v7/widget/x;->z:I

    if-eqz v0, :cond_6

    iget v0, p0, Landroid/support/v7/widget/x;->z:I

    if-ne v0, v1, :cond_0

    :cond_6
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/x;->a(I)V

    goto :goto_2
.end method

.method public a(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$u;)V
    .locals 2

    iget v0, p0, Landroid/support/v7/widget/x;->u:I

    iget-object v1, p0, Landroid/support/v7/widget/x;->w:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/support/v7/widget/x;->v:I

    iget-object v1, p0, Landroid/support/v7/widget/x;->w:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/x;->w:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/x;->u:I

    iget-object v0, p0, Landroid/support/v7/widget/x;->w:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/x;->v:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/x;->a(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v0, p0, Landroid/support/v7/widget/x;->j:I

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/support/v7/widget/x;->x:Z

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Landroid/support/v7/widget/x;->a(Landroid/graphics/Canvas;)V

    :cond_3
    iget-boolean v0, p0, Landroid/support/v7/widget/x;->y:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/x;->b(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/x;->w:Landroid/support/v7/widget/RecyclerView;

    if-ne v0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/x;->w:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Landroid/support/v7/widget/x;->d()V

    :cond_2
    iput-object p1, p0, Landroid/support/v7/widget/x;->w:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p0, Landroid/support/v7/widget/x;->w:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/support/v7/widget/x;->c()V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 0

    return-void
.end method

.method a(FF)Z
    .locals 2

    invoke-direct {p0}, Landroid/support/v7/widget/x;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/support/v7/widget/x;->o:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_2

    :cond_0
    iget v0, p0, Landroid/support/v7/widget/x;->d:I

    iget v1, p0, Landroid/support/v7/widget/x;->c:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_2

    iget v0, p0, Landroid/support/v7/widget/x;->d:I

    iget v1, p0, Landroid/support/v7/widget/x;->c:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    iget v0, p0, Landroid/support/v7/widget/x;->u:I

    iget v1, p0, Landroid/support/v7/widget/x;->o:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-gez v0, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v1, 0x0

    const/4 v5, 0x2

    const/4 v0, 0x1

    iget v2, p0, Landroid/support/v7/widget/x;->z:I

    if-ne v2, v0, :cond_5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0, v2, v3}, Landroid/support/v7/widget/x;->a(FF)Z

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p0, v3, v4}, Landroid/support/v7/widget/x;->b(FF)Z

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_4

    if-nez v2, :cond_0

    if-eqz v3, :cond_4

    :cond_0
    if-eqz v3, :cond_3

    iput v0, p0, Landroid/support/v7/widget/x;->A:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    iput v1, p0, Landroid/support/v7/widget/x;->h:F

    :cond_1
    :goto_0
    invoke-virtual {p0, v5}, Landroid/support/v7/widget/x;->a(I)V

    :cond_2
    :goto_1
    return v0

    :cond_3
    if-eqz v2, :cond_1

    iput v5, p0, Landroid/support/v7/widget/x;->A:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    iput v1, p0, Landroid/support/v7/widget/x;->e:F

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1

    :cond_5
    iget v2, p0, Landroid/support/v7/widget/x;->z:I

    if-eq v2, v5, :cond_2

    move v0, v1

    goto :goto_1
.end method

.method public b()V
    .locals 5

    const/4 v4, 0x1

    iget v0, p0, Landroid/support/v7/widget/x;->j:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Landroid/support/v7/widget/x;->i:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :pswitch_2
    iput v4, p0, Landroid/support/v7/widget/x;->j:I

    iget-object v1, p0, Landroid/support/v7/widget/x;->i:Landroid/animation/ValueAnimator;

    const/4 v0, 0x2

    new-array v2, v0, [F

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/support/v7/widget/x;->i:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    aput v0, v2, v3

    const/high16 v0, 0x3f800000    # 1.0f

    aput v0, v2, v4

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object v0, p0, Landroid/support/v7/widget/x;->i:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Landroid/support/v7/widget/x;->i:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object v0, p0, Landroid/support/v7/widget/x;->i:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method b(I)V
    .locals 4

    iget v0, p0, Landroid/support/v7/widget/x;->j:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Landroid/support/v7/widget/x;->i:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :pswitch_1
    const/4 v0, 0x3

    iput v0, p0, Landroid/support/v7/widget/x;->j:I

    iget-object v1, p0, Landroid/support/v7/widget/x;->i:Landroid/animation/ValueAnimator;

    const/4 v0, 0x2

    new-array v2, v0, [F

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/support/v7/widget/x;->i:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    aput v0, v2, v3

    const/4 v0, 0x1

    const/4 v3, 0x0

    aput v3, v2, v0

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object v0, p0, Landroid/support/v7/widget/x;->i:Landroid/animation/ValueAnimator;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Landroid/support/v7/widget/x;->i:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public b(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .locals 5

    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x2

    iget v0, p0, Landroid/support/v7/widget/x;->z:I

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/widget/x;->a(FF)Z

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/support/v7/widget/x;->b(FF)Z

    move-result v1

    if-nez v0, :cond_2

    if-eqz v1, :cond_0

    :cond_2
    if-eqz v1, :cond_4

    iput v4, p0, Landroid/support/v7/widget/x;->A:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Landroid/support/v7/widget/x;->h:F

    :cond_3
    :goto_1
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/x;->a(I)V

    goto :goto_0

    :cond_4
    if-eqz v0, :cond_3

    iput v3, p0, Landroid/support/v7/widget/x;->A:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Landroid/support/v7/widget/x;->e:F

    goto :goto_1

    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v4, :cond_6

    iget v0, p0, Landroid/support/v7/widget/x;->z:I

    if-ne v0, v3, :cond_6

    iput v1, p0, Landroid/support/v7/widget/x;->e:F

    iput v1, p0, Landroid/support/v7/widget/x;->h:F

    invoke-virtual {p0, v4}, Landroid/support/v7/widget/x;->a(I)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/x;->A:I

    goto :goto_0

    :cond_6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_0

    iget v0, p0, Landroid/support/v7/widget/x;->z:I

    if-ne v0, v3, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/x;->b()V

    iget v0, p0, Landroid/support/v7/widget/x;->A:I

    if-ne v0, v4, :cond_7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/x;->b(F)V

    :cond_7
    iget v0, p0, Landroid/support/v7/widget/x;->A:I

    if-ne v0, v3, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/x;->a(F)V

    goto :goto_0
.end method

.method b(FF)Z
    .locals 2

    iget v0, p0, Landroid/support/v7/widget/x;->v:I

    iget v1, p0, Landroid/support/v7/widget/x;->s:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/x;->g:I

    iget v1, p0, Landroid/support/v7/widget/x;->f:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/x;->g:I

    iget v1, p0, Landroid/support/v7/widget/x;->f:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
